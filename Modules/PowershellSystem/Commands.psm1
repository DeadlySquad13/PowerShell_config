# REFACTOR: Couldn't leave only OutputType here, it threw error.
# ALso not sure if it's possible to type "args" as args of `Get-Command`.
function Test-CommandExists {
    return $(Get-Command @args).Length
}

Export-ModuleMember -Function Test-CommandExists

# CommandType allows to filter search field. Didn't help me to optimize much but still
# left it as an Alias.

function Test-ApplicationExists {
    [OutputType([boolean])]
    param([Parameter(Mandatory)]$commandName)

    return Test-CommandExists -CommandType Application "$commandName"
}

Export-ModuleMember -Function Test-ApplicationExists
