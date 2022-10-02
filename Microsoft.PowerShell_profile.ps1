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

# https://stackoverflow.com/a/45643124
function Find-PathInParentDirectories($pathToSearch, $fileName) {
    if ($pathToSearch -eq "") {
        return "File not found"
    }
    elseif (Test-Path "$pathToSearch\$fileName") {
        return $pathToSearch
    }
    else {
        return Find-PathInParentDirectories (Split-Path $pathToSearch) $fileName
    }
}

function Get-PackageInfo() {
    $head = Find-PathInParentDirectories ${pwd} package.json
    if ($head -eq "File not found") {
        return "package.json not found"
    }

    $packageInfo = cat ${head}/package.json | ConvertFrom-Json

    return $packageInfo
}
function Get-DevDependencies() {
    $packageInfo = $(Get-PackageInfo)
    if ($packageInfo -eq "package.json not found") {
        "packge.json not found"
    }

    return $(packageInfo).devDependencies
}
function Get-Dependencies() {
    $packageInfo = Get-PackageInfo
    if ($packageInfo -eq "package.json not found") {
        return "packge.json not found"
    }

    return $(packageInfo).dependencies
}

# Utilities.
Import-Module EnvManagement
Import-Module Navigation
Set-Alias cd Set-LocationWithCdPath -Force -Option AllScope # Is not exported. More likely as it overrides cd.
Import-Module PythonDevelopment
Import-Module Testing # Currently only for palette testing (Show-ColorPalette).

# Aliases.
Import-Module Aliases
