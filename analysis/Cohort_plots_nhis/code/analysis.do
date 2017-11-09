set scheme s2mono
set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries

program main
    local plot_opts = "graphregion(fcolor(white)) ylab(, nogrid)"

    use "../temp/obesity_panel_children", clear
    collapse (mean) overweight obese bmi [pweight=perweight], by(dist_survey_act age)
    label_vars

    forval age = 12/15 {
        twoway line bmi dist_survey_act if dist_survey_act >= -3 ///
            & age == `age', xlabel(-3 0 5) `plot_opts'
        graph export ../output/treatment_`age'.png, as(png) replace
    }
    
    use "../temp/obesity_panel_cohorts", clear
    collapse (mean) overweight obese bmi [pweight=perweight], by(age birthyr)
    label_vars
    label var age "Age"
    
    foreach depvar in bmi overweight obese {
        twoway (line `depvar' age if birthyr == 1970) ///
            (line `depvar' age if birthyr == 1980)    ///
            (line `depvar' age if birthyr == 1990)    ///
            (line `depvar' age if birthyr == 2000),   ///
            legend(label(1 "Cohort 1970") label(2 "Cohort 1980") label(3 "Cohort 1990") ///
                label(4 "Cohort 2000")) `plot_opts'
        graph export ../output/cohort_trend_`depvar'.png, as(png) replace
    }
end

program label_vars
    label var bmi           "Body Mass Index"
    label var obese         "Obesity rate"
    label var overweight    "Overweight rate"
end

* Execute
main
