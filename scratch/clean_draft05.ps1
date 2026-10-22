$path = "draft/05_FGD_Facilitator_Guide_Rubrics_and_Presentation_Checklist.md"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# Remove Slide 7 block
$slide7Regex = '(?ms)#### Slide 7: Scenario 5.+?(?=#### Slide 8:)'
$content = [System.Text.RegularExpressions.Regex]::Replace($content, $slide7Regex, "")

# Renumber slides 8 & 9 to 7 & 8
$content = $content.Replace("#### Slide 8: Non-Structural Module 3", "#### Slide 7: Non-Structural Module 3")
$content = $content.Replace("#### Slide 9: Non-Structural Module 2", "#### Slide 8: Non-Structural Module 2")

# Remove Scenario 5 from rubric
$rubricRegex = '(?ms)#### Scenario 5: Spatial Subdivision.+?(?=---\r?\n\r?\n### Section 3:)'
$content = [System.Text.RegularExpressions.Regex]::Replace($content, $rubricRegex, "")

# Remove Facilitator script for Slide 7
$scriptRegex = '(?ms)>\s*\r?\n>\s*\*\[Slide 7 - Scenario 5 Subdivision\].+?sound bleed\.\*'
$content = [System.Text.RegularExpressions.Regex]::Replace($content, $scriptRegex, "")

# Update slide references and scenario count in script
$content = $content.Replace("[Slides 8 & 9 - Technical Rigging & Culture]:", "[Slides 7 & 8 - Technical Rigging & Culture]:")
$content = $content.Replace("We have now seen all five scenarios and design modules.", "We have now seen all four operational scenarios and design modules.")
$content = $content.Replace("moves smoothly through Slides 3 to 9", "moves smoothly through Slides 3 to 8")

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Updated draft 05 successfully"
