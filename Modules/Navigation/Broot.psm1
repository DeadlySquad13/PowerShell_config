function br() {
    $tempFile = New-TemporaryFile
    try {
        $broot = $env:BROOT
        if (-not $broot) {
             $broot = 'broot'
        }
        & $broot --outcmd $tempFile $args
        if ($LASTEXITCODE -ne 0) {
            Write-Error "$broot exited with code $LASTEXITCODE"
            return
        }
        $command = Get-Content $tempFile
        if ($command) {
            # broot returns extended-length paths but not all PowerShell/Windows
            # versions might handle this so strip the '\\?'
            Invoke-Expression $command.Replace("\\?\", "")
        }
    } finally {
        Remove-Item -force $tempFile
    }
}

Export-ModuleMember -Function br
