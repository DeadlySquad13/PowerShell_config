function Download-Music {
    param(
    	[Parameter(Mandatory)]
	$Url,
	[Parameter()]
	$SubDirectory,
	[switch]
	$OnlyAudio
    )

    # TODO: Somehow splatting wasn't working so I ended up using old methods with params string builder.
    #   Also moving P parameter into splatted @params was ruining path after splatting. It would interpret M:/... as #M#/...
    #   SubDirectory doesn't have to exist, it will be created by yt-dlp.
    $params = @($Url, "-P $Env:MusicFolder/$SubDirectory")
    if ($OnlyAudio) {
        $params += "-f ba" # It will now look for best-audio, ignoring video.
    }

    yt-dlp $params
}

# Ignore verb warning.
Export-ModuleMember -Function Download-Music -WarningAction SilentlyContinue
