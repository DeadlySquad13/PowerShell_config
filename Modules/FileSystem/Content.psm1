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

<#
.EXAMPLE
# Default params.
Get-Tail Readme.md

.EXAMPLE
# Specify number of lines to print.
Get-Tail Readme.md 15

.EXAMPLE
# Specify params explicitly.
Get-Tail -Lines 10 Readme.md
#>
function Get-Tail {
    param(
        [Parameter(Mandatory)]$Path,
        [Parameter(Mandatory=$false)] [int]$Lines = 10
    )

    return Get-Content -tail $Lines $Path
}

Export-ModuleMember -Function Get-Tail
