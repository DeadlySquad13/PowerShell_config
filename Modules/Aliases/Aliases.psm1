# - Traverse files in directory.
Set-Alias ll dir
Set-Alias b buku

# Wanted something similar to 'r' for ranger in Linux.
# At the same time can't just assign it to 'r' because
# it's already used in Powershell and these two programs
# behave differently.
Set-Alias yr yazi

# Nvim.
Set-Alias vi nvim
Set-Alias vim nvim
# - Just for the sake of uniformity between Windows and Unix.
Set-Alias vi-dev nvim

Set-Alias lg lazygit

<#
.EXAMPLE
cat file.md | y
#>
Set-Alias y Set-Clipboard

<#
.EXAMPLE
# Write clipboard contents to file.
p > file.md
.EXAMPLE
# Append clipboard contents to file.
p >> file.md
#>
Set-Alias p Get-Clipboard
