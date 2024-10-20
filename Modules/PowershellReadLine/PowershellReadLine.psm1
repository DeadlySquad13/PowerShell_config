# - Bash-like completion
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key Tab -Function AcceptLine
Set-PSReadLineOption -PredictionViewStyle ListView
# - Vi mode. Keybindings.
Set-PSReadlineOption -EditMode vi
Set-PSReadLineKeyHandler -Chord 'Ctrl+n' -Function HistorySearchForward
Set-PSReadLineKeyHandler -Chord 'Ctrl+p' -Function HistorySearchBackward

#   When you type a single quote or double quote, there are two things that can
# happen. If the character following the cursor is not the quote typed, then a
# matched pair of quotes is inserted and the cursor is placed inside the the
# matched quotes. If the character following the cursor is the quote typed, the
# cursor is simply moved past the quote without inserting anything.
Set-PSReadLineKeyHandler -Chord '"',"'" `
                         -BriefDescription SmartInsertQuote `
                         -LongDescription "Insert paired quotes if not already on a quote" `
                         -ScriptBlock {
    param($key, $arg)

    $line = $null
    $cursor = $null
    [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)

    if ($line.Length -gt $cursor -and $line[$cursor] -eq $key.KeyChar) {
        # Just move the cursor
        [Microsoft.PowerShell.PSConsoleReadLine]::SetCursorPosition($cursor + 1)
    }
    else {
        # Insert matching quotes, move cursor to be in between the quotes
        [Microsoft.PowerShell.PSConsoleReadLine]::Insert("$($key.KeyChar)" * 2)
        [Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$line, [ref]$cursor)
        [Microsoft.PowerShell.PSConsoleReadLine]::SetCursorPosition($cursor - 1)
    }
}

#   Change cursor on mode change.
# @see{@link https://learn.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.3#example-6-use-vimodechangehandler-to-display-vi-mode-changes}
function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange
# We start in insert mode so set the cursor to a blinking line.
Write-Host -NoNewLine "`e[5 q"

# Check current colors and highlight groups via `Get-PSReadlineOption`.
# https://learn.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.3#example-1-set-foreground-and-background-colors
# https://stackoverflow.com/questions/56679782/how-to-use-ansi-escape-sequence-color-codes-for-psreadlineoption-v2-in-powershel
Set-PSReadLineOption -Colors @{
    Emphasis = "Cyan"
    ListPredictionSelected = "`e[37;1m" # White (in my scheme it's actually black) bold
}
