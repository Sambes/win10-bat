@echo off

title ����ů��

echo "warm light"
adb root
adb shell "echo 1 > /sys/devices/platform/bl-ctl/warm"
pause