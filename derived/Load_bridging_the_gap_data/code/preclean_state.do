set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

local raw_data_dir = "${GoogleDrive}/raw_data/bridging_the_gap/state/data"
local derived_dir  = "${GoogleDrive}/derived/bridging_the_gap/state"

/*
                     Stata Setup (Do File) for ICPSR 36527
  
         Bridging the Gap/National Wellness Policy Study State Wellness
        Policy-Related Dataset, School Years 2006-2007 through 2013-2014

*/

infile using "`raw_data_dir'/36527-0001-Setup.dct", using("`raw_data_dir'/36527-0001-Data.txt") clear

#delimit ;

recode ne1s-r16s (-6 = .c) (-7 = .g) (-9 = .n);

label define fipstnum  1 "Alabama" 2 "Alaska" 4 "Arizona" 5 "Arkansas"
                       6 "California" 8 "Colorado" 9 "Connecticut"
                       10 "Delaware" 11 "District of Columbia" 12 "Florida"
                       13 "Georgia" 14 "Guam" 15 "Hawaii" 16 "Idaho"
                       17 "Illinois" 18 "Indiana" 19 "Iowa" 20 "Kansas"
                       21 "Kentucky" 22 "Louisiana" 23 "Maine" 24 "Maryland"
                       25 "Massachusetts" 26 "Michigan" 27 "Minnesota"
                       28 "Mississippi" 29 "Missouri" 30 "Montana"
                       31 "Nebraska" 32 "Nevada" 33 "New Hampshire"
                       34 "New Jersey" 35 "New Mexico" 36 "New York"
                       37 "North Carolina" 38 "North Dakota" 39 "Ohio"
                       40 "Oklahoma" 41 "Oregon" 42 "Pennsylvania"
                       43 "Puerto Rico" 44 "Rhode Island" 45 "South Carolina"
                       46 "South Dakota" 47 "Tennessee" 48 "Texas" 49 "Utah"
                       50 "Vermont" 51 "Virginia" 52 "Virgin Islands"
                       53 "Washington" 54 "West Virginia" 55 "Wisconsin"
                       56 "Wyoming" 58 "DOD Dependents Schools-Overseas"
                       59 "Bureau of Indian Affairs" 60 "American Samoa"
                       61 "DOD Dependents Schools-domestic"
                       63 "Department of Defense Education Activity"
                       66 "Guam" 69 "Mariana Islands" 70 "Palau"
                       72 "Puerto Rico" 78 "Virgin Islands" ;
label define gradelevelnumeric 1 "ES" 2 "MS" 3 "HS" ;
label define es        0 "No" 1 "Yes" ;
label define ms        0 "No" 1 "Yes" ;
label define hs        0 "No" 1 "Yes" ;
label define year      1 "Y1_0607" 2 "Y2_0708" 3 "Y3_0809" 4 "Y4_0910"
                       5 "Y5_1011" 6 "Y6_1112" 7 "Y7_1213" 8 "Y8_1314" ;
label define ne1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ne2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ne3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ne4s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ne5s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ne6s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ne7s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us4s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us5s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us5as     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us6s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us7s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us8s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us9s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us10s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us11s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us12s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us13s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define us14s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define us15s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define ng1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng2sds    0 "Applies at all times or SD not specified"
                       1 "Applies only during the SD" ;
label define ng3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng3sds    0 "Applies at all times or SD not specified"
                       1 "Applies only during the SD" ;
label define ng4s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng4sds    .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng5s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng5sds    .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng6s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng7s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng8s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng9s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define ng10s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans vending or all competitive foods & beverages" ;
label define ng10sds   0 "Applies at all times or SD not specified"
                       1 "Applies only during the SD" ;
label define ng16vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive foods" ;
label define ng16vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng17vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban vending or competitive foods" ;
label define ng17vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng18vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive foods" ;
label define ng18vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng19vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive foods" ;
label define ng19vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng20vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive foods" ;
label define ng20vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng21vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive foods" ;
label define ng21vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng22vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban vending or competitive beverages" ;
label define ng22vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng23vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Ban vending or competitive beverages" ;
label define ng23vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng24vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive beverages" ;
label define ng24vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng25vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban vending or competitive beverages" ;
label define ng25vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng26vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Bans vending or competitive beverages" ;
label define ng26vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng27vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive beverages" ;
label define ng27vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng28vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive beverages" ;
label define ng28vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng29vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban vending or competitive beverages" ;
label define ng30vms   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng30vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng29vmsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng11s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans stores or all competitive foods & beverages" ;
label define ng11sds   0 "Applies at all times or SD not specified"
                       1 "Applies only during the SD" ;
