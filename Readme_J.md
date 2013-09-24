# Read Me Fast
valentia �� PowerShell ��p���� Windows �ɂ�����deployment�c�[���ł��B
valentia ��p���邱�Ƃŉ��u�T�[�o�[���삪�i�i�ɗe�ՂɂȂ�A�����̋Ɩ����傫���ȕ։�����܂��B


# Special Thanks
valentia �́A Capistrano ( Linux�ɂ�����Ruby ���̃f�v���C�c�[��) �� psake ( PowerShell���̃r���h�c�[�� ) �̉e����傫���󂯂Ă��܂��B.
�����͓ˏo�����f���炵���c�[���ł���A DevOps�Ƃ������������ɑ傫����^���Ă���܂��B
���� psake �͎Q�l�ɂȂ�R�[�f�B���O������� valentia ���Q�l�ɂ��Ă��܂��B

���ɂ� psasync(http://newsqlblog.com/category/powershell/powershell-concurrency/) �� Get-NetworkInfo(http://learn-powershell.net/2012/05/13/using-background-runspaces-instead-of-psjobs-for-better-performance/) ���A�񓯊����s�Ɋւ��ĎQ�l�ɂ����Ă�����Ă��܂��B


# �Ώ�OS PowerShell �o�[�W����

valentia �� PowerShell Version 3.0 �ȍ~�œ��삵�܂��B
�T�|�[�g���Ă���OS�́A�ȉ��̒ʂ�ł��B

- Windows 7 ( PowerShell V3.0 �ȍ~)
- Windows 8 ( PowerShell V3.0 �ȍ~)
- Windows 2012 ( PowerShell V3.0 �ȍ~)

�m�[�g : �S�t�@���N�V������ Windows Server 2012 E / J �Ŋm�F���Ă��܂��B


# ���O����

valentia�ɂ�����t�@�C���]���̂��߁Avalentia�� �ȉ�����������Ă���K�v������܂��B

1. �P��/�����t�@�C���]���̂��߂ɁABITS Transfer�𗘗p���Ă��܂��B "Windows �̋@�\" ���� "IIS BITs Transfer" ��L���ɂ��Ă��������B
2. "FastCopy" �� �t�H���_�����ɗ��p���Ă��܂��B( FastCopyx64 �� "C:\Program Files\FastCopy" �ɃC���X�g�[�����Ă��������B) (Link : http://ipmsg.org/tools/fastcopy.html )


# valentia ���W���[����ݒu����

valentia�𗘗p����ɂ�����A�ȉ��̃p�X��valentia���W���[���t�H���_����ݒu���Ă��������B

```
%homepath%\documents\WindowsPowerShell\Module\
```


# valentia Module �̃C���|�[�g

PowerShell 3.0�ɂ����ẮA�f�t�H���g�� psmodule�p�X�ɐݒu���ꂽ���W���[���͎����I�ɓǂݍ��܂�܂��B
�������A�����̍D���ȃp�X�Ƀ��W���[����u�����ꍇ�́AImport-Module �R�}���h���b�g�Ń��W���[�����C���|�[�g���Ă��������B

```PowerShell
cd "valentia��ݒu�����p�X"
Import-Module valentia
```

���� valentia �� psmodule �p�X�ɐݒu�����ꍇ�A�蓮��Import-Module ������K�v�͂���܂���B
�������Ƃ��Ă��ȉ��ő��v�ł��B

```PowerShell
Import-Module valentia
```


# valentia Cmdlets

�C���|�[�g��́A�ȉ��̃R�}���h��valentia Cmdlet���m�F�ł��܂��B

```PowerShell
Get-command -module valentia
```

������Cmdlet���\�������͂��ł��B

```PowerShell
CommandType     Name                                               ModuleName
-----------     ----                                               ----------
Function        Get-ValentiaGroup                                  valentia
Function        Get-ValentiaModuleReload                           valentia
Function        Get-ValentiaRebootRequiredStatus                   valentia
Function        Get-ValentiaTask                                   valentia
Function        Initialize-valentiaEnvironment                     valentia
Function        Invoke-Valentia                                    valentia
Function        Invoke-ValentiaAsync                               valentia
Function        Invoke-ValentiaClean                               valentia
Function        Invoke-ValentiaCommand                             valentia
Function        Invoke-ValentiaParallel                            valentia
Function        Invoke-ValentiaSync                                valentia
Function        Invoke-ValentiaUpload                              valentia
Function        Invoke-ValentiaUploadList                          valentia
Function        New-ValentiaCredential                             valentia
Function        New-ValentiaFolder                                 valentia
Function        New-ValentiaGroup                                  valentia
Function        Set-ValentiaHostName                               valentia
Function        Set-valentiaLocation                               valentia
Workflow        Invoke-ValentiaCommandParallel                     valentia
```

�e���W���[���ɂ͗��p���₷���悤��Alias���ݒ肳��Ă��܂��B
Alias�͈ȉ��̃R�}���h�Ŋm�F�ł��܂��B


```PowerShell
Get-Alias | where ModuleName -eq "valentia"
```

����ɂ��valentia�Œ�`����Ă���alias�ꗗ���\������܂��B

```PowerShell
CommandType     Name                                               ModuleName
-----------     ----                                               ----------
Alias           Clean -> Invoke-ValentiaClean                      valentia
Alias           Command -> Invoke-ValentiaCommand                  valentia
Alias           CommandP -> Invoke-ValentiaCommandParallel         valentia
Alias           Go -> Set-valentiaLocation                         valentia
Alias           Reload -> Get-ValentiaModuleReload                 valentia
Alias           Sync -> Invoke-ValentiaSync                        valentia
Alias           Task -> Get-ValentiaTask                           valentia
Alias           Upload -> Invoke-ValentiaUpload                    valentia
Alias           UploadL -> Invoke-ValentiaUploadList               valentia
Alias           Vale -> Invoke-Valentia                            valentia
Alias           ValeA -> Invoke-ValentiaAsync                      valentia
Alias           Valep -> Invoke-ValentiaParallel                   valentia
```


# ���ݒ�R�}���h

valentia�ɂ��deployment�����s����܂��ɁA�T�[�o�[�ƃN���C���Ƃ� PSRemoting �����삷��悤�ɐݒ肷��K�v������܂��B

### 1. ```Initialize-ValentiaEnvironment``` : �T�[�o�[�Z�b�g�A�b�v

���̃R�}���h�́A�Ώۂ̃T�[�o�[���f�v���C�T�[�o�[�Ƃ��ē��삷��悤�Ɋ��\�����܂��B

	1. Set-ExecutionPolicy (Default : RemoteSigned)
	2. Enable-PSRemoting
	3. Add hosts to trustedHosts  (Default : *)
	4. Set MaxShellsPerUser from 25 to 100
	5. Add PowerShell Remoting Inbound rule to Firewall (Default : TCP 5985)
	6. Disable Enhanced Security for Internet Explorer (Default : True)
	7. Create OS user for Deploy connection. (Default : ec2-user)
	8. Create Windows PowerShell Module Folder for DeployUser (Default : C:\Users\$ec2-user\Documents\WindowsPowerShell\Modules)
	9. Create/Revise Deploy user credential secure file. (Server Only / Default : True)
	10. Create Deploy Folders (Server Only / Default : True)
	11. Set HostName as format (white-$HostUsage-IP)
	12. Get Status for Reboot Status
	
	* Currently remarking Set-NetworkProfile private

Once ran this command, You will got prompt for secret password of "OS User" (in default is ec2-user).

```PowerShell
Initialize-ValentiaEnvironment -Server -TrustedHosts "*"
```

** you can omit ```-Server``` and ```-TrustedHosts "*"``` as it were default **

```PowerShell
Initialize-ValentiaEnvironment
```

When Credential prompt was display input password in masked read line, then OS user (in default ec2-user) will be created and all PSRemote session to all hosts are enabled.
Also trying to save password in secdure stirng in default, input deploy user password again.


** If you want to restrict Trusted Hosts, you can use -TrustedHosts parameter to select. **

ex) restrict to 10.0.0.0
```PowerShell
Initialize-ValentiaServer -TrustedHosts "10.0.0.0"
```

** If you want setup without OS User setup? then add -NoOSUser switch. **
```PowerShell
Initialize-ValentiaEnvironment -Server -TrustedHosts "*" -NoOSUser
```

** ServerOnly : If you want setup without OS User setup and Save Credentail? then add -NoPassSave switch. **
```PowerShell
Initialize-ValentiaEnvironment -Server -TrustedHosts "*" -NoPassSave
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **

### 2. ```Initialize-ValentiaEnvironment -Client``` : Setup Clients

This command will let your Client for valentia remoting.

	1. Set-ExecutionPolicy (Default : RemoteSigned)
	2. Enable-PSRemoting
	3. Add hosts to trustedHosts  (Default : *)
	4. Set MaxShellsPerUser from 25 to 100
	5. Add PowerShell Remoting Inbound rule to Firewall (Default : TCP 5985)
	6. Disable Enhanced Security for Internet Explorer (Default : True)
	7. Create OS user for Deploy connection. (Default : ec2-user)
	8. Create Windows PowerShell Module Folder for DeployUser (Default : C:\Users\$ec2-user\Documents\WindowsPowerShell\Modules)
	9. Create Deploy Folders (Server Only / Default : True)
	10. Set HostName as format (white-$HostUsage-IP)
	11. Get Status for Reboot Status


Once ran this command, You will got prompt for secret password of "OS User" (in default is ec2-user).

```PowerShell
Initialize-ValentiaEnvironment -Client -TrustedHosts "*"
```

** you can omit ```-TrustedHosts "*"``` as it were default**

- NOTE: If you sat Server and Client "SAME USER and SAME PASSWORD" then credential will be escaped.
- This means, if you ran Initialize-ValentiaServer and Initialize-ValentiaClient, then ec2-user will be used and can be escape credential input.
- Because of Parallel commands using workflow, (Domain separation), credential escape was required.
- The other command can retrieve and use Credential, so other user credential will also valid for them.


Wanna setup without OS User setup? then add -NoOSUser switch.
```PowerShell
Initialize-ValentiaEnvironment -Client -TrustedHosts "*" -NoOSUser
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **

### 3. ```New-ValentiaCredential``` : Create New Credential secure file

Following command will make secure string file to save your credential.
** If you ran Initialize-ValentiaServer without -NoSavePass switch, then you can skip this section. **
** However if you want to revise saved secure Password, then use this Cmdlet to revise save file. **


```PowerShell
New-ValentiaCredential
```

or you can select user for credential.

```PowerShell
New-ValentiaCredential -User hogehoge
```

- NOTE: Once you execute command, you will got prompt to save secure strings of user.
- Default user is sat as ec2-user, it will use if no -user had input.


### 4. ```Initialize-ValentiaGroup``` : Create New deploygroup file

To execute deployment command to multiple hosts, you don't need to input hosts everytime.
Just list them up in file.

The file you specified will be output in following path.
```
C:\Deployment\Deploy_group\ *****.ps1
```

Deploy Group file just required to be split by `r`n.

SAMPLE deployGroup input
```
10.0.0.100
10.0.0.101
# 10.0.0.101 <= this line will be remarked as not started with decimal
```

You can create deploy group file in only one command.
Off cource there are several way to create deploygroup file.
You can make file with excel,notepad or powershell utils here.

```PowerShell
New-ValentiaGroup -DeployClients array[] -FileName FILENAME.ps1
```

SAMPLE CODE:
```PowerShell
New-ValentiaGroup -DeployClients "10.0.0.1","10.0.0.2" -FileName sample.ps1
```

this will make sample.ps1 in C:\Deployment\Deploy_group\ with 2 hosts ("10.0.0.1","10.0.0.2") written.

When using DeployGroup, just set file name without Extensions.
ex) if you sat file name as "new.ps1" then use it by "new".

# Task for Commandset

### Summary of Task

You can make task file To execute many commands.
Write task in file with below format and save it in BranchFolders you want to work.
- Note: BranchFolder will be C:\Deployment "application", "Image", "SWF", "SWF-Image", "Utils". (Created by Initialize-ValentiaServer)

``` PowerShell
Task taskname {
	Commandset you want to run1
	Commandset you want to run2
}
```

After you made task, you should move to BranchFolder you saved task.


### Convert existing .ps1 to task and setup task.

It's easy to convert normal .ps1 to task.
Task file format is as below.

```PowerShell
task taskname -Action{
	PowerShell Commands you want to run
}
```

If you .ps1 have like this code.

```PowerShell
Get-ChildItem
```


Then task will be like this.

```PowerShell
task taskname -Action{
	Get-ChildItem
}
```

You can use almost all cmdlets and variables set.
Please check vale and valep section about a detail of some cmdlets cannot use in task.

- Note:
	* All valentia cmdlets got credential before running task, therefore you don't need to get anymnore credentials in your script.
	* In other word, do not try to get another credential in you script. Especially in "valep" .



# Execute deploy Commands

After you satup Server/Clients, Credential amd DeproyGroups you can start execution.

### 1. ```vale``` : Sequential Single Command execution

This command will execute ScriptBlock to deploy group written in DeployGroup.ps1.
As sequencially running, many hosts will takes x times to complete job.

```PowerShell
vale Deploygroup {ScriptBlock}
```

SAMPLE:
```PowerShell
vale new {Get-ChildItem}
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **

### 2. ```vale``` : Sequential Commandset execution

Just make task for commandset.
```PowerShell
Task taskname {
	Commandset you want to run1
	Commandset you want to run2
}
```

After you made task, you should move to BranchFolder you saved task.
"go" command will ease you move to BranchFolder path where you carete task. 
ex ) application, then

``` PowerShell
go application
```

After you move to BranchFolder run vale command

```PowerShell
vale DeployGroup .\Taskfile.ps1
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **

### 3. ```valep``` : Parallel Single Command execution 

Almost same as vale command, just change command to valep.
It will speed up abpit 3-5 times than sequencial command.

- Note that this isn't asyncroniuous but only parallel.

```PowerShell
valep Deploygroup {ScriptBlock}
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **

### 4. ```valep``` : Parallel Commandset execution

Almost same as valep command, just change command to valep.
It will speed up abpit 3-5 times than sequencial command.

- Note that this isn't asyncroniuous but only parallel.

Just make task for commandset.
```PowerShell
Task taskname {
	Commandset you want to run1
	Commandset you want to run2
}
```

After you made task, you should move to BranchFolder you saved task.
"go" command will ease you move to BranchFolder path where you carete task. 
ex ) application, then
``` PowerShell
go application
```

After you move to BranchFolder run valep command

```PowerShell
valep DeployGroup .\Taskfile.ps1
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **


### 5. ```valea``` : Asynchronous Single Command execution 

Not same as vale and valep command. Because valea will execute asynchrously.
vale is sequential job and will cost host count.
valep is parallel execution similer to valea but is not asynchronous.
valea is multithread asynchronous commad and also can call from C# while valep cannot.

It will speed up O(n) times with host count times than sequencial command.


```PowerShell
valea Deploygroup {ScriptBlock}
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **


### 6. ```valea``` : Asynchronous Commandset execution

Not same as vale and valep command. Because valea will execute asynchrously.
vale is sequential job and will cost host count.
valep is parallel execution similer to valea but is not asynchronous.
valea is multithread asynchronous commad and also can call from C# while valep cannot.

Just make task for commandset.
```PowerShell
Task taskname {
	Commandset you want to run1
	Commandset you want to run2
}
```

After you made task, you should move to BranchFolder you saved task.
"go" command will ease you move to BranchFolder path where you carete task. 
ex ) application, then
``` PowerShell
go application
```

After you move to BranchFolder run valea command

```PowerShell
valea DeployGroup .\Taskfile.ps1
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **


# Execute File transfer Commands

### 1. ```upload``` : Single File Upload from Server to Clients

You can upload file to client with "upload" command.
This wrapps BITs Transfer inside.
- Note: The files using to upload must set in C:\Deployment\Upload at Server side.

ex ) Upload file c:\deployment\upload\upload.txt to Remote Client C:\ for DeployGroup new is.

```Powershell
upload -SourceFile "filename in C:\Deployment\Upload\...." -DestinationFolder c:\ -DeployGroup new
```

you can omit parameter names like this.
```Powershell
upload "upload.txt" c:\ new
```


### 2. ```uploadL``` : Files in List Upload from Server to Clients

You can upload multiple files listed in file with "uploadL" command.
This allow you ease select file manytime in command.

This wrapps BITs Transfer inside.
- Note: The files using to upload must set in C:\Deployment\Upload at Server side.

before use ran this command, you should create list file in C:\Deployment\Upload direcoty.
File format should like this.
```
Source, Destination
C:\Deployment\Upload\DownLoad.txt,\\10.0.4.100\C$
C:\Deployment\Upload\hogehoge.txt,\\10.0.4.100\C$
```

A Top line is Source, Destination header.
After 2nd line is SourceFile fullpath and Destination folder full path to transfer.
Deleimiter must ",".

Now you are ready to transfer list of files with following command.

ex ) Upload files listed in c:\deployment\upload\list.txt to Remote Client C:\ for DeployGroup new is.

```Powershell
UploadL -ListFile list.txt -DestinationFolder c:\ -DeployGroup new
```

Offcource you can omit poarameter names like this.

```Powershell
UploadL list.txt c:\ new
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **


### 3. ```sync``` : Sync Server Folder and Files with Clients (DIFF mode)

You can Synchronise DeployServer folder and Clients Folder.
Parent will be DeployServer, it means clietns folder will be changed to sync as like as DeployServer.

ex ) sync folder C:\Requirements to Remote Client folder "C:\hoge hoge" for DeployGroup new is.
```Powershell
sync -SourceFolder C:\Requirements -DestinationFolder "c:\hoge hoge" -DeployGroup new
```

Offcource you can omit poarameter names like this.

```Powershell
Sync C:\Requirements "c:\hoge hoge" new
```

** Adding ```-Verbose``` switch will ease you check how cmdlet working. **