function Is-Directory {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$fileName)

    return ($(Get-Item $fileName) -is [System.IO.DirectoryInfo])
}

Export-ModuleMember -Function Is-Directory

function Is-File {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$fileName)

    return ($(Get-Item $fileName) -is [System.IO.FileInfo])
}

Export-ModuleMember -Function Is-File

# From "C:\Test\Logs\Pass1.log" we get "Logs" - directory name of the file.
function Get-DirectoryName {
    param($path)

    return Split-Path -Leaf (Split-Path -Parent $path)
}

Export-ModuleMember -Function Get-DirectoryName
