$matches = Select-String -Path 'draft/06_FGD_Presentation_Slide_Deck_and_Visual_Scenarios_Guide.md' -Pattern 'Scenario 5|operable.*partition|folding partition|Grid Line C/D|STC.*45|Salon A'
foreach ($m in $matches) {
    Write-Host "$($m.LineNumber): $($m.Line.Trim())"
}
