# Variables.
$Env:BookmarksPath = "$HOME\.bookmarks"
$Env:CDPATH = "$Env:BookmarksPath"
$Env:PSModules = $Env:PSModulePath.split(';')[0]

# HuggingFace place for personal models and token.
$Env:HF_HOME = "S:\ds13\Soft\HuggingFace"
$HF_HOME = "S:\ds13\Soft\HuggingFace"
$Env:HOME = "C:\Users\ds13"

# Sourcegraph settings.
$Env:SRC_ENDPOINT = "https://sourcegraph.com"

$Env:YAZI_FILE_ONE = "J:\ds13\Soft\-scoop\apps\git\current\usr\bin\file.exe"

# Settings.
# - Path Environment Variable.
$WindowsEssentials = (
    "C:\Windows",
    "C:\Windows\System32",
    "C:\Windows\System32\Wbem",
    "C:\Windows\System32\WindowsPowerShell\v1.0\",
    "C:\WINDOWS\System32\OpenSSH\"
)

$VisualStudioCode = (
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\VC\Tools\MSVC\14.25.28610\bin\HostX86\x86",
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\Common7\IDE\VC\VCPackages",
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\Common7\IDE\CommonExtensions\Microsoft\TestWindow",
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer",
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\MSBuild\Current\bin\Roslyn",
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\Team Tools\Performance Tools",
    "E:\soft\Visual Studio Code\Visual Studio Code 2019\\MSBuild\Current\Bin",

    "C:\Program Files (x86)\Microsoft Visual Studio\Shared\Common\VSPerfCollectionTools\vs2019\",
    "C:\Program Files (x86)\Windows Kits\10\bin\10.0.18362.0\x86",
    "C:\Program Files (x86)\Windows Kits\10\bin\x86"
)

$WebDevelopment = (
    "C:\Program Files (x86)\Yarn\bin\",
    "E:\soft\Node.js\"
)

$Python = (
    "C:\Users\ds13\AppData\Roaming\Python\Python310\Scripts",
    "C:\Users\ds13\scoop\apps\python310\current\Scripts",
    # "C:\Users\Александр\.windows-build-tools\python27\",
    "C:\Users\ds13\scoop\apps\python310\current"
)

$Java = (
    # "C:\Program Files\Common Files\Oracle\Java\javapath",
    # "C:\Program Files (x86)\Common Files\Oracle\Java\javapath",
    # "C:\Program Files (x86)\Common Files\Oracle\Java\javapath",
    # "C:\ProgramData\Oracle\Java\javapath",
    # "C:\Program Files\Java\jdk-14\bin",
    "C:\Program Files\BellSoft\LibericaJDK-8\bin"
)

# Not used.
$MicrosoftSql = (
    "C:\Program Files\Microsoft SQL Server\110\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\120\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\130\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\",
    "C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\",
    "C:\Program Files (x86)\Microsoft SQL Server\150\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\150\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\150\DTS\Binn\"
)

# Not used.
$Nvidia = (
    "C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR",
    "C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common"
)

# Not used.
$Perl = (
    "C:\Users\ds13\scoop\apps\perl\current\perl\site\bin",
    "C:\Users\ds13\scoop\apps\perl\current\perl\bin",
    "C:\Users\ds13\scoop\apps\perl\current\c\bin"
)

# Not used.
$Rust = (
    "C:\Users\ds13\scoop\apps\rustup-msvc\current\.cargo\bin"
)

# Not used.
$Drivers = (
    "C:\Program Files (x86)\Razer Chroma SDK\bin",
    "C:\Program Files\Razer Chroma SDK\bin"
)

# Not used.
$MicrosoftDevelopment = (
    "C:\Program Files\Microsoft\Web Platform Installer\",
    "C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\",
    "C:\Program Files (x86)\IncrediBuild",
    "C:\Program Files\Azure Data Studio\bin",
    "C:\Program Files\PuTTY\",
    "C:\Program Files\dotnet\",
    "C:\Program Files (x86)\dotnet\"
)

