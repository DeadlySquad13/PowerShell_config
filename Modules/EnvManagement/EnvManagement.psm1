<#
  Managing Path variable.
  @see [Article about Path variable management]{@link https://www.techtarget.com/searchitoperations/answer/Manage-the-Windows-PATH-environment-variable-with-PowerShell}
  This is, however, is just a temporary variable that will be available only in current powershell session.
  For persistent changes use [Environment or System.Environment]{@link https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_environment_variables?view=powershell-7.2#saving-environment-variables-with-setenvironmentvariable}
  But it's very dangerous, so it's better to stay with this variant and just somehow set it in $PROFILE.
#>
# * Show Path variable.
Function Show-PathVariable {
  $env:Path -split ';'
}

# * Add path to Path variable.
Function Add-PathVariable {
    param (
        [string]$addPath
    )
    if (Test-Path $addPath){
        $regexAddPath = [regex]::Escape($addPath)
        $arrPath = $env:Path -split ';' | Where-Object {$_ -notMatch 
"^$regexAddPath\\?"}
        $env:Path = ($arrPath + $addPath) -join ';'
    } else {
        Throw "'$addPath' is not a valid path."
    }
}

Export-ModuleMember -Function Show-PathVariable, Add-PathVariable
