function Get-CommandExists {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$commandName)

    return $(Get-Command $commandName).Length
}

Export-ModuleMember -Function Get-CommandExists
