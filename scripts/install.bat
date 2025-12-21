@echo off
:: WinClang Installer - Adds LLVM to System PATH
:: Copyright (C) 2025 DinoMax0n
:: Licensed under GNU GPL v3.0

setlocal
title WinClang Installer

:: Admin rights check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Please run this script as Administrator!
    pause
    exit /b 1
)

echo ========================================
echo Adding WinClang to System PATH...
echo ========================================

:: Get path to the bin folder relative to the script
set "BIN_PATH=%~dp0bin"

:: Update System PATH (for all users)
setx /M PATH "%BIN_PATH%;%PATH%"

if %errorLevel% equ 0 (
    echo.
    echo [SUCCESS] Done! LLVM has been added to PATH.
    echo.
    echo Please restart your terminal/IDE to apply changes.
) else (
    echo [ERROR] Something went wrong while updating PATH.
)

pause
endlocal