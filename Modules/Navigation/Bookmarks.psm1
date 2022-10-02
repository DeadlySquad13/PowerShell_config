# Create symbolic links in .bookmarks.
function Add-Bookmark ($target, $bookmarkName) {
    New-Item -ItemType SymbolicLink -Path ${Env:BookmarksPath}\${bookmarkName} -Value $target
}

Export-ModuleMember -Function Add-Bookmark
