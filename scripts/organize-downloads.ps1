# Downloads Organizer
# Preview mode by default. Use -Apply to actually move files.

param(
    [switch]$Apply
)

$downloadsPath = Join-Path $env:USERPROFILE "Downloads"

$folders = @{
    "Images"    = @(".jpg", ".jpeg", ".png", ".gif", ".webp", ".svg")
    "Documents" = @(".pdf", ".docx", ".doc", ".xlsx", ".xls", ".pptx", ".txt", ".csv")
    "Archives"  = @(".zip", ".rar", ".7z")
    "Videos"    = @(".mp4", ".mov", ".avi", ".mkv")
    "Other"     = @()
}

Write-Host "=== Downloads Organizer ==="
Write-Host "Folder: $downloadsPath"
Write-Host "Mode: $(if ($Apply) { 'Apply' } else { 'Preview' })"
Write-Host ""

Get-ChildItem -Path $downloadsPath -File | ForEach-Object {
    $file = $_
    $extension = $file.Extension.ToLower()
    $targetCategory = "Other"

    foreach ($category in $folders.Keys) {
        if ($folders[$category] -contains $extension) {
            $targetCategory = $category
            break
        }
    }

    $targetFolder = Join-Path $downloadsPath $targetCategory
    $targetPath = Join-Path $targetFolder $file.Name

    if ($Apply) {
        if (-not (Test-Path $targetFolder)) {
            New-Item -ItemType Directory -Path $targetFolder | Out-Null
        }

        Move-Item -Path $file.FullName -Destination $targetPath -Force
        Write-Host "Moved: $($file.Name) -> $targetCategory"
    } else {
        Write-Host "Would move: $($file.Name) -> $targetCategory"
    }
}

if (-not $Apply) {
    Write-Host ""
    Write-Host "Preview only. Run with -Apply to move files."
}