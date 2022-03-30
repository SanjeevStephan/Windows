@echo off
title CD Backup Data List
echo Backup Data List here!
color 0b
echo   Welcome to Backup
echo off
echo  Do You want To Hide(h)/Unhide(uh) the Backup Folder
echo     [h]   Hide.
echo     [uh]  Unhide.
echo     [0]   Edit.
echo     ______________________________________________________________________
echo     Batch No.    Label Name     Contents                   Batch Directory 
echo     [A01]        sql_driver     sql jars                   D:\Developer_Tools\IDE\SQL DBMS\sql JDBC Driver jar
echo     [A02]        laptop_driver  Dell vostro 3553 driver    D:\Softwares\Dell_Drivers
echo     ______________________________________________________________________

set /p choice=Enter Batch_Number to contiune....
if "%choice%"=="0" goto edit
if "%choice%"=="1" goto driver
if "%choice%"=="h" goto hide
if "%choice%"=="uh" goto unhide

exit
:edit
start notepad D:\backup\dbackup.bat
exit

:hide
attrib +s +h D:\backup
echo Backup Successfully Hiden
exit

:unhide
attrib -s -h D:\backup
echo Backup successfully Unhide
exit
:driver
color 0a
start D:\Softwares\Dell_Drivers
pause
exit