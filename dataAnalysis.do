*******************************************************************
***********Primary Analysis****************************************
*******************************************************************

*Association between current smoking and any genital HPV prevalence
use "path\prevHpvAll.dta", clear
g theta=log(OR)
g lowtheta=log(lower)
g uptheta=log(upper)

metan theta lowtheta uptheta, nograph fixedi eform
metan theta lowtheta uptheta, nograph randomi eform
*generate forest plot
metan theta lowtheta uptheta, fixedi eform xlabel(0.5, 10) label(namevar=study) by(risk) nooverall effect(OR) textsize(150) boxsca(100)
metan theta lowtheta uptheta, randomi eform xlabel(0.5, 10) label(namevar=study) by(risk) nooverall effect(OR) textsize(150) boxsca(100)

*Association between current smoking and incident HPV clearance
use "path\incHpvAll.dta", clear
g theta=log(HR)
g lowtheta=log(lower)
g uptheta=log(upper)

metan theta lowtheta uptheta, nograph fixedi eform
metan theta lowtheta uptheta, nograph randomi eform
*generate forest plot
metan theta lowtheta uptheta, fixedi eform xlabel(0.7, 1.3) label(namevar=study) effect(HR) textsize(280) boxsca(60)

*Association between current smoking and prevalence HGCIN
use "path\HGCINAll.dta", clear
g theta=log(OR)
g lowtheta=log(lower)
g uptheta=log(upper)

metan theta lowtheta uptheta, nograph fixedi eform
metan theta lowtheta uptheta, nograph randomi eform
*generate forest plot
metan theta lowtheta uptheta, fixedi eform xlabel(0.1, 8) label(namevar=study) effect(OR) textsize(250) boxsca(100)
metan theta lowtheta uptheta, randomi eform xlabel(0.1, 8) label(namevar=study) effect(OR) textsize(250) boxsca(100)

*Association between current smoking and genital hr-HPV prevalence
use "path\prevHrHpvAll.dta", clear
g theta=log(OR)
g lowtheta=log(lower)
g uptheta=log(upper)

metan theta lowtheta uptheta, nograph fixedi eform
metan theta lowtheta uptheta, nograph randomi eform
*generate forest plot
metan theta lowtheta uptheta, fixedi eform xlabel(0.3, 5) label(namevar=study) effect(OR) textsize(250) boxsca(100)

*******************************************************************
***********Sensitivity Analysis************************************
*******************************************************************
use "path\prevHpvLR.dta", clear
g theta=log(OR)
g lowtheta=log(lower)
g uptheta=log(upper)

metan theta lowtheta uptheta, nograph fixedi eform
metan theta lowtheta uptheta, nograph randomi eform
metan theta lowtheta uptheta, fixedi eform xlabel(0.5, 10) label(namevar=study) effect(OR)favours(CS reduces risk of prevalent HPV # CS increases tisk of prevalent HPV)
metan theta lowtheta uptheta, randomi eform xlabel(0.5, 10) label(namevar=study) effect(OR)textsize(250) boxsca(100)

