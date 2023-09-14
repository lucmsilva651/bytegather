@echo off
setlocal

:mainMenu
cls
title ByteGather Shell (ByteShell)
echo ByteGather [Version 2.0.0.1]
echo (c) Lucas Gabriel (lucmsilva). All rights reserved.
echo.

set "link="
set /p "link=Enter the link to the file: "

if "%link%"=="" (
    echo No link provided.
    pause
    goto mainMenu
)

echo Link provided: %link%
echo.

set "confirmation="
if "%~1"=="--force" (
    set "confirmation=Y"
) else (
    set /p "confirmation=Confirm download? (Y/N): "
)

if /i "%confirmation%"=="Y" (
    call :downloadFile "%link%"
) else (
    echo Download canceled.
    pause
    goto mainMenu
)

pause
exit

:downloadFile
echo.
echo Calling ByteGather to download: %1
call ByteGather.cmd %1
exit
