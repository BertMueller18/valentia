﻿function Edit-ValentiaConfig
{
<#
.Synopsis
   Edit Valentia Config in Console
.DESCRIPTION
   Read config and edit in the console
.EXAMPLE
   Edit-ValentiaConfig
#>

    param
    (
        [parameter(
            mandatory = 0,
            position = 0)]
        [string]
        $configPath = (Join-Path $valentia.modulePath $valentia.defaultconfigurationfile),

        [parameter(
            mandatory = 0,
            position = 1)]
        [switch]
        $NoProfile
    )

    if (Test-Path $configPath)
    {
        if ($NoProfile)
        {
            PowerShell_ise.exe -File $configPath
        }
        else
        {
            PowerShell_ise.exe $configPath
        }
    }
    else
    {
        Write-Verbose ("Could not found configuration file '{0}'." -f $configPath)
    }

}