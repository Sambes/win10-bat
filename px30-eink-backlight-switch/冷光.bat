@echo off
title �������

echo "cold light"
adb root
adb shell "echo 0 > /sys/devices/platform/bl-ctl/warm"
timeout /t 2
exit
::pause