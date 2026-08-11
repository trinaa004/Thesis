# Gap Analysis & Constructive Critique

**Paper:** *An Interior Design Framework for the Calbayog City Convention Center: Harmonizing Spatial Modularity, Local Samar Heritage, and Future-Proof Event Adaptability* — BS Interior Design thesis proposal, 840 sqm Main Hall, Brgy. Capoocan, Calbayog City, Samar.

**Documents reviewed:** 21 files (Chapters 1–3, both survey instruments, interview protocol, observation checklist, both pilot certificates, REC Form F29, consultation brief, defense sheet)
**Findings:** 33 — 9 critical, 14 substantive, 10 consistency
**Nothing in the thesis was modified.** This is a read-only review.

---

## The short version

The proposal is well-scoped and unusually concrete for an undergraduate interior design thesis — the anthropometric specifications, the non-structural boundary, and the bilingual instruments are all real assets. Three things undermine it, and all three are fixable.

**1. The pilot test statistics do not reconcile.** The reported Cronbach's alpha cannot be reproduced from the reported variance components in either instrument, the itemized variances do not sum to the stated totals, and the pilot report tests item wordings that no longer match the current questionnaires. An adviser with Excel will find this in ten minutes.

**2. The survey items are written as statements of benefit and ask for agreement** ("significantly accelerates," "ensures," "enhances"). That is why the pilot means sit at 4.5–5.0, why one subscale returned a negative alpha, and why one item returned zero variance. The instrument currently measures agreeableness, not preference.

**3. The study never closes its own loop.** It produces a design manual and stops. Nothing evaluates whether the manual works, and there is no documented baseline — no floor plan, no ceiling height, no measured setup times, no photographs — establishing that this specific venue has the problems the study says it has.

---

# CRITICAL — checkable errors

## C1. The reported Cronbach's alpha cannot be reproduced from the reported numbers

**Files:** `Pilottest/AttendPilot_Test_result.md`, `Pilottest/Event_Planner_Pilot_Test_result.md`

Both certificates publish the full variance components, which makes the alpha independently checkable. Running the standard formula on the published figures gives different answers, and the itemized variances in the section tables do not sum to the stated totals.

```
α = (k / (k−1)) × (1 − Σσ²ᵢ / σ²_T)

FORM B — Attendees
  k = 25   σ²_T = 207.5667   Σσ²ᵢ = 16.0333  (as stated)
  α = (25/24) × (1 − 16.0333/207.5667) = 0.961     reported: 0.9469
  Sum of the 25 listed item variances    = 15.80    stated:   16.0333

FORM A — Planners
  k = 25   σ²_T = 158.4889   Σσ²ᵢ = 11.3333  (as stated)
  α = (25/24) × (1 − 11.3333/158.4889) = 0.967     reported: 0.9402
  Sum of the 25 listed item variances    = 16.80    stated:   11.3333
```

The item *means* all reconcile correctly (Form B composite 4.088; Form A composite 4.472), so the response data appears real — the variance and alpha figures are what have gone wrong.

Also drop the "Master Composite Reliability ᾱ = 0.9436 (k = 50)" figure. Averaging two instruments' alphas is not a statistic, and composite alpha across 25 items measuring five different constructs assumes unidimensionality that does not hold here.

> **Fix:** Recompute both alphas directly from the raw pilot spreadsheets, item by item, and republish the certificates with figures that reconcile. Show the working. Do not carry the current numbers into the consultation.

---

## C2. The pilot tested item wordings that no longer match the current questionnaires

**Files:** `Pilottest/*`, `37_Survey&Interview.md`

Several pilot items describe different content from the items in the deployed instrument:

- Form A pilot **B1** = "Prolonged setup/teardown turnaround times delay event transitions." Survey **B1** = "The current 840 sqm Main Hall interior footprint lacks spatial flexibility…"
- Form B pilot **D4** = "Waray geometric motifs *in floor finishes* guide pedestrian movement." Survey **D4** = "Upgraded *perimeter acoustic curtains* featuring Waray geometric motifs…" — a different design element entirely.
- Form B pilot **C1** = "Reconfigurable room setups enhance comfort *during small gatherings*." Survey **C1** = "…tailored to specific event sizes enhance personal comfort and spatial flow."

A reliability coefficient only certifies the instrument that was actually administered. As it stands, the pilot does not validate the questionnaire she intends to deploy.

> **Fix:** Either restore the pilot wordings in the final instrument, or re-run the pilot on the revised items. If the revisions are minor and defensible, document each change and state explicitly that the alpha applies to the pre-revision version.

---

## C3. Survey items are leading, which produces the ceiling effects and the negative alpha

**File:** `37_Survey&Interview.md`

