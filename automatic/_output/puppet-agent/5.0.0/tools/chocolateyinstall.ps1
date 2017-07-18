﻿$packageArgs = @{
  packageName   = 'puppet-agent'
  fileType      = 'MSI'
  url           = 'https://downloads.puppetlabs.com/windows/puppet5/puppet-agent-5.0.0-x86.msi'
  url64bit      = 'https://downloads.puppetlabs.com/windows/puppet5/puppet-agent-5.0.0-x64.msi'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
