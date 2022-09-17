<#
.DESCRIPTION
    Show a combination of foreground and background console colors
.LINK
    https://jdhitsolutions.com/blog/powershell/7753/powershell-color-combos/

.REQUIRES
    PowerShell >= 5.1
#>
function Show-ColorPalette() {
    #create an array of system console colors
    $colors = [enum]::GetNames([consolecolor])

    <#
     combine the color as foreground in combination with every color
     as a background
    #>
    foreach ($bg in $colors) {
        Clear-Host
        for (($i = 0), ($j = $colors.count / 2); $j -lt $colors.count; $i++, $j++) {
            $fgDarker = $colors[$i]
            $fgLighter = $colors[$j]

            $msg = "This is a $fgDarker foreground on a $bg background"
            Write-Host $msg.PadRight(75, ' ') -ForegroundColor $fgDarker -BackgroundColor $bg

            $msg = "This is a $fgLighter foreground on a $bg background"
            Write-Host $msg.PadRight(75, ' ') -ForegroundColor $fgLighter -BackgroundColor $bg
        }

        #pause for each background
        Write-Host " "
        Pause
    }
}

Export-ModuleMember -Function Show-ColorPalette
