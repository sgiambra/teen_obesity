set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local base_dir  = "${GoogleDrive}/base/nhis/ipums"

    use "`base_dir'/ipums_nhis.dta", clear
    label var year "Year"
    gen south = region == 3

    preserve
    build_obesity_panel_young_adults
    save_data "../temp/obesity_panel_young_adults", key(nhispid year) nopreserve replace
    restore
    build_obesity_panel_children
    save_data "../temp/obesity_panel_children", key(nhispid year) nopreserve replace
end

program build_obesity_panel_young_adults
    keep if bmicalc != . & bmicalc != 0
    replace bmicalc = bmi if bmicalc == 996 & bmi != 0 & bmi != . & bmi != 99.99
    drop if bmicalc == 996 | bmicalc == 99.9
    keep if age >= 18 & age <= 25
    
    compute_obesity bmicalc
end

program build_obesity_panel_children
    drop if bmikid == . | bmikid == 0 | bmikid == 9999
    replace bmikid = bmikid / 100
    
    compute_obesity bmikid
end

program compute_obesity
    syntax varlist(min=1 max=1)

    gen overweight = `varlist' >= 25 & `varlist' < 30
    gen obese = `varlist' >= 30
end

* Execute
main
