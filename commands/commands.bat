@echo off
title commands
goto Commands


:allcmd
cls
echo all commands
echo.
FOR /F %%i IN (commands.txt) DO @echo %%i
echo.
goto Commands


:NCM
cls
echo no Commands called %cm%

:Commands
echo.
echo.
SET /P cm=Command:
if "%cm%"=="all" goto allcmd
if "%cm%"=="back" goto back
FOR /F %%i IN (commands.txt) DO if "%cm%"=="%%i" goto open
cls
goto NCM

:open
%cm%.bat

:back
cd..
os.bat