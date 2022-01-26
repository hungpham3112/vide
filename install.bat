@echo off
net session>nul 2>&1

if %errorlevel% equ 0 (
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    @choco install git vim nodejs python go rustup.install llvm
    @refreshenv
    @vim -c ":PlugInstall | :qa!"
    echo.------------------------------------------------------------
    echo.INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY"<3"
    echo.------------------------------------------------------------

) else (
    echo.--------------------------------------------------------------
    echo.ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.
    echo.--------------------------------------------------------------
    echo.You will need to restart this program with Administrator privileges by right-clicking and select "Run As Administrator"
    exit /b 1
)
