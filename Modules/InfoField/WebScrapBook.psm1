# Search via fzf in InfoField WebScrapBooks and other saved browser items.
function Invoke-FuzzyOpenInBrowser {
    param(
        [Parameter(Mandatory)]
        $options
        # [switch]$browser
    )

    $searchResult = Invoke-PsFzfRipgrep $options -NoEditor

    if (-not $searchResult) {
        return
    }

    $browserExecutable = "Chrome"
    if ($(Get-DirectoryName $searchResult) -eq "Opera") {
        $browserExecutable = "Opera"
    }

    return & $browserExecutable $searchResult
}

Export-ModuleMember -Function Invoke-FuzzyOpenInBrowser

# function Invoke-FuzzyOpenInOpera($options) {
#     "C:\Users\Александр\AppData\Local\Programs\Opera\launcher.exe" $(Invoke-PsFzfRipgrep $options -NoEditor)
# }

