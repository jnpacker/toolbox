# This script will remove Windows Packages in the array



$packages = @(
    "*microsoft.windowscommunicationsapps*",
    "*Microsoft.People*",
    "*Microsoft.WindowsMaps*")

function log ($msg) {
    Write-Output "[{get-date -Format d}] ${msg}"
}

log "#############################################"
log ("# Found " + $packages.length + " packages to disable")
#Loop through the package array and disable them
foreach ($package in $packages) {
    Get-AppxPackage $package | Remove-AppxPackage
}
log "# Finished"
log "#############################################"