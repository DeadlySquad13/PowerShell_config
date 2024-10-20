function Add-TaxonomyItem {
    param(
    	[Parameter(Mandatory)]
	$Url,
	[Parameter()]
	$SubDirectory,
	[switch]
	$OnlyAudio
    )»
    $Filename = "2024\AliexpressDispute2024-04-22_21-53.png"
    $Tags = "docs test"
    New-Item -ItemType SymbolicLink -Value "H:\ChronoIndex\$Filename" -Path "H:\.ChronoIndex\2024\$Filename"
    # J:\ds13\Projects\--personal\filetags\.venv
    # Tag. TODO: Renames link from first step while it shouldn't.
    py J:\ds13\Projects\--personal\filetags\filetags\__init__.py --tags $Tags --tagtrees-dir="H:/Taxonomy" "H:\.ChronoIndex\$Filename"
    # Have to be in the directory where you're generating tags from.
    python J:\ds13\Projects\--personal\filetags\filetags\__init__.py --tagtrees --tagtrees-dir="H:/Taxonomy"
}

Export-ModuleMember -Function Add-TaxonomyItem
