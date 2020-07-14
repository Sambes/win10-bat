::=================================
::	Get log as bat			:
:: 	copyright: Sanle Zheng		:
::	date:2020.5.1			:
::=================================
@echo off
color A
title "Get Dsoc log"

adb root	
call:getdevice arg1
call:getCnt %arg1% arg2
echo arg1:%arg1%, arg2:%arg2%
call:getLog %arg1% %arg2%
pause
exit

:getdevice
for /f "tokens=*" %%i in ('adb shell getprop ro.product.model') do (
	set %1=%%i
)
goto:eof

:getCnt
for /f "tokens=*" %%i in ('adb shell "ls /data/%1-dmesg*.log | busybox wc -l"') do (
	set a=%%i
)
set /a a+=1
set %2=%a%
goto:eof

:getLog
echo "Get log %1 cnt -> %2"
adb shell "dmesg > /data/%1-dmesg-%2.log"
adb pull /data/%1-dmesg-%2.log
adb shell "logcat -d > /data/%1-logcat-%2.log"
adb pull /data/%1-logcat-%2.log
adb shell "logcat -d -b radio > /data/%1-radio-%2.log"
adb pull /data/%1-radio-%2.log
goto:eof
