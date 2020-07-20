# This script will remove Windows Packages in the array
# ToDo: Externalize the array to a configuration file or YAML

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
    log ("# - Removing " + $package)
    Get-AppxPackage -allusers $package | Remove-AppxPackage
}
log "# Finished"
log "#############################################"