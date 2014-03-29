#-- Public Loading Module Parameters (Recommend to use ($valentia.defaultconfigurationfile) for customization)--#

# contains context for default.
$valentia.context.push(
    @{
        executedTasks                   = New-Object System.Collections.Stack;
        callStack                       = New-Object System.Collections.Stack;
        originalEnvPath                 = $env:Path;
        originalDirectory               = Get-Location;
        originalErrorActionPreference   = $valentia.originalErrorActionPreference;
        ErrorActionPreference           = $valentia.errorPreference;
        originalDebugPreference         = $valentia.originalDebugPreference;
        debugPreference                 = $valentia.debugPreference;
        name                            = $valentia.name;
        modulePath                      = $valentia.modulePath;
        helpersPath                     = Join-Path $valentia.modulePath $valentia.helpersPath;
        supportWindows                  = $valentia.supportWindows;
        fileEncode                      = $valentia.fileEncode
        tasks                           = @{};
        includes                        = New-Object System.Collections.Queue;
    }
)

# contains default OS user configuration, can be overriden in ($valentia.defaultconfigurationfile) in directory with valentia.psm1 or in directory with current task script
$valentia.users = New-Object psobject -property @{
    CurrentUser                         = $env:USERNAME;
    deployUser                          = "deployment";
}
$valentia.group                         = "Administrators"
$valentia.userFlag                      = "0X10040"         # #UserFlag for password (ex. infinity & No change Password)

# contains valentia execution policy for initial setup
$valentia.ExecutionPolicy               = [Microsoft.PowerShell.ExecutionPolicy]::Bypass

# contains valentia configuration Information
$valentia.PSDrive                       = "V:";             # Set Valentia Mapping Drive with SMBMapping
$valentia.deployextension               = ".ps1";           # contains default DeployGroup file extension

# Define Prefix for Deploy Client NetBIOS name
$valentia.prefix = New-Object psobject -property @{
    hostName                            = "web";
    ipstring                            = "ip";
}

# contains default configuration, can be overriden in ($valentia.defaultconfigurationfile) in directory with valentia.psm1 or in directory with current task script
$valentia.config_default                = New-Object PSObject -property ([ordered]@{
    TaskFileName                        = "default.ps1";
    TaskFileDir                         = [ValentiaBranchPath]::Application;
    taskNameFormat                      = "Executing {0}";
    verboseError                        = $false;
    modules                             = $null;
    PSDrive                             = $valentia.PSDrive;
    deployextension                     = $valentia.deployextension;
    prefix                              = $valentia.prefix;
    fastcopy                            = $valentia.fastcopy;
    RootPath                            = $valentia.RootPath;
    BranchFolder                        = [Enum]::GetNames([ValentiaBranchPath]);
    log                                 = $valentia.log;
})