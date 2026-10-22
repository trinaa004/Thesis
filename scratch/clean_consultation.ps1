$path = "Consultation/adviser_formal_update_sop_and_analysis_summary.md"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
$target = "      - *Spatial Subdivision Scenario:* Kinetic operable acoustic partition wall (STC ≥ 45) enabling concurrent dual-event bookings (e.g., seminar + banquet) in the 711 sqm Main Hall.`r`n"
if ($content.Contains($target)) {
    $content = $content.Replace($target, "")
    [System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
    Write-Host "Replaced successfully with CRLF"
} else {
    $targetLF = "      - *Spatial Subdivision Scenario:* Kinetic operable acoustic partition wall (STC ≥ 45) enabling concurrent dual-event bookings (e.g., seminar + banquet) in the 711 sqm Main Hall.`n"
    if ($content.Contains($targetLF)) {
        $content = $content.Replace($targetLF, "")
        [System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
        Write-Host "Replaced successfully with LF"
    } else {
        Write-Host "Target not found directly, regex replacing"
        $lines = [System.IO.File]::ReadAllLines($path, [System.Text.Encoding]::UTF8)
        $newLines = $lines | Where-Object { $_ -notmatch 'Spatial Subdivision Scenario' }
        [System.IO.File]::WriteAllLines($path, $newLines, [System.Text.Encoding]::UTF8)
        Write-Host "Replaced via line filter"
    }
}
