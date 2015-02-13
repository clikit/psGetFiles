    $url = "http://www.somesite.com/filefolder/"
	$localpath = "c:\users\myusername\downloads\"
	$extension = ".txt"
	$startnumber = 1
	
    $client = new-object System.Net.WebClient 
	while ($TRUE)
	{
		$filename = [string]$startnumber + $extension
		$sourceuri = $url + $filename
		$localfile = $localpath + $filename
		try
		{
			$client.DownloadFile($sourceuri, $localfile)
		}
		catch
		{
			exit
		}
		$startnumber++
	}
