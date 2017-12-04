set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local base_dir  = "${GoogleDrive}/base/nhis/ipums"
    local cohorts_list "1970 1980 1990 2000 2003"
    use "`base_dir'/ipums_nhis.dta", clear
    
    preserve
    build_obesity_panel_children
    save_data "../temp/obesity_panel_children", key(nhispid year) nopreserve replace
    
    restore
    build_cohort_panel, cohorts(`cohorts_list')
    save_data "../temp/obesity_panel_cohorts", key(nhispid year) nopreserve replace
end

program build_obesity_panel_children
    keep if year >= 2002
    keep if age <= 21
    compute_obesity_rates
    
    gen dist_survey_act = year - $HHFKA
    label var dist_survey_act "Number of years between HHFKA and survey year"
end

program build_cohort_panel
    syntax, cohorts(str)
    
    local nbr_cohorts: word count `cohorts'
    local nbr_cohorts_no_last = `nbr_cohorts' - 1
    forval i = 1/`nbr_cohorts_no_last' {
        local cohort: word `i' of `cohorts'
        local cohort_cond = "`cohort_cond'" + "birthyr == `cohort' | " 
    }
    local last_cohort: word `nbr_cohorts' of `cohorts'
    local cohort_cond = "`cohort_cond'" + "birthyr == `last_cohort'"
    
    keep if `cohort_cond'
    compute_obesity_rates
end

program compute_obesity_rates
    replace bmi = bmikid / 100 if (bmikid != . & bmikid != 0 & bmikid != 9999) & age <= 17
    drop if bmi == 0 | bmi == 99.99
    
    gen overweight = bmi >= 25 & bmi < 30
    gen obese = bmi >= 30
end

* Execute
main
