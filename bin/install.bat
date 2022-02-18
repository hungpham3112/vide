@echo off
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"; Set-ExecutionPolicy RemoteSigned -scope CurrentUser;. $env:userprofile\vimfiles\bin\install.ps1;
