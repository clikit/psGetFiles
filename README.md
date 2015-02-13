# psGetFiles
Powershell script to download sequentially-numbered files from a web site, using http requests.

Modify the paths in the script for your needs. The filename is assumed to be a number, or should contain a number. This number is incremented continuously while downloading each file.

The loop exits when the download attempt fails, presumably because there are no more files left to download.