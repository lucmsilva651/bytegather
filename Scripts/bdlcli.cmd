@echo off
setlocal

:mainMenu
cls
title ByteCLI Interface
echo Byte (ByteCLI) [Version 3.0.0.0]
echo (c) Lucas Gabriel (lucmsilva). All rights reserved.
echo.

set "link="
set /p "link=Enter the link to the file: "

if "%link%"=="" (
    echo.
    echo You didn't insert a link. Press any key to continue.
    pause
    goto mainMenu
)

echo.
echo Link provided: %link%

set "confirmation="
set /p "confirmation=Confirm download? (Y/N): "


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
call bdl.cmd %1
exit