Nearly every item in Sections C–F asserts a benefit as fact and asks for agreement: "*significantly accelerates* venue turnaround speed," "*ensures* full inclusivity," "*improves* speech intelligibility," "*creates a compelling* cultural identity." No respondent has a reason to disagree. The pilot results are exactly what that predicts:

| Form A subscale | Mean | Alpha | Symptom |
| :--- | ---: | ---: | :--- |
| C — FF&E & turnaround | 4.58 | **−0.0459** | Item C5 returned **zero variance** (all ten answered 5) |
| D — Cultural integration | 4.70 | 0.6132 | Near-ceiling; D3 mean 4.90 |
| F — Future-proof specs | 4.68 | 0.7486 | Near-ceiling |
| B — Existing problems *(neutrally framed)* | 3.84 | 0.9060 | Real variance, strong reliability |

Section B is the only block phrased as a condition rather than a benefit, and it is the only block that behaves like a proper scale. That is the diagnosis in one line.

A negative alpha is not a "high-consensus subscale" or a "ceiling artifact" — it is a scale that failed. Labelling it as acceptable in the certificate is more damaging than reporting it honestly.

> **Fix:** Convert Sections C–F from agreement scales to **importance or priority** scales ("How important is X to your setup workflow: not at all → extremely"), and add a forced-choice ranking for the design options. Ranking is also better data for a design thesis — she needs to know which interventions matter *most*, and an agreement scale where everything scores 4.7 tells her nothing. Add two or three reverse-coded items to break acquiescence.

---

## C4. The Statement of the Problem has five sub-problems, but every other document references six

**Files:** `02_chapter1.md`, `33_Instruments.md`, `REC/01REC_F29.md`, `00_abstract.md`, `00_title.md`, both pilot certificates

`02_chapter1.md` lists SPOP 1–5. The instruments, pilot certificates, REC form, abstract and title breakdown all reference "SPOP Q1–Q6," "SPOP Q5 & Q6," "SPOP Q2 & Q5," and "SPOP Q4 & Q6." Section F of both survey forms is labelled as covering two questions that do not both exist.

This appears in the REC submission, which makes it more than cosmetic.

> **Fix:** Decide now whether accessibility (currently folded into Q2) becomes a standalone Q6, then propagate one numbering across all files. Fifteen-minute fix, and the kind of thing a panel opens with.

---

## C5. The pilot sample size contradicts itself across documents — including the REC form

**Files:** `REC/01REC_F29.md`, `34_Data Collection.md`, `REC/defense.md`, both pilot certificates

- REC F29 §11, §12, §17: pilot pre-testing with **10 individuals**, total.
- `34_Data Collection.md` Phase 2: **10 experts + 10 attendees = 20**.
- Two separate pilot certificates each report **n = 10**, so 20 people were tested.
- `REC/defense.md` §9 describes the pilot as **"5 event organizers + 5 frequent event-goers"** — a third figure.

The REC form is the binding document. If approval was granted for 10 and 20 were tested, that is a protocol deviation.

> **Fix:** Settle on 20 (10 per instrument — methodologically the right call, since two different instruments each need their own reliability check) and amend the REC form. Also confirm whether the pilot ran before or after USC-REC clearance; `34_Data Collection.md` states clearance precedes all field activity, and the pilot is human-participant data collection.

---

## C6. There is no consolidated bibliography, and roughly thirty cited sources appear in no reference list

**File:** `20_RRL.md`

References are currently scattered across three files (`00_definitionofterms.md`, `32_Respondents.md`, `37_Survey&Interview.md`) with no master list. Sources cited in the RRL but listed nowhere include:

Sung & Lee (2015), Rogers & Wynn-Moylan (2022), Sharma (2025), Allied Market Research (2019), Lee & Fenich (2016), Lee & Lee (2017), Anas et al. (2020), FXCollaborative (2022), Van der Wagen & White (2017), Habibi (2025), Chojnacki et al. (2023, 2024), Cat (2023), AV Alliance (2024), Syma (2023), Jain (2015), Waida (2021), Aymankuy (2006), Bhandari (2016), Cailles (2024), Baradas (1968), NCCA (2004), Kockler (1989), Habraken (1972), Scannell & Gifford (2010), Archer (1995), Fulgar (2024), ASM Global (2024), Ayuba & Agah (2018), Garado et al. (2026), Wagas (2016).

> **Fix:** Build one master APA reference list covering every in-text citation across all chapters. Note that the two most load-bearing citations in the theoretical framework — **Habraken (1972)** and **Scannell & Gifford (2010)** — currently have no entry anywhere.

---

## C7. Several references need verification before submission

**File:** `00_definitionofterms.md`

