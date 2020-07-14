@echo off
title ¹Ø±Õ×Ô¶¯·­Ò³

echo "swif page off"
adb shell 'setprop debug.hra.reader 0'
timeout /t 0
exit
