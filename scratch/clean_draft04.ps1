$path = "draft/04_Scenario_Based_Design_Experimentation_and_Alternative_Testing_Guide.md"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

# Replace line 58
$content = $content.Replace("and partition subdivisions", "and circulation clearances")

# Remove Scenario 5 block
$scen5Target = @"
### Scenario 5: Spatial Subdivision / Dual Concurrent Event Mode
*Operational Demand:* Accommodating two simultaneous, distinct municipal or private events without sound bleed or visual interference.

* **Alternative A: Status Quo (Single Unified Hall)**
  - *Layout Description:* The entire 840 sqm facility is rented to a single client.
  - *Operational Limitation:* If an LGU department only needs space for 80 people, 75% of the hall sits idle and air-conditioned at full municipal expense, while another community group is turned away.
* **Alternative B: Deployable Kinetic Acoustic Partitioning**
  - *Layout Description:* A ceiling-suspended, motorized or manual operable acoustic partition wall (`$text{STC} \ge 45`$) subdividing the 711 sqm hall into two independent 350 sqm multi-purpose rooms (East Hall & West Hall), each with dedicated egress doors and independent lighting/AC zoning.
  - *Operational Advantage:* Doubles the facility's event hosting capacity; allows concurrent bookings (e.g., a DepEd seminar in East Hall while a CDRRMO training occurs in West Hall).

"@

# Normalize newlines for replacement
$scen5Regex = "(?ms)### Scenario 5: Spatial Subdivision / Dual Concurrent Event Mode.+?(?=---\r?\n\r?\n## 4\. The FGD)"
$content = [System.Text.RegularExpressions.Regex]::Replace($content, $scen5Regex, "")

# Remove line 250
$content = [System.Text.RegularExpressions.Regex]::Replace($content, "(?m)^\s*-\s*For Hall Division:.+?\r?\n", "")

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Updated draft 04 successfully"
