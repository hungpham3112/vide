@echo off
cd %userprofile% 
rd /q /s %localappdata%\coc 2>nul
rd /q /s %userprofile%\scoop 2>nul 
rd /q /s %userprofile%\vimfiles 2>nul
echo ----------------------------------------------------------------
echo --------THANKS FOR USING VIDE. HOPE TO SEE YOU AGAIN <3---------
echo ----------------------------------------------------------------
pause 
exit 0

