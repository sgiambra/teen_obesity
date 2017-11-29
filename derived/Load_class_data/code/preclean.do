set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local raw_data_dir = "${GoogleDrive}/raw_data/class"
    local base_dir     = "${GoogleDrive}/base/class"

    import excel "`raw_data_dir'/Nutrition_2003-15_Data_File.xlsx", sheet("Nutrition Data 2003-2015") firstrow clear
    save_data "`base_dir'/class.dta", key(STATE YEAR) nopreserve replace

    import excel "`raw_data_dir'/Nutrition_Enhanced_Data_File.xlsx", sheet("Nutrition Data 2003-2015") firstrow clear
    save_data "`base_dir'/class_enhanced.dta", key(STATE YEAR) nopreserve replace
end

* Execute
main
