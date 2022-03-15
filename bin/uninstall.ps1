Set-PSDebug -Off
Set-ExecutionPolicy Bypass -Scope CurrentUser
cd $env:USERPROFILE
rd $env:LOCALAPPDATA/coc -Recurse -Force 2>nul
rd $env:USERPROFILE/scoop -Recurse -Force 2>nul
rd $env:USERPROFILE/vimfiles -Recurse -Force 2>nul
