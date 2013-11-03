# Version History
This indicate Version History for valentia.


# Update detail


## Version 0.3.x


- version : 0.3.2
	
	[ author : guitarrapc ]
	
	[ Nov 3, 2013 ]
	
	* Split all valentia functions to each .ps1, now valentia can manage each of function more easier.
	* Added function ```Show-ValentiaGroup```. Want to check deploygroup files in deploygroup branch folder
	* fix issue 19 : Host message show as object[] when upload, and upload list item was multiple.
	* fix issue 20 : Can not execute Initialize-ValentiaEnvironment with not Server OS.
	* fix issue 21 : New-ValentiaFolder could not create branch folder as configured.
	* fix issue 22 : Result compress result as Format-Table when ScriptBlock or Task output as format-table.


- version : 0.3.1
	
	[ author : guitarrapc ]
	
	[ Oct 4, 2013 ]
	
	* Added TaskParameter parameter for Invoke-Valentia, Invoke-ValentiaParallel, Invoke-ValentiaAsync. Now you can use $args[0] ...[x] to pass variables into task when execute valentia command. 
	* Added Invoke-valentiaDeployGroupRemark, Invoke-valentiaDeployGroupUnremark to ease you remark, mark deploy group ipaddresses in one command.
	* Exmaple for Invoke-valentiaDeployGroupRemark, Invoke-valentiaDeployGroupUnremark is added to README.
	* fix link to fastcopy.
	* fix Get-ValentiaGroup parameter of deployfolder was mandatory. It supposed to be not mandatory.
	* fix some messages on Write-Verbose and Write-Warning. 
	* little configuration for valentia-config.ps1


- version : 0.3.0
	
	[ author : guitarrapc ]
	
	[ Sep 24, 2013 ]
	
	* Open to public
	* Get-ValentiaGroup now supports multiple input, previously only 1 input was allowed. Now you can type like valea 192.168.0.1,192.168.0.2 {hostname}
	* Now Invoke-ValentiaDownload had added to copy item from clients to server
	* Minor Change valep error variable from array to list (will do for valea and vale)


## Version 0.2.x


- version : 0.2.8
	
	[ author : guitarrapc ]
	
	[ July 29, 2013 ]
	
	* Changed New-ValentiaCredential to save credential from c:\Deployment\bin\$valentia.User to c:\Deployment\bin\CurrentUser\$valentia.User
	* Get-ValentiaCredential also changed to read credential from c:\Deployment\bin\$valentia.User to c:\Deployment\bin\CurrentUser\$valentia.User 
	* With this change you can use valentia with multiple user like, administrator and user.
	* - Note you should create credential for each user who want to use valentia.
	* - Recommend to put valentia at C:\Users\Administrator\Documents\WindowsPowerShell\Modules to avoid saving to each user's module path.

- version : 0.2.7
	
	[ author : guitarrapc ]
	
	[ July 24, 2013 ]
	
	* Added -Force switch for Invoke-ValentiaDownload
	* As Bits-Transfer cmdlets could stopped with target file had already handled by other process, force switch will ignore handle and copy.
	* 1. -Force cmdlet using not Bits-Transfer but Copu-Item -Force with credential smb and cim

- version : 0.2.6
	
	[ author : guitarrapc ]
	
	[ July 24, 2013 ]
	
	* Added $valentia.deployextention vatiable.
	* 1. now you can assign your required extention for deploygroup file. (default .ps1)
	* Changed Get-ValentiaGroup function.
	* 1. Now this function can read string passed as IPAddress or HostName, and deploygroup file name.
	* 2. Now DeployGroup must pass extention with. (previously you can omit extention, but now fullname is required.)
	* 3. Now each functions DeployGroup parameter is changed from [string] to [string[]]


- version : 0.2.5
	
	[ author : guitarrapc ]
	
	[ July 22, 2013 ]
	
	* Added Dispose Runspace for Invoke-ValentiaResult function
	* Added Close RunSpace before dispose for Invoke-ValentiaResult function
	* Remove Json fix as C# could not read


- version : 0.2.4
	
	[ author : guitarrapc ]
	
	[ July 22, 2013 ]
	
	* Fixt Invoke-ValentiaDownload and Invoke-ValentiaUpload to retrive correct status when sending as Async.
	* Fix Invoke-ValentiaUpload, now it can send multiple files.


- version : 0.2.3
	
	[ author : guitarrapc ]
	
	[ July 19, 2013 ]
	
	* Added Invoke-ValentiaDownload (Alis : Download) function. Now you can download specific file, or Directory from -SourcePath to -DesctinationPath
	* Destination Path will create DeployMemer foler
	* Correct miss type in Invoke-ValentiaUpload function


- version : 0.2.2
	
	[ author : guitarrapc ]
	
	[ July 16, 2013 ]
	
	* Change Pool size for valea from 100 to 10.
	* Added Warning Messages.
	* Add functions


- version : 0.2.1
	
	[ author : guitarrapc ]
	
	[ July 15, 2013 ]
	
	* Added Switch to uploadL, now uploading files to each host (Not Sync Folder) is brilliantly inroved performance. 
	* 10host for 4 files was :
	* 1. 22 x 4 sec with upload
	* 2. 22 sec with uploadL
	* 3. 05 sec with uploadL -Async
	* Added Deploy task and others on example
	* Change deploy bat execution from vale to valea
	

