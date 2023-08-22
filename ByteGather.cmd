@echo off

title ByteGather

if "%1"=="" (
    echo [ByteGather] Use: %0 ^<URL^>
    exit /b 1
)

set "url=%1"
for %%I in (%url%) do set "filename=%%~nxI"

certutil -urlcache -split -f "%url%" "%filename%" > nul

if %errorlevel% equ 0 (
    echo.
    echo [ByteGather] Download complete: %filename%
    echo [ByteGather] Press any key to exit.
    pause >nul
) else (
    echo [ByteGather] Download failed by an unknown reason. Press any key to exit.
    pause >nul
)