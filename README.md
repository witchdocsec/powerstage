# powerstage
custom powershell stager for white hat hackers. that evades windows defender and escelates privileges

#useage
modify stage1.bat and insert the url of where you're hosting stage2.ps1,    
then change the stagerurl variable (to stage2.ps1) and the payload url in stage2.ps1, 
when the target runs the bat file. your payload will be run excempt from windows defender scans and as admin.

