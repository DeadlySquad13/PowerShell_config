function Connect-VBox {
    param(
    	[Parameter(Mandatory)]
        $vmName,
    	[Parameter(Mandatory)]
        $userName
    )

    $existingVms = VBoxManage list vms
    $exists = $existingVms | Select-String $vmName

    if (!$exists) {
	$errorMessage = @"
	VirtualMachine with name: '$vmName' doesn't exist! Please choose from:
	$existingVms
"@

        throw $errorMessage
    }

    $isRunning = VBoxManage list runningvms | Select-String $vmName

    if (!$isRunning) {
	    VBoxManage startvm $vmName --type headless && ssh -p 2222 $userName@localhost -o ConnectionAttempts=10
    } else {
        ssh -p 2222 $userName@localhost -o ConnectionAttempts=10
    }
}

# Ignore verb warning.
Export-ModuleMember -Function Connect-VBox -WarningAction SilentlyContinue


$PepperVmName = "LiArch"

function Connect-Pepper {
    Connect-VBox $PepperVmName ds13
}

# Ignore verb warning.
Export-ModuleMember -Function Connect-Pepper -WarningAction SilentlyContinue

function Shutdown-Pepper {
    VBoxManage controlvm $PepperVmName shutdown
}

# Ignore verb warning.
Export-ModuleMember -Function Shutdown-Pepper -WarningAction SilentlyContinue
