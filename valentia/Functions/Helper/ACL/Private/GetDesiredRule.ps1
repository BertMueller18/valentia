﻿#Requires -Version 3.0

function GetDesiredRule
{
    [OutputType([System.Security.AccessControl.FileSystemAccessRule])]
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = 1)]
        [ValidateNotNullOrEmpty()]
        [String]$Path,

        [Parameter(Mandatory = 1)]
        [ValidateNotNullOrEmpty()]
        [String]$Account,

        [Parameter(Mandatory = 0)]
        [ValidateNotNullOrEmpty()]
        [System.Security.AccessControl.FileSystemRights]$Rights = "ReadAndExecute",

        [Parameter(Mandatory = 0)]
        [ValidateNotNullOrEmpty()]
        [System.Security.AccessControl.AccessControlType]$Access = "Allow",

        [Parameter(Mandatory = 0)]
        [Bool]$Inherit = $false,

        [Parameter(Mandatory = 0)]
        [Bool]$Recurse = $false
    )

    $InheritFlag = if ($Inherit)
    {
        "{0}, {1}" -f [System.Security.AccessControl.InheritanceFlags]::ContainerInherit, [System.Security.AccessControl.InheritanceFlags]::ObjectInherit
    }
    elseif ($Recurse)
    {
        "{0}, {1}" -f [System.Security.AccessControl.InheritanceFlags]::ContainerInherit, [System.Security.AccessControl.InheritanceFlags]::ObjectInherit
    }
    else
    {
        [System.Security.AccessControl.InheritanceFlags]::None
    }

    $desiredRule = New-Object System.Security.AccessControl.FileSystemAccessRule($Account, $Rights, $InheritFlag, "None", $Access)
    return $desiredRule
}
