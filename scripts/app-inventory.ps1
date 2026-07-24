# App Inventory
# Lists installed applications and exports the result to a CSV file.

$outputFolder = "docs\reports"
$outputFile = Join-Path $outputFolder "app-inventory.csv"

if (-not (Test-Path $outputFolder)) {
    New-Item -ItemType Directory -Path $outputFolder | Out-Null
}

$registryPaths = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$apps = foreach ($path in $registryPaths) {
    Get-ItemProperty $path -ErrorAction SilentlyContinue |
        Where-Object { $_.DisplayName } |
        Select-Object DisplayName, DisplayVersion, Publisher, InstallDate
}

$apps |
    Sort-Object DisplayName |
    Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

Write-Host "=== App Inventory ==="
Write-Host "Installed apps found: $($apps.Count)"
Write-Host "Report saved to: $outputFile"