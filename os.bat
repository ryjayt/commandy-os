@echo off
(
	echo commandy os
    echo beta v1.0
    echo dev: kempy
    echo changelog 
    echo added apps and commands
) > info.txt
:main
title commandy os
cls
echo options
echo.
echo apps
echo command
echo info
echo.
echo.
SET /P o=
if %o%==apps goto OpenApp
if %o%==command goto commands
if %o%==info goto info
goto main


:allapps
cls
echo all apps installed
echo any installed aps may be harmfull to your computer. use at your own risk
echo.
FOR /F %%i IN (apps.txt) DO @echo %%i
echo.
goto OpenApp

:NAP
echo no app called %app%

:OpenApp
SET /P app=App:
if "%app%"=="all" goto allapps
FOR /F %%i IN (apps.txt) DO if "%app%"=="%%i" goto open
cls
goto NAP

:open
echo opening %app%
cd apps
%app%.bat

pause

:commands
cd commands
commands.bat
pause

:info
FOR /F %%i IN (info.txt) DO @echo %%i
pause
cls
FOR /F %%i IN (help.txt) DO @echo %%i
pause
goto main