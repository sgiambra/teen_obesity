program database_to_dta
    syntax anything(name=table), outfile(string) ///
        [key(string) to_date(string) to_week(string) to_month(string) save_only]
    
    odbc load, exec("SELECT * FROM `table'") dsn("HASTINGS") lowercase clear
    foreach time_level in date week month {
        if "`to_`time_level''" != "" fix_odbc_dates `to_`time_level'', format(`time_level')
    }
    if "`save_only'" != "" {
        save `outfile', replace
    }
    else {
        save_data `outfile', key(`key') replace
    }
end

program fix_odbc_dates
    syntax varlist, format(string)

    foreach var in `varlist' {
        if "`format'" == "date" {
            qui replace `var' = dofc(`var')
            format `var' %td
        }
        if "`format'" == "week" {
            qui replace `var' = wofd(dofc(`var'))
            format `var' %tw
        }
        if "`format'" == "month" {
            qui replace `var' = mofd(dofc(`var'))
            format `var' %tm           
        }
        compress `var'
    }
end