A number of entries name journals that are difficult to locate, or use a source inconsistently. Flagging these is not an accusation — but each needs a real DOI, ISBN, or repository handle before the manuscript goes in, because an unverifiable citation is treated as a fabricated one.

| Entry | Concern |
| :--- | :--- |
| Barr, S. (2023). *Journal of Architectural Flexibility*, 15(2) | Journal not readily identifiable |
| DesignHorizons (2024). *Architectural Digest & Practice*, 29(4) | Architectural Digest is a consumer magazine, not a volumed journal; corporate author |
| Etteh, O. (2016). *International Journal of Interior Architecture*, 11(3) | Journal not readily identifiable; carries a key claim in the introduction |
| Fakharany, M. (2025). *Journal of Interior Design Studies*, 19(1) | Cited elsewhere as an architecture-press article about Heatherwick's Coex proposal — one source used two incompatible ways |
| Phantos, T. (2025). *Stage & Venue Technology*, 22(1) | "Phantos" reads as a rigging supplier's trade name, not a personal author |
| Del Monte et al. (2022). *Philippine Cultural Design Journal*, 8(1) | Verify; anchors the *tikog* material claim |
| Wagas, L. (2016). *Visayas Heritage Review*, 5(2) | Verify; anchors the entire pattern-abstraction method |
| Roa & Lagamon (2018) | Title differs between `00_definitionofterms.md` and `32_Respondents.md` |
| Yamane (1967) | Listed in `32_Respondents.md` but never cited in text |

> **Fix:** Pull every reference up in Google Scholar or the university library and attach a DOI or permanent link. Replace anything that cannot be located. Prioritize Wagas (2016), Del Monte et al. (2022) and Etteh (2016) — the argument leans hardest on those three.

---

## C8. The Waray instructions on Form B were copy-pasted from Form A and address the wrong audience

**File:** `37_Survey&Interview.md:298`

Form B is the attendee questionnaire. Its English instruction correctly says "based on your personal experience as an event attendee or visitor." The Waraynon line directly beneath still says:

> *…sumala ha imo eksperyensya ha pag-organisar o pagdumala san mga okasyon…*

— "based on your experience organizing or managing events." A Waray-speaking attendee reading only the translation is told to answer as an organizer.

Two related translation issues: Form A Section A is headed `IMPORMASYON SAN PAMILYA UG TRABAHO` — "family and work information" — for a professional profile section that asks nothing about family. And `Kagamitan ha Pag-sipot` for "frequency of attendance" reads oddly.

> **Fix:** Have a Waray native speaker — ideally a language faculty member or a local cultural officer — review and sign off on both forms, then include that sign-off as an appendix. RECs increasingly ask for translation validation, and it doubles as instrument-validity evidence currently lacking.

---

## C9. The exclusion criteria bar people with sensory and communication barriers — in a study whose core objective is accessibility

**File:** `REC/01REC_F29.md` §11

Exclusion criterion (3) removes "individuals with cognitive, sensory, or communication barriers that preclude independent, unassisted completion of the research instruments." Meanwhile SPOP Q2 makes BP 344 / ADA compliance a core research question, item F1 asks about PWD and senior inclusivity, and the significance section promises an inclusive civic venue.

So the study's accessibility claims rest entirely on code compliance, with zero input from the users those codes exist for. No PWD or senior quota appears anywhere in the sampling design. A panel member who cares about universal design will make this the whole discussion.

It also contradicts `33_Instruments.md`, which promises "on-site assistance as needed" — assistance and a bar on non-independent completion cannot both be policy.

> **Fix:** Narrow the exclusion to genuine incapacity to give informed consent, and deliberately recruit a small purposive subgroup of PWD and senior attendees (even n = 3–5, interview-based with assistance offered). That single change converts the most exposed part of the study into one of its strongest.

---

# SUBSTANTIVE — methodological gaps

## S1. The study never validates its own deliverable

**File:** `30_Research Design.md`

Phase 3 synthesizes the framework and the methodology ends there. Nothing checks whether the layout typologies, the ceiling interface, or the pattern matrices actually do what they claim. The abstract promises the framework will "optimize turnaround speed, attendee comfort, and regional civic identity," but no procedure in the study can substantiate any of those three.

> **Fix:** Add a short Phase 4: present the drafted typologies and surface schemes back to 3–5 venue operators for structured expert evaluation against a simple rubric (feasibility, clarity, perceived turnaround benefit, cultural appropriateness). Cheap, closes the loop, converts "here is my design" into "here is my design, evaluated." Pair it with a desk-check of every layout against the Panero/Neufert and BP 344 clearances already tabulated.

---

## S2. There is no documented evidence that this specific venue has the problems the study asserts

