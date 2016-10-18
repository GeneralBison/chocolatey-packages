﻿$packageName = 'googledrive'
$fileType = 'msi'
$silentArgs = '/quiet'
$url = 'https://dl.google.com/drive/1.32.3592.6117/gsync.msi'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $fileType $silentArgs $url -validExitCodes $validExitCodes

# One user suggested https://dl.google.com/drive/gsync_enterprise.msi