- version : 0.2.0
	
	[ author : guitarrapc ]
	
	[ July 14, 2013 ]
	
	* Added Invoke-ValentiaAsync function series. Now Valentia can execute task to remote Asynchronously. (MultiThread)
	* You can execute Invoke-ValentiaAsync with valea alias.
	* Now we have 3 execution cmdlet, 
	* 1. vale (sequencial job execution. will be x time with number of hosts. Can use with C# and PowerShell.exe)
	* 2. valep (Parallel concurrent workflow execution. Slitly fast but Cannot use with C#. You can use with PowerShell.exe)
	* 3. valea (Asynchronous concurrent multiThread execution. Slitly fast and ca use with C# and PowerShell.exe)
	* Added catch error with Sync function.
	* Added obtain dllProductversion with vale, valep and valea when loading task file. (will not execute with scriptblock.)
	* Added obtain result with vale, valep, valea amd Sync.
	* Added dllProductVersionDetail with Logout.
	* Added help syntax into some functions.


## Version 0.1.x

- version : 0.1.7
	
	[ author : guitarrapc ]
	
	[ July 05, 2013 ]
	
	* Added Log output for Sync, upload, uploadl cmdlet.
	* Added Error catch place and move result section from catch to finally
	* fix bug in upload
	* fix bug in uploadL
	* fix bug in Sync

-

- version : 0.1.6
	
	[ author : guitarrapc ]
	
	[ July 04, 2013 ]
	
	* Added Log output for vale command about command detail.
	* Change Host Display Order for valep and vale. Now you can check each copmmand result inside warning and error line. It will ease you check what is the host for result.
	* valep output error derails in tmppath (default : "C:\Windows\Temp\valeptmp.log") for temporary and be deleted at end of valep. log format is compress Json.
	* Now Valentia.Context issue of remaining past time command variables are corrected. clean function (Get-ValentiaClean) sat at end of each valentia cmdlet. This will execute $valentia.context.Clear().
	* Now SuccessStatus and ErrorMessageDetail variables are included into $valentia.context.taskkey @{}. This allow valentia variables keep in clean.

-

- version : 0.1.5
	
	[ author : guitarrapc ]
	
	[ July 04, 2013 ]
	
	* Added Log output for valep command about command detail.
	* Added Exception for Task read.
	* Now Log format is fixed.

-

- version : 0.1.4
	
	[ author : guitarrapc ]
	
	[ July 04, 2013 ]
	
	* Added Log out put for valep command.
	* Added log folder create for New-DeproyGroup.
	* Added NoReboot, ForceReboot switch to Initialize-ValentiaEnvironment for reboot action without prompt.
	* Added function to change WSMan default ShellsPerUser from 25 to 100, but not dramatically changed limit of PowerShell Remote Session threadhold.
	* Now Concurrency limit issue will be taken care. The issue was powershell remote session could not establish when concurrency session is 25 or more.
		Added Get-WSManInstance check for valep to retrieve current connection is neary limit or not.
		Threadhold is 25 and checkin at greater equal 22. if 22 or more than restart target host WinRM service to reset concurrency.
	* Changed ValentiaCommandParallel to output result.
	* Changed Get-ValentiaGroup to output Result.
	* Replace all Write-Host with other Write cmdlet. Now you can call valentia cmdlets from workflow, or C# or any other processes through PowerShell runspace.

-

- version : 0.1.3
	
	[ author : guitarrapc ]
	
	[ June 27, 2013 ]
	
	* Added Set-ValentiaHostName function to set Server Hostname.
	* Added Get-ValentiaRebootRequiredStatus to get Reboot pending status
	* Added Set-ValentiaHostName and Get-ValentiaRebootRequiredStatus to Initialize-ValentiaEnvironment function
	* Disable Get-ValentiaClean on End of Set-ValentiaOSUser function

-

- version : 0.1.2
	
	[ author : guitarrapc ]
	
	[ June 26, 2013 ]
	
	* Added Disable-ValentiaEnhancedIESecutiry function and run in Initialize-ValentiaEnvironment.
	* Now Enhanced Security for InternetExplorer will be disabled in initial setup. (This required to download files)
	* Correct -Server swtich for Initialize-ValentiaEnvironment.
	* Now secure pass file will be created/save when running Initialize-ValentiaEnvironment. (Only for Server switch not for Client.)
	* Add explanation in ReadMeFast for Initialize-ValentiaEnvironment new swtich "-NoPassSave".
	* Devide Readme and VersionHistory. Now only latest changes will be written in Readme, and all history will keep in VersionHistory.

-

- version : 0.1.1
	
	[ author : guitarrapc ]
	
	[ June 25, 2013 ]
	
	* In publish stage
	* fix credential issue for valep. Previously valep could not use credential. Now you can authorize with credential you sat with New-ValentiaCredential cmdlets.
	* fix uploadL to run with each deploygroup.
	* Public cmdlet Get-ValentiaGroup are changed from private.
	* Added elevated check function as Test-Elevated.
	* Added New-ValentiaPSRemotingFirewallRule Cmdlet to enable PowerShell Remote Connection Port.
	* Nomore Initialize-ValentiaServer and Initialize-ValentiaClient but changed to Initialize-ValentiaEnvironment.
	   (Initialize-ValentiaEnvironment can choose "-Server" or "-Client" settings with switch. Also  you can skip deploy OS user setup by "-NoOSUser" switch.)

-

- version : 0.1.0

	[ author : guitarrapc ]
	
	[ June 24, 2013 ]
	
	* Initial release.
	* Not in publish stage.