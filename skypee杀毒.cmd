@echo off
title Google Virus Killer For Computer
color 17
echo 准备中,请稍候......
echo 下面若出现"拒绝访问",请以管理员方式打开.
cd /d C:/      
ping -n 2 127.0.0.1 > nul
echo 现在开始 结束病毒程序（step 1 of 4）......            
taskkill -f -im AutoIt3.exe                        
echo 现在开始 清除病毒注册表值（step 2 of 4）......                         
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v AntiUsbWorm /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v AntiWormUpdate /f                   
echo 现在开始 删除病毒源文件（step 3 of 4）......                        
attrib -a -s -h -r /s /d Google
del /f /s /q Google
attrib -a -s -h -r /s /d Skypee 
del /f /s /q Skypee
attrib -a -s -h -r /s /d AutoIt
del /f /s /q AutoIt
set/p hhb=电脑内病毒清除完成。要清理U盘病毒吗（可能有危险）？（y/n）
if %hhb%==n (
cls
echo 您已手动终止杀毒。
echo ********************************   (U盘专用）
echo *  +++++++++++++++++++++++++   *    V16.10.12
echo *  +    designed by 时家旭 +   *    %date%       
echo *  +        杀毒完成！     +   *    %time%
echo *  +          Done！       +   *
echo *  +++++++++++++++++++++++++   *
echo ********************************
ping -n 4 127.0.0.1 > nul
exit
)
if %hhb%==y (
echo 现在开始 清理U盘病毒（step 4 of 4）......
cd /d %~dp0
attrib -a -s -h -r /s /d 
attrib -a -s -h -r /s /d Google
del /f /s /q Google
attrib -a -s -h -r /s /d Skypee 
del /f /s /q Skypee
attrib -a -s -h -r /s /d AutoIt
del /f /s /q AutoIt
attrib -a -s -h -r /s /d *.lnk
del /f  /s /q *.lnk
del /f /q *.exe
echo 完成！
ping -n 1 127.0.0.1 > nul
cls
echo ********************************   
echo *  +++++++++++++++++++++++++   *    V17.07.11
echo *  +    designed by 时家旭 +   *    %date%       
echo *  +        杀毒完成！     +   *    %time%
echo *  +          Done！       +   *
echo *  +++++++++++++++++++++++++   *
echo ********************************
ping -n 4 127.0.0.1 > nul
)
exit