**Files:** `01_rationale.md`, `31_Research environment.md`

The rationale states that the Main Hall "currently lacks spatial flexibility, modularity, and adaptable interior infrastructure," suffers setup delays, poor acoustics and placelessness. Every one of those claims is supported by general literature about convention centres, not by anything observed at Calbayog. The problem is asserted, then the survey asks respondents to agree it exists.

> **Fix:** Add a short preliminary site documentation note to the rationale: dated photographs of the hall, the existing ceiling condition, the perimeter glass, current FF&E and storage, plus whatever the venue's event logs show (bookings per year, event mix, typical setup windows). One page of primary evidence transforms the rationale from literature-driven to site-driven — which is what "site-specific" is supposed to mean.

---

## S3. No existing-conditions documentation exists for a site-specific interior thesis

**File:** `31_Research environment.md`

The research environment chapter is two paragraphs. The reader learns the floor area (840 sqm), capacity (500), barangay, and that it was a bus station renovated in 2009.

**Missing:** floor plan, ceiling height, column grid, structural bay spacing, door and egress widths, wall and floor materials, existing lighting, existing drapery, storage locations, service access.

This matters beyond completeness. Survey item D4 and the defense script both reference "perimeter glass walls," and the ceiling proposal depends on clear height and existing rigging points — none of which the document establishes. The observation checklist is designed to capture exactly this data, but the chapter is written as though it already has been.

> **Fix:** Add measured drawings (plan + at least one section) and a photo survey as a dedicated section. The 500-occupant capacity figure also needs a source — 840 sqm ÷ 500 works out to 1.68 sqm per person, which is tight and worth citing rather than asserting.

---

## S4. Slovin's formula is applied to a non-probability sample

**Files:** `32_Respondents.md`, `REC/defense.md` §6

Slovin's formula produces a sample size for probability sampling from a known population. The study pairs it with *purposive quota sampling*, then claims "95% confidence level" and a "margin of error of 8–9%." Confidence intervals and margins of error are not defined for a non-probability sample — there is no sampling distribution to draw them from. Very common thesis error, very common panel question.

Two related issues: the population figure N = 500–1,000 is derived from single-event venue capacity, which is not an annual or five-year visitor population; and Cochran (1977) is cited as the source of the acceptable error range, though Cochran's sample size formula is a different one from Slovin's.

> **Fix:** Keep the 100–120 target but reframe it honestly: Slovin's is used as a *target adequacy heuristic*, and because sampling is purposive, results are descriptive of the sample and not statistically generalizable to all venue attendees. Say that in the limitations. Then ground N in real data — she is already requesting venue event logs in Phase 1, so estimate the population from actual bookings × average attendance. A sourced N is much stronger than a defended guess.

---

## S5. "Quota sampling" is used, but no quotas are defined

**File:** `32_Respondents.md`

The method is described as ensuring "a balanced demographic cross-section of event-goers across diverse event formats," but no quota matrix specifies how many respondents per event type, per age bracket, or per attendance frequency. Without defined quotas, the procedure is convenience sampling with a better name — and the defense script's promise (§8) to disaggregate wedding attendees from conference attendees only works if enough of each are actually recruited.

> **Fix:** Add a small quota table — e.g. minimum 20 per event format across the five categories already listed in Section A, plus a minimum floor for the 60+ age bracket. One table, and the sampling claim becomes true.

---

## S6. The defense promises subgroup comparisons the analysis plan cannot perform

**Files:** `35_Data Analysis.md`, `REC/defense.md` §8

`defense.md` §8 answers the wedding-versus-conference perception question by promising to "cross-tabulate and disaggregate responses during data analysis to isolate perception differences between event types." `35_Data Analysis.md` lists only frequencies, percentages, weighted means and standard deviations — no comparative procedure at all. Same gap applies to the implied planner-versus-attendee comparison.

> **Fix:** Either add a non-parametric comparison (Mann-Whitney U for two groups, Kruskal-Wallis for the five event formats) to the analysis chapter, or rewrite the defense answer to promise descriptive cross-tabulation only. The second option is perfectly defensible for a descriptive design — just don't promise inference the plan doesn't contain.

---

## S7. The analysis chapter is missing the standard apparatus a Philippine panel expects

**File:** `35_Data Analysis.md`

- **No Likert verbal interpretation table.** The 1.00–1.80 / 1.81–2.60 / 2.61–3.40 / 3.41–4.20 / 4.21–5.00 range table is asked for in almost every defense. Absent.
- **No formula or worked example for the weighted mean.**
- **No missing-data rule** — what happens to a partially completed form.
- **Single coder for thematic analysis** with no inter-coder check. Member-checking is planned (mentioned in `34_Data Collection.md` §4) but never cited in the analysis chapter as the trustworthiness measure.
- **Credibility, transferability, dependability, confirmability** are never addressed by name, though the REC form claims an audit trail.

