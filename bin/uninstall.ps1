Set-PSDebug -Off
Set-ExecutionPolicy Bypass -Scope CurrentUser
cd $env:USERPROFILE
rd $env:LOCALAPPDATA/coc -Recurse -Force 2>$null
scoop uninstall nodejs >$null
scoop uninstall python >$null
scoop uninstall vim-nightly >$null
sudo scoop uninstall -g cousine-NF-Mono 2>$null
rd $env:USERPROFILE/vimfiles -Recurse -Force 2>$null
$FinalMessage = @"
------------------------------------------------------------"
--------THANKS YOU FOR USING VIDE. SEE YOU LATER <3---------"
------------------------------------------------------------"
"@
Write-Host $FinalMessage -ForegroundColor Green

