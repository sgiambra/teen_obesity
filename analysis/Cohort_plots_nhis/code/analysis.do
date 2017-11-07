set scheme s2mono
set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries

program main
    local plot_opts = "graphregion(fcolor(white)) ylab(, nogrid) xlabel(-10 0 10)"

    use "../temp/obesity_panel_children", clear
    collapse (mean) overweight obese bmi [pweight=perweight], by(years_hs_after_reform)

    label var bmi           "Body Mass Index"
    label var obese         "Obesity rate"
    label var overweight    "Overweight rate"

    foreach depvar in bmi overweight obese {
        twoway line `depvar' years_hs_after_reform if years_hs_after_reform >= -10, `plot_opts'
        graph export ../output/cohort_treatment_`depvar'.png, as(png) replace
    }
end

* Execute
main
