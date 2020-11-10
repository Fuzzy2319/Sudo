@ECHO off
REM Be Careful this batch file can be dangerous. If you don't know what you do, delete this file.
if [%1%] == [] (
	echo Command syntax : sudo -programToExecute -?Args
	exit
)
if [%2%] == [] (
	powershell Start-Process -FilePath %1% -Verb RunAs
) else (
	powershell Start-Process -FilePath %~1 -ArgumentList "%~2" -Verb RunAs
)