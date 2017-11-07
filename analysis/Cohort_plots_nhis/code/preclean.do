set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local derived_dir  = "${GoogleDrive}/derived/nhis/ipums"

    use "`derived_dir'/ipums_nhis.dta", clear
    build_obesity_panel_children
    save_data "../temp/obesity_panel_children", key(nhispid year) nopreserve replace
end

program build_obesity_panel_children
    keep if year >= 2002
    keep if age <= 21
    replace bmi = bmikid / 100 if (bmikid != . & bmikid != 0 & bmikid != 9999) & age <= 17
    drop if bmi == 0 | bmi == 99.99
    
    gen overweight = bmi >= 25 & bmi < 30
    gen obese = bmi >= 30
    
    gen age_at_reform = age - year + $HHFKA
    gen years_hs_after_reform = 17 - age_at_reform
    
    label var years_hs_after_reform "Number of years between HHFKA and high school graduation"
end

* Execute
main
