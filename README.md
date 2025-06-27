# webptopngconverter
A .batch file that makes the conversion of .webp files to .png using ImageMagick

### Overview

This .batch converts .webp into .png files.

### Prerequisites

- [ImageMagick](https://imagemagick.org/script/download.php#windows)

When you are in the setup of ImageMagick, make sure the option **Add application directory to your system path** is marked.

`@echo off
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
endlocal´
