set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

program main
    local base_dir = "${GoogleDrive}/base/nhanes"
    use "`base_dir'/nhanes_1999-2016.dta", clear

    build_continuous_nhanes, init_year(2) last_year(18)
    save "../temp/continuous_nhanes.dta", replace
     
    use "`base_dir'/nhanesiii.dta", clear
    build_nhanes_iii, init_year(2) last_year(18)
    
    label var b "Average BMI"
    label var survey_year "Survey year"
    
    append using "../temp/continuous_nhanes.dta"
    
    local label_list = "1988-1991 1992-1994 1999-2000 2001-2002 2003-2004 " + ///
                       "2005-2006 2007-2008 2009-2010 2011-2012 2013-2014 2015-2016"
    local idx: word count `label_list'

    forval col_index = 1/`idx' {
        local year_lab: word `col_index' of `label_list'
        local define_label `define_label' `col_index' "`year_lab'"
    }
    
    scatter b survey_year, xlabel(`define_label', labsize(small) angle(45))
    graph export "../output/bmi_2to18_nhanes.png", as(png) replace
    */
end

program build_continuous_nhanes
    syntax, init_year(int) last_year(int)
    
    gen weight = 1/10*wtmec2yr
    replace weight = 2/10*wtmec4yr if sddsrvyr == 1 | sddsrvyr == 2
    svyset [w=weight], psu(sdmvpsu) strata(sdmvstra) vce(linearized)

    svy: mean bmxbmi, subpop(if ridageyr >= `init_year' & ///
        ridageyr <= `last_year') over(sddsrvyr)

    matrix EST = r(table)
    matrix EST = EST'
    clear
    svmat EST, names(col)
    gen survey_year = _n + 2
end

program build_nhanes_iii
    syntax, init_year(int) last_year(int)
    
    rename *, lower
    svyset [w=wtpfex6], psu(sdppsu6) strata(sdpstra6) vce(linearized)
    
    svy: mean bmpbmi, subpop(if hsageir >= `init_year' & ///
        hsageir <= `last_year' & bmpbmi != 8888) over(sdpphase)
        
    matrix EST = r(table)
    matrix EST = EST'
    clear
    svmat EST, names(col)
    gen survey_year = _n
end

* Execute
main
