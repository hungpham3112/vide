Set-PSDebug -Off

$VIMFILES_PATH = "$env:userprofile/vimfiles/"
$COC_PATH = "$env:LOCALAPPDATA/coc"
$FinalMessage = @"
------------------------------------------------------------
-----INSTALLATION DONE!!! RESTART TERMINAL AND ENJOY <3-----
------------------------------------------------------------
"@

$greenCheck = @{
  Object = [Char]8730
  ForegroundColor = 'Green'
  }

function InstallScoop {
    if (Get-Command scoop -ErrorAction SilentlyContinue) {
        Write-Host "Scoop is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
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
            Write-Host "An error occurred while installing scoop. Please run installer again..."
            rd $env:USERPROFILE/scoop -Recurse -Force >$null 2>$null
        }
    }
}

function InstallGit {
    if (Get-Command git -ErrorAction SilentlyContinue) {
        Write-Host "Git is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
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
        Write-Host "Nodejs is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    } else {
        scoop install nodejs >$null
    }
}

function InstallPython {
    if (Test-Path -Path "~/scoop/apps/python/current/python.exe" -PathType Leaf) {
        Write-Host "Python is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    } else {
        scoop install python >$null
        python -m pip install pynvim
    }
}

function InstallVim {
    if (Get-Command vim -ErrorAction SilentlyContinue) {
        Write-Host "Vim is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
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
    scoop install cousine-NF-Mono 2>$null
}

function CreateCocPath {
    if (![System.IO.Directory]::Exists($COC_PATH)) {
        md $COC_PATH -Force >$null 2>$null
    }
}

function Main {
    Write-Host "Welcome to VIDE" -ForegroundColor Green
    Write-Host "Checking requirements..." -ForegroundColor Green
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
    Write-Host $FinalMessage -ForegroundColor Green
}

Main
