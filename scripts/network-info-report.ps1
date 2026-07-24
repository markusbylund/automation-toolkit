# Network Info Report
# Shows basic network information for troubleshooting and documentation.

Write-Host "=== Network Info Report ==="
Write-Host "Computer name: $env:COMPUTERNAME"
Write-Host ""

Get-NetIPConfiguration | ForEach-Object {
    Write-Host "Adapter: $($_.InterfaceAlias)"
    Write-Host "IPv4 address: $($_.IPv4Address.IPAddress)"
    Write-Host "IPv4 gateway: $($_.IPv4DefaultGateway.NextHop)"
    Write-Host "DNS servers: $($_.DNSServer.ServerAddresses -join ', ')"
    Write-Host ""
}