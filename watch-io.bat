@echo off
title "watch IO"
echo "watch headset IO"
adb root
for /l %%I in (1,1,1000) do  (
timeout /t 1 & adb shell "cat /d/gpio | grep headset" 
)

pause