﻿$packageName = 'mono'
$url = 'http://download.mono-project.com/archive/4.6.1/windows-installer/mono-4.6.1.3-gtksharp-2.12.38-win32-1.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi' #only one of these: exe, msi, msu
  url           = $url
  silentArgs    = "/qn /norestart /l*v $env:TEMP\chocolatey\$packageName\install.log"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
