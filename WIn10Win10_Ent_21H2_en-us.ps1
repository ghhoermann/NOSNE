Write-Host  -ForegroundColor Cyan "Starting OSDCloud ..."
Start-Sleep -Seconds 3

Write-Host  -ForegroundColor Cyan "Importing the OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI
Start-OSDCloud -SkipAutopilot -SkipODT -OSBuild 21H2 -OSEdition Enterprise -OSLanguage en-us -OSLicense Volume -ZTI

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
