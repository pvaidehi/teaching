/* 
it's good to start with a header block that describes what you're doing in this do file:
description: example do file for TA session 1 of econ 326 
author: vaidehi
date written: Apr 3, 2025
last modified: Apr 3, 2025 
*/

* preamble at the start of a do file
clear all
pwd // print current working directory 
cd "/Users/vaidehiparameswaran/Desktop/teaching/econ326-sp/slides/TA1" // change directory to this path
cap log close
log using TA1.log, replace

* load the data
use "rawdata.dta", clear
desc // describe the data briefly 
codebook // describe the data in detail
summ // summarise all variables
br // browse the data 

* summarise specific variables 
summ age, d
summ wage, d
tab educ // tabulate values
tab educ race // cross-tabulation

* generate dummy variables
gen collgrad = (educ > 12) // create a dummy variable for college graduates
label var collgrad "College graduate" // add variable label
br // browse the data to check the new variable

* logical statements
summ wage if educ > 10 // if greater than
summ wage if collgrad == 0 // if equal to
summ wage if collgrad != 0 // if not equal to

* create log wage variable and add variable label
gen lwage = log(wage)
label var lwage "Log Hourly Wage"

* save data
cap mkdir output // make directory output if it doesn't exist
save "output/nls88.dta", replace //save and overwrite if file already exists

* visualisations with formatting options
twoway (scatter lwage ttl_exp, msize(vsmall) mcol(blue)) ///
    (lfit lwage ttl_exp, lcolor(red) lwidth(medium) ///
    xtitle("Total Experience") ytitle("Log Hourly Wage") ///
    title("Scatterplot of Log Hourly Wage and Total Experience"))
// other usual options: title, note, legend, xlabel, ylabel, xline, yline, etc.

* save and export graph
graph export "output/scatterplot.png", replace

* regressions 
reg lwage educ ttl_exp age // simple regression
reg lwage educ ttl_exp age, robust // robust standard errors

* binary variables 
reg lwage collgrad, r
summ lwage if collgrad == 0
summ lwage if collgrad == 1 
// note that the difference in mean wages is equal to the coefficient on collgrad in the regression

* close log
log close

* end of do file