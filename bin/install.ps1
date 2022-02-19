Set-PSDebug -Off
function refreshenv {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
}
iwr -useb get.scoop.sh | iex
git config --global --unset credential.helper
scoop update
scoop bucket add nerd-fonts
scoop install cousine-NF-Mono 2>$null
scoop install vim nodejs 
refreshenv
md $env:LOCALAPPDATA\coc -Force >$null 2>$null
gvim -c ":PlugInstall | :qa!"
$FinalMessage = @"
------------------------------------------------------------
-----INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY<3-----
------------------------------------------------------------
"@
Write-Output $FinalMessage


