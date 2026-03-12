@echo off
:: WinClang Installer - Adds LLVM to System PATH
:: Copyright (C) 2025 DinoMax0n
:: Licensed under GNU GPL v3.0

setlocal
title WinClang Installer

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Please run this script as Administrator!
    pause
    exit /b 1
)

echo ========================================
echo Adding WinClang to System PATH...
echo ========================================

set "BIN_PATH=%~dp0bin"

powershell -NoProfile -ExecutionPolicy Bypass -Command "$targetPath='%BIN_PATH%'; $oldPath=[Environment]::GetEnvironmentVariable('Path', 'Machine'); if ($oldPath.Split(';') -notcontains $targetPath) { [Environment]::SetEnvironmentVariable('Path', $oldPath + ';' + $targetPath, 'Machine'); write-host '[SUCCESS] LLVM added to PATH.' } else { write-host '[INFO] LLVM path already exists in PATH.' }"

if %errorLevel% equ 0 (
    echo.
    echo Done! Please restart your terminal/IDE to apply changes.
) else (
    echo.
    echo [ERROR] Something went wrong while updating PATH.
)

pause
endlocal