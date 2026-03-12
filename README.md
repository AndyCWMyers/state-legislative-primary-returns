# State Legislative Primary Election Data, 1990--2024

Primary election returns for U.S. state legislatures, covering all 50 states from 1990 to 2024. The dataset includes vote totals, primary runoff results, incumbency status, and identifiers linking candidates to [Klarner's](https://doi.org/10.7910/DVN/DGUMFI) general election data, [DIME](https://data.stanford.edu/dime), and [Follow the Money](https://www.followthemoney.org/).

Companion paper is available here.

## Coverage

| | |
|---|---|
| **States** | 49 states |
| **Years** | 1990--2024 (35 election cycles) |
| **Chambers** | Upper (senate) and lower (house/assembly) |
| **Parties** | Democratic and Republican primaries |
| **Candidates** | 144,864 candidate-election observations |

## Files

The database is available in three formats: CSV, Stata (.dta), and R (.rds). All formats contain the same data.

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

## Citation

> Myers, Andrew C. "State Legislative Primary Election Data, 1990--2024."

## Sources

Primary election returns were compiled from state election offices, secretaries of state, and supplementary sources including the [State Legislative Election Returns (SLERS)](https://doi.org/10.7910/DVN/DGUMFI) dataset. Candidate identifiers are linked to the [Database on Ideology, Money in Politics, and Elections (DIME)](https://data.stanford.edu/dime).
