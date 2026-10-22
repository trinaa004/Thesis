$path = "draft/06_FGD_Presentation_Slide_Deck_and_Visual_Scenarios_Guide.md"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# 1. Remove TOC lines 39-40
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)^\s*-\s*\[Slide 11: Scenario 5.+?\r?\n', '')
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)^\s*-\s*\[Slide 12: Scenario 5.+?\r?\n', '')

# 2. Remove Tier 5 row from table around line 221
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)^\|\s*\*\*Tier 5:\s*Spatial Subdivision.+?\r?\n', '')

# 3. Remove Slides 11 and 12
$slidesRegex = '(?ms)### Slide 11: Scenario 5 - Spatial Subdivision.+?(?=---\r?\n\r?\n## Part 4:)'
$content = [System.Text.RegularExpressions.Regex]::Replace($content, $slidesRegex, '')

# 4. In Part 4 Table: remove Scenario 5 columns
# Let's inspect Part 4 Table header and rows
$tableHeaderRegex = '(?m)\| Scenario 5: Subdivision \(Option A Status Quo\) \| Scenario 5: Subdivision \(Option B Proposed\) \|'
$content = $content.Replace(" | Scenario 5: Subdivision (Option A Status Quo) | Scenario 5: Subdivision (Option B Proposed) |", " |")
$content = $content.Replace(" | :---: | :---: |`r`n", "`r`n")
$content = $content.Replace(" | :---: | :---: |`n", "`n")

# Replace each line in Part 4 table that has Scenario 5 entries
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)\| Single 60-100 pax \(or monolithic 500 pax\) \| \*\*Dual 150-200 pax\*\*.+?\|$', '|')
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)\| 2\.53 s \(cross-room sound bleed\) \| \*\*STC.+?\|$', '|')
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)\| 4-6 hours \(inability to subdivide\) \| \*\*< 15 minutes\*\*.+?\|$', '|')
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)\| 50-70% cooling/power waste .+?\| \*\*100% zoned efficiency\*\*.+?\|$', '|')
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)\| 2\.51 \(Severely Deficient\) \| \*\*4\.77 \(Highly Optimized\)\*\* \|$', '|')

# 5. Update benchmark narrative (around line 649)
$content = $content.Replace('across all five scenarios (Scenario 1 Plenary Assembly $\bar{x} = 4.71$, Scenario 2 Workshop / Training $\bar{x} = 4.63$, Scenario 3 Banquets $\bar{x} = 4.62$, Scenario 4 Expos $\bar{x} = 4.52$, and Scenario 5 Spatial Subdivision $\bar{x} = 4.77$; overall composite mean $\bar{x} = 4.65$ vs. $\bar{x} = 2.95$)', 'across all four operational scenarios (Scenario 1 Plenary Assembly $\bar{x} = 4.71$, Scenario 2 Workshop / Training $\bar{x} = 4.63$, Scenario 3 Banquets $\bar{x} = 4.62$, and Scenario 4 Expos $\bar{x} = 4.52$; overall composite mean $\bar{x} = 4.62$ vs. $\bar{x} = 3.06)')

# 6. Remove Field Observation & Planners Feedback bullet for subdivision (around line 658)
$content = [System.Text.RegularExpressions.Regex]::Replace($content, '(?m)^\s*-\s*\*Field Observation & Planners Feedback \(Subdivision.+?\r?\n', '')

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Updated draft 06 successfully"
