#Requires -Version 3.0

#-- Public Functions for CredSSP Configuration --#

function Get-ValentiaCredSSPDelegateRegKey
{
    [CmdletBinding()]
    param
    (
        [Parameter(
            Position = 0,
            Mandatory = 0)]
        [ValidateNotNullOrEmpty()]
        [string]
        $Keys = $valentia.credssp.AllowFreshCredentialsWhenNTLMOnly.Key
    )

    $ErrorActionPreference = $valentia.errorPreference
    $path = (Split-Path $keys -Parent)
    $name = (Split-Path $keys -Leaf)
    Get-Item -Path $path `
    | %{
        [PSCustomObject]@{
            name      = $name
            Property = ($_ | where Name -eq $name).Property
            pspath   = $path
        }
    }
}