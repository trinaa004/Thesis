$matches = Select-String -Path 'draft/05_FGD_Facilitator_Guide_Rubrics_and_Presentation_Checklist.md' -Pattern 'Scenario 5|partition|Subdivision'
foreach ($m in $matches) {
    Write-Host "$($m.LineNumber): $($m.Line.Trim())"
}