> **Fix:** Add the interpretation table and the weighted-mean formula, state the missing-data rule, and move member-checking into the analysis chapter as the named trustworthiness strategy alongside triangulation.

---

## S8. The research design chapter omits the qualitative interviews entirely

**File:** `30_Research Design.md`

The three phases in `30_Research Design.md` are: quantitative/ergonomic modelling, *heritage and pattern abstraction*, and spatial synthesis. Phase 2 is a documentary and design-analysis phase — the 8–12 key informant interviews are not mentioned anywhere in the chapter. They appear only in the respondents, instruments and data-collection files.

That leaves the design labelled "sequential explanatory mixed-methods" while its own design chapter describes something closer to applied design research with a literature-based cultural phase. The two are not the same thing, and a panel reading the chapter in isolation will not find the qualitative strand.

A second tension: sequential explanatory means quantitative results shape the qualitative follow-up, but `33_Instruments.md` presents a fixed, pre-written 11-question interview guide.

> **Fix:** Rewrite Phase 2 to contain both strands — the cultural abstraction work *and* the key informant interviews — and state that the interview guide includes a reserved block of probes to be finalized from Phase 1 survey results. That makes the "explanatory" label accurate.

---

## S9. Four of the five objectives are design actions, not investigable research objectives

**File:** `02_chapter1.md`

Objective 1 ("Evaluate the existing layout configurations…") is empirically answerable. Objectives 2–5 — *formulate*, *synthesize*, *propose*, *apply* — are deliverables produced by the designer's judgment, informed by data and standards but not derived from them. Entirely legitimate for applied design research; the problem is that the proposal never says so, which invites the question "which of your findings are findings and which are your own design decisions?"

The same issue surfaces in the survey: respondents are asked to rate ceiling rigging systems, motorized truss hoists and *banig*-patterned acoustic panels that do not exist. That is preference elicitation for a design brief, not evaluation of an intervention — a perfectly good method, but it needs naming.

> **Fix:** Add one short paragraph to the research design chapter distinguishing the **research component** (Obj. 1 — empirical, answered by data) from the **design synthesis component** (Obj. 2–5 — generated by the researcher, informed by empirical priorities, anthropometric standards and precedent). Naming this pre-empts the question and shows methodological self-awareness.

---

## S10. The turnaround-time claim has no baseline and cannot be substantiated

**File:** `00_abstract.md` (and significance, REC form)

"Minimizes event turnaround times" and "optimize turnaround speed" run through the abstract, significance and REC form. The only related measurement is Form A item A4, which asks planners to select a setup duration bucket (<4h, 4–8h, 8–12h, >12h) from memory. There is no before-and-after, and no observed timing.

> **Fix:** Two options, and taking both is better. (a) Soften the claim throughout to "designed to reduce," which is what a proposal can honestly say. (b) During the Phase 5 observation of an active setup, actually time the sequence — arrival, unload, layout, dress, ready — and report it as the documented baseline. One timed setup is worth more than any number of Likert items on this point.

---

## S11. No content validation of the instruments by expert validators

**File:** `33_Instruments.md`

Content validity is currently claimed on the basis that the indicators were "synthesized from" An et al. (2021) and Pembegül (2009). That is a design rationale, not a validation. There is no expert validator panel, no validation rubric, no content validity index.

Cronbach's alpha measures internal consistency only — the certificates' claim that α ≥ 0.90 "indicates excellent internal consistency **and construct validity**" is not correct; alpha says nothing about construct validity.

> **Fix:** Route both instruments through 3–5 expert validators (an interior design faculty member, a statistician, a Waray language validator, and ideally a working event coordinator), using a standard validation sheet, and report a content validity index. Most Philippine ID programs expect this and it is quick to arrange. Then correct the certificate wording to claim internal consistency only.

---

## S12. The observation protocol is not operationalized

**Files:** `33_Instruments.md`, `37_Survey&Interview.md` Part 5

The checklist has six good categories but no procedure attached: how many observation sessions, at which event types, at what times, recorded how (photographs, measured sketches, timestamps, tally sheets), and by whom. Category 5 asks a single untrained observer to judge "perceived speech intelligibility and audible reverberation" — with no protocol, that is one person's impression presented as data.

> **Fix:** Specify a concrete schedule (e.g. three active setups across different event formats plus two non-event sessions), define what gets recorded at each, and add a standard position set for the auditory walkthrough (front, mid, rear, corner) so the perceptual observation is at least systematic. Photograph and dimension everything.

