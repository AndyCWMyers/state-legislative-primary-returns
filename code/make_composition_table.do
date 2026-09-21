*******************************************************************************
*** State Legislative Primary Election Data
*** Andy Myers
*** Build Table 2: Dataset Composition
*******************************************************************************

gl path "~/Dropbox/StateLegElectionData"

use "$path/analysis_data/public/stateleg_prim_elec_data.dta", clear

*** Total
local N = _N
local n_N = `N'

*** Chamber
count if chamber == "L"
local n_house = r(N)
count if chamber == "U"
local n_senate = r(N)

*** Incumbency
count if inc == 1
local n_inc = r(N)
count if inc == 0
local n_noninc = r(N)

*** Party
count if party == "dem"
local n_dem = r(N)
count if party == "rep"
local n_rep = r(N)

*** Election timing
gen even_year = mod(year, 2) == 0
count if even_year == 1
local n_even = r(N)
count if even_year == 0
local n_odd = r(N)

*** Runoffs
count if ran_primary_runoff == 1
local n_runoff = r(N)
count if ran_primary_runoff == 0
local n_norunoff = r(N)

*** Compute shares (percentage points)
foreach v in house senate inc noninc dem rep even odd runoff norunoff {
    local sh_`v' : di %4.1f 100 * `n_`v'' / `N'
}

*** Format observation counts with commas
foreach v in N house senate inc noninc dem rep even odd runoff norunoff {
    local fmt_`v' : di %12.0fc `n_`v''
    local fmt_`v' = strtrim("`fmt_`v''")
}

*** Write LaTeX table
local outfile "$path/draft/output/composition_table.tex"
cap file close texfile
file open texfile using "`outfile'", write replace

file write texfile "\begin{table}[h!]" _n
file write texfile "\centering" _n
file write texfile "\caption{\textbf{Dataset Composition Across Candidate- and Race-Level Characteristics.}\label{tab:coverage}}" _n
file write texfile "\begin{tabular}{lrr}" _n
file write texfile "\toprule" _n
file write texfile " & \textbf{Observations} & \textbf{Share} \\" _n
file write texfile "\midrule" _n

file write texfile "\multicolumn{3}{l}{\textit{Total}} \\" _n
file write texfile "\hspace{1em}All candidate-elections & `fmt_N' & 100.0\% \\[4pt]" _n

file write texfile "\multicolumn{3}{l}{\textit{Chamber}} \\" _n
file write texfile "\hspace{1em}House & `fmt_house' & `sh_house'\% \\" _n
file write texfile "\hspace{1em}Senate & `fmt_senate' & `sh_senate'\% \\[4pt]" _n

file write texfile "\multicolumn{3}{l}{\textit{Incumbency}} \\" _n
file write texfile "\hspace{1em}Incumbents & `fmt_inc' & `sh_inc'\% \\" _n
file write texfile "\hspace{1em}Non-incumbents & `fmt_noninc' & `sh_noninc'\% \\[4pt]" _n

file write texfile "\multicolumn{3}{l}{\textit{Party}} \\" _n
file write texfile "\hspace{1em}Democratic & `fmt_dem' & `sh_dem'\% \\" _n
file write texfile "\hspace{1em}Republican & `fmt_rep' & `sh_rep'\% \\[4pt]" _n

file write texfile "\multicolumn{3}{l}{\textit{Election timing}} \\" _n
file write texfile "\hspace{1em}Even-year & `fmt_even' & `sh_even'\% \\" _n
file write texfile "\hspace{1em}Odd-year & `fmt_odd' & `sh_odd'\% \\[4pt]" _n

file write texfile "\multicolumn{3}{l}{\textit{Runoffs}} \\" _n
file write texfile "\hspace{1em}No primary runoff & `fmt_norunoff' & `sh_norunoff'\% \\" _n
file write texfile "\hspace{1em}Participated in primary runoff & `fmt_runoff' & `sh_runoff'\% \\" _n

file write texfile "\bottomrule" _n
file write texfile "\end{tabular}" _n
file write texfile "\end{table}" _n

file close texfile

di "Table written to `outfile'"
