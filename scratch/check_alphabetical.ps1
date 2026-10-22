$lines = Get-Content '00_References' -Encoding UTF8
$entries = $lines | Where-Object { $_ -match '^[A-Za-z]' -and $_ -ne 'LIST OF REFERENCES' }

$outOfOrder = @()
for ($i = 0; $i -lt ($entries.Count - 1); $i++) {
    $curr = $entries[$i]
    $next = $entries[$i + 1]
    # compare
    if ([string]::Compare($curr, $next, [System.StringComparison]::InvariantCultureIgnoreCase) -gt 0) {
        $outOfOrder += "Line $($i+1): '$curr' should be AFTER '$next'"
    }
}
if ($outOfOrder.Count -eq 0) {
    Write-Host "SUCCESS: All $($entries.Count) references in 00_References are in strict alphabetical order!"
} else {
    Write-Host "Found $($outOfOrder.Count) alphabetical sequencing issues:"
    $outOfOrder | ForEach-Object { Write-Host " - $_" }
}
