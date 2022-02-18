@echo off
cd %userprofile% 
rd /q /s %localappdata%\coc 2>nul
rd /q /s %userprofile%\scoop 2>nul 
rd /q /s %userprofile%\vimfiles 2>nul
cd %userprofile%

