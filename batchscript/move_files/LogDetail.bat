@echo off
echo ==============================================================
echo The Below example is used to find compter and Logged on Users
echo ==============================================================
::window version check
IF NOT "%Os%"=="WINDOW_NT" GOTO Syntax
echo .%* | Find "?" > NUL
:: Command line parameter check
IF NOT ERRORLEVEL 1 GOTO Syntax
IF NOT [%2]==[] GOTO Syntax
:: keep variable local 
SETLOCAL
::: Initilalize variable
SET WSS=
:: Parse command line parameter
IF NOT [%1]==[] FOR /F "tokens = 1 delims = \ " %%A IN ('ECHO.%~1') DO SET WSS = %%a
:: use net view and nbtstat to find computers and loggged on users
FOR /F "tokens = 1 delimss = \ " %%a IN ('NET VIEW ^ | FIND /I "\\%WSS%"') DO FOR /F "tokens = 1 delims = " %%A IN ('NBTSTAT -a %%a ^ | FIND /I /V "%%a" ^ | FIND "<03>" ') DO ECHO. %%a %%A
:: Done
ENDLOCAL 
GOTO:EOF
:Syntax
ECHO Display logged on users and their workstations
ECHO Usage: ACTUSR [filter]
IF "%OS%"=="WINDOW_NT" ECHO Where : filter is the first part of the computer name^(s^)to be displayed


