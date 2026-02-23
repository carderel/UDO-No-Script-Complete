# UDO Update Checker

$current = if (Test-Path "UDO/VERSION") { Get-Content "UDO/VERSION" -Raw } else { "unknown" }
$current = $current.Trim()

try {
    $latest = (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/carderel/UDO-No-Script/main/UDO/VERSION" -UseBasicParsing).Content.Trim()
} catch {
    $latest = "error"
}

Write-Host "Current: $current"
Write-Host "Latest:  $latest"

if ($latest -eq "error") {
    Write-Host "Could not check for updates."
} elseif ($current -ne $latest) {
    Write-Host "Update available at: https://github.com/carderel/UDO-No-Script/releases"
} else {
    Write-Host "You're up to date."
}
