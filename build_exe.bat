@echo off
REM Script de compilación para SEPTEM - Cifrador de Números Áureos
REM Este script crea un archivo .exe ejecutable del programa

setlocal enabledelayedexpansion

set APP_NAME=SEPTEM

echo.
echo ========================================
echo COMPILANDO %APP_NAME% A EJECUTABLE (.EXE)
echo ========================================
echo.

REM Verificar si PyInstaller está instalado
python -m pip show pyinstaller >nul 2>&1
if errorlevel 1 (
    echo [!] PyInstaller no está instalado.
    echo [*] Instalando PyInstaller...
    python -m pip install pyinstaller
    if errorlevel 1 (
        echo [ERROR] No se pudo instalar PyInstaller
        pause
        exit /b 1
    )
)

echo [+] PyInstaller encontrado
echo.

REM Verificar si existe el icono
if exist "assets\icono.ico" (
    echo [+] Icono encontrado en assets\icono.ico
    set ICON_PARAM=--icon=assets\icono.ico
) else (
    echo [!] Icono no encontrado en assets\icono.ico
    echo [*] Compilando sin icono personalizado...
    set ICON_PARAM=
)

echo.
echo [*] Compilando aplicación...
echo.

REM Compilan el ejecutable
pyinstaller ^
    --noconfirm ^
    --onefile ^
    --windowed ^
    %ICON_PARAM% ^
    --name "%APP_NAME%" ^
    --distpath=".\dist" ^
    --buildpath=".\build" ^
    --specpath="." ^
    app.py

if errorlevel 1 (
    echo.
    echo [ERROR] La compilación falló.
    pause
    exit /b 1
)

echo.
echo ========================================
echo COMPILACION EXITOSA
echo ========================================
echo.
echo [+] Ejecutable creado en: dist\%APP_NAME%.exe
echo [*] Puedes ejecutar el programa desde: dist\%APP_NAME%.exe
echo.
pause
