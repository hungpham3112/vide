@echo off
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe";Set-ExecutionPolicy RemoteSigned -scope CurrentUser;Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh'); exit
scoop install git 
scoop update 
scoop install vim nodejs python go rustup llvm -y
vim -c ":PlugInstall | :qa!"
echo.------------------------------------------------------------
echo.INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY"<3"
echo.------------------------------------------------------------
pause
exit /b 0