label define ng16sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive foods" ;
label define ng16sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng17sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban stores or competitive foods" ;
label define ng17sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng18sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive foods" ;
label define ng18sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng19sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive foods" ;
label define ng19sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng20sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive foods" ;
label define ng20sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng21sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive foods" ;
label define ng21sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng22sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban stores or competitive beverages" ;
label define ng22sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng23sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Ban stores or competitive beverages" ;
label define ng23sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng24sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive beverages" ;
label define ng24sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng25sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban stores or competitive beverages" ;
label define ng25sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng26sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Bans stores or competitive beverages" ;
label define ng26sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng27sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive beverages" ;
label define ng27sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng28sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive beverages" ;
label define ng28sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng29sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban stores or competitive beverages" ;
label define ng29sssds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng30sss   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng30ssds  .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng12s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans A la carte or all competitive foods & beverages" ;
label define ng16als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive foods" ;
label define ng17als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Ban A la carte or competitive foods" ;
label define ng18als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive foods" ;
label define ng19als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive foods" ;
label define ng20als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive foods" ;
label define ng21als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive foods" ;
label define ng22als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban A la carte or competitive beverages" ;
label define ng23als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Ban A la carte or competitive beverages" ;
label define ng24als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive beverages" ;
label define ng25als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban A la carte or competitive beverages" ;
label define ng26als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Bans A la carte or competitive beverages" ;
label define ng27als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive beverages" ;
label define ng28als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive beverages" ;
label define ng29als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban A la carte or competitive beverages" ;
label define ng30als   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng13s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans competitive foods & beverages" ;
label define ng16cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng17cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban competitive foods" ;
label define ng18cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng19cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng20cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng21cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng22cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban competitive beverages" ;
label define ng23cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban competitive beverages" ;
label define ng24cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng25cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban competitive beverages" ;
label define ng26cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Bans class parties or competitive beverages" ;
label define ng27cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng28cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng29cps   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng14s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans competitive foods & beverages" ;
label define ng16evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng17evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban competitive foods" ;
label define ng18evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng19evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng20evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng21evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng22evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban competitive beverages" ;
label define ng23evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban competitive beverages" ;
label define ng24evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng25evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban competitive beverages" ;
label define ng26evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Bans evening community events or competitive beverages" ;
label define ng27evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng28evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: <IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng29evs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng15s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans competitive foods & beverages" ;
label define ng15s_old .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       4 "Bans competitive foods & beverages" ;
label define ng15sds   0 "Applies at all times or SD not specified"
                       1 "Applies only during the SD" ;
label define ng16frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng16frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng17frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban competitive foods" ;
label define ng17frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng18frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng18frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng19frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng19frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng20frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng20frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng21frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive foods" ;
label define ng21frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng22frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban competitive beverages" ;
label define ng22frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng23frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" 4 "Ban competitive beverages" ;
label define ng23frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng24frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng24frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng25frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM standard"
                       4 "Ban competitive beverages" ;
label define ng25frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng26frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Bans fundraisers or competitive beverages" ;
label define ng26frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng27frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng27frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng28frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: < IOM Standard"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng28frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define ng29frs   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy"
                       3 "Strong policy: Meets IOM Standard"
                       4 "Ban competitive beverages" ;
label define ng29frsds .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Applies at all times or SD ns"
                       1 "Only applies during SD" ;
label define pe1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Yes addresses PE"
                       2 "Strong policy" ;
label define pe2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: Meets NASPE standard" ;
label define pe4s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: Meets NASPE standard" ;
label define pe5s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy: Meets NASPE standard" ;
label define pe6s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe7s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe8s      .n "Not Applicable" 
                       .g "Grade level NA"
                       .c "Variable does not apply to grade level"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe9s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe9as     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not mentioned"
                       1 "Allows school Districts to apply for waiver" ;
label define pe10s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe11s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe12s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe13s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe14s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe15s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe16s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pe17s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define pa1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa3bs     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No" 1 "Yes" ;
label define pa3cs     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No" 1 "Yes" ;
label define pa4s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa5s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa6s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa7s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa8s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define pa9s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy" ;
label define pa10s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define pa11s     .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define st1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define st2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define st3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define cp1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define cp2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define cp3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define cp4s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define cp5s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "strong policy" ;
label define mp1s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define mp2s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define mp3s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e1s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e2s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e3s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e4s_new   .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision"
                       1 "BMI suggested encouraged or phased-in requirement"
                       2 "bmi measurement applies to some but not all grades"
                       3 "bmi measurement required no reporting"
                       4 "bmi measurement required with reporting" ;
label define e5s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e6s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e7s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e8s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e12s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "No policy or provision" 1 "Weak policy"
                       2 "Strong policy" ;
label define e13s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define e14s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define e15s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define e16s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define e17s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r1s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r2s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r3s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r3ss      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r4s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r5s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r6s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r7s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r8s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r9s       .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r10s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r11s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r12s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r13s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r14s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r15s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define r16s      .n "Not Applicable" 
                       .g "Grade level NA" .c "Not coded in given year"
                       0 "Not addressed No policy" 1 "Suggested" 2 "Required" ;
label define northeast 0 "No" 1 "Yes" ;
label define midwest   0 "No" 1 "Yes" ;
label define south     0 "No" 1 "Yes" ;
label define west      0 "No" 1 "Yes" ;
label define region    1 "West" 2 "Midwest" 3 "South" 4 "Northeast" ;
label define newengland 0 "No" 1 "Yes" ;
label define midatlantic 0 "No" 1 "Yes" ;
label define eastnorcen 0 "No" 1 "Yes" ;
label define wesnorcen 0 "No" 1 "Yes" ;
label define southatl  0 "No" 1 "Yes" ;
label define eastsocen 0 "No" 1 "Yes" ;
label define westsocen 0 "No" 1 "Yes" ;
label define mountain  0 "No" 1 "Yes" ;
label define pacific   0 "No" 1 "Yes" ;
label define division  1 "New England (1)" 2 "Middle Atlantic (2)"
                       3 "East North Central (3)" 4 "West North Central (4)"
                       5 "South Atlantic (5)" 6 "East South Central (6)"
                       7 "West South Central (7)" 8 "Mountain (8)"
                       9 "Pacific (9)" ;

#delimit cr

save_data "`derived_dir'/btg_state.dta", key(fipstnum gradelevel year) replace nopreserve
