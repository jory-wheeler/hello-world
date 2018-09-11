@ECHO OFF


REM These may need to be updated.....
SET XLocalFolderName=D:\Family\BackedUp\JORY\BackupScripts\
SET XRoboCopyLogFileName=BackupLog.log


ECHO ******************************
ECHO ****Copy Pictures folder
ECHO ******************************
SET XSourceFolder="D:\Family\BackedUp\JORY\Pictures"
SET XTargetFolder="h:\Pictures"
robocopy.exe %XSourceFolder% %XTargetFolder% *.* /E /V /R:1 /W:5 /MT:4 /DCOPY:T /MIR /LOG+:%XLocalFolderName%%XRoboCopyLogFileName% /TEE


ECHO ******************************
ECHO ****Copy Everything in backedup except pictures folder
ECHO ******************************
SET XSourceFolder="D:\Family\BackedUp"
SET XTargetFolder="h:\family\backedup"
SET XExcludeFolder="D:\family\backedup\Jory\Pictures"
robocopy.exe %XSourceFolder% %XTargetFolder% *.* /E /V /R:1 /XD %XExcludeFolder% /W:5 /MT:4 /DCOPY:T /MIR /LOG+:%XLocalFolderName%%XRoboCopyLogFileName% /TEE

