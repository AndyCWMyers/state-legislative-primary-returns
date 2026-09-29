# State Legislative Primary Elections Data, 1990-2026

Primary election returns for U.S. state legislatures, covering all 50 states from 1990 to 2026. The dataset includes vote totals, primary runoff results, and incumbency status.

Read our [companion paper](https://www.andrewcwmyers.com/myers_et_al_stateleg_primary_elec_data.pdf?utm_source=githubrepo) for complete details. Please direct questions and comments to [Andy Myers](https://www.andrewcwmyers.com/?utm_source=githubrepo).

## Coverage

| | |
|---|---|
| **States** | 50 states |
| **Years** | 1990–2026 (37 election cycles) |
| **Chambers** | Upper (senate) and lower (house/assembly) |
| **Parties** | Democratic and Republican primaries |
| **Candidates** | 159,573 candidate-election observations |

## Files

The database is available in three formats: [CSV](stateleg_prim_elec_data.csv), [Stata (.dta)](stateleg_prim_elec_data.dta), and [R (.rds)](stateleg_prim_elec_data.rds). Each row in the dataset corresponds to a candidate-election.

## Variables

| Variable | Description | Coverage |
|---|---|---|
| `year` | Election year | 1990&#8288;–&#8288;2026 |
| `state` | State (2-letter USPS abbreviation) | 1990&#8288;–&#8288;2026 |
| `chamber` | Legislative chamber (`U` = upper/senate, `L` = lower/house) | 1990&#8288;–&#8288;2026 |
| `party` | Party (`dem` or `rep`) | 1990&#8288;–&#8288;2026 |
| `district_num` | District number | 1990&#8288;–&#8288;2026 |
| `district_alpha` | Named district component (county, town, etc.; MA, VT, NH lower, AK upper only) | 1990&#8288;–&#8288;2026 |
| `district_post` | Position designator within district, for multi-post districts (ID, MD, MN, WA lower; select ND lower districts) | 1990&#8288;–&#8288;2026 |
| `regime` | Redistricting regime (increments with each redistricting cycle) | 1990&#8288;–&#8288;2026 |
| `primary_race_id` | Unique primary race identifier | 1990&#8288;–&#8288;2026 |
| `klarner_id` | Candidate ID from Klarner general election data | 1990&#8288;–&#8288;2024 |
| `bonica_rid` | DIME (Bonica) recipient ID | 1992&#8288;–&#8288;2022 |
| `ftm_id` | Follow the Money / NIMSP candidate ID | 1992&#8288;–&#8288;2022 |
| `sm_id` | Shor–McCarty legislator ID | 1992&#8288;–&#8288;2021 |
| `first_name` | Candidate first name | 1990&#8288;–&#8288;2026 |
| `middle_name` | Candidate middle name | 1990&#8288;–&#8288;2026 |
| `last_name` | Candidate last name | 1990&#8288;–&#8288;2026 |
| `name_suffix` | Name suffix (Jr., Sr., III, etc.) | 1990&#8288;–&#8288;2026 |
| `votes_primary` | Raw vote total in primary election | 1990&#8288;–&#8288;2026 |
| `win_primary` | 1 if candidate received plurality of votes in primary | 1990&#8288;–&#8288;2026 |
| `ran_primary_runoff` | 1 if candidate participated in a primary runoff | 1990&#8288;–&#8288;2026 |
| `votes_primary_runoff` | Raw vote total in primary runoff | 1990&#8288;–&#8288;2026 |
| `win_primary_runoff` | 1 if candidate won primary runoff | 1990&#8288;–&#8288;2026 |
| `win_primary_final` | 1 if candidate won nomination (uses runoff result where applicable) | 1990&#8288;–&#8288;2026 |
| `inc` | 1 if candidate is incumbent in this chamber | 1990&#8288;–&#8288;2024 |
| `smd` | 1 if single-member district | 1990&#8288;–&#8288;2026 |
| `district_seats` | Number of seats in this district | 1990&#8288;–&#8288;2026 |

Coverage gives the election-year ranges reported in the paper; availability varies by state, year, and candidate.

## Links to External Databases

The dataset can be linked to the following external databases via the included identifier variables:

- **[State Legislative Election Returns (SLERS)](https://doi.org/10.7910/DVN/DGUMFI)** (`klarner_id`) -- General election returns, including vote totals and win/loss outcomes for state legislative races.
- **[Database on Ideology, Money in Politics, and Elections (DIME)](https://data.stanford.edu/dime)** (`bonica_rid`) -- Campaign contributions and donor-based ideology scores for candidates at all levels of U.S. government.
- **[Follow the Money / NIMSP](https://www.followthemoney.org/)** (`ftm_id`) -- State-level campaign finance records, including contributions and expenditures.
- **[Shor-McCarty Roll-Call Voting Ideology Data](https://americanlegislatures.wordpress.com/data/)** (`sm_id`) -- Common-space ideology estimates (NP-scores) for state legislators.

## Suggested citation

> Myers, Andrew C. W., Steven Rogers, Alexander Fouirnaies, Andrew B. Hall, Cassandra Handan-Nader, and Jason Windett. 2026. "State Legislative Primary Election Returns Database, 1990–2026." <https://www.andrewcwmyers.com/myers_et_al_stateleg_primary_elec_data.pdf>.

## Publications Using This Data

- Myers, Andrew C. W. 2026. "Do Donors Punish Extremist Primary Nominees? Evidence from Congress and American State Legislatures." *American Political Science Review.* [doi:10.1017/S000305542510138X](https://doi.org/10.1017/S000305542510138X)
- Handan-Nader, Cassandra, Andrew C. W. Myers, and Andrew B. Hall. 2025. "Polarization and State Legislative Elections." *American Journal of Political Science.* [doi:10.1111/ajps.12973](https://doi.org/10.1111/ajps.12973)
- Rogers, Steven. 2023. *Accountability in State Legislatures.* University of Chicago Press.
- Fouirnaies, Alexander, and Andrew B. Hall. 2020. "How Divisive Primaries Hurt Parties: Evidence from Near-Runoffs in US Legislatures." *Journal of Politics* 82(1): 43--56. [doi:10.1086/705597](https://doi.org/10.1086/705597)
- Rogers, Steven. 2015. "Strategic Challenger Entry in a Federal System: The Role of Economic and Political Conditions in State Legislative Competition." *Legislative Studies Quarterly* 40(4): 539–570. [doi:10.1111/lsq.12088](https://doi.org/10.1111/lsq.12088)