# Not used.
$Applied = (
    "E:\soft\Calibre (Editing Epub files\",
    "C:\Program Files (x86)\ffmpeg\bin",
    "C:\Program Files\Sourcegraph",
    # "C:\Users\ds13\scoop\apps\mingw\current\bin",
    # "C:\Program Files\GoodSync",
    # "C:\Program Files (x86)\VirtuaWin",
    # "E:\soft\DevOps\Services__Amazon",
    # "C:\Users\Александр\AppData\Local\Programs\Microsoft VS Code\bin",
    # "E:\Archive\Installers\Soft\Applied\Programming\FVim",
    # "E:\soft\JetBrains\JetBrains PyCharm Professional\JetBrains PyCharm Professional 2019.2.4\bin",
    "$Env:HOME\.local\bin" # For pipx.
)

$PathItems = $WindowsEssentials + $VisualStudioCode + $WebDevelopment + $Python + $Java + (
    "E:\Archive\Installers\Soft\Programming\Vcpkg\installed\x64-windows-static\lib",
    "E:\Archive\Installers\Soft\Programming\Vcpkg\installed\x64-windows-static\include",

    # "C:\Program Files\MySQL\MySQL Utilities 1.6\",

    # "E:\soft\Graphics Editors\QuickTime\QTSystem\",
    # "C:\Program Files\Cloudflare\Cloudflare WARP\",
    "E:\soft\DevOps\Services__Amazon\",
    "C:\ProgramData\DockerDesktop\version-bin",

    # "C:\Users\ds13\scoop\apps\oh-my-posh\current\bin",
    # "C:\Users\ds13\scoop\apps\gcc\current\bin",
    "J:\ds13\Soft\-scoop\apps\logseq\current",
    "J:\ds13\Soft\-scoop\shims",
    "C:\ProgramData\Microsoft\Windows\Start Menu\Programs",
    "C:\Users\ds13\AppData\Local\Microsoft\WindowsApps\",
    # "C:\Program Files\PowerShell\7-preview\preview",
    # "C:\Program Files\PowerShell\7-preview",
    "C:\Program Files\Docker\Docker\resources\bin",
    "C:\Users\Александр\AppData\Roaming\Microsoft\Windows\Start Menu\Programs",
    "C:\Users\ds13\AppData\Local\Programs\oh-my-posh\bin",
    "C:\Users\Александр\AppData\Roaming\npm",
    "E:\Scripts\EleDo",

    "C:\Users\ds13\go\bin",
    
    "C:\Program Files\Neovim\bin",
    "C:\Users\ds13\AppData\Local\nvim-data\mason\bin"
)

$User = [EnvironmentVariableTarget]::User
$SystemWidePath = [Environment]::GetEnvironmentVariable('Path', $User)

$Env:Path = "$SystemWidePath;" + $($PathItems -join [IO.Path]::PathSeparator)
# - Default editor.
$Env:EDITOR = "nvim"

# - Terminal Icons.
Import-Module -Name Terminal-Icons
Set-TerminalIconsTheme -ColorTheme 'devblackops_light' # Nice with DeadlyAtelierSulphurpoolLight

# - Posh (pretty prompt).
function Set-EnvVar
{
  $p = $executionContext.SessionState.Path.CurrentLocation
  $osc7 = ""
  if ($p.Provider.Name -eq "FileSystem")
  {
    $ansi_escape = [char]27
    $provider_path = $p.ProviderPath -Replace "\\", "/"
    $osc7 = "$ansi_escape]7;file://${env:COMPUTERNAME}/${provider_path}${ansi_escape}\"
  }
  $env:OSC7=$osc7
}

New-Alias -Name 'Set-PoshContext' -Value 'Set-EnvVar' -Scope Global -Force
$OhMyPoshConfigPath = Join-Path -Path $Env:PSModules -ChildPath 'OhMyPosh'
$OhMyPoshTheme = Join-Path -Path $OhMyPoshConfigPath -ChildPath 'DeadlyAtelierSulphurpoolLight.omp.json'

$Env:VIRTUAL_ENV_DISABLE_PROMPT=1 # Disable default: we have already one in our custom prompt.
oh-my-posh init pwsh --config "$OhMyPoshTheme" | Invoke-Expression

if ($(Test-ApplicationExists s)) {
    (& s --completion powershell) | Out-String | Invoke-Expression
}


#function Head ($count) {
#  cat 
#}

# To create a new module:
#   New-ModuleManifest -Path $(Join-Path -Path $Env:PSModules -ChildPath Try1/Try1.psd1) -Description "Try1"
# And then fill info in it.
#   To check what you've got: `Get-Module -ListAvailable`
Import-Module PowershellReadLine

