# -- THIS PROGRAM DOES NOT WORK - DO NOT USE --

# Pure Windows Powershell program to pull down my _vimrc file.
#


# from: http://www.howtogeek.com/tips/how-to-extract-zip-files-using-powershell/
# This function does not require the 'unzip' program!

function Expand-ZIPFile($file, $destination)
{
	$vOption = 16 # yes to all prompts
	$shell = new-object -com shell.application
	$zip = $shell.NameSpace($file)
	foreach($item in $zip.items())
	{
		$shell.Namespace($destination).copyhere($item, $vOption)
	}
}

# https://gallery.technet.microsoft.com/scriptcenter/files-from-websites-4a181ff3
function DownloadFile($url, $path) 
{
    # Downloading [$url]`nSaving at [$path]" 
    $client = new-object System.Net.WebClient 
    $client.DownloadFile($url, $path) 
}

Write-Output "Storing _vimrc at user profile directory $ENV:USERPROFILE"
$vimrc = "https://raw.githubusercontent.com/rjperrella/vimrc/master/_vimrc"

DownloadFile($vimrc, "$ENV:USERPROFILE\_vimrc")

