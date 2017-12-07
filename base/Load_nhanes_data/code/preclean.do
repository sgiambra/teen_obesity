set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local raw_data_dir = "${GoogleDrive}/raw_data/nhanes"
    local base_dir     = "${GoogleDrive}/base/nhanes"

    local years_list = "1999-2000 2001-2002 2003-2004 2005-2006 2007-2008 " + ///
                       "2009-2010 2011-2012 2013-2014 2015-2016"
    local stub_list  = `""" "_B" "_C" "_D" "_E" "_F" "_G" "_H" "_I""'
    local idx: word count `years_list'

    forval col_index = 1/`idx' {
        local years: word `col_index' of `years_list'
        local stub: word `col_index' of `stub_list'

        import sasxport "`raw_data_dir'/`years'/BMX`stub'.xpt", clear
        save "../temp/`years'_BMX.dta", replace
        
        import sasxport "`raw_data_dir'/`years'/DEMO`stub'.xpt", clear      
        merge 1:1 seqn using "../temp/`years'_BMX.dta", ///
            assert(1 3) keep(3) nogen

        save "../temp/`years'_DEMO_BMX.dta", replace
    }

    local idx_no_last = `idx' - 1
    forval col_index = 1/`idx_no_last' {
        local years: word `col_index' of `years_list'
        append using "../temp/`years'_DEMO_BMX.dta"
    }

    save_data "`base_dir'/nhanes_1999-2016.dta", key(seqn) nopreserve replace
end

* Execute
main
