### Purpose:

The script reads object definitions from a CSV file and uses templates to generate two output files:

* A `.nml` file (used in OpenTTD/TTDPatch NewGRF development),
* A `.lng` language file (for object names/descriptions in English).

The tool is distributed with precompiled Lua binaries (`lua54.exe`, `lua54.dll`), allowing it to be executed directly from the command line without any additional dependencies:

```
lua54 NMLfromCSV.lua
```

### Code Structure and Key Components:

#### **Helpers Section:**

Includes utility functions:

* `getStem`: Gets the filename without path or extension.
* `tableContains`: Checks if a table contains a value.
* `fileExists`: Checks if a file exists.
* `strToBool`: Converts a string to a boolean.
* `slice`, `trim`, `split`: Table and string manipulation utilities.

#### **Settings Loading:**

* Reads `settings.txt` into a key-value `settings` table (e.g., CSV path, separator, export settings).
* Settings can be overridden by command-line arguments. Example:

```
lua54 NMLfromCSV.lua separator=; export_filename=my_newgrf.nml
```


#### **CSV Parsing:**

* Reads the CSV specified in `settings["csv_path"]`.
* Extracts:
  
    * Line 2: Header metadata (e.g., GRFID, version, description).
    * Line 5 onwards: Object definitions.

#### **Template Substitution:**

* Uses a `templates` module to:

    * Fill in a header template (`templates["header"]`) with GRF metadata.
    * Fill in a language template with GRF name, description, and URL.

* For each object row in the CSV:

    * Selects a specific object template (e.g., based on dimensions/views).
    * Replaces placeholders in the template.
    * Adds string references to the language file (`STR_OBJ_...`, `STR_...`).

#### **File Output:**

* Writes the filled-in templates to:

    * An `.nml` file,
    * An English language `.lng` file.

* Handles file overwriting based on `overwrite_export_files` setting.

    * If disabled, appends a timestamp to the filename.