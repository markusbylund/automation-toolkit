
# System Report
# Collects basic system information from a Windows computer.

$computer = Get-ComputerInfo

Write-Host "=== System Report ==="
Write-Host "Computer name: $env:COMPUTERNAME"
Write-Host "User: $env:USERNAME"
Write-Host "OS: $($computer.WindowsProductName)"
Write-Host "Version: $($computer.WindowsVersion)"
Write-Host "Build: $($computer.OsBuildNumber)"
Write-Host "Manufacturer: $($computer.CsManufacturer)"
Write-Host "Model: $($computer.CsModel)"
Write-Host "Processor: $($computer.CsProcessors.Name)"
Write-Host "RAM: $([math]::Round($computer.CsTotalPhysicalMemory / 1GB, 2)) GB"
