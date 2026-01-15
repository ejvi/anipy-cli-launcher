@echo off
:MENU
CLS
ECHO =====================================
ECHO   anipy-cli-launcher by ejvi:
ECHO =====================================
ECHO 1. Search Anime
ECHO 2. History
ECHO X. Exit
ECHO =====================================
ECHO.
ECHO Enter your choice [1,2,X]?
ECHO.
CHOICE /C 12X /N > NUL
IF ERRORLEVEL 3 GOTO END
IF ERRORLEVEL 2 GOTO OPTION_B
IF ERRORLEVEL 1 GOTO OPTION_A

:OPTION_A
anipy-cli.exe
PAUSE
GOTO MENU

:OPTION_B
anipy-cli.exe -H
PAUSE
GOTO MENU

:END
ECHO Exiting script