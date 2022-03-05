Set-PSDebug -Off

$VIMFILES_PATH = "$env:userprofile/vimfiles/"
$COC_PATH = "$env:LOCALAPPDATA/coc" 

Write-Host "Welcome to VIDE!"
Write-Host "Checking requirements..."
if (Get-Command scoop -ErrorAction SilentlyContinue) {
    Write-Host "Scoop is already installed ✅"
} else {
    try {
        Write-Host "Installing scoop..."
        iwr -useb get.scoop.sh | iex
    }
    catch {
        Write-Host "An error occurred while installing scoop. Re-installing..."
        rd $env:USERPROFILE/scoop -Recurse -Force >$null 2>$null
    }
}

if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "Git is already installed ✅"
} else {
    scoop install git >$null
    git config --global --unset credential.helper >$null 2>$null
    Write-Host "Install git successfully ✅"
}
if (![System.IO.Directory]::Exists($VIMFILES_PATH)) {
    git clone https://github.com/hungpham3112/vide.git $vimfiles_path
}

if (Get-Command node -ErrorAction SilentlyContinue) {
    Write-Host "Nodejs is already installed ✅"
} else {
    scoop install nodejs >$null
    Write-Host "Install nodejs successfully ✅"
}

if (Get-Command python -ErrorAction SilentlyContinue) {
    Write-Host "Python is already installed ✅"
} else {
    scoop install python >$null
    Write-Host "Install python successfully ✅"
}

if (Get-Command vim -ErrorAction SilentlyContinue) {
    Write-Host "Python is already installed ✅"
} else {
    scoop bucket add versions
    scoop install vim-nightly >$null
    Write-Host "Install vim-nightly successfully ✅"
}

function UpdateScoop {
    scoop update
}

function Install_Nerd_Fonts {
    scoop bucket add nerd-fonts
    scoop install cousine-NF-Mono 2>$null
    Write-Host "Install nerd-fonts successfully ✅"
}

if (![System.IO.Directory]::Exists($COC_PATH)) {
    md $COC_PATH -Force >$null 2>$null
}

start ~\scoop\shims\gvim.exe
$FinalMessage = @"
------------------------------------------------------------
-----INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY <3-----
------------------------------------------------------------
"@
Write-Output $FinalMessage


