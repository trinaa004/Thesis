$rrl = Get-Content '20_RRL.md' -Encoding UTF8
$rrlRefs = $rrl | Where-Object { $_ -match '^- \*\*(.*?)\*\*' -and $_ -notmatch 'FF&E' -and $_ -notmatch 'Surface-Integrated' -and $_ -notmatch 'Built-In Cultural' } | ForEach-Object {
    if ($_ -match '^- \*\*(.*?)\*\*') { $matches[1] }
}
Write-Host "Total references in 20_RRL.md: $($rrlRefs.Count)"
$masterRefs = Get-Content '00_References' -Encoding UTF8

$missing = @()
foreach ($ref in $rrlRefs) {
    $firstWord = ($ref -split '[\s,]+')[0]
    $found = $masterRefs | Where-Object { $_ -match "^$firstWord" -or $_ -match $firstWord }
    if (-not $found) {
        $missing += $ref
    }
}
if ($missing.Count -eq 0) {
    Write-Host "SUCCESS: 100% of 20_RRL.md references are present in 00_References!"
} else {
    Write-Host "Missing count: $($missing.Count)"
    foreach ($m in $missing) {
        Write-Host " - $m"
    }
}
