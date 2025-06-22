<#
.EXAMPLE
# Default params.
Get-Head Readme.md

.EXAMPLE
# Specify number of lines to print.
Get-Head Readme.md 15

.EXAMPLE
# Specify params explicitly.
Get-Head -Lines 10 Readme.md
#>
function Get-Head {
    param(
        [Parameter(Mandatory)]$Path,
        [Parameter(Mandatory=$false)] [int]$Lines = 10
    )

    return Get-Content -head $Lines $Path
}

Export-ModuleMember -Function Get-Head
