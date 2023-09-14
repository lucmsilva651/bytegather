@echo off

if "%1"=="" (
    echo Use: %0 ^<URL^>
    exit /b 1
)

set "url=%1"
for %%I in (%url%) do set "filename=%%~nxI"

echo.
echo Downloading... Please wait for the download to finish.
certutil -urlcache -split -f "%url%" "%filename%" > nul

if %errorlevel% equ 0 (
    echo.
    echo Download complete: "%filename%"
    echo Press any key to exit.
    pause >nul
    echo.
    cmd /k
) else (
    echo.
    echo Download failed by an unknown reason. Press any key to exit.
    pause >nul
)