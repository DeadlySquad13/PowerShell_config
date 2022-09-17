<#
.SYNOPSIS
    Enhanced `Set-Location`.

.DESCRIPTION
    `Change directory` that takes folders listed in $Env:CDPATH into account.

.FORWARDHELPTARGETNAME
    Set-Location

.Link
    https://stackoverflow.com/a/7237070
#>
function Set-LocationWithCdPath {
    param($path)
    if(-not $path){return;}

    if((test-path $path) -or (-not $env:CDPATH)){
        Set-Location $path
        return
    }
    $cdpath = $env:CDPATH.split(";") | % { $ExecutionContext.InvokeCommand.ExpandString($_) }
    $npath = ""
    foreach($p in $cdpath){
        $tpath = join-path $p $path
        if(test-path $tpath){$npath = $tpath; break;}
    }
    if($npath){
        #write-host -fore yellow "Using CDPATH"
        Set-Location $npath
        return
    }

    set-location $path
}

Export-ModuleMember -Function Set-LocationWithCdPath
