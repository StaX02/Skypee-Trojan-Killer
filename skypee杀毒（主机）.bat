@echo off
title Google Virus Killer For Computer
color 17
echo 准备中,请稍候......
echo 下面若出现"拒绝访问",请以管理员方式打开.
echo.
cd C:/      
ping -n 2 127.0.0.1 > nul
echo 现在开始 结束病毒程序(step 1 of 3)...... 
echo.           
taskkill -f -im AutoIt3.exe 
echo.                       
echo 现在开始 清除病毒注册表值(step 2 of 3)......                         
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v AntiUsbWorm /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v AntiWormUpdate /f   
echo.                
echo 现在开始 删除病毒源文件(step 3 of 3)......
echo.                        
attrib -a -s -h -r /s /d Google
attrib -a -s -h -r /s /d Skypee 
attrib -a -s -h -r /s /d AutoIt
del /f /s /q AutoIt
cls
echo ********************************   (主机专用）
echo *  +++++++++++++++++++++++++   *    V17.03.27    
echo *  +    designed by 时家旭 +   *   %date%     
echo *  +        删除完成！     +   *   %time%
echo *  +          Done！       +   *
echo *  +++++++++++++++++++++++++   *
echo ********************************
ping -n 4 127.0.0.1 > nul
pause