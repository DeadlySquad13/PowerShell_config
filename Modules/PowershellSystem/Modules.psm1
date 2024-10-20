function Get-ModuleExists {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$moduleName)

    return $(Get-Module -ListAvailable -Name $moduleName).Length
}

Export-ModuleMember -Function Get-ModuleExists
