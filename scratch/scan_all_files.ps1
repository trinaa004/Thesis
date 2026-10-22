$matches = Get-ChildItem -Recurse -Filter *.md | Select-String -Pattern 'operable.*partition|folding partition|Grid Line C/D|STC.*45|Scenario 5'
foreach ($m in $matches) {
    $rel = $m.Path.Replace((Get-Location).Path + "\", "")
    Write-Host "$rel`:$($m.LineNumber): $($m.Line.Trim())"
}
if ($matches.Count -eq 0) {
    Write-Host "ZERO MATCHES FOUND! ALL CLEAN!"
}
