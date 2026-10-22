$path = "draft/06_FGD_Presentation_Slide_Deck_and_Visual_Scenarios_Guide.md"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# 1. Remove Slides 11 and 12 block
$slideBlockRegex = '(?ms)### Slide 11: Scenario 5.+?(?=### Slide 13:)'
$content = [System.Text.RegularExpressions.Regex]::Replace($content, $slideBlockRegex, "")

# Renumber Slide 13 to Slide 11
$content = $content.Replace("### Slide 13: Non-Structural Modules 2 & 3", "### Slide 11: Non-Structural Modules 2 & 3")
$content = $content.Replace("* **Slide Title:** Non-Structural Modules 2 & 3:", "* **Slide Title:** Slide 11: Non-Structural Modules 2 & 3:")

# 2. Fix Part 4 table: ensure every row has 9 columns (remove any trailing columns beyond the 8 scenario columns)
$lines = $content -split "\r?\n"
$newLines = @()
foreach ($line in $lines) {
    if ($line -match '^\|\s*\*\*Occupant Capacity\*\*' -or `
        $line -match '^\|\s*\*\*Stage Adaptability' -or `
        $line -match '^\|\s*\*\*Setup Turnaround' -or `
        $line -match '^\|\s*\*\*Custodial Labor' -or `
        $line -match '^\|\s*\*\*Aisle Clearance' -or `
        $line -match '^\|\s*\*\*Sightline Quality' -or `
        $line -match '^\|\s*\*\*Universal Access' -or `
        $line -match '^\|\s*\*\*Utility Infrastructure' -or `
        $line -match '^\|\s*\*\*Placemaking & Identity' -or `
        $line -match '^\|\s*\*\*Lobby Concourse & IEQ') {
        # Split by pipe
        $parts = $line.Split('|')
        # Expect parts: 0:empty, 1:Metric, 2:S1A, 3:S1B, 4:S2A, 5:S2B, 6:S3A, 7:S3B, 8:S4A, 9:S4B, 10+: extra
        if ($parts.Count -gt 10) {
            $trimmedParts = $parts[0..9]
            $line = ($trimmedParts -join '|') + '|'
        }
    }
    $newLines += $line
}
$content = $newLines -join "`r`n"

# Update any leftover references to five scenarios
$content = $content.Replace("across all five test scenarios", "across all four operational test scenarios")
$content = $content.Replace("all five scenarios", "all four operational scenarios")

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Fixed draft 06 successfully"
