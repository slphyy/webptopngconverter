@echo off
setlocal enabledelayedexpansion

rem Set the input directory to the current directory
set "input_dir=%cd%"

rem Loop through all .webp files in the current directory
for %%f in ("%input_dir%\*.webp") do (
    rem Get the filename without extension
    set "filename=%%~nf"
    rem Convert the .webp file to .png
    magick "%%f" "!filename!.png"
)

echo Conversion complete!
pause
endlocal