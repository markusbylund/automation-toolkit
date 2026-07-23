# Disk Health Check
# Shows disk usage and warns when free space is low.

$warningLimitPercent = 15

Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    $used = $_.Used
    $free = $_.Free
    $total = $used + $free

    if ($total -gt 0) {
        $freePercent = [math]::Round(($free / $total) * 100, 2)

        Write-Host "Drive $($_.Name):"
        Write-Host "Free space: $([math]::Round($free / 1GB, 2)) GB"
        Write-Host "Free percent: $freePercent%"

        if ($freePercent -lt $warningLimitPercent) {
            Write-Host "Warning: Low disk space!" -ForegroundColor Yellow
        }

        Write-Host ""
    }
}
