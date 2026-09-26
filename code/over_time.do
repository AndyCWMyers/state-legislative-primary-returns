gl path "~/Dropbox/StateLegElectionData"

use "$path/analysis_data/public/stateleg_prim_elec_data.dta", clear

*** Keep sample
keep if year >= 1990
drop dem

*** Collapse to race-level
gen n_dem = party == "dem"
gen n_rep = party == "rep"
gen has_dem_inc = party == "dem" & inc_klarner_state == 1
gen has_rep_inc = party == "rep" & inc_klarner_state == 1
collapse (sum) n_dem n_rep (max) has_dem_inc has_rep_inc, by(state chamber district year)

*** Reshape long (row one row is one primary race)
reshape long n_, i(year state chamber district) j(party) string
gen contested_p = n_ > 1

*** Classify races
gen type = ""
replace type = "open" if has_dem_inc == 0 & has_rep_inc == 0
replace type = "Same-party inc" if (party == "dem" & has_dem_inc == 1) | (party == "rep" & has_rep_inc == 1)
replace type = "Out-party inc" if (party == "rep" & has_dem_inc == 1) | (party == "dem" & has_rep_inc == 1)

*** Collapse to year level 
collapse (mean) contested_p, by(year type)

*** Plot it
keep if mod(year,2) == 0 & year >= 1992

twoway ///
	(connected contested_p year if type == "open",           lcolor(navy)         mcolor(navy)         msymbol(none)) ///
	(connected contested_p year if type == "Same-party inc", lcolor(maroon)       mcolor(maroon)       msymbol(none)) ///
	(connected contested_p year if type == "Out-party inc",  lcolor(forest_green) mcolor(forest_green) msymbol(none)), ///
	legend(off) ///
	ylabel(, nogrid angle(horizontal) format(%3.2f)) xlabel(1992(4)2024, nogrid) ///
	ytitle("Share of Primaries Contested") xtitle("") ///
	xscale(r(1992 2024)) ///
	text(.385 2005 "Open",           color(navy)         size(small) place(n)) ///
	text(.210 2005 "Same-party inc", color(maroon)       size(small) place(n)) ///
	text(.135 2005 "Out-party inc",  color(forest_green) size(small) place(n)) ///
	graphregion(color(white)) plotregion(lcolor(none))

graph export "$path/draft/output/over_time.pdf", replace


