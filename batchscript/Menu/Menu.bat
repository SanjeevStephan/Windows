@echo off
color 0b
:main
cls
title StephanWare : Menu
echo [0]
echo [1] Hide Unhide 
set /p input=
if "%input%"=="0" goto 0
if "%input%"=="1" goto 1
exit

:1
set /p input=hide(h) unhide(uh)
if "%input%"=="h" goto hide
if "%input%"=="uh" goto unhide
goto main

:hide
start hide.bat
goto main
echo Files have been hidden successfully

:unhide
start unhide.bat
goto main
echo Files have been unhidden successfully