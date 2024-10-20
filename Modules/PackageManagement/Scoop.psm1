function Reinstall-ScoopPackage {
    param(
        [Parameter(Mandatory)]
        $package
    )

    scoop uninstall $package
    scoop install $package
}

Export-ModuleMember -Function Reinstall-ScoopPackage
