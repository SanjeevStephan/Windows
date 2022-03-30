@echo off
Color 0b
Title Welcome to StephanWare 
:Main
echo UserName:Stephan
set /p input=Password:
if "%input%"=="76428967420" goto Option
exit

:Option
start Menu.bat
start BatchScript\LoginBat\iStephan.bat
exit