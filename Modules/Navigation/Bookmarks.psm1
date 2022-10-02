# Create symbolic links in .bookmarks.
function Add-Bookmark() {
    param(
        [string]$target,
        [string]$bookmarkName
    )

    if ($bookmarkName -eq "") {
        $bookmarkName = Split-Path $target -leaf # Get filename.
    }

    $bookmarkPath = "${Env:BookmarksPath}\${bookmarkName}"

    # Convert relative path to absolute.
    $targetPath = $target

    if (!(Split-Path -Path $target -IsAbsolute)) {
        $targetPath = "${pwd}\${target}"
    }

    New-Item -ItemType SymbolicLink -Path ${bookmarkPath} -Value $targetPath
}

Export-ModuleMember -Function Add-Bookmark
