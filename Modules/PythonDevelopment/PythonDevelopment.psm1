function pip() {
    python -m pip $args
}

Export-ModuleMember -Function pip

# * Venv
function Create_Venv() {
  py -m venv .\.venv_win
}
function Activate_Venv() {
  .\.venv_win\Scripts\activate
}
function Deactivate_Venv() {
  deactivate
}

# Mapping functions to Linux naming.
Set-Alias venv_create Create_Venv
Set-Alias venv_activate Activate_Venv
Set-Alias venv_deactivate Deactivate_Venv

Export-ModuleMember -Alias venv_create, venv_activate, venv_deactivate
Export-ModuleMember -Function *_Venv

# * Pip.
# - If the file wasn't found, return false.
function Pip_InstallFromRequirements {
  [OutputType([boolean])]
  param([Parameter(Mandatory)]$requirementsFile)

  if (Test-Path $requirementsFile) {
    pip install -r $requirementsFile
    return $true
  }

  return $false
}

# - Pip install passed as an argument package or install all packages from requirements file (like in npm i).
function Pip_Install([string]$packageName) {
  if ( !$packageName )
  {
    if (!(Pip_InstallFromRequirements('.\requirements.txt')) -and !(Pip_InstallFromRequirements('.\requirements-dev.txt'))) {
      throw 'No requirements files found'
    }
  }
  else
  {
    pip install -U "$packageName"
  }
}
# - Pip install package.
Set-Alias pipi Pip_Install

# - Pip remove package.
function Pip_Remove($packageName) {
  pip uninstall "$packageName"
}

# - Pip remove package.
Set-Alias piprm Pip_Remove

Export-ModuleMember -Alias pipi, piprm

Export-ModuleMember -Function Pip_*

