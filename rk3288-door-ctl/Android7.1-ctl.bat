::=================================
::	door controler test			:
:: 	copyright: Sanle Zheng		:
::	date:2020.5.26			:
::=================================
@echo off
color B
title rk3288 door controler test

echo start test door controler
for /f "tokens=*" %%i in ('adb shell "ls /sys/devices/platform/io-ctl/io"') do (
	set a=%%i
)

::if defined a (
adb shell "echo '1 1 '> %a%"
adb shell "echo '2 1 '> %a%"
adb shell "cat %a%"
timeout /t 3
adb shell "echo '1 0 '> %a%"
adb shell "echo '2 0 '> %a%"
adb shell "cat %a%"
echo test door controler finished
::)else(
::	echo can't find node
::)
timeout /t 3
exit