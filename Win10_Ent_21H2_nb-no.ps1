Write-Host  -ForegroundColor Cyan "Starting OSDCloud ..."
Start-Sleep -Seconds 3

Write-Host  -ForegroundColor Cyan "Importing the OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI
Write-Host  -ForegroundColor Cyan "Start Windows 10 Installation..."
$Params = @{
    OSBuild = "21H2"
    OSEdition = "Enterprise"
    OSLanguage = "nb-no"
    OSLicense = "Volume"
    SkipAutopilot = $true
    SkipAutopilotOOBE = $true
    SkipODT = $true
    ApplyCatalogFirmware = $false
    ApplyManufacturerDrivers = $true
    ApplyCatalogDrivers = $true
    Screenshot = $true
    ZTI = $true
}
Start-OSDCloud @Params

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
