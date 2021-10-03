@echo off
set /p a=app name:
cd..

(
FOR /F %%i IN (apps.txt) DO @echo %%i
echo %a%

) > app.txt

(
FOR /F %%i IN (app.txt) DO @echo %%i

) > apps.txt
 del app.txt
cls
echo done
cd commands
commands.bat