---

## S13. Both theories are cited as anchors but neither is operationalized in any instrument

**File:** `21_theoretical_conceptual.md`

Open Building's Support/Infill distinction and Scannell & Gifford's Person–Process–Place model are both well explained. Neither generates a measured construct. No survey item derives from the Person, Process or Place dimensions; no established place-attachment scale is used; nothing operationalizes infill adaptability. As written, the theories justify the design rather than framing the inquiry — which a sharp panel member will describe as decorative.

> **Fix:** Add an instrument–theory mapping table showing which sections operationalize which construct (Section D and F3 map cleanly onto Place and Person; Sections B, C and E onto Infill adaptability). Where a construct genuinely isn't measured, say plainly that the theory guides design translation rather than measurement.
>
> Also worth one defensive sentence: Habraken's Support/Infill was developed for mass housing and user control over dwellings — applying it to a single-operator civic hall is reasonable but should be argued, not assumed.

---

## S14. The literature review never states the research gap it claims to fill

**File:** `20_RRL.md`

The RRL ends on Samar weaving heritage with no closing synthesis. The gap statement — "MICE literature emphasizes mega-scale international venues and structural expansion; non-structural interior adaptive strategies for regional municipal facilities are under-researched" — exists only in the REC form (§2), not in the chapter that is supposed to establish it.

Related: the Cultural Identity section draws on PICC, Albuquerque and Coex — all large, well-funded venues. There is no precedent from a comparable small regional or municipal facility, which is exactly the category the study claims to serve. And a substantial share of the design-strategy literature is industry or trade content (ArchDaily, AV Alliance, DesignHorizons, Waida, Cat, Syma) carrying theoretical weight it can't bear.

> **Fix:** Add a closing "Synthesis and Research Gap" section to Chapter 2 that states the gap explicitly and maps each SPOP to the specific hole it addresses. Add at least one comparable small-venue or provincial civic-interior precedent — a Philippine LGU facility retrofit would be ideal. Label industry sources as industry sources.

---

# ARGUMENTS WORTH STRENGTHENING

## A1. The cultural strand designs with Samar heritage without involving anyone who holds it

The study abstracts Basey *banig* weaving patterns, *tikog* textures and Waray geometric motifs into commercial interior surfaces, with the pattern language derived entirely from secondary sources. No weaver, artisan, cultural bearer, NCCA officer or local historian appears in any respondent group.

The RRL flags this itself, honestly and well (`20_RRL.md:204`):

> "…a verifiable typology of specifically Waray/Eastern Visayas weaving motifs remains thin in the published literature and may warrant primary documentation (e.g., interviews with Basey weavers or the NCCA intangible-heritage inventory)."

The methodology then does not act on its own recommendation. Two consequences: the pattern abstraction rests on a thin and partly unverifiable source base (see C7), and working with intangible cultural heritage without engaging its bearers raises a question the panel is entitled to ask.

> **Fix:** Add 2–3 key informant interviews with Basey weavers, a weaving cooperative representative, or the city/provincial cultural affairs officer. It resolves the ethical question, supplies primary pattern documentation the literature can't give her, and turns the study's most-cited weakness into a contribution. Basey is roughly an hour from Calbayog by road — this is feasible.

---

## A2. The overhead rigging proposal sits at the edge of the declared non-structural scope

The limitations exclude structural calculations and "commercial rigging hardware systems," treating the ceiling interface as "purely a spatial and aesthetic design interface." But the survey asks operators to endorse **motorized truss hoists** carrying lighting and sound, and the deliverable is a layout manual intended for actual venue use. Suspended motorized loads are a structural question by definition.

`REC/defense.md` handles this well verbally, but the manuscript doesn't state the boundary as clearly as the defense script does — and the survey items read as proposals, not concepts.

> **Fix:** Add one explicit limitation: the overhead system is presented as a **design intent and spatial reservation zone**, and any physical implementation requires subsequent structural and rigging-engineer verification, recommended for further study. That is a stronger position than hoping the question doesn't come up — and exactly the kind of professional-boundary awareness panels reward.

---

## A3. Attendees are asked to evaluate things they cannot assess, and nothing tests the counter-case

Form B asks general attendees about low-VOC indoor air quality (F4), hybrid absorptive-diffusive performance and overhead cable management — none of which a layperson can judge from experience.

Meanwhile no item anywhere tests the obvious tension in the thesis: strong permanent cultural expression versus renters who want a neutral backdrop for their own branding and theming. Interview question 10 asks planners about this balance, which is good; the survey never does, and every cultural item is phrased so that agreement is the only reasonable answer.

