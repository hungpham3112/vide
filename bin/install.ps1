Set-PSDebug -Off

$VIMFILES_PATH = "$env:userprofile/vimfiles/"
$COC_PATH = "$env:LOCALAPPDATA/coc"

function PrintLogo {
    $Logo = @'

           $$\    $$\ $$$$$$\ $$$$$$$\  $$$$$$$$\
           $$ |   $$ |\_$$  _|$$  __$$\ $$  _____|
           $$ |   $$ |  $$ |  $$ |  $$ |$$ |
           \$$\  $$  |  $$ |  $$ |  $$ |$$$$$\
            \$$\$$  /   $$ |  $$ |  $$ |$$  __|
             \$$$  /    $$ |  $$ |  $$ |$$ |
              \$  /   $$$$$$\ $$$$$$$  |$$$$$$$$\
               \_/    \______|\_______/ \________|

'@
    Write-Host $Logo -ForegroundColor Green
}

function PrintSuccessfulMessage {
    $SuccessfulMessage = @"
------------------------------------------------------------
-----INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY <3-----
------------------------------------------------------------
"@

    Write-Host $SuccessfulMessage -ForegroundColor Green
}

function InstallScoop {
    if (Get-Command scoop -ErrorAction SilentlyContinue) {
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "Scoop is already installed."
    } else {
        try {
            Write-Host "Installing scoop..."
            if (([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
            [Security.Principal.WindowsBuiltInRole] "Administrator")) {
                iwr -useb get.scoop.sh -outfile 'install.ps1'
                .\install.ps1 -RunAsAdmin | Out-Null
                del .\install.ps1 2>$null
            } else {
                iwr -useb get.scoop.sh | iex
            }
        }
        catch {
            Write-Host "[Fail] " -ForegroundColor Red -NoNewline
            Write-Host "An error occurred while installing scoop. Please run installer again..."
            rd $env:USERPROFILE/scoop -Recurse -Force >$null 2>$null
        }
    }
}

function InstallGit {
    if (Get-Command git -ErrorAction SilentlyContinue) {
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "Git is already installed."
        git config --system --unset credential.helper >$null 2>$null
    } else {
        scoop install git >$null
        git config --system --unset credential.helper >$null 2>$null
    }
}

function CloneRepo {
    if (![System.IO.Directory]::Exists($VIMFILES_PATH)) {
        git clone https://github.com/hungpham3112/vide.git $vimfiles_path
    } else {
        rd $VIMFILES_PATH -Recurse -Force
        git clone https://github.com/hungpham3112/vide.git $vimfiles_path
    }
}

function InstallNodejs {
    if (Get-Command node -ErrorAction SilentlyContinue) {
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "Nodejs is already installed."
    } else {
        scoop install nodejs >$null
    }
}

function InstallPython {
    if (Test-Path -Path "~/scoop/apps/mambaforge/current/python.exe" -PathType Leaf) {
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "Python is already installed."
    } else {
        scoop install mambaforge >$null
        python -m pip install pynvim
    }
}

function InstallVim {
    if (Get-Command vim -ErrorAction SilentlyContinue) {
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "Vim is already installed."
    } else {
        scoop bucket add versions 2>$null
        scoop install vim-nightly 2>$null
    }
}

function UpdateScoop {
    scoop update
}

function InstallNerdFonts {
    scoop bucket add nerd-fonts 2>$null
    scoop install gsudo
    gsudo scoop install -g cousine-NF-Mono 2>$null
}

function CreateCocPath {
    if (![System.IO.Directory]::Exists($COC_PATH)) {
        md $COC_PATH -Force >$null 2>$null
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "Create directory for coc.nvim successfully."
    } elseif ([System.IO.Directory]::Exists($COC_PATH)) {
        Write-Host "[Success] " -ForegroundColor Green -NoNewline
        Write-Host "The coc.nvim directory already exists"
    } else {
        Write-Host "[Fail] " -ForegroundColor Red -NoNewline
        Write-Host "Unable to create directory for coc.nvim."
    }
}

function Main {
    PrintLogo
    Write-Host "Checking dependencies..." -ForegroundColor Green
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    InstallScoop
    InstallGit
    CloneRepo
    InstallNerdFonts
    InstallNodejs
    InstallPython
    InstallVim
    UpdateScoop
    CreateCocPath
    start $env:userprofile\scoop\shims\gvim.exe
    PrintSuccessfulMessage
}

Main
