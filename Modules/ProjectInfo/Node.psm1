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

Export-ModuleMember -Function Get-PackageInfo, Get-DevDependencies, Get-Dependencies
