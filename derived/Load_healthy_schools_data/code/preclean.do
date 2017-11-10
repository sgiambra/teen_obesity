set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local raw_data_dir = "${GoogleDrive}/raw_data/healthy_schools/ds1/DS0001"
    local derived_dir  = "${GoogleDrive}/derived/healthy_schools/ds1"

    usespss "`raw_data_dir'/33541-0001-Data.sav", clear
    save_data "`derived_dir'/partic_inventory.dta", key( ICPSR_SchoolID) replace nopreserve
end

* Execute
main
