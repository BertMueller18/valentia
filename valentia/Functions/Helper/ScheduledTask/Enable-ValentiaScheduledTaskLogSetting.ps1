﻿#Requires -Version 3.0

#-- Scheduler Task Functions --#

<#
.SYNOPSIS 
Extension  to Enable TaskScheduler Log Status

.DESCRIPTION
You can change TaskScheduler Log to State => Enable
Make sure Log affect to all TaskScheduler.

.NOTES
Author: guitarrapc
Created: 19/Sep/2014

.EXAMPLE
Enable-ValentiaScheduledTaskLogSetting

.LINK
https://github.com/guitarrapc/valentia/wiki/TaskScheduler-Automation

#>

function Enable-ValentiaScheduledTaskLogSetting
{
    [CmdletBinding()]
    param()

    begin
    {
        $ErrorMessages = Data
        {
            ConvertFrom-StringData -StringData @"
                LogOperationNotPermitted = "Attempted to perform an unauthorized operation. You must elevate PowerShell Session to Change TaskSchedulerLog setting."
"@
        }
    }

    end
    {
        if (-not(Test-ValentiaPowerShellElevated)){ throw New-Object System.UnauthorizedAccessException ($ErrorMessages.LogOperationNotPermitted) }
        try
        {
            $logName = 'Microsoft-Windows-TaskScheduler/Operational'
            $log = New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration $logName
            $log.IsEnabled = $true
            $log.SaveChanges()
        }
        finally
        {
            $log.Dispose()
        }
    }
}