# Project modules.
Set-Alias cd Set-LocationWithCdPath -Force -Option AllScope # Is not exported. More likely as it overrides cd.
Import-Module PythonDevelopment
Import-Module Testing # Currently only for palette testing (Show-ColorPalette).
Import-Module ProjectInfo

# - Enable `gsudo !!`.
if (Test-ApplicationExists gsudo) {
    Import-Module gsudoModule
}

# References:
# https://superuser.com/a/760632, zotero://select/library/items/FWBNEHKA
function Get-FontFamilies {
    # Have been ruining output for some reason. Works even without it.
    # [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

    (New-Object System.Drawing.Text.InstalledFontCollection).Families
}

# # Navigation
Import-Module Navigation

# * Broot for powershell.
# Not sure if this part can be contained in 'Navigation/Broot' module.
# https://github.com/Canop/broot/issues/159
$isDotSourced = $MyInvocation.InvocationName -eq '.' -or $MyInvocation.Line -eq ''
if (-not $isDotSourced) {
    br $args
}

# # InfoField.
Import-Module InfoField

# # Music.
$Env:MusicFolder = "M:/Videos__Music"
Import-Module Music 3>$null # Contains some non-approved verbs.

# # Package Management.
Import-Module PackageManagement 3>$null # Contains some non-approved verbs.

# # VirtualBox.
Import-Module VirtualBox 3>$null # Contains some non-approved verbs.

# # ProjectInfo.
Import-Module ProjectInfo

# # Aliases.
Import-Module Aliases

Import-Module DockerCompletion

# * Fzf aliases.
if ($(Test-ApplicationExists fzf*.exe) -and $(Get-ModuleExists PsFzf)) {
  Import-Module PsFzf

  Set-PsFzfOption -EnableAliasFuzzyEdit # `fe`,
  Set-PsFzfOption -EnableAliasFuzzyHistory # `fh`,
  Set-PsFzfOption -EnableAliasFuzzySetLocation # `fd`.

  if (Test-ApplicationExists scoop) {
      Set-PsFzfOption -EnableAliasFuzzyScoop # `fs`.
  }
}

# - Start process without occupying current console.
#function Start-Programm($params) {
#    Start-Process -WindowStyle Hidden $params
#}

function avi() {
    [OutputType([System.Diagnostics.Process])]
    param([Parameter()]$params)

    $title = 'NeoVim'
    # FileSystemInfo is a base class for files and directories
    #   [docs](https://learn.microsoft.com/en-us/dotnet/api/system.io.filesysteminfo?view=net-7.0)
    if ($params -and ($(Get-Item $params) -is [System.IO.FileSystemInfo])) {
        # $title = "$params - $title"
        $title = "$params"
    }

    Start-Process -WindowStyle Hidden alacritty -ArgumentList "--title", $title, "-e", "nvim ${params}"
}

function avilog() {
    [OutputType([System.Diagnostics.Process])]
    param([Parameter()]$params)

    $title = 'NeoVim'
    # FileSystemInfo is a base class for files and directories
    #   [docs](https://learn.microsoft.com/en-us/dotnet/api/system.io.filesysteminfo?view=net-7.0)
    if ($params -and ($(Get-Item $params) -is [System.IO.FileSystemInfo])) {
        # $title = "$params - $title"
        $title = "$params"
    }

    Start-Process -WindowStyle Hidden alacritty -ArgumentList "--title", $title, "-e", "nvim --startuptime perf.log ${params}"
}

# Launch with servername to listen.
function aviju() {
    [OutputType([System.Diagnostics.Process])]
    param([Parameter()]$params)

    $title = 'NeoVim'
    # FileSystemInfo is a base class for files and directories
    #   [docs](https://learn.microsoft.com/en-us/dotnet/api/system.io.filesysteminfo?view=net-7.0)
    if ($params -and ($(Get-Item $params) -is [System.IO.FileSystemInfo])) {
        # $title = "$params - $title"
        $title = "$params"
    }

    Start-Process -WindowStyle Hidden alacritty -ArgumentList "--title", $title, "-e", "nvim --listen localhost:18898 ${params}"
}

function fvi($params) {
    Start-Process -WindowStyle Hidden fvim $params
}

function govi($params) {
    Start-Process -WindowStyle Hidden goneovim $params
}

