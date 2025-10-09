// purpose: example do file for TA session 2 of econ 326 
// author: vaidehi
// date written: Jan 17, 2025
// last modified: Apr 11, 2025

* preamble at the start of a do file
clear all
pwd 
cd "/Users/vaidehiparameswaran/Desktop/teaching/econ326-sp/slides/TA2/datasets" // change directory to this path
cap log close
log using TA2.log, replace

* load dataset 1
use "02_round1_baseline_childlevel.dta", clear
desc
isid childid
br 

* load dataset 2
use "03_round2_midline_childlevel.dta", clear
desc
isid childid
br

* merge in midline data
use "02_round1_baseline_childlevel.dta", clear
merge 1:1 childid using "03_round2_midline_childlevel.dta"
tab _m
br if _m == 2
br if _m == 3

* using assert statements (good practice)
use "02_round1_baseline_childlevel.dta", clear
merge 1:1 childid using "03_round2_midline_childlevel.dta", assert(using match)

* merge but only keep matched observations
use "02_round1_baseline_childlevel.dta", clear
merge 1:1 childid using "03_round2_midline_childlevel.dta", keep(match)
tab _m

* merge but only keep unmatched observations
use "02_round1_baseline_childlevel.dta", clear
merge 1:1 childid using "03_round2_midline_childlevel.dta", keep(using)

* merge but don't generate merge variable
use "02_round1_baseline_childlevel.dta", clear
merge 1:1 childid using "03_round2_midline_childlevel.dta", nogen

* 1:m merge 
use "stops.dta", clear 
merge m:1 ha_county using "counties.dta", assert(using match)

* reshape 
use "stops.dta", clear 
keep ha_n_first_drvr ha_n_last_drvr  ha_month ha_arrest_date 
br
reshape wide ha_arrest_date, i(ha_n_first_drvr ha_n_last_drvr) j(ha_month)