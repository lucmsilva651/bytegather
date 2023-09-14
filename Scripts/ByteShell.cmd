@echo off
setlocal

:mainMenu
cls
title ByteGather Shell (ByteShell)
echo ByteGather [Version 2.1.0.0]
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
call ByteGather.cmd %1
exit
