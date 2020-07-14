::=================================
::	door controler test			:
:: 	copyright: Sanle Zheng		:
::	date:2020.5.26			:
::=================================
@echo off
color B
title "rk3288 door controler test"

echo "start test door controler"

adb root
adb remount
adb push door.sh /system/bin/
adb shell "chmod 777 system/bin/door.sh"
adb shell ''system/bin/door.sh"

echo "test door controler finished"
pause