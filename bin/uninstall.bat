@echo off
echo ----------------------------------------------------------------
echo --------THANKS FOR USING VIDE. HOPE TO SEE YOU AGAIN <3---------
echo ----------------------------------------------------------------
cd %userprofile% 
rd /q /s %localappdata%\coc 2>nul
rd /q /s %userprofile%\scoop 2>nul 
rd /q /s %userprofile%\vimfiles 2>nul

