# Variables
$Env:BookmarksPath = "$HOME\.bookmarks"
$Env:CDPATH = "$Env:BookmarksPath"
$Env:PSModules = $Env:PSModulePath.split(';')[0]

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

$Applied = (
    "E:\soft\Calibre (Editing Epub files\",
    "C:\Program Files (x86)\ffmpeg\bin"
)

$PathItems = $WindowsEssentials + $VisualStudioCode + $WebDevelopment + (
    "C:\Program Files\PowerShell\7-preview",
    "C:\Users\Александр\AppData\Local\Programs\Python\Python38\Scripts\",
    "C:\Users\Александр\AppData\Local\Programs\Python\Python38\",
    # "C:\Program Files\Common Files\Oracle\Java\javapath",
    # "C:\Program Files (x86)\Common Files\Oracle\Java\javapath",
    # "C:\Program Files (x86)\Common Files\Oracle\Java\javapath",
    # "C:\ProgramData\Oracle\Java\javapath",
    # "C:\Program Files\Java\jdk-14\bin",
    "C:\Program Files\BellSoft\LibericaJDK-8\bin",
    "C:\Program Files (x86)\Razer Chroma SDK\bin",
    "C:\Program Files\Razer Chroma SDK\bin",
    "C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common",
    "C:\Program Files\MySQL\MySQL Utilities 1.6\",
    "C:\Program Files\Microsoft\Web Platform Installer\",
    "C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\",
    "C:\Program Files\Microsoft SQL Server\110\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\120\Tools\Binn\",
    "C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR",
    "C:\Program Files\Microsoft SQL Server\130\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\",
    "C:\Program Files (x86)\IncrediBuild",
    "E:\soft\Graphics Editors\QuickTime\QTSystem\",
    "E:\soft\GitForWindows\Git\cmd",
    "C:\Program Files\dotnet\",
    "C:\Program Files (x86)\Microsoft SQL Server\150\DTS\Binn\",
    "C:\Program Files\Azure Data Studio\bin",
    "C:\Program Files (x86)\Microsoft SQL Server\150\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\150\Tools\Binn\",
    "C:\Program Files\Microsoft SQL Server\150\DTS\Binn\",
    "C:\Program Files\PuTTY\",
    "C:\Program Files\Cloudflare\Cloudflare WARP\",
    "E:\soft\DevOps\Services__Amazon\",
    "C:\Program Files\Neovim\bin",
    "C:\Program Files (x86)\dotnet\",
    "C:\Program Files\PowerShell\7-preview\preview",
    "C:\Program Files\Docker\Docker\resources\bin",
    "C:\ProgramData\DockerDesktop\version-bin",

    "C:\Users\ds13\AppData\Roaming\Python\Python310\Scripts",
    "C:\Users\ds13\scoop\apps\python310\current\Scripts",
    "C:\Users\ds13\scoop\apps\python310\current",
    "C:\Users\ds13\scoop\apps\rustup-msvc\current\.cargo\bin",
    "C:\Users\ds13\scoop\apps\mingw\current\bin",

    "C:\Users\ds13\scoop\apps\perl\current\perl\site\bin",
    "C:\Users\ds13\scoop\apps\perl\current\perl\bin",
    "C:\Users\ds13\scoop\apps\perl\current\c\bin",

    "C:\Users\ds13\scoop\apps\oh-my-posh\current\bin",
    "C:\Users\ds13\scoop\apps\gcc\current\bin",
    "C:\Users\ds13\scoop\shims",
    "C:\ProgramData\Microsoft\Windows\Start Menu\Programs",
    "C:\Users\Александр\.windows-build-tools\python27\",
    "E:\soft\JetBrains\JetBrains PyCharm Professional\JetBrains PyCharm Professional 2019.2.4\bin",
    "C:\Program Files (x86)\VirtuaWin",
    "E:\soft\DevOps\Services__Amazon",
    "C:\Users\Александр\AppData\Local\Programs\Microsoft VS Code\bin",
    "E:\Archive\Installers\Soft\Applied\Programming\FVim",
    "C:\Users\ds13\AppData\Local\Microsoft\WindowsApps\",
    "C:\Program Files\PowerShell\7-preview",
    "C:\Program Files\Docker\Docker\resources\bin",
    "C:\Program Files\GoodSync",
    "C:\Users\Александр\AppData\Roaming\Microsoft\Windows\Start Menu\Programs",
    "C:\Users\ds13\AppData\Local\Programs\oh-my-posh\bin",
    "C:\Users\Александр\AppData\Roaming\npm",
    "E:\Scripts\EleDo",

    "C:\Users\ds13\go\bin"
)
$Env:Path = $PathItems -join [IO.Path]::PathSeparator
# - Default editor.
$Env:EDITOR = "nvim"
# - Bash-like completion
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key Tab -Function AcceptLine
# - Vi mode.
Set-PSReadlineOption -EditMode vi

# - Terminal Icons.
Import-Module -Name Terminal-Icons
Set-TerminalIconsTheme -ColorTheme 'devblackops_light'

# - Posh (pretty prompt).
$OhMyPoshConfigPath = Join-Path -Path $Env:PSModules -ChildPath 'OhMyPosh'
$OhMyPoshTheme = Join-Path -Path $OhMyPoshConfigPath -ChildPath 'DeadlyAtelierSulphurpoolLight.omp.json'

$Env:VIRTUAL_ENV_DISABLE_PROMPT=1 # Disable default: we have already one in our custom prompt.
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

    return ($(Get-Item $fileName) -is [System.IO.DirectoryInfo])
}

function Is-File {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$fileName)

    return ($(Get-Item $fileName) -is [System.IO.FileInfo])
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

function avi() {
    [OutputType([System.Diagnostics.Process])]
    param([Parameter()]$params)

    $title = 'NeoVim'
    # FileSystemInfo is a base class for files and directories
    #   [docs](https://learn.microsoft.com/en-us/dotnet/api/system.io.filesysteminfo?view=net-7.0)
    if ($params -and ($(Get-Item $params) -is [System.IO.FileSystemInfo])) {
        # $title = "$params - $title"
        $title = "$params"
        echo $title
    }

    Start-Process -WindowStyle Hidden alacritty -ArgumentList "--title", $title, "-e", "nvim ${params}"
}

function fvi($params) {
    Start-Process -WindowStyle Hidden fvim $params
}

function govi($params) {
    Start-Process -WindowStyle Hidden goneovim $params
}

# GuiVi stands for currently chosen gui client.
Set-Alias gvi neovide

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

