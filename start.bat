@echo off
REM
chcp 65001 > nul

REM
mode con: cols=120 lines=35 

REM
title Installation des dependances du Tools

echo.
echo ===========================================
echo   Installation des dependances...
echo ===========================================
echo.

REM
pip install -r requirements.txt

REM
if %errorlevel% neq 0 (
    echo.
    echo ===========================================
    echo   ERREUR : L'installation des modules a echoue.
    echo   Assurez-vous que Python et pip sont installes et accessibles via PATH.
    echo ===========================================
    echo.
    pause
    exit /b %errorlevel%
)

REM
cls

REM
title 101sure V6 - Made by 101sure - Menu

echo.
echo ===========================================
echo   Installation terminee !
echo   Lancement du Tool...
echo ===========================================
echo.

REM
python dist\101sure.py

REM
pause
