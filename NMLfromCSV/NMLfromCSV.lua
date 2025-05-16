-- NMLfromCSV, v1.0.0 (2025-05-14)
-- Author: chujo
-- License: CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)

-- You may use, modify, and distribute this script for non-commercial purposes only (attribution required).
-- Any modifications or derivative works must be licensed under the same terms.
-----------------------------------------------------------------------------------------------------------

local templates = require("templates")

-------------
-- HELPERS --
-------------
function getStem(path)
	-- Gets a filename without an extension and path
    return path:match("([^\\/]-)%.?[^%.\\/]*$") or path
end
function tableContains(tbl, val)
	-- Checks wether a value 'val' is present in a table 'tbl', returns true | false
    for _, v in ipairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end
function fileExists(path)
	-- Checks wether a file exists, returns true | false
    local f = io.open(path, "r")
    if f then f:close() end
    return f ~= nil
end
function strToBool(str)
    if str == "false" or str == "FALSE" or str == "False" then
        return false
    else
        return true
    end
end
function slice(tbl, first, last)
    -- Performs slicing of a table, returns a new table
    local result = {}
    for i = first, last do
        table.insert(result, tbl[i])
    end
    return result
end
function trim(s)
    -- Trim whitespace from both ends of a string
    return (s:gsub("^%s*(.-)%s*$", "%1"))
end
function split(inputstr, separator)
    -- Output a table with each value of 'inputstr' split by a 'separator'
    if separator == nil then
        separator = ","     -- Default to comma if no separator entered
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. separator .. "]+)") do
        table.insert(t, trim(str))
    end
    return t
end


-------------------
-- LOAD SETTINGS --
-------------------
local function loadSettings()
    -- Reads settings from file
    local settings = {}
    local file, err = io.open("settings.txt", "r")
    if not file then
        error("\n\nCould not open file: settings.txt\nError: " .. err .. "\n")
    end

    for line in file:lines() do
        local key, value = line:match("([^=]+)=([^=]+)")
        if key and value then
            settings[key] = value
        end
    end
    file:close()
    
    return settings
end
local settings = loadSettings()

-- Check command-line arguments to override 'settings.txt'
for _, v in ipairs(arg) do
    local key, value = v:match("([^=]+)=([^=]+)")
    if key and value then
        settings[key] = value
    end
end



---------------
-- CSV INPUT --
---------------
local csv_path = settings["csv_path"]
local csv_file, err = io.open(csv_path, "r")
if not csv_file then
    error("\n\nCould not open file: " .. csv_path .. "\nError: " .. err .. "\n")
end
-- csv_file:read("*l")  -- Read and ignore the header

local csv_data = {}
for line in csv_file:lines() do
    table.insert(csv_data, line)
end

local header_data = slice(csv_data, 2, 2)
local objects_data = slice(csv_data, 5, #csv_data)


---------------------------------
-- GENERATE NML FROM TEMPLATES --
---------------------------------

local table_with_header = split(header_data[1], settings["separator"])
local grfid, version, min_compatible_version, newgrf_name, newgrf_desc, newgrf_url = table.unpack(table_with_header)

-- REPLACE IN HEADER
local NML = {}
local header = templates["header"]
header = header:gsub("EDIT_GRFID", grfid)
header = header:gsub("EDIT_VERSION", version)
header = header:gsub("EDIT_COMPATIBLE_VERSION", min_compatible_version)
table.insert(NML, header)

-- REPLACE IN LANGUAGE FILE
local LANG = {}
local english = templates["lang"]
english = english:gsub("EDIT_NEWGRF_NAME", newgrf_name)
english = english:gsub("EDIT_NEWGRF_DESC", newgrf_desc)
english = english:gsub("EDIT_NEWGRF_URL", newgrf_url)
table.insert(LANG, english)

-- Process CSV input line by line, add strings with replacements to NML and LANG tables
local used_classes = {}
for _, line in ipairs(objects_data) do
    local table_with_objects = split(line, settings["separator"])
    local filepath, name_of_object, dimensions, height, number_of_views, class, classname = table.unpack(table_with_objects)

    -- NML
    local template_name = "template_" .. dimensions .. "_" .. number_of_views .. "views"
    local result = templates[template_name]
    if not result then
        error("\n\nTemplate '" .. template_name .. "' is currently missing.\n")
    end
	result = result:gsub("EDIT_FILENAME", getStem(filepath))
	result = result:gsub("EDIT_HEIGHT", height)
	result = result:gsub("EDIT_CLASS", class)
	table.insert(NML, result)

    -- LANG
	if used_classes[class] then
		table.insert(LANG, "STR_OBJ_" .. getStem(filepath) .. ": " .. name_of_object .. "\n")
	else
        if not classname then
            error("\n\nClass '".. class .. "' is missing a classname in the source CSV!\n")
        end
		table.insert(LANG, "STR_" .. class .. ": " .. classname .. "\n")
		table.insert(LANG, "STR_OBJ_" .. getStem(filepath) .. ": " .. name_of_object .. "\n")
        used_classes[class] = true
	end
end
csv_file:close()


------------------------
-- RESULTS INTO FILES --
------------------------
if settings["overwrite_export_files"] == "false" and fileExists("../" .. settings["export_filename"]) then
    local name, ext = settings["export_filename"]:match("^(.-)%.([^.]+)$")
    local date_table = os.date("*t", os.time())
    local date_string = string.format("%d%02d%02d_%02d%02d%02d",
        date_table.year, date_table.month, date_table.day, date_table.hour, date_table.min, date_table.sec)
    local export_filename = name .. "_" .. date_string .. "." .. ext

    NML_file = io.open("../" .. export_filename, "w")
    LANG_file = io.open("../lang/english" .. "_" .. date_string .. ".lng", "w")
else
    NML_file = io.open("../" .. settings["export_filename"], "w")
    LANG_file = io.open("../lang/english.lng", "w")
end

if NML_file and LANG_file then
    NML_file:write(table.concat(NML))
    LANG_file:write(table.concat(LANG))
    NML_file:close()
    LANG_file:close()
end