*******************************************************************************
*** State Legislative Primary Election Data
*** Andy Myers
*** Build Linkage Table: match rates to external datasets
*******************************************************************************

gl path "~/Dropbox/StateLegElectionData"

use "$path/analysis_data/public/stateleg_prim_elec_data.dta", clear

local N = _N

*** Count non-missing linkages
count if !missing(klarner_id)
local n_klarner = r(N)

count if !missing(bonica_rid)
local n_dime = r(N)

count if !missing(ftm_id)
local n_ftm = r(N)

count if !missing(sm_id)
local n_np = r(N)

*** Compute shares
local sh_klarner : di %4.1f 100 * `n_klarner' / `N'
local sh_dime    : di %4.1f 100 * `n_dime'    / `N'
local sh_ftm     : di %4.1f 100 * `n_ftm'     / `N'
local sh_np      : di %4.1f 100 * `n_np'      / `N'

*** Format counts with commas
foreach v in klarner dime ftm np {
    local fmt_`v' : di %12.0fc `n_`v''
    local fmt_`v' = strtrim("`fmt_`v''")
}
local fmt_N : di %12.0fc `N'
local fmt_N = strtrim("`fmt_N'")

*** Write LaTeX table
local outfile "$path/draft/output/linkage_table.tex"
cap file close texfile
file open texfile using "`outfile'", write replace

file write texfile "\begin{tabular}{llrr}" _n
file write texfile "\toprule" _n
file write texfile "\textbf{Dataset} & \textbf{Content} & \textbf{Matched} & \textbf{Share} \\" _n
file write texfile "\midrule" _n
file write texfile "Klarner SLERs & General-election returns & `fmt_klarner' & `sh_klarner'\% \\" _n
file write texfile "DIME & Ideology estimates & `fmt_dime' & `sh_dime'\% \\" _n
file write texfile "Follow the Money & Campaign contributions & `fmt_ftm' & `sh_ftm'\% \\" _n
file write texfile "Shor-McCarty & Legislator ideology (NP-scores) & `fmt_np' & `sh_np'\% \\" _n
file write texfile "\bottomrule" _n
file write texfile "\end{tabular}" _n

file close texfile

di "Table written to `outfile'"
