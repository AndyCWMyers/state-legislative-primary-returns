# State Legislative Primary Elections Data, 1990-2024

Primary election returns for U.S. state legislatures, covering all 50 states from 1990 to 2024. The dataset includes vote totals, primary runoff results, and incumbency status.

Read our companion paper for complete details. Please direct questions and comments to [Andy Myers](www.andrewcwmyers.com).

## Coverage

| | |
|---|---|
| **States** | 50 states |
| **Years** | 1990--2024 (35 election cycles) |
| **Chambers** | Upper (senate) and lower (house/assembly) |
| **Parties** | Democratic and Republican primaries |
| **Candidates** | 144,864 candidate-election observations |

## Files

The database is available in three formats: CSV, Stata (.dta), and R (.rds). Each row in the dataset corresponds to a candidate-election.

## Variables

| Variable | Description |
|---|---|
| `year` | Election year |
| `state` | State (2-letter USPS abbreviation) |
| `chamber` | Legislative chamber (`U` = upper/senate, `L` = lower/house) |
| `party` | Party (`dem` or `rep`) |
| `district_num` | District number |
| `district_alpha` | Named district component (county, town, etc.; MA, VT, NH lower, AK upper only) |
| `district_post` | Position designator within district, for multi-post districts (ID, MD, MN, WA lower; select ND lower districts) |
| `regime` | Redistricting regime (increments with each redistricting cycle) |
| `primary_race_id` | Unique primary race identifier |
| `klarner_id` | Candidate ID from Klarner general election data |
| `bonica_rid` | DIME (Bonica) recipient ID |
| `ftm_id` | Follow the Money / NIMSP candidate ID |
| `first_name` | Candidate first name |
| `middle_name` | Candidate middle name |
| `last_name` | Candidate last name |
| `name_suffix` | Name suffix (Jr., Sr., III, etc.) |
| `votes_primary` | Raw vote total in primary election |
| `win_primary` | 1 if candidate received plurality of votes in primary |
| `ran_primary_runoff` | 1 if candidate participated in a primary runoff |
| `votes_primary_runoff` | Raw vote total in primary runoff |
| `win_primary_runoff` | 1 if candidate won primary runoff |
| `win_primary_final` | 1 if candidate won nomination (uses runoff result where applicable) |
| `inc` | 1 if candidate is incumbent in this chamber |
| `smd` | 1 if single-member district |
| `district_seats` | Number of seats in this district |

## Links to External Databases

The dataset can be linked to the following external databases via the included identifier variables:

- **[State Legislative Election Returns (SLERS)](https://doi.org/10.7910/DVN/DGUMFI)** (`klarner_id`) -- General election returns, including vote totals and win/loss outcomes for state legislative races.
- **[Database on Ideology, Money in Politics, and Elections (DIME)](https://data.stanford.edu/dime)** (`bonica_rid`) -- Campaign contributions and donor-based ideology scores for candidates at all levels of U.S. government.
- **[Follow the Money / NIMSP](https://www.followthemoney.org/)** (`ftm_id`) -- State-level campaign finance records, including contributions and expenditures.

## Citation

> Myers, Andrew C. "State Legislative Primary Election Data, 1990--2024."

## Publications Using This Data

- Handan-Nader, Cassandra, Andrew C. W. Myers, and Andrew B. Hall. 2025. "Polarization and State Legislative Elections." *American Journal of Political Science.* [doi:10.1111/ajps.12973](https://doi.org/10.1111/ajps.12973)
- Myers, Andrew C. W. 2025. "Do Donors Punish Extremist Primary Nominees? Evidence from Congress and American State Legislatures." *American Political Science Review.* [doi:10.1017/S000305542510138X](https://doi.org/10.1017/S000305542510138X)
- Fouirnaies, Alexander, and Andrew B. Hall. 2020. "How Divisive Primaries Hurt Parties: Evidence from Near-Runoffs in US Legislatures." *Journal of Politics* 82(1): 43--56. [doi:10.1086/705597](https://doi.org/10.1086/705597)
- Rogers, Steven. 2023. *Accountability in State Legislatures.* University of Chicago Press.
