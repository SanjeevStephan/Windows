@echo off
@title Android Device System Information
color 0b
mode con cols=87 lines=50 >nul
::
    echo.
	echo                               AM BATMAN BATMAN BATMAN 
	echo                      I AM BATMAN BATMAN BAT BATMAN BAT 
	echo                 ATMAN                                                     ATMAN 
	echo             AN B                                                                  AN B 
	echo           TMA                                                                         TMA                              
	echo         BAT                                                                             BAT
	echo       N BA      ***********************************************               N BA                      
	echo       N B       *      Android Device System Information      *             N B            
	echo      AN B        *    Created by Sanjeev Stephan Murmu *                AN B 
	echo       N B       *       Visit me at StephanWare.com           *              N B                   
	echo       N BA      ***********************************************                N BA       
	echo         BAT                                                                                BAT    
	echo          ATMA                                                                         ATMA
	echo            MAN B                                                                 MAN B
	echo                BATMA                                                         BATMA
	echo                    I AM BATMAN BATMAN BAT BATMAN BATMAN 
	echo                            AM BATMAN BATMAN BATMAN 
	echo.
::
echo. Make sure USB Debugging is enabled and device connected.
echo. If your device cannot be found, make sure drivers are installed.
echo. Waiting for device to read info...
tools\adb kill-server > nul
tools\adb wait-for-device devices > nul
echo. Pulling Information...
MKDIR MoreInfo
tools\adb shell "cat /proc/meminfo" > MoreInfo\meminfo.txt
tools\adb shell "cat /proc/mounts" > MoreInfo\mounts.txt
tools\adb shell "cat /system/build.prop" > MoreInfo\build.prop
tools\adb shell "cat default.prop" > MoreInfo\default.prop
tools\adb shell "cat /proc/partitions" > MoreInfo\partitions.txt
tools\adb shell "df" > MoreInfo\df.txt
tools\adb shell "ls -la /dev/block/platform/msm_sdcc.1/by-name/" > MoreInfo\msm_partitions.txt
:::tools\adb shell "ls -la /dev/block/platform/omap/omap_hsmmc.0/by-name/" > MoreInfo\omap_partitions.txt
tools\adb shell "cat /proc/cpuinfo" > MoreInfo\cpuinfo.txt
tools\adb pull /sys/class/power_supply/max170xx_battery/capacity
tools\adb pull /sys/class/power_supply/battery/capacity
tools\adb pull /sys/class/power_supply/max170xx_battery/health
tools\adb pull /sys/class/power_supply/battery/health
tools\adb pull /sys/class/power_supply/max170xx_battery/status
tools\adb pull /sys/class/power_supply/battery/status
tools\adb pull /sys/class/power_supply/max170xx_battery/technology
tools\adb pull /sys/class/power_supply/battery/technology
cls
echo.
echo. Here is your device's information:
echo.
echo. Root Status is...   
tools\adb shell "su -c 'echo Rooted'"
echo.
echo. Your battery level (percentage) is...
type capacity
echo.
echo. Your charging status is...
type status
echo.
echo. Your charger health is...
type health
echo.
echo. Your battery type is...
type technology
echo.
echo. Your device has been powered on for...
tools\adb shell "uptime"
echo.
echo. Your Software Version is...
tools\adb shell "getprop ro.build.version.full"
tools\adb shell "getprop ro.build.fingerprint"
echo.
::echo. Your operating system is...
::tools\adb shell "busybox uname" 
::echo.
::##This is always going to say Linux and requires busybox anyway.
::echo. Your hardware is...
::tools\adb shell "cat /proc/cpuinfo"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. Android Device System Information complete.
echo. Check for other device info in the MoreInfo folder.
::echo. Your memory information is...
::tools\adb shell "cat /proc/meminfo"
::echo.
echo.
echo.
echo. Press any key to exit.
del capacity > nul
del health > nul
del status > nul
del technology > nul
tools\adb kill-server > nul
pause > nul
