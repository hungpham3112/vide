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
  NoNewLine = $true
  }

function InstallScoop {
    if (Get-Command scoop -ErrorAction SilentlyContinue) {
        Write-Host "Scoop is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
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
}

function InstallGit {
    if (Get-Command git -ErrorAction SilentlyContinue) {
        Write-Host "Git is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    } else {
        scoop install git >$null
        git config --system --unset credential.helper >$null 2>$null
        Write-Host "Install git successfully " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    }
}

function CloneRepo {
    if (![System.IO.Directory]::Exists($VIMFILES_PATH)) {
        git clone https://github.com/hungpham3112/vide.git $vimfiles_path
    }
}

function InstallNodejs {
    if (Get-Command node -ErrorAction SilentlyContinue) {
        Write-Host "Nodejs is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    } else {
        scoop install nodejs >$null
        Write-Host "Install nodejs successfully " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    }
}

function InstallPython {
    if (Get-Command python -ErrorAction SilentlyContinue) {
        Write-Host "Python is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    } else {
        scoop install python >$null
        Write-Host "Install python successfully " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    }
}

function InstallVim {
    if (Get-Command vim -ErrorAction SilentlyContinue) {
        Write-Host "Python is already installed " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    } else {
        scoop bucket add versions
        scoop install vim-nightly >$null
        Write-Host "Install vim-nightly successfully " -ForegroundColor Green -NoNewline
        Write-Host @greenCheck
    }
}

function UpdateScoop {
    scoop update
}

function InstallNerdFonts {
    scoop bucket add nerd-fonts
    scoop install cousine-NF-Mono 2>$null
    Write-Host "Install nerd-fonts successfully " -ForegroundColor Green -NoNewline
    Write-Host @greenCheck
}

function CreateCocPath {
    if (![System.IO.Directory]::Exists($COC_PATH)) {
        md $COC_PATH -Force >$null 2>$null
    }
}

function main {
    Write-Host "Welcome to VIDE" -ForegroundColor Green -NoNewline
    Write-Host "Checking requirements.." -ForegroundColor Green -NoNewline
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    InstallScoop
    UpdateScoop
    InstallGit
    CloneRepo
    InstallNerdFonts
    InstallNodejs
    InstallPython
    InstallVim
    CreateCocPath
    start ~\scoop\shims\gvim.exe
    Write-Output $FinalMessage -ForegroundColor Green
}
