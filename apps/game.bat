@echo off
cls
title game
echo game test
echo this is a test of a game
echo to go back use /back
echo to start use /start
SET /p a=/
if %a%=="back" goto back
if %a%=="start" goto start

:back
back.bat

:start
echo welcome to simple game