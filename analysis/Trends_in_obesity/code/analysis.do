set scheme s2mono
set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries

program main
    local plot_opts = "graphregion(fcolor(white)) ylab(, nogrid)"
    
    use "../temp/obesity_panel_young_adults", clear
    keep if year >= 1979
    trends_and_stats, bmi_var(bmicalc) stub(youngs) `plot_opts'

    use "../temp/obesity_panel_children", clear
    trends_and_stats, bmi_var(bmikid) stub(kids) `plot_opts'
end

program trends_and_stats
    syntax, bmi_var(str) stub(str) [*]

    if "`stub'" == "youngs" {
        local step 6
    }
    else {
        local step 2
    }

    hist `bmi_var' if `bmi_var' <= 60, `options'
    graph export ../output/hist_`stub'.png, as(png) replace

    preserve
    collapse_to_level, bmi_var(`bmi_var') levels("year sex")

    qui sum year
    local xlabel = "xlabel(`r(min)'(`step')`r(max)')"

    foreach depvar in `bmi_var' overweight obese {
        twoway (line `depvar' year if sex == 1) (line `depvar' year if sex == 2), ///
            legend(label(1 "Males") label(2 "Females")) `xlabel' `options'
        graph export ../output/trend_`depvar'_by_sex_`stub'.png, as(png) replace
    }

    restore, preserve
    collapse_to_level, bmi_var(`bmi_var') levels("year race")
    foreach depvar in `bmi_var' overweight obese {
        twoway (line `depvar' year if race == 100) (line `depvar' year if race == 200), ///
            legend(label(1 "White") label(2 "African-American")) `xlabel' `options'
        graph export ../output/trend_`depvar'_by_race_`stub'.png, as(png) replace
    }

    restore, preserve
    collapse_to_level, bmi_var(`bmi_var') levels("year south")
    foreach depvar in `bmi_var' overweight obese {
        twoway (line `depvar' year if south == 1) (line `depvar' year if south == 0), ///
            legend(label(1 "South") label(2 "Other regions")) `xlabel' `options'
        graph export ../output/trend_`depvar'_by_region_`stub'.png, as(png) replace
    }
end

program collapse_to_level
    syntax, bmi_var(str) levels(str)

    collapse (mean) overweight obese `bmi_var' [pweight=perweight], by(`levels')

    label var `bmi_var'     "Body Mass Index"
    label var obese         "Obesity rate"
    label var overweight    "Overweight rate"    
end

* Execute
main