> **Fix:** Replace the technically inaccessible attendee items with visual preference items — show three abstraction options for the *banig* pattern and ask them to choose. For a design thesis that is far more useful data than an agreement score. And add one honest counter-item ("Permanent cultural patterns could limit how I decorate the hall for my own event"). A panel that sees the researcher testing against her own preference reads that as rigor.

---

## A4. The significance section overclaims

"Eliminates trial-and-error space planning," "effortlessly scaling," "ensures full inclusivity." Absolutes invite counter-examples, and a proposal that hasn't collected data yet cannot support them. Downgrade to "reduces," "supports," "is designed to meet." Nothing is lost and the section becomes harder to attack.

---

## A5. The objectives don't quite mirror the sub-problems they're supposed to answer

The consultation brief claims a "direct 1-to-1 mapping," but:

- SPOP Q1 asks about spatial, operational **and acoustic** challenges; Objective 1 covers only layout, circulation and material conditions — acoustics drops out.
- SPOP Q2 includes BP 344/ADA compliance; Objective 2 doesn't mention accessibility.

Since the mapping table is something an adviser will read across, make the wording match exactly.

---

## A6. Recruiting 100–120 attendees on posters and social media alone is optimistic

Passive recruitment (bulletin-board posters plus community Facebook pages), no incentive, a five-year recall window, and a 25-item questionnaire. Add intercept sampling at events with venue permission as the primary channel, keep passive recruitment as a supplement, and state a contingency for what happens if the floor of 100 isn't reached — a stated fallback is much better than a missed target discovered at defense.

---

# CONSISTENCY — cross-document contradictions

## X1. Three different data retention policies

- `35_Data Analysis.md`: "permanently purged upon final thesis approval."
- `34_Data Collection.md` §6.1: retained "exactly one (1) year following final defense and degree conferment."
- `REC/01REC_F29.md` §20: purged "upon final thesis defense, manuscript approval, and institutional publication."

> **Fix:** Pick one — the one-year post-defense window is the most defensible — and state it identically in all three. RECs check this.

## X2. Contact details are collected on the same form as responses, while three documents promise unlinkability

Form A item A5 and Form B item A4 collect a mobile number or email on the response sheet. `34_Data Collection.md` §6.2 states "no participant names, phone numbers, or personal contact details will be stored within response data matrices," and REC F29 §20 promises "no direct personal identifiers attached." At the moment of collection, identity and responses sit on the same page.

> **Fix:** Describe the separation procedure explicitly: a detachable contact slip on the printed form removed and stored separately on receipt, and a separate linked Google Form for the digital opt-in.

## X3. Storage protocol differs between chapters

`35_Data Analysis.md` says data lives in "password-protected cloud drives." `34_Data Collection.md` §6.3 prohibits "unverified public cloud drives" and specifies AES-256 on a local encrypted drive with institutional Google Drive backup under 2FA. Align the shorter statement to the detailed one.

## X4. Title wording drifts across documents

"Local Samar Heritage" in the abstract, introduction, Chapter 1 and GEMINI.md; "Samar-Calbayog Cultural Heritage" in both pilot certificates and the defense sheet; `00_title.md` recommends the hyphenated variant. Decide at the consultation and apply it everywhere the same day — including the pilot certificates, which currently certify a differently-titled study.

## X5. "MIC Industry" typo in the abstract keywords

`00_abstract.md` keyword list reads "MIC Industry." Should be MICE. Keywords are indexed.

## X6. Degree program listed as both bachelor's and master's

`37_Survey&Interview.md` line 5: "Bachelor of Science in Interior Design / Master of Science in Interior Design." This appears on a document participants will read.

## X7. Unfilled placeholders throughout, including on participant-facing documents

`[Student Name]`, `[Researcher Name]`, `[College / University Name]`, `[Adviser Name]` persist in the title page, abstract, instruments and consultation brief — while the REC form names University of San Carlos and the pilot certificates are signed "TRINA." The instruments carry placeholders where participants expect institutional credentials, which `34_Data Collection.md` §1 explicitly promises they will have.

## X8. The venue is described as both "the only" and "one of" the city's facilities

`31_Research environment.md`: "the only convention center in Calbayog City." REC F29 §8: "one of the city's municipal MICE facility" (also a grammatical error in the submitted form). Pick the accurate one; "the only" strengthens the site-specific rationale if true.

## X9. Dates don't line up

Title page reads July 2026; pilot certificates are dated August 2026; the consultation brief lists pilot testing as a *post*-consultation action while completed pilot results already exist. Reconcile the sequence so the timeline in the REC form matches what actually happened.

## X10. Figures are referenced but not present

