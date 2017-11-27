set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

local raw_data_dir = "${GoogleDrive}/raw_data/bridging_the_gap/school_district/data"
local base_dir     = "${GoogleDrive}/base/bridging_the_gap/school_district"

/*
                     Stata Setup (Do File) for ICPSR 36528
  
       Bridging the Gap/National Wellness Policy Study District Wellness
         Policy-Related Dataset, School Years 2006-2007 through 2013-2014

*/

infile using "`raw_data_dir'/36528-0001-Setup.dct", using("`raw_data_dir'/36528-0001-Data.txt") clear

#delimit ;

 recode ne1r-r16r (-6 = .c) (-7 = .g) (-8 = .m) (-9 = .n);

 label define gradelevelnumeric
   1 "ES"
   2 "MS"
   3 "HS";

 label define year
   1 "Y1_0607"
   2 "Y2_0708"
   3 "Y3_0809"
   4 "Y4_0910"
   5 "Y5_1011"
   6 "Y6_1112"
   7 "Y7_1213"
   8 "Y8_1314";

 label define yr1
   0 "No"
   1 "Yes";

 label define yr2
   0 "No"
   1 "Yes";

 label define yr3
   0 "No"
   1 "Yes";

 label define yr4
   0 "No"
   1 "Yes";

 label define yr5
   0 "No"
   1 "Yes";

 label define yr6
   0 "No"
   1 "Yes";

 label define yr7
   0 "No"
   1 "Yes";

 label define yr8
   0 "No"
   1 "Yes";

 label define es
   0 "No"
   1 "Yes";

 label define ms
   0 "No"
   1 "Yes";

 label define hs
   0 "No"
   1 "Yes";

 label define dist_3
   0 "No"
   1 "Yes";

 label define dist_8
   0 "No"
   1 "Yes";

 label define dist_10
   0 "No"
   1 "Yes";

 label define dist_12
   0 "No"
   1 "Yes";

 label define ne1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ne2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ne3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ne4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ne5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ne6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ne7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us5ar
  .n "Not Applicable"
  .m "Policy missing"
  .g "grade level NA"
  .c "Not coded in given year"
   0 "no policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define us6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us8r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us9r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us10r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us11r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us12r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us13r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us14r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define us15r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng2rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "Applies at all times or sd not specified"
   1 "Applies only during the sd"
   2 "Applies at all times--only in y1 y2";

 label define ng3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng3rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "Applies at all times or sd not specified"
   1 "Applies only during the sd"
   2 "Applies at all times--only in y1 y2";

 label define ng4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng4rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "Applies at all times or sd not specified"
   1 "Applies only during the sd"
   2 "Applies at all times--only in y1 y2";

 label define ng5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng5rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "Applies at all times or sd not specified"
   1 "Applies only during the sd"
   2 "Applies at all times--only in y1 y2";

 label define ng6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng8r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng9r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define ng10r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   4 "Bans vending machines or all competitive foods & beverages";

 label define ng10rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "Applies at all times or sd not specified"
   1 "Applies only during the sd"
   2 "Applies at all times--only in y1 y2";

 label define ng16rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng16rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng17rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng17rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng18rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng18rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng19rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng19rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng20rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng20rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng21rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng21rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng22rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng22rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng23rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng23rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng24rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng24rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng25rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng25rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng26rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng26rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng27rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng27rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng28rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng28rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng29rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng30rvm
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng30rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng29rvmsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng11r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   4 "Bans vending machines or all competitive foods & beverages";

 label define ng11rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "Applies at all times or sd not specified"
   1 "Applies only during the sd"
   2 "Applies at all times--only in y1 y2";

 label define ng16rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng16rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng17rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng17rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng18rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng18rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng19rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng19rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng20rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng20rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng21rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng21rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng22rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng22rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng23rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng23rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng24rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng24rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng25rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng25rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng26rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng26rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng27rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng27rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng28rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng28rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng29rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng29rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban vending or competitive foods";

 label define ng30rss
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng30rsssd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng12r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy"
   4 "bans A la carte or all competitive foods & beverages";

 label define ng16ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng17ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng18ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng19ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng20ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng21ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng22ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng23ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng24ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng25ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng26ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng27ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng28ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng29ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban A la carte or competitive foods";

 label define ng30ral
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng13r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy"
   4 "bans A la carte or all competitive foods & beverages";

 label define ng16rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng17rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng18rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng19rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng20rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng21rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng22rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng23rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng24rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng25rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng26rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng27rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng28rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng29rcp
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng14r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy"
   4 "bans A la carte or all competitive foods & beverages";

 label define ng16rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng17rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng18rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng19rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng20rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng21rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng22rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   3 "Strong policy: Meets IOM standard"
   4 "Ban competitive beverages";

 label define ng23rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy"
   3 "Strong policy: Meets IOM standard"
   4 "Ban competitive beverages";

 label define ng24rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM standard"
   4 "Ban competitive beverages";

 label define ng25rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   3 "Strong policy: Meets IOM standard"
   4 "Ban competitive beverages";

 label define ng26rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Bans evening community events or competitive beverages";

 label define ng27rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Bans evening community events or competitive beverages";

 label define ng28rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Bans evening community events or competitive beverages";

 label define ng29rev
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Bans evening community events or competitive beverages";

 label define ng15r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy"
   4 "bans fundraisers or all competitive foods & beverages";

 label define ng15rsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "applies at all times or sd ns"
   1 "only applies during sd";

 label define ng16rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng16rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng17rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng17rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng18rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng18rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng19rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng19rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng20rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng20rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng21rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng21rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng22rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng22rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng23rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng23rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng24rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng24rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng25rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive foods";

 label define ng25rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng26rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Bans fundraisers or competitive beverages";

 label define ng26rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng27rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng27rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng28rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng28rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng29rfr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define ng29rfrsd
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy: < IOM Standard"
   3 "Strong policy: Meets IOM Standard"
   4 "Ban competitive beverages";

 label define pe1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "PE addressed in wellness policy";

 label define pe2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe8r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe9r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe10r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe11r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe12r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe13r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe14r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe15r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe16r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pe17r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define pa1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa3br
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No"
   1 "Yes";

 label define pa3cr
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No"
   1 "Yes";

 label define pa4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa8r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa9r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define pa10r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define st1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define st2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define st3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define cp1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define cp2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define cp3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define cp4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define cp5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define mp1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define mp2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define mp3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e4r_new
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "bmi suggested encouraged or phased in requirements not yet effective"
   2 "bmi measurement required for some but not all grades"
   3 "bmi measurement required no reporting"
   4 "bmi measurement required with reporting";

 label define e5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e8r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define e12r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "strong policy";

 label define r1r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r2r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r3r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r4r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r5r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r6r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r7r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r8r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r9r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r10r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r11r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r12r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r13r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r14r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r15r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define r16r
  .n "Not Applicable"
  .m "Policy missing"
  .g "Grade level NA"
  .c "Not coded in given year"
   0 "No policy or provision"
   1 "Weak policy"
   2 "Strong policy";

 label define region
   1 "West"
   2 "Midwest"
   3 "South"
   4 "Northeast"
   5 "Pacific";

 label define locale_4grp
   1 "Large to mid-size city"
   2 "Suburban"
   3 "Rural"
   4 "Township";

 label define free_redlch_elig_pr_gt66
   0 "No"
   1 "Yes";

 label values gradelevelnumeric gradelevelnumeric ;
 label values year year ;
 label values yr1 yr1 ;
 label values yr2 yr2 ;
 label values yr3 yr3 ;
 label values yr4 yr4 ;
 label values yr5 yr5 ;
 label values yr6 yr6 ;
 label values yr7 yr7 ;
 label values yr8 yr8 ;
 label values es es ;
 label values ms ms ;
 label values hs hs ;
 label values dist_3 dist_3 ;
 label values dist_8 dist_8 ;
 label values dist_10 dist_10 ;
 label values dist_12 dist_12 ;
 label values ne1r ne1r ;
 label values ne2r ne2r ;
 label values ne3r ne3r ;
 label values ne4r ne4r ;
 label values ne5r ne5r ;
 label values ne6r ne6r ;
 label values ne7r ne7r ;
 label values us1r us1r ;
 label values us2r us2r ;
 label values us3r us3r ;
 label values us4r us4r ;
 label values us5r us5r ;
 label values us5ar us5ar ;
 label values us6r us6r ;
 label values us7r us7r ;
 label values us8r us8r ;
 label values us9r us9r ;
 label values us10r us10r ;
 label values us11r us11r ;
 label values us12r us12r ;
 label values us13r us13r ;
 label values us14r us14r ;
 label values us15r us15r ;
 label values ng1r ng1r ;
 label values ng2r ng2r ;
 label values ng2rsd ng2rsd ;
 label values ng3r ng3r ;
 label values ng3rsd ng3rsd ;
 label values ng4r ng4r ;
 label values ng4rsd ng4rsd ;
 label values ng5r ng5r ;
 label values ng5rsd ng5rsd ;
 label values ng6r ng6r ;
 label values ng7r ng7r ;
 label values ng8r ng8r ;
 label values ng9r ng9r ;
 label values ng10r ng10r ;
 label values ng10rsd ng10rsd ;
 label values ng16rvm ng16rvm ;
 label values ng16rvmsd ng16rvmsd ;
 label values ng17rvm ng17rvm ;
 label values ng17rvmsd ng17rvmsd ;
 label values ng18rvm ng18rvm ;
 label values ng18rvmsd ng18rvmsd ;
 label values ng19rvm ng19rvm ;
 label values ng19rvmsd ng19rvmsd ;
 label values ng20rvm ng20rvm ;
 label values ng20rvmsd ng20rvmsd ;
 label values ng21rvm ng21rvm ;
 label values ng21rvmsd ng21rvmsd ;
 label values ng22rvm ng22rvm ;
 label values ng22rvmsd ng22rvmsd ;
 label values ng23rvm ng23rvm ;
 label values ng23rvmsd ng23rvmsd ;
 label values ng24rvm ng24rvm ;
 label values ng24rvmsd ng24rvmsd ;
 label values ng25rvm ng25rvm ;
 label values ng25rvmsd ng25rvmsd ;
 label values ng26rvm ng26rvm ;
 label values ng26rvmsd ng26rvmsd ;
 label values ng27rvm ng27rvm ;
 label values ng27rvmsd ng27rvmsd ;
 label values ng28rvm ng28rvm ;
 label values ng28rvmsd ng28rvmsd ;
 label values ng29rvm ng29rvm ;
 label values ng30rvm ng30rvm ;
 label values ng30rvmsd ng30rvmsd ;
 label values ng29rvmsd ng29rvmsd ;
 label values ng11r ng11r ;
 label values ng11rsd ng11rsd ;
 label values ng16rss ng16rss ;
 label values ng16rsssd ng16rsssd ;
 label values ng17rss ng17rss ;
 label values ng17rsssd ng17rsssd ;
 label values ng18rss ng18rss ;
 label values ng18rsssd ng18rsssd ;
 label values ng19rss ng19rss ;
 label values ng19rsssd ng19rsssd ;
 label values ng20rss ng20rss ;
 label values ng20rsssd ng20rsssd ;
 label values ng21rss ng21rss ;
 label values ng21rsssd ng21rsssd ;
 label values ng22rss ng22rss ;
 label values ng22rsssd ng22rsssd ;
 label values ng23rss ng23rss ;
 label values ng23rsssd ng23rsssd ;
 label values ng24rss ng24rss ;
 label values ng24rsssd ng24rsssd ;
 label values ng25rss ng25rss ;
 label values ng25rsssd ng25rsssd ;
 label values ng26rss ng26rss ;
 label values ng26rsssd ng26rsssd ;
 label values ng27rss ng27rss ;
 label values ng27rsssd ng27rsssd ;
 label values ng28rss ng28rss ;
 label values ng28rsssd ng28rsssd ;
 label values ng29rss ng29rss ;
 label values ng29rsssd ng29rsssd ;
 label values ng30rss ng30rss ;
 label values ng30rsssd ng30rsssd ;
 label values ng12r ng12r ;
 label values ng16ral ng16ral ;
 label values ng17ral ng17ral ;
 label values ng18ral ng18ral ;
 label values ng19ral ng19ral ;
 label values ng20ral ng20ral ;
 label values ng21ral ng21ral ;
 label values ng22ral ng22ral ;
 label values ng23ral ng23ral ;
 label values ng24ral ng24ral ;
 label values ng25ral ng25ral ;
 label values ng26ral ng26ral ;
 label values ng27ral ng27ral ;
 label values ng28ral ng28ral ;
 label values ng29ral ng29ral ;
 label values ng30ral ng30ral ;
 label values ng13r ng13r ;
 label values ng16rcp ng16rcp ;
 label values ng17rcp ng17rcp ;
 label values ng18rcp ng18rcp ;
 label values ng19rcp ng19rcp ;
 label values ng20rcp ng20rcp ;
 label values ng21rcp ng21rcp ;
 label values ng22rcp ng22rcp ;
 label values ng23rcp ng23rcp ;
 label values ng24rcp ng24rcp ;
 label values ng25rcp ng25rcp ;
 label values ng26rcp ng26rcp ;
 label values ng27rcp ng27rcp ;
 label values ng28rcp ng28rcp ;
 label values ng29rcp ng29rcp ;
 label values ng14r ng14r ;
 label values ng16rev ng16rev ;
 label values ng17rev ng17rev ;
 label values ng18rev ng18rev ;
 label values ng19rev ng19rev ;
 label values ng20rev ng20rev ;
 label values ng21rev ng21rev ;
 label values ng22rev ng22rev ;
 label values ng23rev ng23rev ;
 label values ng24rev ng24rev ;
 label values ng25rev ng25rev ;
 label values ng26rev ng26rev ;
 label values ng27rev ng27rev ;
 label values ng28rev ng28rev ;
 label values ng29rev ng29rev ;
 label values ng15r ng15r ;
 label values ng15rsd ng15rsd ;
 label values ng16rfr ng16rfr ;
 label values ng16rfrsd ng16rfrsd ;
 label values ng17rfr ng17rfr ;
 label values ng17rfrsd ng17rfrsd ;
 label values ng18rfr ng18rfr ;
 label values ng18rfrsd ng18rfrsd ;
 label values ng19rfr ng19rfr ;
 label values ng19rfrsd ng19rfrsd ;
 label values ng20rfr ng20rfr ;
 label values ng20rfrsd ng20rfrsd ;
 label values ng21rfr ng21rfr ;
 label values ng21rfrsd ng21rfrsd ;
 label values ng22rfr ng22rfr ;
 label values ng22rfrsd ng22rfrsd ;
 label values ng23rfr ng23rfr ;
 label values ng23rfrsd ng23rfrsd ;
 label values ng24rfr ng24rfr ;
 label values ng24rfrsd ng24rfrsd ;
 label values ng25rfr ng25rfr ;
 label values ng25rfrsd ng25rfrsd ;
 label values ng26rfr ng26rfr ;
 label values ng26rfrsd ng26rfrsd ;
 label values ng27rfr ng27rfr ;
 label values ng27rfrsd ng27rfrsd ;
 label values ng28rfr ng28rfr ;
 label values ng28rfrsd ng28rfrsd ;
 label values ng29rfr ng29rfr ;
 label values ng29rfrsd ng29rfrsd ;
 label values pe1r pe1r ;
 label values pe2r pe2r ;
 label values pe3r pe3r ;
 label values pe4r pe4r ;
 label values pe5r pe5r ;
 label values pe6r pe6r ;
 label values pe7r pe7r ;
 label values pe8r pe8r ;
 label values pe9r pe9r ;
 label values pe10r pe10r ;
 label values pe11r pe11r ;
 label values pe12r pe12r ;
 label values pe13r pe13r ;
 label values pe14r pe14r ;
 label values pe15r pe15r ;
 label values pe16r pe16r ;
 label values pe17r pe17r ;
 label values pa1r pa1r ;
 label values pa2r pa2r ;
 label values pa3r pa3r ;
 label values pa3br pa3br ;
 label values pa3cr pa3cr ;
 label values pa4r pa4r ;
 label values pa5r pa5r ;
 label values pa6r pa6r ;
 label values pa7r pa7r ;
 label values pa8r pa8r ;
 label values pa9r pa9r ;
 label values pa10r pa10r ;
 label values st1r st1r ;
 label values st2r st2r ;
 label values st3r st3r ;
 label values cp1r cp1r ;
 label values cp2r cp2r ;
 label values cp3r cp3r ;
 label values cp4r cp4r ;
 label values cp5r cp5r ;
 label values mp1r mp1r ;
 label values mp2r mp2r ;
 label values mp3r mp3r ;
 label values e1r e1r ;
 label values e2r e2r ;
 label values e3r e3r ;
 label values e4r_new e4r_new ;
 label values e5r e5r ;
 label values e6r e6r ;
 label values e7r e7r ;
 label values e8r e8r ;
 label values e12r e12r ;
 label values r1r r1r ;
 label values r2r r2r ;
 label values r3r r3r ;
 label values r4r r4r ;
 label values r5r r5r ;
 label values r6r r6r ;
 label values r7r r7r ;
 label values r8r r8r ;
 label values r9r r9r ;
 label values r10r r10r ;
 label values r11r r11r ;
 label values r12r r12r ;
 label values r13r r13r ;
 label values r14r r14r ;
 label values r15r r15r ;
 label values r16r r16r ;
 label values region region ;
 label values locale_4grp locale_4grp ;
 label values free_redlch_elig_pr_gt66 free_redlch_elig_pr_gt66 ;

#delimit cr

save_data "`base_dir'/btg_school_district.dta", key(id gradelevel year) replace nopreserve
