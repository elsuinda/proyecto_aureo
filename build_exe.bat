@echo off
set APP_NAME=SEPTEM
pyinstaller --noconfirm --onedir --windowed --icon=assets\icono.ico --name "%APP_NAME%" app.py
pause
