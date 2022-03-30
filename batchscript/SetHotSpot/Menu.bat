@echo off
:main
cls
echo  ***********************************************************
echo   *    1.Set Hostednetwork
echo   *    2.Start Hostednetwork
echo   *    3.Stop Hostenetwork
echo  ***********************************************************
set /p choice=Enter your option:
if"%choice%"=="1" goto set
if"%choice%"=="2" goto start
if"%choice%"=="3" goto stop

:set
goto main

:start
start start.bat
goto main

:stop
start stop.bat
goto main

