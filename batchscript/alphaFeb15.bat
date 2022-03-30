@echo off
title Alpha_January_2015
:alpha
cls
echo  Digit_Alpha_January_2015
echo   [0]  Edit
echo   [1]  CES
echo   [2]  Distro
echo   [3]  Emulators
echo   [4]  Essentials
echo   [5]  Sponsored
set /p jan=Enter any number to continue...
if "%jan%"=="0" goto edit
if "%jan%"=="1" goto CES
if "%jan%"=="2" goto distro
if "%jan%"=="3" goto emulators
if "%jan%"=="4" goto essentials
if "%jan%"=="5" goto sponsored

:edit
start notepad D:\Softwares\Digit\BatDigit\alphaFeb15.bat
exit

:CES
start D:\Softwares\Digit\Photoshop
goto alpha

:emulators
cls
echo  [0]  Edit
echo  [1]  Console
echo  [2]  Desktop
echo  [3]  Hardware
echo  [4]  Mobile
set /p soft=ENnter any number to continue....
if "%soft%"=="0" goto edit
if "%soft%"=="1" goto console
if "%soft%"=="2" goto desktop
if "%soft%"=="1" goto hardware
if "%soft%"=="2" goto mobile
exit
:console
start D:\Softwares\Digit\Emulators\Console
goto emulators
:desktop
start D:\Softwares\Digit\Emulators\Desktop
goto emulators
:hardware 
start D:\Softwares\Digit\Emulators\Hardware
goto emulators
:mobile
start D:\Softwares\Digit\Emulators\Mobile
goto emulators

:essentials
start D:\Softwares\Digit\Essentials
exit

:sponsored
start D:\Softwares\Digit\Sponsored
exit
