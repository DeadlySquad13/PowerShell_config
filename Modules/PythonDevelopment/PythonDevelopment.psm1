# * Venv
# - Create venv.
function Venv_Create() {
  py -m venv .\.venv_win
}
# - Activate venv.
function Venv_Activate() {
  .\.venv_win\Scripts\activate
}
# - Install dependencies (not quite venv functionality but similarily to npm i decided to leave it here).
function Venv_Install() {
}
# - Deactive venv.
function Venv_Deactive() {
  deactivate
}

Export-ModuleMember -Function Venv_*

# * Pip.
# - Pip install passed as an argument package or install all packages from requirements file (like in npm i).
function Pip_Install([string]$packageName) {
  if ( !$packageName )
  {
    pip install -r .\requirements.txt
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

# - Pip remove package.
Set-Alias piprm Pip_Remove

Export-ModuleMember -Alias pipi, piprm
}

Export-ModuleMember -Function Pip_*

