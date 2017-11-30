set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local base_dir    = "${GoogleDrive}/base"
    local derived_dir = "${GoogleDrive}/derived"
    
    use "`base_dir'/class/class.dta", clear
    
    foreach var of var * {
        if inrange(substr("`var'", 1, .), "a", "z") drop `var' 
    }
    drop *MS *HS
    rename_class_vars
    egen tot_score_class = rowtotal(alacarte_snacks - fundraisers_beverages)
    label var tot_score_class "Total score CLASS"
    
    save_data "../temp/class_elementary.dta", key(state year) nopreserve replace
    
    use "`base_dir'/bridging_the_gap/state/btg_state.dta", clear
    
    rename_btg_vars
    keep stfips gradelevel year alacarte school_stores vending_machines ///
        fundraisers class_parties school_breakfast region
    keep if gradelevel == "ES"
    
    sort stfips year
    replace year = 2006 if year == 1
    by stfips: replace year = year[_n-1] + 1 if year[_n] != 2006
    egen tot_score_btg = rowtotal(school_breakfast - fundraisers)
    label var tot_score_btg "Total score Bridging the Gap"
    
    save_data "`derived_dir'/state_laws/btg_elementary.dta", key(stfips year) nopreserve replace
    
    validation_class_btg
    keep stfips region
    drop if region == .
    duplicates drop stfips region, force
    merge 1:m stfips using "../temp/class_elementary.dta", ///
        assert(3) keep(3) nogen
    sort stfips year
    
    save_data "`derived_dir'/state_laws/class_elementary.dta", key(stfips year) nopreserve replace
end

program rename_class_vars
    rename *, lower
    
    rename alasnaes alacarte_snacks
    rename alabeves alacarte_beverages
    rename entreees alacarte_entree
    rename vend_es  vending_machines_snacks
    rename bevendes vending_machines_beverages
    rename venue_es school_stores_snacks
    rename bevenues school_stores_beverages
    rename fund_es  fundraisers_snacks
    rename bevfundes fundraisers_beverages
    rename meals_es school_lunches
    rename enviro2 school_meal_env
    rename educ_es nutrition_educ
    rename frmsches farm_to_school
    rename potwtres potable_water
end

program rename_btg_vars
    rename fipstnum stfips
    rename ng12s alacarte
    rename ng11s school_stores
    rename ng10s vending_machines
    rename ng15s fundraisers
    rename ng13s class_parties
    rename us2s school_breakfast
end

program validation_class_btg
    merge 1:1 stfips year using "../temp/class_elementary.dta", ///
        assert(1 2 3) keep(1 2 3) keepusing(tot_score_class)
    
    binscatter tot_score_btg tot_score_class, xtitle(`: var label tot_score_class') ///
        ytitle(`: var label tot_score_btg')
    graph export ../output/validation_class_btg.png, replace
end

* Execute
main
