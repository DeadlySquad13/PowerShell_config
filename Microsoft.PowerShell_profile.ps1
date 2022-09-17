# Variables
$Env:CDPATH = "$HOME\.bookmarks"
$PSModules = $env:PSModulePath.split(';')[0]

# Settings.
# - Bash-like completion
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key Tab -Function AcceptLine
# - Vi mode.
Set-PSReadlineOption -EditMode vi

# - Terminal Icons.
Import-Module -Name Terminal-Icons

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

#function Head ($count) {
#  cat 
#}


# Utilities.
Import-Module EnvManagement
Import-Module Navigation
Set-Alias cd Set-LocationWithCdPath -Force -Option AllScope # Is not exported. More likely as it overrides cd.
Import-Module PythonDevelopment
Import-Module Testing # Currently only for palette testing (Show-ColorPalette).

# Aliases.
Import-Module Aliases
