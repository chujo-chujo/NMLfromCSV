@echo off
echo Running script: NMLfromCSV.lua

:: Run the Lua script
pushd "%~dp0NMLfromCSV"
lua54 NMLfromCSV.lua
popd

:: Check for errors
if %ERRORLEVEL% neq 0 (
    echo.
    echo Script failed with error code %ERRORLEVEL%.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo Script executed successfully.
echo.
pause