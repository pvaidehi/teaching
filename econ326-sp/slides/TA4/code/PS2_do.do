// purpose: TA session 2, pset code snippets

clear
cd "~/Desktop/second-year-coursework/econ326/slides/TA4/code"

// import data 
use "data/schools_preliminary.dta", clear
tab treatment 
tab benef 
tab benef, nolabel

//define control and each treatment group
gen tgroup = 0 if treatment == 0
replace tgroup = 1 if treatment == 1 & benef == "Father"
replace tgroup = 2 if treatment == 1 & benef == "Mother"
replace tgroup = 3 if treatment == 2 & benef == "Father"
replace tgroup = 4 if treatment == 2 & benef == "Mother"

tabstat num_classrooms num_teachers num_students num_boys num_girls, by(tgroup)
pwmean num_boys, over(tgroup)
encode benef, gen(mother)
//or 
gen mother = (benef == "Mother")

// attendance data 
use "data/attendance.dta", clear
gen lct = 1 if treatment == 1
replace lct = 0 if mi(lct)
gen cct = 1 if treatment == 2
replace cct = 0 if mi(cct)

reg present lct cct
encode benef, gen(mother)

//generate dummy variable equal to 1 if beneficiary is mother, 0 if father (many ways to do this)
replace mother = mother - 1 //now the mother variable = 0 if father, = 1 if mother

mdesc 
tab treatment if mi(benef) 
replace mother = 0 if mi(mother) //want to ensure we include observations where the beneficiary variable does not exist

gen lct_mother = lct*mother 
gen cct_mother = cct*mother

reg present lct lct_mother cct cct_mother