Figures 2-1 through 2-17 are captioned placeholders in the RRL, and "Figure 2-18. Conceptual Framework" is referenced in `21_theoretical_conceptual.md` with no diagram attached. For an interior design thesis, arriving at a consultation without the conceptual framework diagram is a missed opportunity — it is the single most useful thing to put in front of an adviser.

---

# WHAT IS GENUINELY STRONG

Six things that are better than average for this level — lead with these:

1. **Scope discipline.** The non-structural boundary is declared, repeated consistently across every document, and defended with a professional rationale. Many ID theses sprawl into architecture; this one doesn't.
2. **Anthropometric specificity.** Real dimensions with real sources — 900 mm seat pitch, 305 mm clear passage, 60/120 mm C-values, 1620–1800 mm service lanes, 760 × 1220 mm accessible stalls. The most concrete part of the proposal, and it should be front and centre.
3. **Bilingual instruments.** English with Waraynon throughout is real methodological care about the actual community, not a checkbox. Fix the Form B instruction line and this becomes a highlight.
4. **Two-stakeholder design.** Splitting operators (logistics) from attendees (experience) is the correct structure for this problem, and the two forms are properly differentiated rather than one instrument reused.
5. **Intellectual honesty in the RRL.** Line 204 openly flags that Waray motif typology is thin in the literature. Most students hide that. Acting on it (see A1) turns it into a contribution.
6. **Defense preparation.** `REC/defense.md` anticipates ten hard questions with structured answers and matrices. The acoustic scope-boundary matrix and the accessible-stall explanation are both genuinely good answers.

---

# LIKELY PANEL QUESTIONS

| # | Question | Where the current answer is thin |
| :--- | :--- | :--- |
| 1 | "Walk me through your Cronbach's alpha computation." | Currently unanswerable — published components don't produce the published alpha (**C1**). |
| 2 | "You have five sub-problems. Why does your instrument say SPOP Q6?" | No answer exists. Fifteen-minute fix (**C4**). |
| 3 | "Your Section C alpha is negative. Explain." | Don't call it a high-consensus subscale. Say: items were phrased as benefits, one returned zero variance, here is how I rephrased them (**C3**). |
| 4 | "You used Slovin's formula with purposive sampling. How do you get 95% confidence from a non-probability sample?" | Strongest available answer is to concede and reframe as a target adequacy heuristic, with generalizability stated as a limitation (**S4**). |
| 5 | "How do you know your framework works?" | No validation step exists. Add the expert evaluation phase (**S1**). |
| 6 | "Show me the floor plan. What's the ceiling height? Where are the columns?" | Not documented anywhere (**S3**). Most likely first question in an ID defense. |
| 7 | "What is your research gap, and which source establishes it?" | The gap statement lives in the REC form, not the literature review meant to demonstrate it (**S14**). |
| 8 | "You're designing with Basey weaving. Who did you talk to in Basey?" | No one, currently — and the RRL admits the published typology is thin (**A1**). Highest cost, cheapest fix. |
| 9 | "Your study is about accessibility, but your exclusion criteria remove people with sensory barriers. Why?" | There is no good answer as written. Change the criterion (**C9**). |
| 10 | "Where does the estimate of 500–1,000 attendees come from?" | Currently derived from single-event capacity. Venue event logs — already being requested — would make this sourced (**S4**). |

---

# SUGGESTED ORDER OF WORK

| When | Do | Why now |
| :--- | :--- | :--- |
| **Tonight** | Recompute both alphas from raw data (C1). Fix the SPOP 5-vs-6 numbering (C4). Fix the Form B Waray instruction line (C8). Bring the conceptual framework diagram (X10). | All four are fast, all four are visible, and the first is checkable in front of her. |
| **Raise at the consultation** | Adding a framework validation phase (S1). Reframing Slovin's (S4). Interviewing Basey weavers (A1). Recruiting PWD/senior respondents (C9). Final title wording (X4). | These change the methodology, so they need adviser sign-off rather than a unilateral edit. |
| **This week** | Rewrite Sections C–F as importance/ranking items and re-pilot (C3, C2). Verify every reference and build one master bibliography (C6, C7). Amend the REC form for pilot n and exclusion criteria (C5, C9). | The instrument rewrite invalidates the current pilot anyway — do both together and pilot once. |
| **Before submission** | Site documentation with measured drawings and photos (S2, S3). Chapter 2 gap synthesis (S14). Analysis chapter apparatus (S7). Expert content validation (S11). Reconcile retention and privacy statements (X1–X3). | Substantial but not urgent — none of it blocks the consultation. |

---

*Findings reflect the documents as written. Where a claim depends on data not in the folder — venue event logs, raw pilot spreadsheets, source PDFs — that is noted in the finding rather than assumed either way. No thesis files were modified.*
