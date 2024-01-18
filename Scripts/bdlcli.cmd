@echo off
setlocal

:mainMenu
cls
title ByteCLI Interface
echo Byte (ByteCLI) [Version 3.1.2.0]
echo (c) Lucas Gabriel (lucmsilva). All rights reserved.
echo.

set "link="
set /p "link=Enter the download link (or type 'exit' to quit): "

if /i "%link%"=="exit" (
    echo.
    echo Goodbye!
    exit /b
)

if "%link%"=="" (
    echo.
    echo Please provide a valid download link. Press any key to continue.
    pause
    goto mainMenu
)

echo.
echo Download link: %link%

set /p "confirmation=Do you want to start the download? (Y/N): "

if /i "%confirmation%"=="Y" (
    echo.
    echo Downloading... Please wait.
    call bdl.cmd "%link%"
) else (
    echo.
    echo Download canceled.
)

pause
goto mainMenu
