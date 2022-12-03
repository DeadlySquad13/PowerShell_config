# Variables
$Env:BookmarksPath = "$HOME\.bookmarks"
$Env:CDPATH = "$Env:BookmarksPath"
$PSModules = $env:PSModulePath.split(';')[0]

# Settings.
# - Default editor.
$env:EDITOR = "nvim"
# - Bash-like completion
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key Tab -Function AcceptLine
# - Vi mode.
Set-PSReadlineOption -EditMode vi

# - Terminal Icons.
Import-Module -Name Terminal-Icons
Set-TerminalIconsTheme -ColorTheme 'devblackops_light'

# - Posh (pretty prompt).
$OhMyPoshConfigPath = Join-Path -Path $PSModules -ChildPath 'OhMyPosh'
$OhMyPoshTheme = Join-Path -Path $OhMyPoshConfigPath -ChildPath 'DeadlyAtelierSulphurpoolLight.omp.json'

oh-my-posh init pwsh --config "$OhMyPoshTheme" | Invoke-Expression


# Utility functions.
function Get-CmdletAlias ($cmdletname) {
  Get-Alias |
    Where-Object -FilterScript {$_.Definition -like "$cmdletname"} |
      Format-Table -Property Definition, Name -AutoSize
}

function Get-ModuleExists {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$moduleName)

    return $(Get-Module -ListAvailable -Name $moduleName).Length
}

function Get-CommandExists {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$commandName)

    return $(Get-Command $commandName).Length
}

function Is-Directory {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$fileName)

    return ($(Get-Item $target) -is [System.IO.DirectoryInfo])
}

# General.
# From "C:\Test\Logs\Pass1.log" we get "Logs" - directory name of the file.
function Get-DirectoryName {
    param($path)

    return Split-Path -Leaf (Split-Path -Parent $path)
}

#function Head ($count) {
#  cat 
#}

# KbdBuff Seraching.
function Invoke-FuzzyOpenInBrowser {
    param(
        [Parameter(Mandatory)]
        $options
        # [switch]$browser
    )

    $searchResult = Invoke-PsFzfRipgrep $options -NoEditor

    if (-not $searchResult) {
        return
    }

    $browserExecutable = "Chrome"
    if ($(Get-DirectoryName $searchResult) -eq "Opera") {
        $browserExecutable = "Opera"
    }

    return & $browserExecutable $searchResult
}

# function Invoke-FuzzyOpenInOpera($options) {
#     "C:\Users\Александр\AppData\Local\Programs\Opera\launcher.exe" $(Invoke-PsFzfRipgrep $options -NoEditor)
# }

# Utilities.
Import-Module EnvManagement
Import-Module Navigation
Set-Alias cd Set-LocationWithCdPath -Force -Option AllScope # Is not exported. More likely as it overrides cd.
Import-Module PythonDevelopment
Import-Module Testing # Currently only for palette testing (Show-ColorPalette).
Import-Module ProjectInfo

# Aliases.
Import-Module Aliases
# - Fzf aliases.
if ($(Get-CommandExists fzf*.exe) -and $(Get-ModuleExists PsFzf)) {
  Set-PsFzfOption -EnableAliasFuzzyEdit # `fe`,
  Set-PsFzfOption -EnableAliasFuzzyHistory # `fh`,
  Set-PsFzfOption -EnableAliasFuzzySetLocation # `fd`.

  if (Get-CommandExists scoop) {
      Set-PsFzfOption -EnableAliasFuzzyScoop # `fs`.
  }
}

# - Start process without occupying current console.
#function Start-Programm($params) {
#    Start-Process -WindowStyle Hidden $params
#}

function fvi($params) {
    Start-Process -WindowStyle Hidden fvim $params
}

function gvi($params) {
    Start-Process -WindowStyle Hidden goneovim $params
}
