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

Export-ModuleMember -Function Find-PathInParentDirectories
