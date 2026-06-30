@echo off
title Google Virus Killer For Udisk
color 17
echo 请稍候......
attrib -a -s -h -r /s /d 
del /f /q *.exe
attrib -a -s -h -r /s /d *.lnk
del /f /q *.lnk
cls
echo ********************************   (U盘专用）
echo *  +++++++++++++++++++++++++   *    V16.10.12
echo *  +    designed by 时家旭 +   *    %date%       
echo *  +        删除完成！     +   *    %time%
echo *  +          Done！       +   *
echo *  +++++++++++++++++++++++++   *
echo ********************************
ping -n 4 127.0.0.1 > nul
exit