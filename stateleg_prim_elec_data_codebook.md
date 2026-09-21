# Data dictionary: provisional release, 2026-09-19

159,573 rows; 26 fields. New years are regular-term primary/runoff returns only. Missing does not mean zero. Historical outcome coding is preserved, not revalidated for all advancement systems.

| Variable | Description | Availability |
|---|---|---|
| `year` | Election year. | Historical and extension |
| `state` | Two-letter USPS state abbreviation. | Historical and extension |
| `chamber` | L = house/lower chamber; U = senate/upper chamber, including Nebraska. | Historical and extension |
| `party` | dem = Democratic; rep = Republican; NP = Nebraska nonpartisan. | Historical and extension |
| `district_num` | Parsed numeric district component; missing where absent. | Historical and extension |
| `district_alpha` | Parsed named or alphabetic district component. | Historical and extension |
| `district_post` | Seat position or subdistrict suffix where reported. | Historical and extension |
| `regime` | Historical redistricting regime identifier; unverified and missing for the extension. | Historical only; missing for extension |
| `primary_race_id` | Numeric contest identifier. Historical IDs are preserved. New IDs distinguish cycles and shared mixed-party qualifying contests. | Historical and extension |
| `klarner_id` | Historical Klarner SLERS candidate-election identifier. | Historical only; missing for extension |
| `bonica_rid` | Historical DIME recipient identifier. | Historical only; missing for extension |
| `ftm_id` | Historical Follow the Money candidate identifier. | Historical only; missing for extension |
| `sm_id` | Historical Shor-McCarty legislator identifier. | Historical only; missing for extension |
| `first_name` | Parsed first name. | Historical and extension |
| `middle_name` | Parsed middle name. | Historical and extension |
| `last_name` | Parsed last name. | Historical and extension |
| `name_suffix` | Parsed name suffix. | Historical and extension |
| `votes_primary` | Observed primary vote total; missing does not mean zero. | Historical and extension |
| `win_primary` | Historical maximum-vote indicator; not a validated advancement rule for all systems. Missing for the extension. | Historical only; missing for extension |
| `ran_primary_runoff` | Historical 0/1 participation indicator. In the extension, 1 if observed; otherwise missing, not 0. | Historical and extension |
| `votes_primary_runoff` | Observed primary-runoff vote total; missing does not mean zero. | Historical and extension |
| `win_primary_runoff` | Historical runoff win indicator; missing for the extension. | Historical only; missing for extension |
| `win_primary_final` | Historical final nomination indicator combining primary and runoff coding; missing for the extension. | Historical only; missing for extension |
| `inc` | Historical same-chamber incumbency (1/0); missing for the extension. | Historical only; missing for extension |
| `smd` | Historical single-member district indicator; missing for the extension. | Historical only; missing for extension |
| `district_seats` | Historical number of seats; unsupported counts remain missing in the extension. | Historical only; missing for extension |
