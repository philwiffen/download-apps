<# 
.SYNOPSIS  
    Downloads the latest Google Chrome Enterprise edition to a path of your choice.
.DESCRIPTION  
    Downloads the latest Google Chrome Enterprise edition to a path of your choice. 
    Change the value of $saveFile and $directDownload as needed. 
    No really, that's it :)
.NOTES  
    Author     : Phil Wiffen - https://github.com/philwiffen
.LINK
    https://kabri.uk/2018/09/15/base-image-automation-download-the-latest-installers-for-common-apps-with-powershell/
#>

#direct download link:
$directDownload = "https://dl.google.com/tag/s/lang=en&amp;browser=3&amp;usagestats=0&amp;appname=Google%20Chrome&amp;needsadmin=true&amp;ap=x64-stable-statsdef_1&amp;brand=GCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi"
 
#Where to put the file?
$saveFile = "\\your\own\uncpath\Google Chrome\googlechromestandaloneenterprise64.msi"
 
#send the request, download the file
Invoke-WebRequest -Uri $directDownload -OutFile $saveFile