$Env:GUI_EDITOR = "neovide"
# GuiVi stands for currently chosen gui client.
Set-Alias gvi $Env:GUI_EDITOR
# - Just for the sake of uniformity between Windows and Unix.
Set-Alias gvi-dev $Env:GUI_EDITOR 
# # Wsl.
function gvi-w() {
    & "$Env:GUI_EDITOR" --wsl
}

$Env:WSLENV="NVIM_APPNAME"
function gvi-wdev() {
    $Env:NVIM_APPNAME="nvim-dev"
    gvi-w
    Remove-Item Env:\NVIM_APPNAME
}
# Set-Alias gvi-wdev "NVIM_APPNAME=nivm-dev $Env:GUI_EDITOR --wsl"

function Get-IsoDate() {
    (Get-Date -Format "s").replace(':', '_')
}

$KBD_PATH = "~/Documents/KnowledgeBase__Data"
function New-Note() {
    $kbdPath = ((Get-Item $KBD_PATH) ? $KBD_PATH : '~/Documents')
    $fileName = "$(Get-IsoDate)_temp.md"

    gvi ${kbdPath}/${fileName}
}

# Templates.
$Env:TemplatePath="/mnt/e/Projects/--personal/ModuleT/src";

function createModuleThmoon() {
  # param(
  #   componentName=$1
  # )

  # local moduleName='thmoon';

  # mkdir $componentName;

  # tpage --define Component=$componentName \
  # $TEMPLATE_PATH/$moduleName/Component.tsx >> \
  # $componentName/$componentName.tsx;

  # tpage --define Component=$componentName \
  # $TEMPLATE_PATH/$moduleName/Component.types.ts >> \
  # $componentName/$componentName.types.ts;

  # tpage $TEMPLATE_PATH/$moduleName/Component.module.css >> \
  # $componentName/$componentName.module.css
}

Invoke-Expression (& { (zoxide init powershell --cmd j | Out-String) })

$WslDefaultParameterValues = @{}
# $WslDefaultParameterValues["grep"] = "-E"
# $WslDefaultParameterValues["less"] = "-i"
# $WslDefaultParameterValues["ls"] = "-AFh --group-directories-first" 

# The commands to import.
$commands = "task", "sed", "awk"

# Helper function to escape characters in arguments passed to WSL that would otherwise be misinterpreted.
function global:Format-WslArgument([string]$arg, [bool]$interactive) {
    if ($interactive -and $arg.Contains(" ")) {
        return "'$arg'"
    } else {
        return ($arg -replace " ", "\ ") -replace "([()|])", ('\$1', '`$1')[$interactive]
    }
}

# Register a function for each command.
$commands | ForEach-Object { Invoke-Expression @"
Remove-Alias $_ -Force -ErrorAction Ignore
function global:$_() {
    for (`$i = 0; `$i -lt `$args.Count; `$i++) {
        # If a path is absolute with a qualifier (e.g. C:), run it through wslpath to map it to the appropriate mount point.
        if (Split-Path `$args[`$i] -IsAbsolute -ErrorAction Ignore) {
            `$args[`$i] = Format-WslArgument (wsl.exe wslpath (`$args[`$i] -replace "\\", "/"))
        # If a path is relative, the current working directory will be translated to an appropriate mount point, so just format it.
        } elseif (Test-Path `$args[`$i] -ErrorAction Ignore) {
            `$args[`$i] = Format-WslArgument (`$args[`$i] -replace "\\", "/")
        }
    }

    `$defaultArgs = ((`$WslDefaultParameterValues.$_ -split ' '), "")[`$WslDefaultParameterValues.Disabled -eq `$true]
    if (`$input.MoveNext()) {
        `$input.Reset()
        `$input | wsl.exe NVIM_APPNAME=nvim-dev $_ `$defaultArgs (`$args -split ' ')
    } else {
        wsl.exe NVIM_APPNAME=nvim-dev $_ `$defaultArgs (`$args -split ' ')
    }
}
"@
}

<#
.DESCRIPTION
Some tasks require elevated permissions. For instance, use `gsudo`.
#>
function Get-EnabledScheduledTasks() {
    # QUESTION: Is it optimal? Does it load it every time or only first time?
    Import-Module ScheduledTasks

    Get-ScheduledTask | ? state -ne Disabled | Fzf
}
