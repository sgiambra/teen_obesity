set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

* The path raw_data_dir MUST be changed in dictionary_1999.dct
local raw_data_dir = "${GoogleDrive}/raw_data/eclsk/Childk8p"
local derived_dir  = "${GoogleDrive}/derived/eclsk/1999"

set maxvar 30000
clear
infile using "dictionary_1999.dct"
#delimit ;
keep if  (R3SAMPLE == 1 | 
       R3SAMPLE == 0); 
   keep if (R4R2SCHG == 1 | 
       R4R2SCHG == 2 | 
       R4R2SCHG == 3 | 
       R4R2SCHG == 4 | 
       R4R2SCHG == 5 | 
       R4R2SCHG == 6 | 
       R4R2SCHG == -1 | 
       R4R2SCHG == -9 | 
       R4R2SCHG == .); 
   keep if (R5R4SCHG == 1 | 
       R5R4SCHG == 2 | 
       R5R4SCHG == 3 | 
       R5R4SCHG == 4 | 
       R5R4SCHG == 5 | 
       R5R4SCHG == 6 | 
       R5R4SCHG == -1 | 
       R5R4SCHG == -9 | 
       R5R4SCHG == .); 
   keep if (R6R5SCHG == 1 | 
       R6R5SCHG == 2 | 
       R6R5SCHG == 3 | 
       R6R5SCHG == 4 | 
       R6R5SCHG == 5 | 
       R6R5SCHG == 6 | 
       R6R5SCHG == -1 | 
       R6R5SCHG == -9 | 
       R6R5SCHG == .); 
   keep if (R7R6SCHG == 1 | 
       R7R6SCHG == 2 | 
       R7R6SCHG == 3 | 
       R7R6SCHG == 4 | 
       R7R6SCHG == 5 | 
       R7R6SCHG == 6 | 
       R7R6SCHG == -1 | 
       R7R6SCHG == -9 | 
       R7R6SCHG == .); 
   keep if (P1FIRKDG == 1 | 
       P1FIRKDG == 2 | 
       P1FIRKDG == -8 | 
       P1FIRKDG == -9 | 
       P1FIRKDG == .); 
   keep if (T7GLVL == 0 | 
       T7GLVL == 1 | 
       T7GLVL == 2 | 
       T7GLVL == 3 | 
       T7GLVL == 4 | 
       T7GLVL == 5 | 
       T7GLVL == 6 | 
       T7GLVL == 7 | 
       T7GLVL == 8 | 
       T7GLVL == 9 | 
       T7GLVL == 10 | 
       T7GLVL == 13 | 
       T7GLVL == -9 | 
       T7GLVL == .);
   label define _1789F
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1003F
      1  "REGULAR KINDERGARTEN ONLY"  
      2  "HAS OTHER KINDERGARTEN TYPE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1021F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1022F
      1  "NONE"  
      2  "1 - 25%"  
      3  "26 - 50%"  
      4  "51 - 75%"  
      5  "76% OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1027F
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1028F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1029F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1030F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1031F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1032F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1033F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1034F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1035F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1036F
      1  "ARABIC"  
      2  "FRENCH"  
      3  "GERMAN"  
      4  "GREEK"  
      5  "ITALIAN"  
      6  "POLISH"  
      7  "PORTUGUESE"  
      8  "AFRICAN LANGUAGE"  
      9  "EAST EUROPEAN LANGUAGE"  
      10  "NATIVE AMERICAN LANGUAGE"  
      11  "SIGN LANGUAGE"  
      12  "MIDDLE EASTERN LANGUAGE"  
      13  "WEST EUROPEAN LANGUAGE"  
      14  "INDIAN SUBCONTINENT - LANGUAGE"  
      15  "SOUTHEASTERN ASIAN LANGUAGE"  
      16  "PACIFIC ISLANDS LANGUAGE"  
      17  "OTHER LANGUAGES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1041F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1042F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1043F
      1  "ARABIC"  
      2  "FRENCH"  
      3  "GERMAN"  
      4  "GREEK"  
      5  "ITALIAN"  
      6  "POLISH"  
      7  "PORTUGUESE"  
      8  "AFRICAN LANGUAGE"  
      9  "EAST EUROPEAN LANGUAGE"  
      10  "NATIVE AMERICAN LANGUAGE"  
      11  "SIGN LANGUAGE"  
      12  "MIDDLE EASTERN LANGUAGE"  
      13  "WEST EUROPEAN LANGUAGE"  
      14  "INDIAN SUBCONTINENT - LANGUAGE"  
      15  "SOUTHEASTERN ASIAN LANGUAGE"  
      16  "PACIFIC ISLANDS LANGUAGE"  
      17  "OTHER LANGUAGE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1044F
      1  "1 - 15 MINUTES PER DAY"  
      2  "16 - 30 MINUTES PER DAY"  
      3  "31 - 60 MINUTES PER DAY"  
      4  "MORE THAN 60 MINUTES PER DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1045F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1047F
      1998  "1998"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A1CLASS
      1  "AM - MORNING"  
      2  "PM - AFTERNOON"  
      3  "AD - ALL DAY"  
;
   label define A2025F
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2026F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2027F
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2028F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2029F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1-2 TIMES A WEEK"  
      4  "3-4 TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2030F
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2031F
      1  "DO NOT PARTICIPATE IN PHYSICAL EDUCATION"  
      2  "1-15 MINUTES PER DAY"  
      3  "16-30 MINUTES PER DAY"  
      4  "31-60 MINUTES PER DAY"  
      5  "MORE THAN 60 MINUTES PER DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2033F
      1  "ONCE"  
      2  "TWICE"  
      3  "THREE OR MORE TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2034F
      1  "1-15 MINUTES"  
      2  "16-30 MINUTES"  
      3  "31-45 MINUTES"  
      4  "LONGER THAN 45 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2035F
      1  "1-15 MINUTES"  
      2  "16-30 MINUTES"  
      3  "31-45 MINUTES"  
      4  "LONGER THAN 45 MINUTES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2036F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2038F
      1  "1-15 MINUTES/DAY"  
      2  "16-30 MINUTES/DAY"  
      3  "31-60 MINUTES/DAY"  
      4  "LONGER THAN 60 MINUTES/DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2040F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2045F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2047F
      0  "NO LIBRARY OR MEDIA CENTER IN THIS SCHOO"  
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2055F
      1  "NOT AT ALL WELL"  
      2  "NOT WELL"  
      3  "WELL"  
      4  "VERY WELL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2056F
      1  "HIGH SCHOOL DIPLOMA OR GED"  
      2  "AA IN EARLY CHILDHOOD EDUCATION"  
      3  "BA OR BS IN ELEMENTARY EDUCATION"  
      4  "WORKING ON A BACHELORS DEGREE"  
      5  "DON'T KNOW"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define A2057F
      1  "ELEMENTARY EDUCATION"  
      2  "EARLY CHILDHOOD EDUCATION"  
      3  "CURRENTLY WORKING ON A TEACHING CREDENT"  
      4  "DON'T KNOW"  
      5  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define A2058F
      1  "I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2059F
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2060F
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2061F
      1  "TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "CHILDREN SHOULD ALREADY KNOW"  
      3  "ONE A MONTH OR LESS"  
      4  "2-3 TIMES A MONTH"  
      5  "1-2 TIMES A WEEK"  
      6  "3-4 TIMES A WEEK"  
      7  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2062F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2063F
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2064F
      1  "NO CONFERENCES"  
      2  "ONE CONFERENCE"  
      3  "TWO CONFERENCES"  
      4  "THREE OR MORE CONFERENCES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2065F
      1  "NONE"  
      2  "1-25 PERCENT"  
      3  "26-50 PERCENT"  
      4  "51-75 PERCENT"  
      5  "76 PERCENT OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2067F
      1  "NEVER"  
      2  "ONE TO TWO TIMES"  
      3  "THREE OR FIVE TIMES"  
      4  "SIX TO TEN TIMES"  
      5  "10-14 TIMES"  
      6  "15 OR MORE TIMES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2068F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A2070F
      1999  "1999"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4001F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4021F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4022F
      1  "NONE"  
      2  "1-25 PERCENT"  
      3  "26-50 PERCENT"  
      4  "51-75 PERCENT"  
      5  "76 PERCENT OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4027F
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4028F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4050F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4051F
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4052F
      1  "DO NOT PARTICIPATE IN PHYSICAL EDUCATION"  
      2  "1-15 MINUTES PER DAY"  
      3  "16-30 MINUTES PER DAY"  
      4  "31-60 MINUTES PER DAY"  
      5  "MORE THAN 60 MINUTES PER DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4054F
      1  "ONCE"  
      2  "TWICE"  
      3  "THREE OR MORE TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4055F
      0  "NONE"  
      1  "1-15 MINUTES"  
      2  "16-30 MINUTES"  
      3  "31-45 MINUTES"  
      4  "LONGER THAN 45 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4057F
      1  "1-15 MINUTES/DAY"  
      2  "16-30 MINUTES/DAY"  
      3  "31-60 MINUTES/DAY"  
      4  "LONGER THAN 60 MINUTES/DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4064F
      0  "NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4065F
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4073F
      1  "NOT AT ALL WELL"  
      2  "NOT WELL"  
      3  "WELL"  
      4  "VERY WELL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4074F
      1  "LESS THAN HIGH SCHOOL"  
      2  "HIGH SCHOOL DIPLOMA OR GED"  
      3  "ASSOCIATE'S DEGREE"  
      4  "BACHELOR'S DEGREE"  
      5  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      6  "MASTER'S DEGREE OR ABOVE"  
      8  "DON'T KNOW"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define A4075F
      1  "YES"  
      2  "NO"  
      8  "DON'T KNOW"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define A4076F
      1  "I DON'T USE THESE AT THIS GRADE LEVEL"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4077F
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4078F
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4079F
      1  "TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "CHILDREN SHOULD ALREADY KNOW"  
      3  "ONCE A MONTH OR LESS"  
      4  "2-3 TIMES A MONTH"  
      5  "1-2 TIMES A WEEK"  
      6  "3-4 TIMES A WEEK"  
      7  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4080F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE OR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4081F
      1  "NO CONFERENCES"  
      2  "ONE CONFERENCE"  
      3  "TWO CONFERENCES"  
      4  "THREE OR MORE CONFERENCES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4082F
      1  "NONE"  
      2  "1-25 PERCENT"  
      3  "26-50 PERCENT"  
      4  "51-75 PERCENT"  
      5  "76 PERCENT OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4084F
      1  "NEVER"  
      2  "ONE TO TWO TIMES"  
      3  "THREE TO FIVE TIMES"  
      4  "SIX TO TEN TIMES"  
      5  "10-14 TIMES"  
      6  "15 OR MORE TIMES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4085F
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4087F
      2000  "2000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4119F
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4120F
      1  "CLASSROOM HAS NO/FEW DESKS/TABLES"  
      2  "IN ROWS FACING THE FRONT OF THE CLASSROOM"  
      3  "ARRANGED IN A CIRCLE/SEMICIRCLE"  
      4  "ARRANGED IN SMALL GROUPS"  
      5  "CLASSROOM HAS NO SET ARRANGEMENT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4135F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4140F
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4141F
      1  "NEVER"  
      2  "OCCASIONALLY"  
      3  "USUALLY"  
      4  "ALL THE TIME"  
      5  "COMBINATION CODE - BOTH 2 AND 3 CIRCLED"  
      6  "COMBINATION CODE - BOTH 3 AND 4 CIRCLED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4144F
      1  "DO NOT USE INSTRUCTIONAL GROUPS IN READING"  
      2  "USE INSTRUCTIONAL GROUPS IN READING"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4145F
      1  "NONE"  
      2  "1 OR 2 CHILDREN"  
      3  "3 TO 5 CHILDREN"  
      4  "6 TO 10 CHILDREN"  
      5  "11 OR MORE CHILDREN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4151F
      0  "NONE"  
      1  "10 MINUTES"  
      2  "20 MINUTES"  
      3  "30 MINUTES"  
      4  "MORE THAN 30 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4160F
      1  "YES"  
      2  "NO"  
      8  "DON'T KNOW"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define A4164F
      1  "1 - EMPHASIS TOTALLY ON COMPREHENDING CONNECTED TEXT"  
      2  "2"  
      3  "3"  
      4  "4 - EQUAL EMPHASIS ON BOTH APPROACHES"  
      5  "5"  
      6  "6"  
      7  "7 - EMPHASIS TOTALLY ON DECODING SKILLS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4165F
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4166F
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4167F
      1  "SAME STANDARDS, EXCEPTIONS FOR NEEDS"  
      2  "DIFFERENT STANDARDS BASED ON TALENTS"  
      3  "EXACTLY THE SAME STANDARDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4168F
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A4CLASS
      1  "K 2000 QUESTIONNAIRE MORNING CLASS"  
      2  "K 2000 QUESTIONNAIRE AFTERNOON CLASS"  
      3  "K 2000 QUESTIONNAIRE FULL-DAY CLASS"  
      4  "POST-K 2000 QUESTIONNAIRE"  
      -9  "NOT ASCERTAINED"  
;
   label define A4PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A4PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A4PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A5BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5CHKBOX
      1  "BOX CHECKED"  
      2  "BOX NOT CHECKED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5CLSORG
      1  "SELF-CONTAINED CLASS"  
      2  "TEAM TEACHING/DEPARTMENTALIZED INSTRUCTION/ELEMENTARY ENRICHMENT CLASS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5COMMTE
      1  "NEVER"  
      2  "OCCASIONALLY"  
      3  "USUALLY"  
      4  "ALL THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5DESK
      1  "IN ROWS FACING THE FRONT OF THE CLASSROOM"  
      2  "ARRANGED IN A CIRCLE/SEMICIRCLE"  
      3  "ARRANGED IN SMALL GROUPS"  
      4  "CLASSROOM HAS NO SET ARRANGEMENT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5EDLEVL
      1  "LESS THAN HIGH SCHOOL"  
      2  "HIGH SCHOOL DIPLOMA OR GED"  
      3  "ASSOCIATE'S DEGREE"  
      4  "BACHELOR'S DEGREE OR ABOVE"  
      8  "DON'T KNOW"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define A5EVAL
      1  "SAME STANDARDS, EXCEPTIONS FOR NEEDS"  
      2  "DIFFERENT STANDARDS BASED ON TALENTS"  
      3  "EXACTLY THE SAME STANDARDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5HOW21F
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5HOWO1F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5HOWO2F
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5NUMCNF
      1  "NO CONFERENCES"  
      2  "ONE CONFERENCE"  
      3  "TWO CONFERENCES"  
      4  "THREE OR MORE CONFERENCES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A5PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A5PLEP
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A5PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q24F
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q26HMT
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q28MIN
      1  "1-15 MINUTES/DAY"  
      2  "16-30 MINUTES/DAY"  
      3  "31-60 MINUTES/DAY"  
      4  "LONGER THAN 60 MINUTES/DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q30F
      0  "NONE"  
      1  "10 MINUTES"  
      2  "20 MINUTES"  
      3  "30 MINUTES"  
      4  "MORE THAN 30 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q36F
      0  "NONE"  
      1  "1-15 MINUTES"  
      2  "16-30 MINUTES"  
      3  "31-45 MINUTES"  
      4  "LONGER THAN 45 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q43F
      1  "I GET ALL THE RESOURCES I NEED"  
      2  "I GET MOST OF THE RESOURCES I NEED"  
      3  "I GET SOME OF THE RESOURCES I NEED"  
      4  "I DON'T GET ANY OF THE RESOURCES I NEED"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q44F
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q451F
      0  "NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q45F
      0  "NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q52F
      1  "ALWAYS"  
      2  "SOMETIMES"  
      3  "NEVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q54F
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q56F
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q58F
      0  "NOT APPLICABLE"  
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q60F
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5Q66F
      1  "NONE"  
      2  "1-25 PERCENT"  
      3  "26-50 PERCENT"  
      4  "51-75 PERCENT"  
      5  "76 PERCENT OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5STUSE
      1  "NOT USEFUL"  
      2  "SOMEWHAT USEFUL"  
      3  "VERY USEFUL"  
      4  "EXTREMELY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5TMPROP
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5TXRCE
      1  "ONCE"  
      2  "TWICE"  
      3  "THREE OR MORE TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5TXSPEN
      1  "DO NOT PARTICIPATE IN PHYSICAL EDUCATION"  
      2  "1-15 MINUTES PER DAY"  
      3  "16-30 MINUTES PER DAY"  
      4  "31-60 MINUTES PER DAY"  
      5  "MORE THAN 60 MINUTES PER DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5WELSPK
      1  "NOT AT ALL WELL"  
      2  "NOT WELL"  
      3  "WELL"  
      4  "VERY WELL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5WRTWK
      1  "LESS THAN 30 MINUTES"  
      2  "30 TO 44 MINUTES"  
      3  "45 TO 59 MINUTES"  
      4  "60 TO 90 MINUTES"  
      5  "MORE THAN 90 MINUTES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define A5YYCOM
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define ACQAccom
      1  "YES (AT LEAST ONE ACCOMMODATION PROVIDED)"  
      2  "NO (NO ACCOMMODATIONS PROVIDED)"  
      -1  "NOT APPLICABLE"  
;
   label define ACQAtten
      1  "UNABLE TO ATTEND"  
      2  "DIFFICULTY ATTENDING"  
      3  "ATTENTIVE"  
      4  "VERY ATTENTIVE"  
      5  "COMPLETE AND FULL ATTENTION"  
;
   label define ACQCoop
      1  "VERY UNCOOPERATIVE"  
      2  "UNCOOPERATIVE"  
      3  "MATTER OF FACT"  
      4  "COOPERATIVE"  
      5  "VERY COOPERATIVE"  
;
   label define ACQGrade
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "SIXTH GRADE"  
      6  "SEVENTH GRADE"  
      7  "EIGHTH GRADE"  
      8  "UNGRADED"  
      -1  "NOT APPLICABLE"  
;
   label define ACQModva
      1  "VERY LOW"  
      2  "LOW"  
      3  "AVERAGE"  
      4  "HIGH"  
      5  "VERY HIGH"  
;
   label define ACQWhatD
      1  "NOISE"  
      2  "ANOTHER STUDENT/PERSON"  
      3  "ANNOUNCEMENT/INTERCOM/PA"  
      4  "CHILD TIRED"  
      5  "CHILD ACTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define ACQWhatI
      1  "FIRE DRILL"  
      2  "BOMB THREAT"  
      3  "CLASS"  
      4  "LUNCH PERIOD"  
      5  "RECESS"  
      6  "WATER/BATHROOM BREAK"  
      7  "ANOTHER PERSON"  
      8  "RAN OUT OF TIME"  
      -1  "NOT APPLICABLE"  
;
   label define ACQWhich
      1  "SETTING"  
      2  "SCHEDULING/TIMING"  
      3  "HEALTH CARE AIDE"  
      4  "ASSISTIVE DEVICE"  
      5  "IEP"  
      -1  "NOT APPLICABLE"  
;
   label define ACQWhoP
      1  "SCHOOL STAFF"  
      2  "PARENT"  
      3  "DATA COLLECTION STAFF"  
      4  "OTHER OBSERVER"  
      -1  "NOT APPLICABLE"  
;
   label define ASSESSME
      34  "CHILD UNLOCATABLE"  
      35  "TRANSFER CASE NOT FIELDED"  
      36  "CHILD MOVED TO NON-SAMPLED COUNTY"  
      60  "COMPLETE ASSESSMENT - NO ACCOMODATIONS"  
      62  "COMPLETE ASSESSMENT - WITH ACCOMMODATIONS"  
      72  "EXCLUDED FROM ASSESSMENT"  
      80  "PARTIAL ASSESSMENT - RAN OUT OF TIME"  
      81  "PARTIAL ASSESSMENT - CHILD ILL"  
      83  "PARTIAL ASSESSMENT - CHILD'S MENTAL/PHYSICAL LIMITATION"  
      84  "PARTIAL ASSESSMENT - LANGUAGE BARRIER"  
      86  "PARTIAL ASSESSMENT - OTHER"  
      90  "FINAL REFUSAL - BY PARENT"  
      91  "DO NOT RECONTACT - BY PARENT"  
      92  "SCHOOL REFUSAL"  
      93  "UNABLE TO CONTACT PARENT"  
      94  "UNLOCATABLE PARENT"  
      95  "NOT ASSESSED - STUDENT UNAVAILABLE"  
      96  "NOT ASSESSED - OTHER"  
      97  "PARENT CONSENT REFUSED"  
;
   label define B1001F
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1002F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1003F
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1004F
      1  "SAME STANDARDS, EXCEPTIONS FOR NEEDS"  
      2  "DIFFERENT STANDARDS BASED ON TALENTS"  
      3  "EXACTLY THE SAME STANDARDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1005F
      1  "2 HOURS OR LESS PER WEEK"  
      2  "MORE THAN 2 HOURS BUT LESS THAN 5 A WEEK"  
      3  "5 TO 9 HOURS PER WEEK"  
      4  "10 TO 14 HOURS PER WEEK"  
      5  "15 OR MORE HOURS PER WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1006F
      1  "NOT IMPORTANT"  
      2  "NOT VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "VERY IMPORTANT"  
      5  "ESSENTIAL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1007F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1008F
      1  "NO INFLUENCE"  
      2  "SLIGHT INFLUENCE"  
      3  "SOME INFLUENCE"  
      4  "MODERATE INFLUENCE"  
      5  "A GREAT DEAL OF INFLUENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1009F
      1  "NO CONTROL"  
      2  "SLIGHT CONTROL"  
      3  "SOME CONTROL"  
      4  "MODERATE CONTROL"  
      5  "A GREAT DEAL OF CONTROL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1010F
      1  "MALE"  
      2  "FEMALE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1012F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1024F
      1  "HIGH SCHOOL/ASSOCIATE'S DEGREE/BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "EDUCATION SPECIALIST/PROFESSIONAL DIPLOMA"  
      5  "DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1025F
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1026F
      1  "NONE"  
      2  "TEMPORARY/PROBATIONAL CERTIFICATION"  
      3  "ALTERNATIVE PROGRAM CERTIFICATION"  
      4  "REGULAR CERTIFICATION, LESS THAN HIGHEST"  
      5  "HIGHEST CERTIFICATION AVAILABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1027F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1028F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B1030F
      1998  "1998"  
      1999  "1999"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4001F
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4002F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4003F
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4004F
      1  "SAME STANDARDS, EXCEPTIONS FOR NEEDS"  
      2  "DIFFERENT STANDARDS BASED ON TALENTS"  
      3  "EXACTLY THE SAME STANDARDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4005F
      1  "2 HOURS OR LESS PER WEEK"  
      2  "MORE THAN 2 HOURS BUT LESS THAN 5 PER WEEK"  
      3  "5 TO 9 HOURS PER WEEK"  
      4  "10 TO 14 HOURS PER WEEK"  
      5  "15 OR MORE HOURS PER WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4006F
      1  "NOT IMPORTANT"  
      2  "NOT VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "VERY IMPORTANT"  
      5  "ESSENTIAL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4007F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4008F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4009F
      1  "NO INFLUENCE"  
      2  "SLIGHT INFLUENCE"  
      3  "SOME INFLUENCE"  
      4  "MODERATE INFLUENCE"  
      5  "A GREAT DEAL OF INFLUENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4010F
      1  "NO CONTROL"  
      2  "SLIGHT CONTROL"  
      3  "SOME CONTROL"  
      4  "MODERATE CONTROL"  
      5  "A GREAT DEAL OF CONTROL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4012F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4025F
      1  "HIGH SCHOOL/ASSOCIATE'S DEGREE"  
      2  "BACHELOR'S DEGREE"  
      3  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      4  "MASTER'S DEGREE"  
      5  "EDUC SPECIALIST/PROF DIP/DOCTORATE/OTHER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4026F
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4027F
      1  "NONE"  
      2  "TEMPORARY/PROBATIONAL CERTIFICATION"  
      3  "ALTERNATIVE PROGRAM CERTIFICATION"  
      4  "REGULAR CERTIFICATION, LESS THAN HIGHEST"  
      5  "ADVANCED PROFESSIONAL CERTIFICATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4028F
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4030F
      2000  "2000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4031F
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4045F
      1  "HIGH SCHOOL/ASSOCIATE'S DEGREE"  
      2  "BACHELOR'S DEGREE"  
      3  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      4  "MASTER'S DEGREE"  
      5  "EDUCATION SPECIALIST/PROF DIPLOMA/DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4046F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4047F
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B4049F
      2000  "2000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5AGREE
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5CNTRLC
      1  "NO CONTROL"  
      2  "SLIGHT CONTROL"  
      3  "SOME CONTROL"  
      4  "MODERATE CONTROL"  
      5  "A GREAT DEAL OF CONTROL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5HGHSTD
      1  "HIGH SCHOOL/ASSOCIATE'S DEGREE/BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "EDUCATION SPECIALIST/PROF DIPLOMA/DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5HRSPWK
      1  "2 HOURS OR LESS PER WEEK"  
      2  "MORE THAN 2 HOURS BUT LESS THAN 5 PER WEEK"  
      3  "5 TO 9 HOURS PER WEEK"  
      4  "10 TO 14 HOURS PER WEEK"  
      5  "15 OR MORE HOURS PER WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5MNASIN
      1  "REGULAR FULL-TIME TEACHER"  
      2  "REGULAR PART-TIME/ITINERANT/LONG-TERM SUBSTITUTE/TEACHER AIDE/OTHER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5Q1F
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5Q21F
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5Q2F
      1  "NOT AT ALL USEFUL"  
      2  "SLIGHTLY USEFUL"  
      3  "MODERATELY USEFUL"  
      4  "VERY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5SCHPLC
      1  "NO INFLUENCE"  
      2  "SLIGHT INFLUENCE"  
      3  "SOME INFLUENCE"  
      4  "MODERATE INFLUENCE"  
      5  "A GREAT DEAL OF INFLUENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5TYPCER
      1  "NONE"  
      2  "TEMPORARY/PROBATIONAL CERTIFICATION"  
      3  "ALTERNATIVE PROGRAM CERTIFICATION"  
      4  "REGULAR OR STANDARD STATE CERTIFICATION"  
      5  "ADVANCED PROFESSIONAL CERTIFICATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define B5YYCOMP
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C1ASMTMM
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
;
   label define C1ASMTST
      1  "COMPLETELY SCORABLE ASSESSMENT DATA"  
      2  "PARTIALLY COMPLETED ASSESSMENT DATA"  
      3  "LANG MINORITY (NOT SPANISH)-NOT ASSESSED"  
      4  "CHILD W/ DISABILITY, NOT ASSESSED"  
      5  "NONRESPONDENT"  
;
   label define C1ASMTYY
      1998  "1998"  
;
   label define C1PSYMTR
      1  "NO EXCLUSIONS LISTED - GIVE BOTH FINE AND GROSS MOTOR"  
      2  "EXCLUDE GROSS MOTOR"  
      3  "EXCLUDE FINE MOTOR"  
      4  "EXCLUDE BOTH FINE AND GROSS MOTOR"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C1SCREEN
      1  "SPEAK NON-ENGLISH LANGUAGE AT HOME"  
      2  "SPEAK ENGLISH AT HOME"  
;
   label define C1SPASMT
      1  "YES"  
      2  "NO"  
;
   label define C1SPHOME
      1  "SPEAK SPANISH AT HOME"  
      2  "DON'T SPEAK SPANISH AT HOME"  
;
   label define C2ASMTMM
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
;
   label define C2ASMTYY
      1999  "1999"  
;
   label define C3ASMTMM
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define C3ASMTST
      1  "COMPLETELY SCORABLE ASSESSMENT DATA"  
      2  "PARTIALLY COMPLETED ASSESSMENT DATA"  
      3  "LANG MINORITY (NOT SPANISH)-NOT ASSESSED"  
      4  "CHILD W/ DISABILITY, NOT ASSESSED"  
      5  "NONRESPONDENT"  
;
   label define C3ASMTYY
      1999  "1999"  
      -9  "NOT ASCERTAINED"  
;
   label define C3SCREEN
      1  "SPEAK NON-ENGLISH LANGUAGE AT HOME"  
      2  "SPEAK ENGLISH AT HOME"  
;
   label define C3SPASMT
      1  "YES"  
      2  "NO"  
;
   label define C3SPHOME
      1  "SPEAK SPANISH AT HOME"  
      2  "DON'T SPEAK SPANISH AT HOME"  
;
   label define C4ASMTMM
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
;
   label define C4ASMTYY
      2000  "2000"  
;
   label define C5_280F
      1  "KINDERGARTEN"  
      2  "FIRST GRADE"  
      3  "SECOND GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "UNGRADED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_281F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_324F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_325F
      1  "FIRE DRILL"  
      2  "BOMB THREAT"  
      3  "CLASS"  
      4  "LUNCH PERIOD"  
      5  "RECESS"  
      6  "WATER/BATHROOM BREAK"  
      7  "ANOTHER PERSON"  
      8  "RAN OUT OF TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_326F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_327F
      1  "NOISE"  
      2  "ANOTHER STUDENT/PERSON"  
      3  "ANNOUNCEMENT/INTERCOM/PA"  
      4  "CHILD TIRED"  
      5  "CHILD ACTIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_329F
      1  "YES (AT LEAST ONE ACCOMMODATION PROVIDED)"  
      2  "NO (NO ACCOMMODATIONS PROVIDED)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_330F
      1  "SETTING"  
      2  "SCHEDULING/TIMING"  
      3  "HEALTH CARE AIDE"  
      4  "ASSISTIVE DEVICE"  
      5  "GLASSES"  
      6  "HEARING AID"  
      7  "IEP"  
      91  "OTHER SPECIFY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_331F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_332F
      1  "SCHOOL STAFF"  
      2  "PARENT"  
      3  "DATA COLLECTION STAFF"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_333F
      1  "VERY LOW"  
      2  "LOW"  
      3  "AVERAGE"  
      4  "HIGH"  
      5  "VERY HIGH"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_334F
      1  "VERY UNCOOPERATIVE"  
      2  "UNCOOPERATIVE"  
      3  "MATTER OF FACT"  
      4  "COOPERATIVE"  
      5  "VERY COOPERATIVE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_335F
      1  "UNABLE TO ATTEND"  
      2  "DIFFICULTY ATTENDING"  
      3  "ATTENTIVE"  
      4  "VERY ATTENTIVE"  
      5  "COMPLETE AND FULL ATTENTION"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_336F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_397F
      1  "RAN OUT OF TIME"  
      2  "CHILD ILL/UPSET/FATIGUED"  
      3  "CHILD S MENTAL/PHYSICAL LIMITATION"  
      4  "LANGUAGE PROBLEM"  
      5  "NEED TO ENTER SDQ"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_398F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5_5F
      1  "FIRST OR SECOND GRADE"  
      2  "THIRD TO FIFTH GRADE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C5ASMTMM
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
;
   label define C5ASMTST
      1  "COMPLETELY SCORABLE ASSESSMENT DATA"  
      2  "PARTIALLY COMPLETED ASSESSMENT DATA"  
      4  "CHILD W/ DISABILITY, NOT ASSESSED"  
      5  "NONRESPONDENT"  
;
   label define C5ASMTYY
      2002  "2002"  
;
   label define C6ASMTMM
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      -9  "NOT ASCERTAINED"  
;
   label define C6ASMTST
      1  "COMPLETELY SCORABLE ASSESSMENT DATA"  
      2  "PARTIALLY COMPLETED ASSESSMENT DATA"  
      4  "CHILD W/ DISABILITY, NOT ASSESSED"  
      5  "NONRESPONDENT"  
;
   label define C6ASMTYY
      2004  "2004"  
      -9  "NOT ASCERTAINED"  
;
   label define C6NONRES
      1  "RAN OUT OF TIME"  
      2  "CHILD ILL/UPSET/FATIGUED"  
      3  "CHILD S MENTAL/PHYSICAL LIMITATION"  
      4  "LANGUAGE PROBLEM"  
      5  "NEED TO ENTER SDQ"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
;
   label define CAPISTAT
      60  "COMPLETE BY TELEPHONE - ENGLISH"  
      61  "COMPLETE BY TELEPHONE - SPANISH"  
      62  "COMPLETE BY TELEPHONE - OTHER LANGUAGE"  
      63  "COMPLETE IN-PERSON - ENGLISH"  
      64  "COMPLETE IN-PERSON - SPANISH"  
      65  "COMPLETE IN-PERSON - OTHER LANGUAGE"  
      80  "FINAL BREAK-OFF (FSQ COMPLETE)"  
      90  "FINAL REFUSAL"  
      91  "DO NOT RECONTACT"  
      93  "UNABLE TO CONTACT PARENT"  
      94  "UNLOCATABLE PARENT"  
      95  "LANGUAGE/HEARING BARRIER"  
      96  "NON-RESPONSE - OTHER"  
      99  "NO PREVIOUS INTERVIEW CONDUCTED"  
;
   label define CPSOLDS
      0  "CHILD NOT IDENTIFIED AS NEEDING OLDS"  
      1  "CHILD PASSED OLDS IN ROUND 1"  
      2  "CHILD PASSED OLDS IN ROUND 2"  
      3  "CHILD PASSED OLDS IN ROUND 3"  
      4  "CHILD PASSED OLDS IN ROUND 4"  
      9  "CHILD DID NOT PASS THE OLDS BY ROUND 4"  
;
   label define CREGION
      1  "NORTHEAST"  
      2  "MIDWEST"  
      3  "SOUTH"  
      4  "WEST"  
      -9  "NOT ASCERTAINED"  
;
   label define CS_TYPE
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC/DOD/BIA"  
;
   label define DOBMM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define ELIG
      1  "CHILD ELIGIBLE"  
      2  "CHILD INELIGIBLE-OUT OF SCOPE"  
      3  "CHILD INELIGIBLE-MOVED OUT OF COUNTRY"  
      4  "CHILD INELIGIBLE-DECEASED"  
      5  "CHILD IS MOVER, NOT FOLLOWED"  
;
   label define F1CLASS
      1  "AM - MORNING"  
      2  "PM - AFTERNOON"  
      3  "AD - ALL DAY"  
;
   label define F2CLASS
      1  "AM - MORNING"  
      2  "PM - AFTERNOON"  
      3  "AD - ALL DAY"  
      -9  "NOT ASCERTAINED"  
;
   label define F6MTHSCI
      1  "MATH"  
      2  "SCIENCE"  
;
   label define F6SPECS
      1  "CHILD GOT SPECIAL EDUCATION SERVICES"  
      2  "CHILD DID NOT GET SPECIAL EDUCATION SERVICES"  
      -9  "NOT ASCERTAINED"  
;
   label define F6YRRND
      1  "YEAR ROUND SCHOOL"  
      2  "NOT YEAR ROUND SCHOOL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define G6ABIL
      1  "NEVER"  
      2  "SELDOM"  
      3  "USUALLY"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6ABILTY
      1  "PRIMARILY HIGH ABILITY"  
      2  "PRIMARILY AVERAGE ABILITY"  
      3  "PRIMARILY LOW ABILITY"  
      4  "WIDELY MIXED ABILITY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6ASSMT
      1  "CHILD DID NOT PARTICIPATE"  
      2  "CHILD PARTICIPATED TO A LIMITED DEGREE"  
      3  "CHILD PARTICIPATED FULLY"  
      4  "NO SCHOOLWIDE ASSESSMENTS AT THIS GRADE LVL"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define G6BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6BORROW
      0  "NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6CHCLDS
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6COMPTR
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6CORERD
      1  "PRIMARILY BASAL"  
      2  "PRIMARILY TRADE BOOKS"  
      3  "BOTH BASAL AND TRADE BOOKS"  
      4  "NEITHER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6COUNSL
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6DIVRD
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6EXPOST
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6GOTOLI
      0  "NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      1  "ONCE A MONTH OR LESS"  
      2  "TWO OR THREE TIMES A MONTH"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6GRRDCL
      1  "UNGRADED"  
      2  "2ND"  
      3  "3RD"  
      4  "4TH"  
      5  "5TH"  
      6  "6TH"  
      7  "7TH"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6HETGRP
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6INDVDL
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6INFMTS
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6INFO
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6INFORM
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6LRXENG
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6MECHAN
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6MINRD
      1  "1-15 MINUTES/DAY"  
      2  "16-30 MINUTES/DAY"  
      3  "31-60 MINUTES/DAY"  
      4  "MORE THAN 60 MINUTES/DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6MLTSTR
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6MTSTF
      1  "SEVERAL TIMES A WEEK"  
      2  "SEVERAL TIMES A MONTH"  
      3  "ONCE A MONTH"  
      4  "A FEW TIMES OVER THE SCHOOL YEAR"  
      5  "ONCE"  
      6  "NEVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6NARR
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6PARCON
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G6PERSUA
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G6PLEP
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G6PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G6Q2931F
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RALOUD
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RDFLN
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RDINFO
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RDLIT
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RDTASK
      1  "ALMOST ALL OF THE TIME"  
      2  "AT LEAST TWO-THIRDS OF THE TIME"  
      3  "AT LEAST ONE-THIRD OF THE TIME"  
      4  "LITTLE OR NO TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6REFLWR
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6REGCON
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RETCLS
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RETGRA
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6RTLANG
      1  "FAR BELOW AVERAGE"  
      2  "BELOW AVERAGE"  
      3  "AVERAGE"  
      4  "ABOVE AVERAGE"  
      5  "FAR ABOVE AVERAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6SGRDG
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6SMLGRP
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6SPEAK
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6SPEDRE
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6STRPLY
      1  "A LOT LESS ACTIVE THAN MOST"  
      2  "A LITTLE LESS ACTIVE THAN MOST"  
      3  "ABOUT THE SAME AS MOST"  
      4  "A LITTLE MORE ACTIVE THAN MOST"  
      5  "A LOT MORE ACTIVE THAN MOST"  
      6  "CHILD NOT OBSERVED IN STRUCTURED PLAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6TT1RD
      1  "YES"  
      2  "NO"  
      3  "NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6TTRRD
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6UNPLAY
      1  "A LOT LESS ACTIVE THAN MOST"  
      2  "A LITTLE LESS ACTIVE THAN MOST"  
      3  "ABOUT THE SAME AS MOST"  
      4  "A LITTLE MORE ACTIVE THAN MOST"  
      5  "A LOT MORE ACTIVE THAN MOST"  
      6  "CHILD NOT OBSERVED IN UNSTRUCTURED PLAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6VOLUNT
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6WHLCLS
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G6YYCOM
      2004  "2004"  
;
   label define GENDER
      1  "MALE"  
      2  "FEMALE"  
      -9  "NOT ASCERTAINED"  
;
   label define HSATTEND
      1  "CENTER NOT LOCATABLE"  
      2  "CENTER DID NOT RESPOND"  
      3  "CENTER HEAD START, CHILD ATTENDED 1997-98"  
      4  "CENTER HEAD START, CHILD ATTENDED, NOT 1997-98"  
      5  "CENTER HEAD START, CHILD NEVER ATTENDED"  
      6  "CENTER NOT HEAD START, CHILD DID ATTEND"  
      7  "CENTER HS & NON-HS, CHILD IN NON-HS 1997-98"  
;
   label define HSCHECK
      1  "YES"  
      2  "NO"  
;
   label define InGrade
      1  "FIRST TO FOURTH GRADE"  
      2  "FIFTH OR SIXTH GRADE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ACCPT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ADTRN
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ALLKN
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ARTMA
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61BEHAV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61BULLY
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CLASP
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CLDNP
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CLMGM
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CLORG
      1  "SELF-CONTAINED CLASS"  
      2  "TEAM TEACHING"  
      3  "DEPARTMENTALIZED INSTRUCTION/PULL-OUT CLASS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CLSZO
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CMPHW
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CNTNL
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CNTRL
      1  "NO CONTROL"  
      2  "SLIGHT CONTROL"  
      3  "SOME CONTROL"  
      4  "MODERATE CONTROL"  
      5  "A GREAT DEAL OF CONTROL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMAR
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMEN
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMIN
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMKE
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMMT
      1  "NEVER"  
      2  "OCCASIONALLY"  
      3  "USUALLY"  
      4  "ALL THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMMU
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMSO
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61COMSU
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61CURRD
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61DEVLP
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61DISCH
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61EARLY
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61EDLEV
      1  "LESS THAN HIGH SCHOOL"  
      2  "HIGH SCHOOL DIPLOMA OR GED"  
      3  "ASSOCIATE'S DEGREE"  
      4  "BACHELOR'S DEGREE OR ABOVE"  
      8  "DON'T KNOW"  
      9  "NO PAID AIDES ASSIST IN MY CLASSROOM"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define J61EFFO
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ELEM
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ELEMC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ELMTC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ELSCC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ENCOU
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ENJOY
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ERLYC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ESL
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61ESLCT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61EVAL
      1  "SAME STANDARDS, EXCEPTIONS FOR NEEDS"  
      2  "DIFFERENT STANDARDS BASED ON TALENTS"  
      3  "EXACTLY THE SAME STANDARDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRDEC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRDEE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRDNE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRDOE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRDSE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRENG
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRESC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRINS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRLSC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRMAT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRMTE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRPSC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRRDL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61GRSCE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOWV"  
      -9  "NOT ASCERTAINED"  
;
   label define J61HGHST
      1  "HIGH SCHOOL/ASSOCIATE'S DEGREE/BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "EDUCATION SPECIALIST/PROF DIPLOMA/DOCTORATE"  
      -9  "NOT ASCERTAINED"  
;
   label define J61IGRPR
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61IMPRV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61INCLU
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61INDCH
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61JOBTS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61LEPIN
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61LEPTR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61LESPL
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61LUNCH
      0  "NONE"  
      1  "1-15 MINUTES"  
      2  "16-30 MINUTES"  
      3  "31-45 MINUTES"  
      4  "LONGER THAN 45 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MASSI
      1  "REGULAR CLASSROOM TEACHER"  
      2  "OTHER TEACHER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MAUSE
      1  "NOT AT ALL USEFUL"  
      2  "SLIGHTLY USEFUL"  
      3  "MODERATELY USEFUL"  
      4  "VERY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MISBH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MISSI
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MKDIF
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MTHDM
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MTHDR
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MTHDS
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MTHLA
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61MUSIC
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61NOTCA
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTAR
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTFO
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTMT
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTMU
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTRD
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTRE
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTSC
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTSO
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61OFTWR
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PAPRW
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PHSCN
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PLAYE
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PRCOM
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PRESS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PRIOR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PRREA
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61PSUPP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RAC5F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RDBOO
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RDKIT
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RDOTH
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RDPRO
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RDSPC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RDUSE
      1  "NOT AT ALL USEFUL"  
      2  "SLIGHTLY USEFUL"  
      3  "MODERATELY USEFUL"  
      4  "VERY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61RECES
      0  "NONE"  
      1  "1-15 MINUTES"  
      2  "16-30 MINUTES"  
      3  "31-45 MINUTES"  
      4  "LONGER THAN 45 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SCHPL
      1  "NO INFLUENCE"  
      2  "SLIGHT INFLUENCE"  
      3  "SOME INFLUENCE"  
      4  "MODERATE INFLUENCE"  
      5  "A GREAT DEAL OF INFLUENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SCHSP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SCKIT
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SCNDC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SCUSE
      1  "NOT AT ALL USEFUL"  
      2  "SLIGHTLY USEFUL"  
      3  "MODERATELY USEFUL"  
      4  "VERY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SEMTC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SESCC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SPECE
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SPEDC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61SSUSE
      1  "NOT AT ALL USEFUL"  
      2  "SLIGHTLY USEFUL"  
      3  "MODERATELY USEFUL"  
      4  "VERY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61STNDL
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61STNDR
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TCHCT
      1  "REGULAR OR STANDARD STATE CERTIFICATE OR ADVANCED PROFESSIONAL CERTIFICATE"  
      2  "PROBATIONARY CERTIFICATE"  
      3  "PROVISIONAL OR OTHER TYPE OF CERTIFICATION"  
      4  "TEMPORARY CERTIFICATE"  
      5  "EMERGENCY CERTIFICATE OR WAIVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TCHRM
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TEACH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TIME
      0  "NONE"  
      1  "10 MINUTES"  
      2  "20 MINUTES"  
      3  "30 MINUTES"  
      4  "MORE THAN 30 MINUTES"  
      5  "I DON'T TEACH THIS SUBJECT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TOCLA
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TOSTN
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      0  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TSTSC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TSTUS
      1  "NOT USEFUL"  
      2  "SOMEWHAT USEFUL"  
      3  "VERY USEFUL"  
      4  "EXTREMELY USEFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TVWTC
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXART
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXFOR
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXMTH
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXMUS
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXPE
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXRDL
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXREF
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXSCI
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXSOC
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXSPE
      1  "DO NOT PARTICIPATE IN PHYSICAL EDUCATION"  
      2  "1-15 MINUTES PER DAY"  
      3  "16-30 MINUTES PER DAY"  
      4  "31-60 MINUTES PER DAY"  
      5  "MORE THAN 60 MINUTES PER DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXTBK
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61TXWRT
      1  "1-30 MINUTES A DAY"  
      2  "31-60 MINUTES A DAY"  
      3  "61-90 MINUTES A DAY"  
      4  "MORE THAN 90 MINUTES A DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDEC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDEE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDEN
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDES
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDIN
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDLS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDME
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDMT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDNE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDOE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDPS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDRD
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDSC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61UNDSE
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61VCR
      0  "NOT AVAILABLE"  
      1  "NEVER"  
      2  "ONCE A MONTH OR LESS"  
      3  "TWO OR THREE TIMES A MONTH"  
      4  "ONCE OR TWICE A WEEK"  
      5  "THREE OR FOUR TIMES A WEEK"  
      6  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61WRKSH
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61WRKSM
      1  "NEVER"  
      2  "ONE OR TWO TIMES A YEAR"  
      3  "ONE OR TWO TIMES A MONTH"  
      4  "ONE OR TWO TIMES A WEEK"  
      5  "THREE OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61XSTDT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J61YYCOM
      2004  "2004"  
;
   label define K2001F
      1  "SATISFACTORY"  
      2  "UNSATISFACTORY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2002F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2003F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2004F
      1  "SATISFACTORY"  
      2  "UNSATISFACTORY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2005F
      1  "YES"  
      2  "NO"  
      3  "YES, BUT NOT ENFORCED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2006F
      1  "VERY SAFE"  
      2  "SAFE"  
      3  "UNSAFE"  
      4  "VERY UNSAFE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2007F
      0  "NONE"  
      1  "A LITTLE"  
      2  "SOME"  
      3  "A LOT"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2009F
      1  "NONE"  
      2  "A FEW (2-4 CHILDREN)"  
      3  "MANY (5-10 CHILDREN)"  
      4  "MOST (MORE THAN 10)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K2010F
      1  "STRONGLY AGREE"  
      2  "SOMEWHAT AGREE"  
      3  "SOMEWHAT DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4001F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4002F
      1  "SATISFACTORY"  
      2  "UNSATISFACTORY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4003F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4005F
      1  "YES"  
      2  "NO"  
      3  "YES, BUT NOT ENFORCED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4006F
      1  "VERY SAFE"  
      2  "SAFE"  
      3  "UNSAFE"  
      4  "VERY UNSAFE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4007F
      1  "NONE"  
      2  "A LITTLE"  
      3  "SOME"  
      4  "A LOT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4009F
      1  "NONE"  
      2  "A FEW (<20%)"  
      3  "MANY (20 -75%)"  
      4  "MOST (>75%)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K4010F
      1  "STRONGLY AGREE"  
      2  "SOMEWHAT AGREE"  
      3  "SOMEWHAT DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5CLDOBS
      1  "LESS THAN 35"  
      2  "35 - 59"  
      3  "60 - 99"  
      4  "100 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5Q2AF
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5Q2BF
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5Q3F
      1  "STRONGLY AGREE"  
      2  "SOMEWHAT AGREE"  
      3  "SOMEWHAT DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5Q4F
      1  "NONE"  
      2  "A FEW (<20%)"  
      3  "MANY (20%-75%)"  
      4  "MOST (>75%)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5Q5F
      1  "NONE"  
      2  "A LITTLE"  
      3  "SOME"  
      4  "A LOT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K5YYCOM
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6BARSO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6BOARD
      1  "NONE"  
      2  "A LITTLE"  
      3  "SOME"  
      4  "A LOT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6FENCEO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6FREXTS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6GRAFIT
      1  "NONE"  
      2  "A LITTLE"  
      3  "SOME"  
      4  "A LOT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6INTCMS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6LITTER
      1  "NONE"  
      2  "A LITTLE"  
      3  "SOME"  
      4  "A LOT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6ONSTRE
      1  "NONE"  
      2  "A LITTLE"  
      3  "SOME"  
      4  "A LOT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SCAMO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SEXITO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SEXITS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SIGNOO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SIGNOS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SIGNPO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SIGNPS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SPRNKO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6SPRNKS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define K6YYCOM
      2004  "2004"  
;
   label define KURBAN
      1  "CENTRAL CITY"  
      2  "URBAN FRINGE AND LARGE TOWN"  
      3  "SMALL TOWN AND RURAL"  
;
   label define L5SCHEYY
      2002  "2002"  
      -9  "NOT ASCERTAINED"  
;
   label define L5SYREYY
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define L5YY02F
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M64ESTIM
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6ABIL
      1  "NEVER"  
      2  "SELDOM"  
      3  "USUALLY"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6ABILTY
      1  "PRIMARILY HIGH ABILITY"  
      2  "PRIMARILY AVERAGE ABILITY"  
      3  "PRIMARILY LOW ABILITY"  
      4  "WIDELY MIXED ABILITY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6ALG
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6ALGEBR
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6ANALYT
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6CHCLDS
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6COMIDA
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6DIVIDE
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6DIVMTH
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "THREE OR FOUR TIMES A WEEK"  
      5  "DAILY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6ESTIM
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6FRAC
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6GEOM
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6GRPPTN
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6HETGRP
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6INDVDL
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MANGE
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MANIPU
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MATEST
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MCOMP
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MDISC
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MEASTL
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MEASUR
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MINMTH
      1  "1-15 MINUTES/DAY"  
      2  "16-30 MINUTES/DAY"  
      3  "31-60 MINUTES/DAY"  
      4  "MORE THAN 60 MINUTES/DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MSINST
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MTHCON
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6MWRITE
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6NUMOP
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PLACEV
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PLCVL
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PLEP
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PRBLIF
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PROBLM
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6PRSOLV
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6RDFRAC
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6RTMTH
      1  "FAR BELOW AVERAGE"  
      2  "BELOW AVERAGE"  
      3  "AVERAGE"  
      4  "ABOVE AVERAGE"  
      5  "FAR ABOVE AVERAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6SGMTH
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6SHAPE
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6SMLGRP
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6STAT
      1  "A LOT"  
      2  "SOME"  
      3  "A LITTLE"  
      4  "NONE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6STRAT
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6SUBTRA
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6TEXTS
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6TT1MTH
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6TTRMTH
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6USECAL
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6VISUAL
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6WHLCLS
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M6YYCOM
      2004  "2004"  
;
   label define N6ABIL
      1  "NEVER"  
      2  "SELDOM"  
      3  "USUALLY"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6ABILTY
      1  "PRIMARILY HIGH ABILITY"  
      2  "PRIMARILY AVERAGE ABILITY"  
      3  "PRIMARILY LOW ABILITY"  
      4  "WIDELY MIXED ABILITY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6CHCLDS
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6CLSSFY
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6COMSC
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6EXPLN
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6HETGRP
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6HYPOTH
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6INDVDL
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6LIFSCI
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N6PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N6PHYSCI
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6PLEP
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N6PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N6PRINCP
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6RTSKIL
      1  "FAR BELOW AVERAGE"  
      2  "BELOW AVERAGE"  
      3  "AVERAGE"  
      4  "ABOVE AVERAGE"  
      5  "FAR ABOVE AVERAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCANAL
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCCOMP
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCCONC
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCFACT
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCHAND
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCIDEA
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCINNW
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCINT
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCIPRD
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCITXT
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCLAB
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCLIBR
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCPROB
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCPROJ
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCREL
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCRESL
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCTECH
      1  "HEAVY EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "LITTLE OR NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCTEST
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SCWRIT
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SEQUIP
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6SMLGRP
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6USEINT
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6WHLCLS
      1  "NO TIME"  
      2  "HALF HOUR OR LESS"  
      3  "ABOUT ONE HOUR"  
      4  "ABOUT TWO HOURS"  
      5  "THREE HOURS OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N6YYCOM
      2004  "2004"  
;
   label define P1001F
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      1  "JANUARY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1003F
      1998  "1998"  
      1999  "1999"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1004F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1005F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1006F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1007F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1008F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1009F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1010F
      1  "ASSIGNED"  
      2  "CHOSEN"  
      3  "ASSIGNED SCHOOL IS SCHOOL OF CHOICE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1011F
      1  "WHEN OLD ENOUGH"  
      2  "WAITED"  
      3  "ENTERED EARLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1012F
      1  "FIRST"  
      2  "SECOND"  
      3  "THIRD OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1013F
      1  "MORE THAN ONCE A WEEK"  
      2  "ONCE A WEEK OR LESS"  
      3  "NOT AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1014F
      1  "MORE THAN ONCE A WEEK"  
      2  "ONCE A WEEK OR LESS"  
      3  "NOT AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1015F
      1  "MORE THAN ONCE A WEEK"  
      2  "ONCE A WEEK OR LESS"  
      3  "NOT AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1016F
      1  "MORE THAN ONCE A WEEK"  
      2  "ONCE A WEEK OR LESS"  
      3  "NOT AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1017F
      1  "MORE THAN ONCE A WEEK"  
      2  "ONCE A WEEK OR LESS"  
      3  "NOT AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1018F
      1  "MORE THAN ONCE A WEEK"  
      2  "ONCE A WEEK OR LESS"  
      3  "NOT AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1019F
      1  "ESSENTIAL"  
      2  "VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT VERY IMPORTANT"  
      5  "NOT IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1020F
      1  "ESSENTIAL"  
      2  "VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT VERY IMPORTANT"  
      5  "NOT IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1021F
      1  "ESSENTIAL"  
      2  "VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT VERY IMPORTANT"  
      5  "NOT IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1022F
      1  "ESSENTIAL"  
      2  "VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT VERY IMPORTANT"  
      5  "NOT IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1023F
      1  "ESSENTIAL"  
      2  "VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT VERY IMPORTANT"  
      5  "NOT IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1024F
      1  "ESSENTIAL"  
      2  "VERY IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT VERY IMPORTANT"  
      5  "NOT IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1025F
      1  "TO RECEIVE LESS THAN HIGH SCHOOL DIPLOMA"  
      2  "TO GRADUATE FROM HIGH SCHOOL"  
      3  "TO ATTEND TWO OR MORE YEARS OF COLLEGE"  
      4  "TO FINISH A 4-OR-5-YEAR COLLEGE DEGREE"  
      5  "TO EARN A MASTER'S DEGREE OR EQUIVALENT"  
      6  "TO GET PH.D., MD, OR OTHER HIGHER DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1026F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1027F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1028F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1029F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1030F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1031F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1032F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1033F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1034F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1037F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1038F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1039F
      1  "YES"  
      2  "NO"  
      3  "HAVE NO TV"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1040F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1041F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1042F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1043F
      0  "NONE"  
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "MORE THAN FOUR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1044F
      0  "NONE"  
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "MORE THAN FOUR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1045F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1048F
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1049F
      1  "OWN HOME"  
      2  "OTHER HOME"  
      3  "BOTH/VARIES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1052F
      1  "ONE TO TWO MONTHS"  
      2  "THREE TO FIVE MONTHS"  
      3  "SIX TO EIGHT MONTHS"  
      4  "NINE TO TWELVE MONTHS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1054F
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "PER MONTH"  
      5  "PER YEAR"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1055F
      1  "CHILD ONLY"  
      2  "CHILD AND OTHER(S)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1057F
      1  "GRANDPARENT"  
      2  "AUNT"  
      3  "UNCLE"  
      4  "BROTHER"  
      5  "SISTER"  
      6  "ANOTHER RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1058F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1069F
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "PER MONTH"  
      5  "PER YEAR"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1070F
      1  "CHILD ONLY"  
      2  "CHILD AND OTHER(S)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1077F
      1  "FULL-DAY"  
      2  "PART-DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1083F
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "PER MONTH"  
      5  "PER YEAR"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1084F
      1  "CHILD ONLY"  
      2  "CHILD AND OTHER(S)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1091F
      1  "DAY CARE CENTER"  
      2  "NURSERY SCHOOL"  
      3  "PRESCHOOL"  
      4  "PREKINDERGARTEN PROGRAM"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1095F
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "PER MONTH"  
      5  "PER YEAR"  
      6  "OTHER (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1096F
      1  "CHILD ONLY"  
      2  "CHILD AND OTHER(S)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1106F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1107F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1109F
      1  "WEEKS"  
      2  "DAYS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1110F
      1  "NO"  
      2  "YES, A TWIN"  
      3  "YES, A TRIPLET"  
      4  "YES, MULTIPLE BIRTH (4 OR MORE)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1111F
      1  "YES, TWIN ALIVE (ALL OTHER CHDN ALIVE)"  
      2  "NO, TWIN DIED (ALL OTHER CHDN DIED)"  
      3  "MULTIPLE BIRTHS 1/MORE DIED, OTHERS LIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1112F
      1  "LIVES HERE"  
      2  "LIVES ELSEWHERE"  
      3  "SOME LIVE HERE/SOME LIVE ELSEWHERE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1113F
      1  "IDENTICAL"  
      2  "FRATERNAL"  
      3  "MULTI-BIRTH CHILD IS IDENTICAL TWIN"  
      4  "MULTI-BIRTH CHILD IS NOT IDENTICAL TWIN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1114F
      1  "FOCAL CHILD (CHILD'S NAME)"  
      2  "TWIN (OR OTHER CHILD IN MULTIPLE BIRTH)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1115F
      1  "FOCAL CHILD (CHILD'S NAME)"  
      2  "TWIN (OR OTHER CHILD IN MULTIPLE BIRTH)"  
      3  "BOTH WEIGHED ABOUT THE SAME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1116F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1117F
      1  "BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "AS WELL AS OTHER CHILDREN"  
      3  "SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1118F
      1  "BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "AS WELL AS OTHER CHILDREN"  
      3  "SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1119F
      1  "LESS ACTIVE THAN CHILDREN OF HIS/HER AGE"  
      2  "ABOUT AS ACTIVE"  
      3  "SLIGHTLY MORE ACTIVE"  
      4  "MORE ACTIVE THAN CHILDREN OF HIS/HER AGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1120F
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1121F
      1  "VERY HELPFUL"  
      2  "HELPFUL"  
      3  "NOT HELPFUL"  
      4  "NOT AT ALL HELPFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1122F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1124F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1126F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1128F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1130F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1132F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1134F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1136F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1138F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1140F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1142F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1144F
      1  "LEGAL SEPARATION"  
      2  "DIVORCE"  
      3  "DEATH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1145F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1147F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1149F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1164F
      1  "YES"  
      2  "NO"  
      3  "DON'T KNOW BIOLOGICAL MOTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1165F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1168F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1170F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1171F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1172F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1174F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1177F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1179F
      1  "YES"  
      2  "NO"  
      3  "FATHER DECEASED BEFORE CHILD BORN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1180F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1183F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1184F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1185F
      1  "LESS THAN A MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH/LAST SAME ADDRESS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1187F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1188F
      1  "LESS THAN A MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH/LAST SAME ADDRESS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1192F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1193F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1194F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1195F
      1  "ENGLISH"  
      2  "SPANISH"  
      3  "OTHER EUROPEAN LANGUAGES"  
      4  "ASIAN, PACIF ISLAND OR NATIVE AMER LANGUAGES"  
      5  "OTHER LANGUAGES OR CANNOT CHOOSE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1196F
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1197F
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1198F
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1199F
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1204F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1205F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1206F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1207F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1212F
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "VOC/TECH PROG AFTER HI SCHOOL NO DIPLOMA"  
      15  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      16  "SOME COLLEGE BUT NO DEGREE"  
      17  "ASSOCIATE 'S DEGREE"  
      18  "BACHELOR 'S DEGREE"  
      19  "GRADUATE/PROFESSIONAL SCHOOL - NO DEGREE"  
      20  "MASTER'S DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH.D., ED.D.)"  
      22  "PROFESSIONAL DEGREE - MD, ETC"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1213F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1214F
      1  "FULL-TIME"  
      2  "PART-TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1216F
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "VOC/TECH PROG AFTER HI SCHOOL NO DIPLOMA"  
      15  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      16  "SOME COLLEGE BUT NO DEGREE"  
      17  "ASSOCIATE 'S DEGREE"  
      18  "BACHELOR 'S DEGREE"  
      19  "GRADUATE/PROFESSIONAL SCHOOL - NO DEGREE"  
      20  "MASTER'S DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH.D., ED.D.)"  
      22  "PROFESSIONAL DEGREE - MD, ETC"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1218F
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "VOC/TECH PROG AFTER HI SCHOOL NO DIPLOMA"  
      15  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      16  "SOME COLLEGE BUT NO DEGREE"  
      17  "ASSOCIATE 'S DEGREE"  
      18  "BACHELOR 'S DEGREE"  
      19  "GRADUATE/PROFESSIONAL SCHOOL - NO DEGREE"  
      20  "MASTER'S DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH.D., ED.D.)"  
      22  "PROFESSIONAL DEGREE - MD, ETC"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1219F
      1  "FULL-TIME"  
      2  "PART-TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1222F
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "VOC/TECH PROG AFTER HI SCHOOL NO DIPLOMA"  
      15  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      16  "SOME COLLEGE BUT NO DEGREE"  
      17  "ASSOCIATE 'S DEGREE"  
      18  "BACHELOR 'S DEGREE"  
      19  "GRADUATE/PROFESSIONAL SCHOOL - NO DEGREE"  
      20  "MASTER'S DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH.D., ED.D.)"  
      22  "PROFESSIONAL DEGREE - MD, ETC"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1223F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1224F
      1  "MOSTLY AS (NUMERICAL AVERAGE OF 90-100)"  
      2  "MOSTLY AS AND BS (85-89)"  
      3  "MOSTLY BS (80-84)"  
      4  "MOSTLY BS AND CS (75-79)"  
      5  "MOSTLY CS (70-74)"  
      6  "MOSTLY CS AND DS (65-69)"  
      7  "MOSTLY DS AND LOWER (64 AND BELOW)"  
      8  "NEVER IN HIGH SCHOOL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1225F
      1  "ACADEMIC OR COLLEGE PREPARATORY"  
      2  "COMMERCIAL OR BUSINESS TRAINING"  
      3  "VOCATIONAL OR TECHNICAL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1226F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1227F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1228F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1229F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1230F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1231F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1232F
      1  "TAKEN"  
      2  "NOT TAKEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1237F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1238F
      1  "KEEPING HOUSE OR CARING FOR CHILDREN"  
      2  "GOING TO SCHOOL"  
      3  "RETIRED"  
      4  "UNABLE TO WORK"  
      5  "SOMETHING ELSE? WHAT WAS THAT? (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1239F
      01  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      02  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      03  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      04  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      05  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      06  "TEACHER, EXCEPT POSTSECONDARY"  
      07  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      08  "REGISTERED NURSES, PHARMACISTS"  
      09  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED, RETIRED, DISABLED, UNCLASSIFIED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1242F
      01  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      02  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      03  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      04  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      05  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      06  "TEACHER, EXCEPT POSTSECONDARY"  
      07  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      08  "REGISTERED NURSES, PHARMACISTS"  
      09  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED, RETIRED, DISABLED, UNCLASSIFIED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P1244F
      1  "MONTH"  
      2  "YEAR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2002F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2004F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2005F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2009F
      1  "WEEKS"  
      2  "DAYS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2010F
      1  "CORRECTABLE WITH GLASSES"  
      2  "IMPROVABLE WITH GLASSES"  
      3  "NOT CORRECTABLE WITH GLASSES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2012F
      1  "MONTHS"  
      2  "YEARS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2013F
      1  "ENGLISH"  
      2  "SPANISH"  
      3  "OTHER EUROPEAN LANGUAGES"  
      4  "ASIAN, PACIF ISLANDER OR NATIVE AMER LANGUAGES"  
      5  "OTHER LANGUAGES OR CANNOT CHOOSE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2014F
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "SIXTH GRADE"  
      7  "SEVENTH GRADE"  
      8  "EIGHTH GRADE"  
      9  "NINTH GRADE"  
      10  "TENTH GRADE"  
      11  "ELEVENTH GRADE"  
      12  "TWELVETH GRADE, NO DIPLOMA"  
      13  "HIGH SCHOOL DISPLOMA"  
      14  "VOC/TECH PROG AFTER HS, NO DIPLOM"  
      15  "VOC/TECH PROG AFTER HS, DIPLOMA"  
      16  "SOME COLLEGE, NO DIPLOMA"  
      17  "ASSOCIATE DEGREE"  
      18  "BACHELOR'S DEGREEE"  
      19  "GRADUATE/PROFES SCHL, NO DEGREE"  
      20  "MASTERS DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH. D,EDD)"  
      22  "PROFESSIONAL DEGREE AFTER BA"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2015F
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "SIXTH GRADE"  
      7  "SEVENTH GRADE"  
      8  "EIGHTH GRADE"  
      9  "NINTH GRADE"  
      10  "TENTH GRADE"  
      11  "ELEVENTH GRADE"  
      12  "TWELVETH GRADE, NO DIPLOMA"  
      13  "HIGH SCHOOL DISPLOMA"  
      14  "VOC/TECH PROG AFTER HS, NO DIPLOM"  
      15  "VOC/TECH PROG AFTER HS, DIPLOMA"  
      16  "SOME COLLEGE, NO DIPLOMA"  
      17  "ASSOCIATE DEGREE"  
      18  "BACHELOR'S DEGREEE"  
      19  "GRADUATE/PROFES SCHL, NO DEGREE"  
      20  "MASTERS DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH. D,EDD)"  
      22  "PROFESSIONAL DEGREE AFTER BA"  
      23  "NO SPOUSE OR PARTNER IN THE HH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2016F
      1  "YES"  
      2  "NO"  
      3  "NO MOTHER IN HOUSEHOLD"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2017F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2018F
      1  "MOTHER"  
      2  "FATHER"  
      3  "BOTH"  
      4  "NEITHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2020F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2027F
      1  "DOES THIS VERY WELL"  
      2  "JUST OK"  
      3  "DOES NOT DO THIS AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2028F
      1  "LESS THAN 1/8TH MILE"  
      2  "1/8TH MILE - 1/4 MILES"  
      3  "MORE THAN 1/4 MILES, < 1/2 MILES"  
      4  "1/2 MILES TO < 1 MILE"  
      5  "1 MILE TO 2.5 MILES"  
      6  "2.6 MILES TO 5 MILES"  
      7  "5.1 MILES TO 7.5 MILES"  
      8  "7.6 MILES TO 10 MILES"  
      9  "11 MILES OR MORE"  
      91  "OTHER SPECIFY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2029F
      1  "NEVER"  
      2  "ONE OR TWO TIMES"  
      3  "THREE OR MORE TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2031F
      1  "WALK OR RIDE A BIKE"  
      2  "RIDE A BUS"  
      3  "DROPPED OFF BY A PARENT"  
      4  "DROPPED OFF BY DAY CARE PROVIDER"  
      91  "OTHER SPECIFY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2032F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2033F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 - 6 TIMES A WEEK"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2034F
      1  "NOT AT ALL SAFE"  
      2  "SOMEWHAT SAFE"  
      3  "VERY SFE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2035F
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2040F
      1  "HAS USUAL BEDTIME"  
      2  "BEDTIME VARIES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2045F
      1  "NEVER"  
      2  "ALMOST NEVER"  
      3  "SEVERAL TIMES A YEAR"  
      4  "SEVERAL TIMES A MONTH"  
      5  "SEVERAL TIMES A WEEK OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2046F
      1  "VERY HAPPY"  
      2  "FAIRLY HAPPY"  
      3  "NOT TOO HAPPY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2047F
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE TO TWICE A MONTH"  
      4  "LESS OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2048F
      1  "OFTEN"  
      2  "SOMETIMES"  
      3  "HARDLY EVER"  
      4  "NEVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2049F
      0  "NO TIME"  
      1  "LESS THAN 5 MINUTES"  
      2  "5 - 9 MINUTES"  
      3  "10 - 15 MINUTES"  
      4  "16 - 30 MINUTES"  
      5  "31 - 45 MINUTES"  
      6  "46 MINUTES - ONE HOUR"  
      7  "MORE THAN 1 HOUR, LESS THAN 2 HOURS"  
      8  "2 - LESS THAN 3 HOURS"  
      9  "3 HOURS OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2050F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2051F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2052F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2053F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2054F
      1  "LESS THAN A MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH/LST SAME ADDRESS"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE FATHER/MOTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2059F
      1  "10 MINUTES OR LESS"  
      2  "11 - 30 MINUTES"  
      3  "31 - 59 MINUTES"  
      4  "1 - 2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2060F
      1  "SAME STATE"  
      2  "DIFFERENT STATE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2061F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2062F
      1  "LESS THAN A MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH/LST SAME ADDRESS"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE FATHER/MOTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2067F
      1  "10 MINUTES OR LESS"  
      2  "11 - 30 MINUTES"  
      3  "31 - 59 MINUTES"  
      4  "1 - 2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2068F
      1  "SAME STATE"  
      2  "DIFFERENT STATE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2077F
      1  "COMPLETELY TRUE"  
      2  "MOSTLY TRUE"  
      3  "SOMEWHAT TRUE"  
      4  "NOT AT ALL TRUE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2080F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2082F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2083F
      1  "NEVER"  
      2  "LESS THAN 6 MONTHS"  
      3  "6 MONTHS TO 1 YEAR"  
      4  "1 - 2 YEARS"  
      5  "MORE THAN 2 YEARS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2084F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2085F
      1  "MORE PHYSICALLY ACTIVE"  
      2  "LESS PHYSICALLY ACTIVE"  
      3  "ABOUT THE SAME AS OTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2086F
      1  "MORE THAN OTHER CHILDREN"  
      2  "LESS THAN OTHER CHILDREN"  
      3  "ABOUT THE SAME AS OTHER CHILDREN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2088F
      1  "MORE LIKE CHILD A"  
      2  "MORE LIKE CHILD B"  
      3  "SIMILAR TO BOTH CHILD A AND B"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2089F
      1  "COMPLETELY SATISFIED"  
      2  "VERY SATISFIED"  
      3  "FAIRLY SATISFIED"  
      4  "SOMEWHAT SATISFIED"  
      5  "VERY DISSATISFIED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2090F
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2091F
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2092F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2093F
      1  "ENOUGH FOOD & THE KINDS OF FOOD LIKED"  
      2  "ENOUGH FOOD, NOT ALWAYS FOOD LIKED"  
      3  "SOMETIMES DON'T HAVE ENOUGH FOOD"  
      4  "OFTEN WE DON'T HAVE ENOUGH FOOD"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2094F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2095F
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2096F
      1  "ALMOST EVERY MONTH"  
      2  "SOME MONTHS BUT NOT EVERY MONTH"  
      3  "IN ONLY ONE OR TWO MONTHS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2097F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2100F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2101F
      1  "FREE LUNCH"  
      2  "REDUCED PRICE LUNCH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2106F
      1  "$25,000 OR LESS"  
      2  "MORE THAN $25,000"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2107F
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2108F
      1  "$25,001 TO $30,000"  
      2  "$30,001 TO $35,000"  
      3  "$35,001 TO $40,000"  
      4  "$40,001 TO $50,000"  
      5  "$50,001 TO $75,000"  
      6  "OVER $75,000"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2109F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2111F
      1  "TELEPHONE"  
      2  "IN PERSON"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2112F
      1  "ENGLISH"  
      2  "SPANISH"  
      91  "ANOTHER LANGUAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P2FSSTAT
      1  "FOOD SECURE"  
      2  "FOOD INSECURE WITHOUT HUNGER"  
      3  "FOOD INSECURE WITH HUNGER (MODERATE)"  
      4  "FOOD INSECURE WITH HUNGER (SEVERE)"  
      -9  "NOT ASCERTAINED"  
;
   label define P2NUMTVF
      95  "NO TV"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3001F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3005F
      1  "WEEKS"  
      2  "DAYS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3006F
      1  "CORRECTABLE WITH GLASSES"  
      2  "IMPROVABLE WITH GLASSES"  
      3  "NOT CORRECTABLE WITH GLASSES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3008F
      1  "MONTHS"  
      2  "YEARS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3009F
      1  "ENGLISH"  
      2  "SPANISH"  
      3  "OTHER EUROPEAN LANGUAGES"  
      4  "ASIAN, PACIF ISLAND OR NATIVE AMER LANGUAGES"  
      5  "OTHER LANGUAGES OR CANNOT CHOOSE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3010F
      0  "NEVER BEEN IN SCHOOL"  
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "SIXTH GRADE"  
      7  "SEVENTH GRADE"  
      8  "EIGHTH GRADE"  
      9  "NINTH GRADE"  
      10  "TENTH GRADE"  
      11  "ELEVENTH GRADE"  
      12  "TWELVETH GRADE, NO DIPLOMA"  
      13  "HIGH SCHOOL DISPLOMA"  
      14  "VOC/TECH PROG AFTER HS, NO DIPLOM"  
      15  "VOC/TECH PROG AFTER HS, DIPLOMA"  
      16  "SOME COLLEGE, NO DIPLOMA"  
      17  "ASSOCIATE DEGREE"  
      18  "BACHELOR'S DEGREEE"  
      19  "GRADUATE/PROFES SCHL, NO DEGREE"  
      20  "MASTERS DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH. D,EDD)"  
      22  "PROFESSIONAL DEGREE AFTER BA"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3011F
      0  "NEVER BEEN IN SCHOOL"  
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "SIXTH GRADE"  
      7  "SEVENTH GRADE"  
      8  "EIGHTH GRADE"  
      9  "NINTH GRADE"  
      10  "TENTH GRADE"  
      11  "ELEVENTH GRADE"  
      12  "TWELVETH GRADE, NO DIPLOMA"  
      13  "HIGH SCHOOL DISPLOMA"  
      14  "VOC/TECH PROG AFTER HS, NO DIPLOM"  
      15  "VOC/TECH PROG AFTER HS, DIPLOMA"  
      16  "SOME COLLEGE, NO DIPLOMA"  
      17  "ASSOCIATE DEGREE"  
      18  "BACHELOR'S DEGREEE"  
      19  "GRADUATE/PROFES SCHL, NO DEGREE"  
      20  "MASTERS DEGREE (MA, MS)"  
      21  "DOCTORATE DEGREE (PH. D,EDD)"  
      22  "PROFESSIONAL DEGREE AFTER BA"  
      23  "NO SPOUSE OR PARTNER IN THE HH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3012F
      1  "YES"  
      2  "NO"  
      3  "NO MOTHER IN HOUSEHOLD"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3013F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3014F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3015F
      1  "EXCELLENT"  
      2  "GOOD"  
      3  "SATISFACTORY"  
      4  "UNSATISFACTORY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3016F
      1  "TO RECEIVE LESS THAN HIGH SCHOOL DIPLOMA"  
      2  "TO GRADUATE FROM HIGH SCHOOL"  
      3  "TO ATTEND TWO OR MORE YEARS OF COLLEGE"  
      4  "TO FINISH A 4-OR-5-YEAR COLLEGE DEGREE"  
      5  "TO EARN A MASTER'S DEGREE OR EQUIVALENT"  
      6  "TO GET PH.D., MD, OR OTHER HIGHER DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3017F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3019F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3022F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3023F
      1  "NEVER"  
      2  "ONCE OR TWICE"  
      3  "THREE TO SIX TIMES"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3024F
      1  "15 MINUTES OR LESS"  
      2  "16 - 29 MINUTES"  
      3  "30 - 45 MINUTES"  
      4  "45 MINUTES OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3025F
      1  "NEVER"  
      2  "ONCE OR TWICE"  
      3  "THREE TO SIX TIMES"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3026F
      1  "YES"  
      2  "NO"  
      3  "NO TV"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3037F
      1  "OFTEN"  
      2  "SOMETIMES"  
      3  "HARDLY EVER"  
      4  "NEVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3041F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3043F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3047F
      1  "REQUIRED BY THE SCHOOL"  
      2  "SUGGESTED BY THE SCHOOL"  
      3  "A PROGRAM PARENT DECIDED TO SEND CHILD TO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3055F
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3056F
      1  "GRANDPARENT"  
      2  "AUNT"  
      3  "UNCLE"  
      4  "BROTHER"  
      5  "SISTER"  
      6  "ANOTHER RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3057F
      1  "OWN HOME/CHILD'S HOME"  
      2  "OTHER HOME"  
      3  "BOTH/VARIES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3066F
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3071F
      1  "TELEPHONE"  
      2  "IN PERSON"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3072F
      1  "ENGLISH"  
      2  "SPANISH"  
      91  "ANOTHER LANGUAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4001F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4002F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4005F
      1 - 30  "1 - 30"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4006F
      0  "NOT ON LIST"  
      1  "UNITED STATES"  
      2  "AFGHANISTAN"  
      3  "ALBANIA"  
      4  "ALGERIA"  
      5  "AMERICAN SAMOA"  
      6  "ANDORRA"  
      7  "ANGOLA"  
      8  "ANGUILLA"  
      9  "ANTARCTICA"  
      10  "ANTIGUA AND BARBUDA"  
      11  "ARGENTINA"  
      12  "ARMENIA"  
      13  "ARUBA"  
      14  "ASHMORE AND CARTIER ISLANDS"  
      15  "AUSTRALIA"  
      16  "AUSTRIA"  
      17  "AZERBAIJAN"  
      18  "BAHAMAS, THE"  
      19  "BAHRAIN"  
      20  "BAKER ISLAND"  
      21  "BANGLADESH"  
      22  "BARBADOS"  
      23  "BASSAS DE INDIA"  
      24  "BELARUS"  
      25  "BELGIUM"  
      26  "BELIZE"  
      27  "BENIN"  
      28  "BERMUDA"  
      29  "BHUTAN"  
      30  "BOLIVIA"  
      31  "BOSNIA AND HERZEGOVINA"  
      32  "BOTSWANA"  
      33  "BOUVET ISLAND"  
      34  "BRAZIL"  
      35  "BRITISH INDIAN OCEAN TERRITORY"  
      36  "BRITISH VIRGIN ISLANDS"  
      37  "BRUNEI"  
      38  "BULGARIA"  
      39  "BURKINA FASO"  
      40  "BURMA"  
      41  "BURUNDI"  
      42  "CAMBODIA"  
      43  "CAMEROON"  
      44  "CANADA"  
      45  "CAPE VERDE"  
      46  "CAYMAN ISLANDS"  
      47  "CENTRAL AFRICAN REPUBLIC"  
      48  "CHAD"  
      49  "CHILE"  
      50  "CHINA"  
      51  "CHRISTMAS ISLAND"  
      52  "CLIPPERTON ISLAND"  
      53  "COCOS (KEELING) ISLANDS"  
      54  "COLOMBIA"  
      55  "COMOROS"  
      56  "CONGO, DEMOCRATIC REPUBLIC OF THE"  
      57  "CONGO, REPUBLIC OF THE"  
      58  "COOK ISLANDS"  
      59  "CORAL SEA ISLANDS"  
      60  "COSTA RICA"  
      61  "COTE D'IVOIRE"  
      62  "CROATIA"  
      63  "CUBA"  
      64  "CYPRUS"  
      65  "CZECH REPUBLIC"  
      66  "DEMOCRATIC REPUBLIC OF THE CONGO"  
      67  "DENMARK"  
      68  "DJIBOUTI"  
      69  "DOMINICA"  
      70  "DOMINICAN REPUBLIC"  
      71  "ECUADOR"  
      72  "EGYPT"  
      73  "EL SALVADOR"  
      74  "EQUATORIAL GUINEA"  
      75  "ERITREA"  
      76  "ESTONIA"  
      77  "ETHIOPIA"  
      78  "EUROPA ISLAND"  
      79  "FALKLAND ISLANDS (ISLAS MALVINAS)"  
      80  "FAROE ISLANDS"  
      81  "FIJI"  
      82  "FINLAND"  
      83  "FRANCE"  
      84  "FRENCH GUIANA"  
      85  "FRENCH POLYNESIA"  
      86  "FRENCH SOUTHERN AND ANTARCTIC LANDS"  
      87  "GABON"  
      88  "GAMBIA, THE"  
      89  "GEORGIA"  
      90  "GERMANY"  
      91  "GHANA"  
      92  "GIBRALTAR"  
      93  "GLORIOSO ISLANDS"  
      94  "GREECE"  
      95  "GREENLAND"  
      96  "GRENADA"  
      97  "GUADELOUPE"  
      98  "GUAM"  
      99  "GUATEMALA"  
      100  "GUERNSEY"  
      101  "GUINEA"  
      102  "GUINEA-BISSAU"  
      103  "GUYANA"  
      104  "HAITI"  
      105  "HEARD ISLAND AND MCDONALD ISLANDS"  
      106  "HONDURAS"  
      107  "HONG KONG"  
      108  "HOWLAND ISLAND"  
      109  "HUNGARY"  
      110  "ICELAND"  
      111  "INDIA"  
      112  "INDONESIA"  
      113  "IRAN"  
      114  "IRAQ"  
      115  "IRELAND"  
      116  "ISRAEL"  
      117  "ITALY"  
      118  "JAMAICA"  
      119  "JAN MAYEN"  
      120  "JAPAN"  
      121  "JARVIS ISLAND"  
      122  "JERSEY"  
      123  "JOHNSTON ATOLL"  
      124  "JORDAN"  
      125  "JUAN DE NOVA ISLAND"  
      126  "KAZAKHSTAN"  
      127  "KENYA"  
      128  "KINGMAN REEF"  
      129  "KIRIBATI"  
      130  "KOREA, NORTH"  
      131  "KOREA, SOUTH"  
      132  "KUWAIT"  
      133  "KYRGYZSTAN"  
      134  "LAOS"  
      135  "LATVIA"  
      136  "LEBANON"  
      137  "LESOTHO"  
      138  "LIBERIA"  
      139  "LIBYA"  
      140  "LIECHTENSTEIN"  
      141  "LITHUANIA"  
      142  "LUXEMBOURG"  
      143  "MACAU"  
      144  "MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF"  
      145  "MADAGASCAR"  
      146  "MALAWI"  
      147  "MALAYSIA"  
      148  "MALDIVES"  
      149  "MALI"  
      150  "MALTA"  
      151  "MAN, ISLE OF"  
      152  "MARIANA ISLAND"  
      153  "MARSHALL ISLANDS"  
      154  "MARTINIQUE"  
      155  "MAURITANIA"  
      156  "MAURITIUS"  
      157  "MAYOTTE"  
      158  "MEXICO"  
      159  "MICRONESIA, FEDERATED STATES OF"  
      160  "MIDWAY ISLANDS"  
      161  "MOLDOVA"  
      162  "MONACO"  
      163  "MONGOLIA"  
      164  "MONTSERRAT"  
      165  "MOROCCO"  
      166  "MOZAMBIQUE"  
      167  "NAMIBIA"  
      168  "NAURU"  
      169  "NAVASSA ISLAND"  
      170  "NEPAL"  
      171  "NETHERLANDS"  
      172  "NETHERLANDS ANTILLES"  
      173  "NEW CALEDONIA"  
      174  "NEW ZEALAND"  
      175  "NICARAGUA"  
      176  "NIGER"  
      177  "NIGERIA"  
      178  "NIUE"  
      179  "NORFOLK ISLAND"  
      180  "NORTHERN MARIANA ISLANDS"  
      181  "NORWAY"  
      182  "OMAN"  
      183  "PAKISTAN"  
      184  "PALAU"  
      185  "PALMYRA ATOLL"  
      186  "PANAMA"  
      187  "PAPUA NEW GUINEA"  
      188  "PARACEL ISLANDS"  
      189  "PARAGUAY"  
      190  "PERU"  
      191  "PHILIPPINES"  
      192  "PITCAIRN ISLANDS"  
      193  "POLAND"  
      194  "PORTUGAL"  
      195  "PUERTO RICO"  
      196  "QATAR"  
      197  "REUNION"  
      198  "ROMANIA"  
      199  "RUSSIA"  
      200  "RWANDA"  
      201  "SAINT HELENA"  
      202  "SAINT KITTS AND NEVIS"  
      203  "SAINT LUCIA"  
      204  "SAINT PIERRA AND MIQUELON"  
      205  "SAINT VINCENT AND THE GRENADINES"  
      206  "SAMOA"  
      207  "SAN MARINO"  
      208  "SAO TOME AND PRINCIPE"  
      209  "SAUDI ARABIA"  
      210  "SENEGAL"  
      211  "SERBIA AND MONTENEGRO"  
      212  "SEYCHELLES"  
      213  "SIERRA LEONE"  
      214  "SINGAPORE"  
      215  "SLOVAKIA"  
      216  "SLOVENIA"  
      217  "SOLOMON ISLANDS"  
      218  "SOMALIA"  
      219  "SOUTH AFRICA"  
      220  "SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS"  
      221  "SPAIN"  
      222  "SPRATLY ISLANDS"  
      223  "SRI LANKA"  
      224  "SUDAN"  
      225  "SURINAME"  
      226  "SVALBARD"  
      227  "SWAZILAND"  
      228  "SWEDEN"  
      229  "SWITZERLAND"  
      230  "SYRIA"  
      231  "TAIWAN"  
      232  "TAJIKISTAN"  
      233  "TANZANIA"  
      234  "THAILAND"  
      235  "TOGO"  
      236  "TOKELAU"  
      237  "TONGA"  
      238  "TRINIDAD AND TOBAGO"  
      239  "TROMELIN ISLAND"  
      240  "TUNISIA"  
      241  "TURKEY"  
      242  "TURKMENISTAN"  
      243  "TURKS AND CAICOS ISLANDS"  
      244  "TUVALU"  
      245  "UGANDA"  
      246  "UKRAINE"  
      247  "UNITED ARAB EMIRATES"  
      248  "UNITED KINGDOM"  
      249  "U.S. VIRGIN ISLANDS"  
      250  "URUGUAY"  
      251  "UZBEKISTAN"  
      252  "VANUATU"  
      253  "VATICAN CITY"  
      254  "VENEZUELA"  
      255  "VIETNAM"  
      256  "WAKE ATOLL"  
      257  "WALLIS AND FUTUNA"  
      258  "WESTERN SAHARA"  
      259  "YEMEN"  
      260  "ZAMBIA"  
      261  "ZIMBABWE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4008F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4009F
      1  "MOTHER"  
      2  "FATHER"  
      3  "BOTH"  
      4  "NEITHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4010F
      1  "DOES THIS VERY WELL"  
      2  "JUST OK"  
      3  "DOESN'T DO THIS AT ALL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4012F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4014F
      1  "MUCH WORSE"  
      2  "A LITTLE WORSE"  
      3  "ABOUT THE SAME"  
      4  "A LITTLE BETTER"  
      5  "MUCH BETTER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4015F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4016F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4017F
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4020F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 - 6 TIMES A WEEK"  
      4  "EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4021F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4022F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 - 6 TIMES A WEEK"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4023F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "3 TO 6 TIMES A WEEK"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4028F
      1  "HAS USUAL BEDTIME"  
      2  "BEDTIME VARIES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4031F
      1  "A.M."  
      2  "P.M."  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4032F
      1  "NOT AT ALL SAFE"  
      2  "SOMEWHAT SAFE"  
      3  "VERY SFE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4033F
      1  "NEVER OR ALMOST NEVER"  
      2  "SEVERAL TIMES A YEAR"  
      3  "SEVERAL TIMES A MONTH"  
      4  "ONCE A WEEK"  
      5  "SEVERAL TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4034F
      1  "NEVER OR ALMOST NEVER"  
      2  "SEVERAL TIMES A YEAR"  
      3  "SEVERAL TIMES A MONTH"  
      4  "ONCE A WEEK"  
      5  "SEVERAL TIMES A WEEK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4035F
      1  "NEVER TRUE"  
      2  "SOMETIMES TRUE"  
      3  "ALWAYS TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4036F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4037F
      1  "GRANDPARENT"  
      2  "AUNT"  
      3  "UNCLE"  
      4  "BROTHER"  
      5  "SISTER"  
      6  "ANOTHER RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4038F
      1  "OWN HOME"  
      2  "OTHER HOME"  
      3  "BOTH/VARIES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4039F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4040F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4046F
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "BIWEEKLY"  
      5  "PER MONTH"  
      6  "PER YEAR"  
      91  "OTHER(SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4047F
      1  "CHILD ONLY"  
      2  "CHILD AND OTHERS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4050F
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4066F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4067F
      1  "LESS THAN A MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE FATHER/MOTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4069F
      1  "10 MINUTES OR LESS"  
      2  "11 - 30 MINUTES"  
      3  "31 - 59 MINUTES"  
      4  "1 - 2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4070F
      1  "SAME STATE"  
      2  "DIFFERENT STATE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4071F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4074F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4075F
      1  "LESS THAN A MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE FATHER/MOTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4077F
      1  "10 MINUTES OR LESS"  
      2  "11 - 30 MINUTES"  
      3  "31 - 59 MINUTES"  
      4  "1 - 2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4078F
      1  "SAME STATE"  
      2  "DIFFERENT STATE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4079F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4080F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4093F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4094F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4095F
      1  "BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "AS WELL AS OTHER CHILDREN"  
      3  "SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4096F
      1  "BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "AS WELL AS OTHER CHILDREN"  
      3  "SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4097F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4098F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4099F
      1  "LESS ACTIVE THAN CHILDREN OF HIS/HER AGE"  
      2  "ABOUT AS ACTIVE"  
      3  "SLIGHTLY MORE ACTIVE"  
      4  "A LOT MORE ACTIVE THAN CHILDREN OF HIS/HER AGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4100F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4101F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4102F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4103F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4104F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4105F
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4107F
      1  "VERY HELPFUL"  
      2  "HELPFUL"  
      3  "NOT HELPFUL"  
      4  "NOT AT ALL HELPFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4108F
      1  "NEVER"  
      2  "LESS THAN 6 MONTHS"  
      3  "6 MONTHS TO 1 YEAR"  
      4  "1 - 2 YEARS"  
      5  "MORE THAN 2 YEARS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4110F
      0  "NEVER WENT TO SCHOOL"  
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HS DIP./EQUIV. OR VOC/TECH PROG. AFTER HS - NO VOC/TECH DIP."  
      14  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      15  "SOME COLLEGE BUT NO DEGREE"  
      16  "ASSOCIATE'S DEGREE"  
      17  "BACHELOR'S DEGREE"  
      18  "GRADUATE OR PROFESSIONAL SCHOOL - NO DEGREE"  
      19  "MASTER'S DEGREE"  
      20  "DOCTORATE DEGREE"  
      21  "PROFESSIONAL DEGREE AFTER BA"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4111F
      1  "FULL-TIME"  
      2  "PART-TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4118F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4119F
      1  "KEEPING HOUSE OR CARING FOR CHILDREN"  
      2  "GOING TO SCHOOL"  
      3  "RETIRED"  
      4  "UNABLE TO WORK"  
      91  "SOMETHING ELSE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4123F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4126F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4127F
      1  "FREE LUNCH"  
      2  "REDUCED PRICE LUNCH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4130F
      1  "$25,000 OR LESS"  
      2  "MORE THAN $25,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4131F
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4133F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4135F
      1  "OWN YOUR OWN HOUSE OR CONDOMINIUM"  
      2  "RENT YOUR HOUSE OR APARTMENT"  
      3  "EXCHANGE SERVICES FOR HOUSING"  
      4  "NOT PAY FOR HOUSING"  
      5  "LIVE IN TEMPORARY HOUSING OR A SHELTER"  
      6  "HAVE ANOTHER TYPE OF ARRANGEMENT (SPECIFY)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4138F
      1  "CHILD'S HOME"  
      2  "CHILD'S SCHOOL"  
      3  "SOMEWHERE ELSE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4HPRACE
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P4PRIMNW
      0  "NO NON-PARENTAL CARE"  
      1  "RELATIVE CARE, CHILD'S HOME"  
      2  "RELATIVE CARE, OTHER'S HOME"  
      3  "NON-REL CARE, CHILD'S HOME"  
      4  "NON-REL CARE, OTHER HOME"  
      5  "CENTER-BASED PROGRAM"  
      6  "2 OR MORE PROGRAMS"  
      7  "LOCATION VARIES"  
      -9  "NOT ASCERTAINED"  
;
   label define P5C119F
      1  "LESS THAN 1000"  
      2  "1000 TO LESS THAN 2000"  
      3  "2000 TO LESS THAN 3000"  
      4  "3000 TO LESS THAN 4000"  
      5  "4000 TO LESS THAN 5000"  
      6  "5000 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P5FSSTAT
      1  "FOOD SECURE"  
      2  "FOOD INSECURE WITHOUT HUNGER"  
      3  "FOOD INSECURE WITH HUNGER (MODERATE)"  
      4  "FOOD INSECURE WITH HUNGER (SEVERE)"  
      -9  "NOT ASCERTAINED"  
;
   label define P5HPRACE
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P5INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P5LANGUA
      1  "ENGLISH"  
      2  "SPANISH"  
      91  "ANOTHER LANGUAGE"  
      -9  "NOT ASCERTAINED"  
;
   label define P5MMDIAG
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P5PRIMNW
      0  "NO NON-PARENTAL CARE"  
      1  "RELATIVE CARE, CHILD'S HOME"  
      2  "RELATIVE CARE, OTHER'S HOME"  
      3  "NON-REL CARE, CHILD'S HOME"  
      4  "NON-REL CARE, OTHER HOME"  
      5  "CENTER-BASED PROGRAM"  
      6  "2 OR MORE PROGRAMS"  
      7  "LOCATION VARIES"  
      -9  "NOT ASCERTAINED"  
;
   label define P5RESREL
      1  "BIOLOGICAL MOTHER"  
      2  "OTHER MOTHER TYPE"  
      3  "BIOLOGICAL FATHER"  
      4  "OTHER FATHER TYPE"  
      5  "NON-PARENT RELATIVE"  
      6  "NON-RELATIVE"  
      -9  "NOT ASCERTAINED"  
;
   label define P6ABSDAD
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define P6ABSMOM
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define P6AMORPM
      1  "A.M."  
      2  "P.M."  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6BEDTIM
      1  "HAS USUAL BEDTIME"  
      2  "BEDTIME VARIES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6BROTHE
      1  "FULL BROTHER"  
      2  "HALF BROTHER"  
      3  "STEP BROTHER"  
      4  "ADOPTIVE BROTHER"  
      5  "FOSTER BROTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6CAREFO
      1  "CHILD ONLY"  
      2  "CHILD AND OTHERS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6CHREAD
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "THREE TO SIX TIMES A WEEK"  
      4  "EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6COB
      0  "NOT ON LIST"  
      1  "NORTH AMERICA"  
      2  "EUROPE"  
      3  "ASIA"  
      4  "LATIN AMERICA"  
      5  "AFRICA"  
      6  "OCEANIA"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6COB2F
      0  "NOT ON LIST"  
      1  "UNITED STATES"  
      2  "AFGHANISTAN"  
      3  "ALBANIA"  
      4  "ALGERIA"  
      5  "AMERICAN SAMOA"  
      6  "ANDORRA"  
      7  "ANGOLA"  
      8  "ANGUILLA"  
      9  "ANTARCTICA"  
      10  "ANTIGUA AND BARBUDA"  
      11  "ARGENTINA"  
      12  "ARMENIA"  
      13  "ARUBA"  
      14  "ASHMORE AND CARTIER ISLANDS"  
      15  "AUSTRALIA"  
      16  "AUSTRIA"  
      17  "AZERBAIJAN"  
      18  "BAHAMAS, THE"  
      19  "BAHRAIN"  
      20  "BAKER ISLAND"  
      21  "BANGLADESH"  
      22  "BARBADOS"  
      23  "BASSAS DE INDIA"  
      24  "BELARUS"  
      25  "BELGIUM"  
      26  "BELIZE"  
      27  "BENIN"  
      28  "BERMUDA"  
      29  "BHUTAN"  
      30  "BOLIVIA"  
      31  "BOSNIA AND HERZEGOVINA"  
      32  "BOTSWANA"  
      33  "BOUVET ISLAND"  
      34  "BRAZIL"  
      35  "BRITISH INDIAN OCEAN TERRITORY"  
      36  "BRITISH VIRGIN ISLANDS"  
      37  "BRUNEI"  
      38  "BULGARIA"  
      39  "BURKINA FASO"  
      40  "BURMA"  
      41  "BURUNDI"  
      42  "CAMBODIA"  
      43  "CAMEROON"  
      44  "CANADA"  
      45  "CAPE VERDE"  
      46  "CAYMAN ISLANDS"  
      47  "CENTRAL AFRICAN REPUBLIC"  
      48  "CHAD"  
      49  "CHILE"  
      50  "CHINA"  
      51  "CHRISTMAS ISLAND"  
      52  "CLIPPERTON ISLAND"  
      53  "COCOS (KEELING) ISLANDS"  
      54  "COLOMBIA"  
      55  "COMOROS"  
      56  "CONGO, DEMOCRATIC REPUBLIC OF THE"  
      57  "CONGO, REPUBLIC OF THE"  
      58  "COOK ISLANDS"  
      59  "CORAL SEA ISLANDS"  
      60  "COSTA RICA"  
      61  "COTE D'IVOIRE"  
      62  "CROATIA"  
      63  "CUBA"  
      64  "CYPRUS"  
      65  "CZECH REPUBLIC"  
      66  "DEMOCRATIC REPUBLIC OF THE CONGO"  
      67  "DENMARK"  
      68  "DJIBOUTI"  
      69  "DOMINICA"  
      70  "DOMINICAN REPUBLIC"  
      71  "ECUADOR"  
      72  "EGYPT"  
      73  "EL SALVADOR"  
      74  "EQUATORIAL GUINEA"  
      75  "ERITREA"  
      76  "ESTONIA"  
      77  "ETHIOPIA"  
      78  "EUROPA ISLAND"  
      79  "FALKLAND ISLANDS (ISLAS MALVINAS)"  
      80  "FAROE ISLANDS"  
      81  "FIJI"  
      82  "FINLAND"  
      83  "FRANCE"  
      84  "FRENCH GUIANA"  
      85  "FRENCH POLYNESIA"  
      86  "FRENCH SOUTHERN AND ANTARCTIC LANDS"  
      87  "GABON"  
      88  "GAMBIA, THE"  
      89  "GEORGIA"  
      90  "GERMANY"  
      91  "GHANA"  
      92  "GIBRALTAR"  
      93  "GLORIOSO ISLANDS"  
      94  "GREECE"  
      95  "GREENLAND"  
      96  "GRENADA"  
      97  "GUADELOUPE"  
      98  "GUAM"  
      99  "GUATEMALA"  
      100  "GUERNSEY"  
      101  "GUINEA"  
      102  "GUINEA-BISSAU"  
      103  "GUYANA"  
      104  "HAITI"  
      105  "HEARD ISLAND AND MCDONALD ISLANDS"  
      106  "HONDURAS"  
      107  "HONG KONG"  
      108  "HOWLAND ISLAND"  
      109  "HUNGARY"  
      110  "ICELAND"  
      111  "INDIA"  
      112  "INDONESIA"  
      113  "IRAN"  
      114  "IRAQ"  
      115  "IRELAND"  
      116  "ISRAEL"  
      117  "ITALY"  
      118  "JAMAICA"  
      119  "JAN MAYEN"  
      120  "JAPAN"  
      121  "JARVIS ISLAND"  
      122  "JERSEY"  
      123  "JOHNSTON ATOLL"  
      124  "JORDAN"  
      125  "JUAN DE NOVA ISLAND"  
      126  "KAZAKHSTAN"  
      127  "KENYA"  
      128  "KINGMAN REEF"  
      129  "KIRIBATI"  
      130  "KOREA, NORTH"  
      131  "KOREA, SOUTH"  
      132  "KUWAIT"  
      133  "KYRGYZSTAN"  
      134  "LAOS"  
      135  "LATVIA"  
      136  "LEBANON"  
      137  "LESOTHO"  
      138  "LIBERIA"  
      139  "LIBYA"  
      140  "LIECHTENSTEIN"  
      141  "LITHUANIA"  
      142  "LUXEMBOURG"  
      143  "MACAU"  
      144  "MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF"  
      145  "MADAGASCAR"  
      146  "MALAWI"  
      147  "MALAYSIA"  
      148  "MALDIVES"  
      149  "MALI"  
      150  "MALTA"  
      151  "MAN, ISLE OF"  
      152  "MARIANA ISLAND"  
      153  "MARSHALL ISLANDS"  
      154  "MARTINIQUE"  
      155  "MAURITANIA"  
      156  "MAURITIUS"  
      157  "MAYOTTE"  
      158  "MEXICO"  
      159  "MICRONESIA, FEDERATED STATES OF"  
      160  "MIDWAY ISLANDS"  
      161  "MOLDOVA"  
      162  "MONACO"  
      163  "MONGOLIA"  
      164  "MONTSERRAT"  
      165  "MOROCCO"  
      166  "MOZAMBIQUE"  
      167  "NAMIBIA"  
      168  "NAURU"  
      169  "NAVASSA ISLAND"  
      170  "NEPAL"  
      171  "NETHERLANDS"  
      172  "NETHERLANDS ANTILLES"  
      173  "NEW CALEDONIA"  
      174  "NEW ZEALAND"  
      175  "NICARAGUA"  
      176  "NIGER"  
      177  "NIGERIA"  
      178  "NIUE"  
      179  "NORFOLK ISLAND"  
      180  "NORTHERN MARIANA ISLANDS"  
      181  "NORWAY"  
      182  "OMAN"  
      183  "PAKISTAN"  
      184  "PALAU"  
      185  "PALMYRA ATOLL"  
      186  "PANAMA"  
      187  "PAPUA NEW GUINEA"  
      188  "PARACEL ISLANDS"  
      189  "PARAGUAY"  
      190  "PERU"  
      191  "PHILIPPINES"  
      192  "PITCAIRN ISLANDS"  
      193  "POLAND"  
      194  "PORTUGAL"  
      195  "PUERTO RICO"  
      196  "QATAR"  
      197  "REUNION"  
      198  "ROMANIA"  
      199  "RUSSIA"  
      200  "RWANDA"  
      201  "SAINT HELENA"  
      202  "SAINT KITTS AND NEVIS"  
      203  "SAINT LUCIA"  
      204  "SAINT PIERRA AND MIQUELON"  
      205  "SAINT VINCENT AND THE GRENADINES"  
      206  "SAMOA"  
      207  "SAN MARINO"  
      208  "SAO TOME AND PRINCIPE"  
      209  "SAUDI ARABIA"  
      210  "SENEGAL"  
      211  "SERBIA AND MONTENEGRO"  
      212  "SEYCHELLES"  
      213  "SIERRA LEONE"  
      214  "SINGAPORE"  
      215  "SLOVAKIA"  
      216  "SLOVENIA"  
      217  "SOLOMON ISLANDS"  
      218  "SOMALIA"  
      219  "SOUTH AFRICA"  
      220  "SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS"  
      221  "SPAIN"  
      222  "SPRATLY ISLANDS"  
      223  "SRI LANKA"  
      224  "SUDAN"  
      225  "SURINAME"  
      226  "SVALBARD"  
      227  "SWAZILAND"  
      228  "SWEDEN"  
      229  "SWITZERLAND"  
      230  "SYRIA"  
      231  "TAIWAN"  
      232  "TAJIKISTAN"  
      233  "TANZANIA"  
      234  "THAILAND"  
      235  "TOGO"  
      236  "TOKELAU"  
      237  "TONGA"  
      238  "TRINIDAD AND TOBAGO"  
      239  "TROMELIN ISLAND"  
      240  "TUNISIA"  
      241  "TURKEY"  
      242  "TURKMENISTAN"  
      243  "TURKS AND CAICOS ISLANDS"  
      244  "TUVALU"  
      245  "UGANDA"  
      246  "UKRAINE"  
      247  "UNITED ARAB EMIRATES"  
      248  "UNITED KINGDOM"  
      249  "U.S. VIRGIN ISLANDS"  
      250  "URUGUAY"  
      251  "UZBEKISTAN"  
      252  "VANUATU"  
      253  "VATICAN CITY"  
      254  "VENEZUELA"  
      255  "VIETNAM"  
      256  "WAKE ATOLL"  
      257  "WALLIS AND FUTUNA"  
      258  "WESTERN SAHARA"  
      259  "YEMEN"  
      260  "ZAMBIA"  
      261  "ZIMBABWE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6COMPAA
      1  "LESS ACTIVE THAN OTHER CHILDREN OF HIS/HER AGE"  
      2  "ABOUT AS ACTIVE"  
      3  "SLIGHTLY MORE ACTIVE"  
      4  "A LOT MORE ACTIVE THAN OTHER CHILDREN OF HIS/HER AGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6COMPAT
      1  "BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "AS WELL AS OTHER CHILDREN"  
      3  "SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6CONTAC
      1  "LESS THAN ONE MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE (MOTHER/FATHER)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6CUR
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P6DADOCC
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P6DIAGNE
      1  "PANIC DISORDER"  
      2  "SEPARATION ANXIETY DISORDER"  
      3  "AGORAPHOBIA"  
      4  "SOCIAL PHOBIA"  
      5  "OBSESSIVE COMPULSIVE DISORDER"  
      6  "OTHER ANXIETY DISORDER"  
      7  "BIPOLAR DISORDER"  
      8  "OTHER DEPRESSIVE DISORDER"  
      9  "NO PROBLEM"  
      91  "OTHER(SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6FATHER
      1  "BIRTH FATHER"  
      2  "ADOPTIVE FATHER"  
      3  "STEP FATHER"  
      4  "FOSTER FATHER OR MALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6FSADST
      1  "FOOD SECURE"  
      2  "FOOD INSECURE WITHOUT HUNGER"  
      3  "FOOD INSECURE WITH HUNGER"  
      -9  "NOT ASCERTAINED"  
;
   label define P6FSCHST
      1  "FOOD SECURE OR FOOD INSECURE WITHOUT HUNGER AMONG CHILDREN"  
      2  "FOOD INSECURE WITH HUNGER AMONG CHILDREN"  
      -9  "NOT ASCERTAINED"  
;
   label define P6FSSC2F
      -6  "ZERO FOOD SECURITY RAW SCORE"  
      -9  "NOT ASCERTAINED"  
;
   label define P6FSSTAT
      1  "FOOD SECURE"  
      2  "FOOD INSECURE WITHOUT HUNGER"  
      3  "FOOD INSECURE WITH HUNGER"  
      -9  "NOT ASCERTAINED"  
;
   label define P6FULLTI
      1  "FULL-TIME"  
      2  "PART-TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6GRADES
      0  "NEVER WENT TO SCHOOL"  
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HS DIP./EQUIV. OR VOC/TECH PROG. AFTER HS - NO VOC/TECH DIP."  
      14  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      15  "SOME COLLEGE BUT NO DEGREE"  
      16  "ASSOCIATE'S DEGREE"  
      17  "BACHELOR'S DEGREE"  
      18  "GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      19  "MASTER'S DEGREE (MA, MS)"  
      20  "DOCTORATE DEGREE (PHD, EDD)"  
      21  "PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HAPPY
      1  "VERY HAPPY"  
      2  "FAIRLY HAPPY"  
      3  "NOT TOO HAPPY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HDAD
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT FATHER"  
;
   label define P6HDEMP
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HFAMIL
      1  "2 PARENTS PLUS SIBLINGS"  
      2  "2 PARENTS NO SIBLING"  
      3  "1 PARENT PLUS SIBLINGS"  
      4  "1 PARENT NO SIBLING"  
      5  "OTHER"  
;
   label define P6HMEMP
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HMOM
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT MOTHER"  
;
   label define P6HOMEWO
      1  "MOTHER"  
      2  "FATHER"  
      3  "SISTER OR BROTHER"  
      4  "GRANDPARENT"  
      5  "ANOTHER ADULT IN THE HOUSEHOLD"  
      6  "SOMEONE AT AN AFTER SCHOOL PROGRAM"  
      7  "ADULTS WHO DON'T LIVE IN THE HOUSEHOLD"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWACT
      1  "MORE THAN OTHER BOYS/GIRLS"  
      2  "LESS THAN OTHER BOYS/GIRLS"  
      3  "ABOUT THE SAME AS OTHER BOYS/GIRLS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWFAR
      1  "TO RECEIVE LESS THAN A HIGH SCHOOL DIPLOMA"  
      2  "TO GRADUATE FROM HIGH SCHOOL"  
      3  "TO ATTEND TWO OR MORE YEARS OF COLLEGE"  
      4  "TO FINISH A FOUR- OR FIVE-YEAR COLLEGE DEGREE"  
      5  "TO EARN A MASTER'S DEGREE OR EQUIVALENT"  
      6  "TO FINISH A PH.D., MD, OR OTHER ADVANCED DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWHEL
      1  "VERY HELPFUL"  
      2  "HELPFUL"  
      3  "NOT HELPFUL"  
      4  "NOT AT ALL HELPFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWMAN
      1  "10 MINUTES OR LESS"  
      2  "11-30 MINUTES"  
      3  "31-59 MINUTES"  
      4  "1-2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWPAY
      1  "LESS THAN 1000"  
      2  "1000 TO LESS THAN 2000"  
      3  "2000 TO LESS THAN 3000"  
      4  "3000 TO LESS THAN 4000"  
      5  "4000 TO LESS THAN 5000"  
      6  "5000 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWTRF
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWTRU
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HOWWET
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6HPARNT
      1  "BIOLOGICAL MOTHER AND BIOLOGICAL FATHER"  
      2  "BIOLOGICAL MOTHER AND OTHER FATHER (STEP-, ADOPTIVE, FOSTER)"  
      3  "BIOLOGICAL FATHER AND OTHER MOTHER (STEP-, ADOPTIVE, FOSTER)"  
      4  "BIOLOGICAL MOTHER ONLY"  
      5  "BIOLOGICAL FATHER ONLY"  
      6  "TWO ADOPTIVE PARENTS"  
      7  "SINGLE ADOPTIVE PARENT OR ADOPTIVE PARENT AND STEPPARENT"  
      8  "RELATED GUARDIAN(S)"  
      9  "UNRELATED GUARDIAN(S)"  
;
   label define P6HSCALE
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6INCOME
      1  "$25,000 OR LESS"  
      2  "MORE THAN $25,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6INTERV
      1  "ENGLISH"  
      2  "SPANISH"  
      91  "ANOTHER LANGUAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6JOI
      1  "JOINED ROUND 1"  
      2  "JOINED ROUND 2"  
      3  "JOINED ROUND 3"  
      4  "JOINED ROUND 4"  
      5  "JOINED ROUND 5"  
      6  "JOINED ROUND 6"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P6LASTWE
      1  "KEEPING HOUSE OR CARING FOR CHILDREN"  
      2  "GOING TO SCHOOL"  
      3  "RETIRED"  
      4  "UNABLE TO WORK"  
      91  "SOMETHING ELSE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MALEFE
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MARITA
      1  "MARRIED"  
      2  "SEPARATED"  
      3  "DIVORCED"  
      4  "WIDOWED"  
      5  "NEVER MARRIED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MODE
      1  "TELEPHONE"  
      2  "IN-PERSON"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MOMOCC
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MORELI
      1  "MORE LIKE CHILD A"  
      2  "MORE LIKE CHILD B"  
      3  "SIMILAR TO BOTH CHILD A AND CHILD B"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MOTHER
      1  "BIRTH MOTHER"  
      2  "ADOPTIVE MOTHER"  
      3  "STEP MOTHER"  
      4  "FOSTER MOTHER OR FEMALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6MOTHFA
      1  "MOTHER"  
      2  "FATHER"  
      3  "BOTH"  
      4  "NEITHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6NEVERO
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "THREE TO SIX TIMES A WEEK"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6NONREL
      1  "GIRLFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      2  "BOYFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      3  "FEMALE GUARDIAN"  
      4  "MALE GUARDIAN"  
      5  "DAUGHTER/SON OF PARENT'S PARTNER"  
      6  "OTHER RELATIVE OF PARENT'S PARTNER"  
      7  "OTHER NONRELATIVE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6NOTATF
      1  "NOT AT ALL"  
      2  "A FEW TIMES A MONTH"  
      3  "A FEW TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6NOTATT
      1  "NOT AT ALL"  
      2  "ONCE"  
      3  "TWICE"  
      4  "THREE OR MORE TIMES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6OFTDHW
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6OFTENI
      1  "ALMOST EVERY MONTH"  
      2  "SOME MONTHS, BUT NOT EVERY MONTH"  
      3  "IN ONLY 1 OR 2 MONTHS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6OFTENT
      1  "OFTEN"  
      2  "SOMETIMES"  
      3  "HARDLY EVER"  
      4  "NEVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6ONEFIV
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6ONEMON
      1  "LESS THAN ONE MONTH"  
      2  "LESS THAN A YEAR"  
      3  "1 TO 2 YEARS"  
      4  "3 TO 4 YEARS"  
      5  "MORE THAN 5 YEARS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6PER
      1  "RESPONDENT"  
      2  "FOCAL CHILD"  
      3  "TWIN"  
      -1  "NOT APPLICABLE"  
;
   label define P6PERTIM
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "BIWEEKLY"  
      5  "PER MONTH"  
      6  "PER YEAR"  
      91  "OTHER(SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6PERWEE
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6PHYSIC
      1  "MORE PHYSICALLY ACTIVE THAN OTHER BOYS/GIRLS"  
      2  "LESS PHYSICALLY ACTIVE THAN OTHER BOYS/GIRLS"  
      3  "ABOUT THE SAME AS OTHER BOYS/GIRLS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6PRIMNW
      0  "NO NON-PARENTAL CARE"  
      1  "RELATIVE CARE IN CHILD'S HOME"  
      2  "RELATIVE CARE IN ANOTHER HOME"  
      3  "NON-RELATIVE CARE IN CHILD'S HOME"  
      4  "NON-RELATIVE CARE IN ANOTHER HOME"  
      5  "CENTER-BASED PROGRAM"  
      6  "2 OR MORE PROGRAMS"  
      7  "LOCATION OF CARE VARIES"  
      -9  "NOT ASCERTAINED"  
;
   label define P6RDP
      1  "DEPARTED ROUND 1"  
      2  "DEPARTED ROUND 2"  
      3  "DEPARTED ROUND 3"  
      4  "DEPARTED ROUND 4"  
      5  "DEPARTED ROUND 5"  
      6  "DEPARTED ROUND 6"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P6RELATI
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NON-RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6RELMOS
      1  "GRANDPARENT"  
      2  "AUNT"  
      3  "UNCLE"  
      4  "BROTHER"  
      5  "SISTER"  
      6  "ANOTHER RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6RESREL
      1  "BIOLOGICAL MOTHER"  
      2  "OTHER MOTHER TYPE"  
      3  "BIOLOGICAL FATHER"  
      4  "OTHER FATHER TYPE"  
      5  "NON-PARENT RELATIVE"  
      6  "NON-RELATIVE"  
      -9  "NOT ASCERTAINED"  
;
   label define P6SAFE
      1  "NOT AT ALL SAFE"  
      2  "SOMEWHAT SAFE"  
      3  "VERY SAFE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6SCHOOA
      1  "ASSIGNED"  
      2  "CHOSEN"  
      3  "ASSIGNED SCHOOL IS SCHOOL OF CHOICE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6SCHOOL
      1  "FREE"  
      2  "REDUCED PRICE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6SISTER
      1  "FULL SISTER"  
      2  "HALF SISTER"  
      3  "STEP SISTER"  
      4  "ADOPTIVE SISTER"  
      5  "FOSTER SISTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6SPAN2F
      95  "NEVER SPANKED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6TIMEST
      1  "FIVE TIMES OR LESS"  
      2  "BETWEEN 6 AND 20 TIMES"  
      3  "BETWEEN 21 AND 50 TIMES"  
      4  "MORE THAN 50 TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6TIMETO
      1  "NEVER"  
      2  "LESS THAN 6 MONTHS"  
      3  "6 MONTHS TO ONE YEAR"  
      4  "1 TO 2 YEARS"  
      5  "MORE THAN 2 YEARS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6WHEREI
      1  "CHILD'S HOME"  
      2  "CHILD'S SCHOOL"  
      3  "SOMEWHERE ELSE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6WHOSEH
      1  "OWN HOME"  
      2  "OTHER HOME"  
      3  "BOTH/VARIES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P6WHYLEF
      1  "SEPARATION OR DIVORCE"  
      2  "ATTENDING COLLEGE OR BOARDING SCHOOL"  
      3  "LIVING ELSEWHERE FOR EMPLOYMENT-RELATED REASONS"  
      4  "DECEASED"  
      5  "MOVED ON"  
      6  "ROSTER ERROR"  
      7  "MOVED BACK WITH PARENTS"  
      91  "SOME OTHER REASON"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PAGREELE
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PAMORPM
      1  "A.M."  
      2  "P.M."  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PBEDTIME
      1  "HAS USUAL BEDTIME"  
      2  "BEDTIME VARIES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PC002F
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define PC008F
      1  "LIVING"  
      2  "DEAD"  
      9  "UNKNOWN"  
      -1  "NOT APPLICABLE"  
;
   label define PC010F
      1  "BIOLOGICAL"  
      2  "OTHER"  
      3  "NONE"  
;
   label define PC011F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT FATHER"  
;
   label define PC013F
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC014F
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC015F
      1  "2 PARENTS PLUS SIBLINGS"  
      2  "2 PARENTS NO SIBLING"  
      3  "1 PARENT PLUS SIBLINGS"  
      4  "1 PARENT NO SIBLING"  
      5  "OTHER"  
;
   label define PC018F
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC019F
      1  "NEVER SPEAKS NON-ENGLISH LANGUAGE"  
      2  "SOMETIMES SPEAKS NON-ENGLISH LANGUAGE"  
      3  "OFTEN SPEAKS NON-ENGLISH LANGUAGE"  
      4  "VERY OFTEN SPEAKS NON-ENGLISH LANGUAGE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC020F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT MOTHER"  
;
   label define PC021F
      1  "BIOLOGICAL MOTHER AND BIOLOGICAL FATHER"  
      2  "BIOLOGICAL MOTHER AND OTHER FATHER"  
      3  "OTHER MOTHER AND BIOLOGICAL FATHER"  
      4  "BIOLOGICAL MOTHER ONLY"  
      5  "BIOLOGICAL FATHER ONLY"  
      6  "2 ADOPTIVE PARENTS"  
      7  "1 ADOPTIVE (+ STEP)"  
      8  "RELATED GUARDIANS"  
      9  "UNRELATED GUARDIANS"  
;
   label define PC024F
      1  "BOTH ONLY SPEAK ENGLISH LANGUAGE"  
      2  "1 (OF 2) SPEAKS NON-ENGLISH LANGUAGE"  
      3  "BOTH ONLY SPEAK NON-ENGLISH LANGUAGE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC030F
      0  "NO NON-PARENTAL CARE"  
      1  "RELATIVE CARE, CHILD'S HOME"  
      2  "RELATIVE CARE, OTHER'S HOME"  
      3  "NON-REL CARE, CHILD'S HOME"  
      4  "NON-REL CARE, OTHER HOME"  
      5  "CENTER-BASED PROGRAM"  
      6  "2 OR MORE PROGRAMS"  
      7  "LOCATION VARIES"  
      -9  "NOT ASCERTAINED"  
;
   label define PC034F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT MOTHER"  
;
   label define PC042F
      1  "YES"  
      2  "NO"  
      3  "MOTHER HAS NEVER MARRIED"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC044F
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC047F
      1  "NON-ENGLISH"  
      2  "ENGLISH"  
      -9  "NOT ASCERTAINED"  
;
   label define PC048F
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC049F
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC052F
      0  "NO NON-PARENTAL CARE"  
      1  "RELATIVE CARE, CHILD'S HOME"  
      2  "RELATIVE CARE, OTHER'S HOME"  
      3  "NON-REL CARE, CHILD'S HOME"  
      4  "NON-REL CARE, OTHER HOME"  
      5  "HEAD START PROGRAM"  
      6  "CENTER-BASED PROGRAM"  
      7  "2 OR MORE PROGRAMS"  
      8  "LOCATION VARIES"  
      -9  "NOT ASCERTAINED"  
;
   label define PC054F
      1  "FIRST QUINTILE"  
      2  "SECOND QUINTILE"  
      3  "THIRD QUINTILE"  
      4  "FOURTH QUINTILE"  
      5  "FIFTH QUINTILE"  
;
   label define PC055F
      1  "FRATERNAL TWIN"  
      2  "IDENTICAL TWIN"  
      3  "HIGHER MULTIPLE"  
      9  "SINGLE BIRTH"  
      -9  "NOT ASCERTAINED"  
;
   label define PC056F
      1  "YES"  
      2  "NO"  
;
   label define PC058F
      1  "MARRIED"  
      2  "SEPARATED"  
      3  "DIVORCED"  
      4  "WIDOWED"  
      5  "NEVER MARRIED"  
      7  "NO BIO/ADOPTIVE PARENT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PC060F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT FATHER"  
;
   label define PC202F
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define PC208F
      1  "LIVING"  
      2  "DEAD"  
      9  "UNKNOWN"  
      -1  "NOT APPLICABLE"  
;
   label define PC210F
      1  "BIOLOGICAL"  
      2  "OTHER"  
      3  "NONE"  
;
   label define PC213F
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC214F
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC215F
      1  "2 PARENTS PLUS SIBLINGS"  
      2  "2 PARENTS NO SIBLING"  
      3  "1 PARENT PLUS SIBLINGS"  
      4  "1 PARENT NO SIBLING"  
      5  "OTHER"  
;
   label define PC218F
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC221F
      1  "BIOLOGICAL MOTHER AND BIOLOGICAL FATHER"  
      2  "BIOLOGICAL MOTHER AND OTHER FATHER"  
      3  "OTHER MOTHER AND BIOLOGICAL FATHER"  
      4  "BIOLOGICAL MOTHER ONLY"  
      5  "BIOLOGICAL FATHER ONLY"  
      6  "2 ADOPTIVE PARENTS"  
      7  "1 ADOPTIVE (+ STEP)"  
      8  "RELATED GUARDIANS"  
      9  "UNRELATED GUARDIANS"  
;
   label define PC230F
      0  "NO NON-PARENTAL CARE"  
      1  "RELATIVE CARE, CHILD'S HOME"  
      2  "RELATIVE CARE, OTHER'S HOME"  
      3  "NON-REL CARE, CHILD'S HOME"  
      4  "NON-REL CARE, OTHER HOME"  
      5  "CENTER-BASED PROGRAM"  
      6  "2 OR MORE PROGRAMS"  
      7  "LOCATION VARIES"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC234F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT MOTHER"  
;
   label define PC248F
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC249F
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC250F
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
;
   label define PC258F
      1  "MARRIED"  
      2  "SEPARATED"  
      3  "DIVORCED"  
      4  "WIDOWED"  
      5  "NEVER MARRIED"  
      7  "NO BIO/ADOPTIVE PARENT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PC260F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT FATHER"  
;
   label define PC450F
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC5001F
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define PC5003F
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC5004F
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC5005F
      1  "2 PARENTS PLUS SIBLINGS"  
      2  "2 PARENTS NO SIBLING"  
      3  "1 PARENT PLUS SIBLINGS"  
      4  "1 PARENT NO SIBLING"  
      5  "OTHER"  
;
   label define PC5006F
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC5007F
      1  "BIOLOGICAL MOTHER AND BIOLOGICAL FATHER"  
      2  "BIOLOGICAL MOTHER AND OTHER FATHER"  
      3  "OTHER MOTHER AND BIOLOGICAL FATHER"  
      4  "BIOLOGICAL MOTHER ONLY"  
      5  "BIOLOGICAL FATHER ONLY"  
      6  "2 ADOPTIVE PARENTS"  
      7  "1 ADOPTIVE (+ STEP)"  
      8  "RELATED GUARDIANS"  
      9  "UNRELATED GUARDIANS"  
;
   label define PC5008F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT MOTHER"  
;
   label define PC5009F
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PC5010F
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PC5011F
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
;
   label define PC5012F
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT FATHER"  
;
   label define PC5013F
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define PCAREFOR
      1  "CHILD ONLY"  
      2  "CHILD AND OTHERS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PCOMPA1F
      1  "LESS ACTIVE THAN OTHER CHILDREN OF HIS/HER AGE"  
      2  "ABOUT AS ACTIVE"  
      3  "SLIGHTLY MORE ACTIVE"  
      4  "A LOT MORE ACTIVE THAN OTHER CHILDREN OF HIS/HER AGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PCOMPA2F
      1  "BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "AS WELL AS OTHER CHILDREN"  
      3  "SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PCONTACT
      1  "LESS THAN ONE MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE (MOTHER/FATHER)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PCTNUM
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define PDIAGN3F
      1  "PANIC DISORDER"  
      2  "SEPARATION ANXIETY DISORDER"  
      3  "AGORAPHOBIA"  
      4  "SOCIAL PHOBIA"  
      5  "OBSESSIVE COMPULSIVE DISORDER"  
      6  "OTHER ANXIETY DISORDER"  
      7  "BIPOLAR DISORDER"  
      8  "OTHER DEPRESSIVE DISORDER"  
      91  "OTHER(SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PE_126F
      1  "SAME STATE"  
      2  "DIFFERENT STATE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PE_130F
      1  "EXCELLENT"  
      2  "VERYGOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PFIFTE2F
      1  "LESS THAN 15 MINUTES"  
      2  "15-30 MINUTES"  
      3  "MORE THAN 30 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PFULLTIM
      1  "FULL-TIME"  
      2  "PART-TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PGRADES
      0  "NEVER WENT TO SCHOOL"  
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HS DIP./EQUIV. OR VOC/TECH PROG. AFTER HS - NO VOC/TECH DIP."  
      14  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      15  "SOME COLLEGE BUT NO DEGREE"  
      16  "ASSOCIATE'S DEGREE"  
      17  "BACHELOR'S DEGREE"  
      18  "GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      19  "MASTER'S DEGREE (MA, MS)"  
      20  "DOCTORATE DEGREE (PHD, EDD)"  
      21  "PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHAPPY
      1  "VERY HAPPY"  
      2  "FAIRLY HAPPY"  
      3  "NOT TOO HAPPY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOUSING
      1  "OWN YOUR OWN HOUSE OR CONDOMINIUM"  
      2  "RENT YOUR HOUSE OR APARTMENT"  
      3  "EXCHANGE SERVICES FOR HOUSING"  
      4  "NOT PAY FOR HOUSING"  
      5  "LIVE IN TEMPORARY HOUSING OR A SHELTER"  
      6  "HAVE ANOTHER TYPE OF ARRANGEMENT (SPECIFY)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWACTI
      1  "MORE THAN OTHER BOYS/GIRLS"  
      2  "LESS THAN OTHER BOYS/GIRLS"  
      3  "ABOUT THE SAME AS OTHER BOYS/GIRLS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWFARE
      1  "TO RECEIVE LESS THAN A HIGH SCHOOL DIPLOMA"  
      2  "TO GRADUATE FROM HIGH SCHOOL"  
      3  "TO ATTEND TWO OR MORE YEARS OF COLLEGE"  
      4  "TO FINISH A FOUR- OR FIVE-YEAR COLLEGE DEGREE"  
      5  "TO EARN A MASTER'S DEGREE OR EQUIVALENT"  
      6  "TO FINISH A PH.D., MD, OR OTHER ADVANCED DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWHELP
      1  "VERY HELPFUL"  
      2  "HELPFUL"  
      3  "NOT HELPFUL"  
      4  "NOT AT ALL HELPFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWMANY
      1  "10 MINUTES OR LESS"  
      2  "11-30 MINUTES"  
      3  "31-59 MINUTES"  
      4  "1-2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWTR1F
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWTR2F
      1  "NEVER TRUE"  
      2  "SOMETIMES TRUE"  
      3  "ALWAYS TRUE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWTR3F
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWTR4F
      1  "NEVER TRUE"  
      2  "SOMETIMES TRUE"  
      3  "ALWAYS TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PHOWWE2F
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PINCOME
      1  "$25,000 OR LESS"  
      2  "MORE THAN $25,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PLASTWEE
      1  "KEEPING HOUSE OR CARING FOR CHILDREN"  
      2  "GOING TO SCHOOL"  
      3  "RETIRED"  
      4  "UNABLE TO WORK"  
      91  "SOMETHING ELSE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PMARITAL
      1  "MARRIED"  
      2  "SEPARATED"  
      3  "DIVORCED"  
      4  "WIDOWED"  
      5  "NEVER MARRIED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PMODE
      1  "TELEPHONE"  
      2  "IN-PERSON"  
      -9  "NOT ASCERTAINED"  
;
   label define PMORELIK
      1  "MORE LIKE CHILD A"  
      2  "MORE LIKE CHILD B"  
      3  "SIMILAR TO BOTH CHILD A AND CHILD B"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PMOTHFAT
      1  "MOTHER"  
      2  "FATHER"  
      3  "BOTH"  
      4  "NEITHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PMUCHWOR
      1  "MUCH WORSE"  
      2  "A LITTLE WORSE"  
      3  "ABOUT THE SAME"  
      4  "A LITTLE BETTER"  
      5  "MUCH BETTER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PNEVER1F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "THREE TO SIX TIMES A WEEK"  
      4  "EVERY DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PNEVER2F
      1  "NEVER"  
      2  "ONCE OR TWICE A WEEK"  
      3  "THREE TO SIX TIMES A WEEK"  
      4  "EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PNEVERLE
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "A FEW TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PNOTATAL
      1  "NOT AT ALL"  
      2  "ONCE OR TWICE"  
      3  "3-6 TIMES"  
      4  "EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define POFTENIN
      1  "ALMOST EVERY MONTH"  
      2  "SOME MONTHS, BUT NOT EVERY MONTH"  
      3  "IN ONLY 1 OR 2 MONTHS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define POFTENTO
      1  "OFTEN"  
      2  "SOMETIMES"  
      3  "HARDLY EVER"  
      4  "NEVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PONETOFI
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PPERTIME
      1  "PER HOUR"  
      2  "PER DAY"  
      3  "PER WEEK"  
      4  "BIWEEKLY"  
      5  "PER MONTH"  
      6  "PER YEAR"  
      91  "OTHER(SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PPERWE1F
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PPERWEEK
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PPHYSICA
      1  "MORE PHYSICALLY ACTIVE THAN OTHER BOYS/GIRLS"  
      2  "LESS PHYSICALLY ACTIVE THAN OTHER BOYSGIRLS"  
      3  "ABOUT THE SAME AS OTHER BOYSGIRLS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PPROBL2F
      1  "BIG PROBLEM"  
      2  "SOME PROBLEM"  
      3  "NO PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PRELMOST
      1  "GRANDPARENT"  
      2  "AUNT"  
      3  "UNCLE"  
      4  "BROTHER"  
      5  "SISTER"  
      6  "ANOTHER RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PSAFE
      1  "NOT AT ALL SAFE"  
      2  "SOMEWHAT SAFE"  
      3  "VERY SAFE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PSCHOOLA
      1  "ASSIGNED"  
      2  "CHOSEN"  
      3  "ASSIGNED SCHOOL IS SCHOOL OF CHOICE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PSCHOOLL
      1  "FREE"  
      2  "REDUCED PRICE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PSCHOOLT
      1  "SCHOOL BUS"  
      2  "PARENT DRIVES (HIM/HER)"  
      3  "CARPOOL"  
      4  "WALK"  
      5  "SOMEONE OTHER THAN PARENT DRIVES/TAKES CHILD"  
      91  "OTHER (SPECIFY)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PTENTOTW
      1  "LESS THAN 10 MINUTES"  
      2  "10-20 MINUTES"  
      3  "MORE THAN 20 MINUTES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PTIMES2F
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PTIMETOT
      1  "NEVER"  
      2  "LESS THAN 6 MONTHS"  
      3  "6 MONTHS TO ONE YEAR"  
      4  "1 TO 2 YEARS"  
      5  "MORE THAN 2 YEARS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PTRUE
      1  "COMPLETELY TRUE"  
      2  "MOSTLY TRUE"  
      3  "SOMEWHAT TRUE"  
      4  "NOT AT ALL TRUE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PVERYW2F
      1  "DOES THIS VERY WELL"  
      2  "JUST O.K."  
      3  "DOESN'T DO THIS AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PWHEREIN
      1  "CHILD'S HOME"  
      2  "CHILD'S SCHOOL"  
      3  "SOMEWHERE ELSE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PWHOSEHO
      1  "OWN HOME"  
      2  "OTHER HOME"  
      3  "BOTH/VARIES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PYESNO
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PYESNO1F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST10F
      1  "I DID NOT DRINK MILK DURING THE PAST 7 DAYS"  
      2  "1 TO 3 GLASSES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 GLASSES DURING THE PAST 7 DAYS"  
      4  "1 GLASS PER DAY"  
      5  "2 GLASSES PER DAY"  
      6  "3 GLASSES PER DAY"  
      7  "4 OR MORE GLASSES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST11F
      1  "REGULAR MILK FROM A COW"  
      2  "SOY MILK"  
      3  "BOTH REGULAR MILK AND SOY MILK"  
      4  "SOME OTHER KIND OF MILK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST12F
      1  "I DID NOT DRINK 100% FRUIT JUICE DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST13F
      1  "I DID NOT DRINK ANY DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST14F
      1  "I DID NOT EAT GREEN SALAD DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST15F
      1  "I DID NOT EAT POTATOES DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST16F
      1  "I DID NOT EAT CARROTS DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST17F
      1  "I DID NOT EAT OTHER VEGETABLES DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST18F
      1  "I DID NOT EAT FRUIT DURING THE PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST19F
      1  "DID NOT EAT FOOD FROM A FAST FOOD RESTAURANT IN PAST 7 DAYS"  
      2  "1 TO 3 TIMES DURING THE PAST 7 DAYS"  
      3  "4 TO 6 TIMES DURING THE PAST 7 DAYS"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST2F
      1  "I DID NOT BUY ANY AT SCHOOL DURING THE LAST WEEK"  
      2  "1 OR 2 TIMES DURING THE LAST WEEK IN SCHOOL"  
      3  "3 OR 4 TIMES DURING THE LAST WEEK IN SCHOOL"  
      4  "1 TIME PER DAY"  
      5  "2 TIMES PER DAY"  
      6  "3 TIMES PER DAY"  
      7  "4 OR MORE TIMES PER DAY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define QUEST3F
      1  "VENDING MACHINE IN SCHOOL"  
      2  "SCHOOL CAFETERIA"  
      3  "SOMEWHERE ELSE IN SCHOOL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define R2ELIG
      1  "CHILD ELIGIBLE"  
      2  "CHILD INELIGIBLE-OUT OF SCOPE"  
      3  "CHILD INELIGIBLE-MOVED OUT OF COUNTRY"  
      4  "CHILD INELIGIBLE-DECEASED"  
;
   label define R3R2TYCH
      1  "CHILD DID NOT CHANGE SCHOOL"  
      2  "CHILD TRANSFERRED FROM PUBLIC SCHOOL TO PUBLIC SCHOOL"  
      3  "CHILD TRANSFERRED FROM PRIVATE SCHOOL TO PRIVATE SCHOOL"  
      4  "CHILD TRANSFERRED FROM PUBLIC SCHOOL TO PRIVATE SCHOOL"  
      5  "CHILD TRANSFERRED FROM PRIVATE SCHOOL TO PUBLIC SCHOOL"  
      6  "CHILD TRANSFERRED, OTHER"  
      -9  "NOT ASCERTAINED"  
;
   label define R4URBAN
      1  "LARGE AND MID-SIZE CITY"  
      2  "LARGE AND MID-SIZE SUBURB AND LARGE TOWN"  
      3  "SMALL TOWN AND RURAL"  
      -9  "NOT ASCERTAINED"  
;
   label define R5AGE
      1  "LESS THAN 105"  
      2  "105 TO LESS THAN 108"  
      3  "108 TO LESS THAN 111"  
      4  "111 TO LESS THAN 114"  
      5  "114 TO LESS THAN 117"  
      6  "117 OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define R6AGE
      1  "110 TO LESS THAN 126"  
      2  "126 TO LESS THAN 132"  
      3  "132 TO LESS THAN 138"  
      4  "138 TO LESS THAN 144"  
      5  "144 TO 166"  
      -9  "NOT ASCERTAINED"  
;
   label define R6ELIG
      1  "CHILD ELIGIBLE"  
      2  "CHILD INELIGIBLE-OUT OF SCOPE"  
      3  "CHILD INELIGIBLE-MOVED OUT OF COUNTRY"  
      4  "CHILD INELIGIBLE-DECEASED"  
      5  "CHILD IS MOVER, NOT FOLLOWED"  
;
   label define R6R5SCHG
      1  "CHILD DID NOT CHANGE SCHOOL"  
      2  "CHILD TRANSFERRED FROM PUBLIC SCHOOL TO PUBLIC SCHOOL"  
      3  "CHILD TRANSFERRED FROM PRIVATE SCHOOL TO PRIVATE SCHOOL"  
      4  "CHILD TRANSFERRED FROM PUBLIC SCHOOL TO PRIVATE SCHOOL"  
      5  "CHILD TRANSFERRED FROM PRIVATE SCHOOL TO PUBLIC SCHOOL"  
      6  "CHILD TRANSFERRED, OTHER"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define R6REGION
      1  "NORTHEAST"  
      2  "MIDWEST"  
      3  "SOUTH"  
      4  "WEST"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define R6URBAN
      1  "LARGE AND MID-SIZE CITY"  
      2  "LARGE AND MID-SIZE SUBURB AND LARGE TOWN"  
      3  "SMALL TOWN AND RURAL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define RACE
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -9  "NOT ASCERTAINED"  
;
   label define RACE19F
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define REGION
      1  "NORTHEAST"  
      2  "MIDWEST"  
      3  "SOUTH"  
      4  "WEST"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define RNDFLG
      1  "CHILD JOINED IN ROUND 1"  
      2  "CHILD JOINED IN ROUND 2"  
      3  "CHILD JOINED IN ROUND 4"  
;
   label define S2004F
      1  "0 - 10"  
      2  "11 - 40"  
      3  "41 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2005F
      1  "0 - 10"  
      2  "11 - 40"  
      3  "41 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2006F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2007F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2008F
      1  "0"  
      2  "MORE THAN 0 AND LESS THAN 5"  
      3  "5 TO LESS THAN 10"  
      4  "10 TO LESS THAN 25"  
      5  "25 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2009F
      1  "0"  
      2  "MORE THAN 0 AND LESS THAN 5"  
      3  "5 TO LESS THAN 10"  
      4  "10 TO LESS THAN 25"  
      5  "25 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2010F
      1  "0 - 40"  
      2  "41 - 150"  
      3  "151 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2023F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2028F
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2038F
      1  "RURAL, FARMING COMMUNITY OR INDIAN RESERVATION"  
      2  "A SMALL CITY OR TOWN OF FEWER THAN 50000"  
      3  "A MEDIUM-SIZED CITY (50,000 TO 100,000)"  
      4  "A SUBURB OF A MEDIUM-SIZED CITY"  
      5  "A LARGE CITY (100,001 TO 500,000 PEOPLE)"  
      6  "A SUBURB OF A LARGE CITY"  
      7  "A VERY LARGE CITY (OVER 500,000 PEOPLE)"  
      8  "A SUBURB OF A VERY LARGE CITY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2039F
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      4  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S2042F
      1  "TRUE"  
      2  "FALSE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2043F
      1  "TRUE"  
      2  "FALSE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2045F
      1  "NEVER"  
      2  "ONCE A YEAR"  
      3  "2 TO 3 TIMES A YEAR"  
      4  "4 TO 6 TIMES A YEAR"  
      5  "7 OR MORE TIMES A YEAR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2046F
      1  "NONE"  
      2  "1-25%"  
      3  "26-50%"  
      4  "51-75%"  
      5  "75% OR MORE"  
      6  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2059F
      1  "CHILDREN WITH DISABILITIES NOT SERVED"  
      2  "CHILDREN WITH DISABILITIES IN SEPARATE CLASS"  
      3  "CHILDREN WITH DISABILITIES IN REGULAR CLASS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2060F
      1  "NONE"  
      2  "25% OR LESS"  
      3  "26% TO 50%"  
      4  "51% TO 75%"  
      5  "76% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2082F
      1  "LESS THAN $15,000"  
      2  "$15,000 TO $20,000"  
      3  "$20,001 TO $25,000"  
      4  "$25,001 TO $30,000"  
      5  "MORE THAN $30,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2083F
      1  "LESS THAN $25,000"  
      2  "$25,000 TO $35,000"  
      3  "$35,001 TO $45,000"  
      4  "$45,001 TO $60,000"  
      5  "MORE THAN $60,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2092F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2093F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2094F
      1  "NOT VERY SUCCESSFUL"  
      2  "SOMEWHAT SUCCESSFUL"  
      3  "VERY SUCCESSFUL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2095F
      0  "DECISION MAKER HAS NO INFLUENCE"  
      1  "DECISION MAKER HAS SOME INFLUENCE"  
      2  "DECISION MAKER HAS MAJOR INFLUENCE"  
      3  "DECISION NOT APPLICABLE TO THIS SCHOOL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2096F
      1  "NO INFLUENCE"  
      2  "SOME INFLUENCE"  
      3  "A GREAT DEAL OF INFLUENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2097F
      1  "MALE"  
      2  "FEMALE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2099F
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "OTHER RACE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2122F
      1  "HIGH SCHOOL/ASSOCIATE'S DEGREE/BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "EDUCATION SPECIALIST/PROFESSIONAL DIPLOMA"  
      5  "DOCTORATE"  
      6  "OTHER (PLEASE SPECIFY)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2131F
      1  "NEARLY EVERY CHILD"  
      2  "76% OR MORE"  
      3  "51% TO 75%"  
      4  "26% TO 50%"  
      5  "25% OR LESS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2132F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S2KENRLS
      1  "0-149 STUDENTS"  
      2  "150-299 STUDENTS"  
      3  "300-499 STUDENTS"  
      4  "500-749 STUDENTS"  
      5  "750 AND ABOVE"  
      -9  "NOT ASCERTAINED"  
;
   label define S2KMINOR
      1  "LESS THAN 10"  
      2  "10 TO LESS THAN 25"  
      3  "25 TO LESS THAN 50"  
      4  "50 TO LESS THAN 75"  
      5  "75 OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S2KPUPRI
      1  "PUBLIC"  
      2  "PRIVATE"  
      -9  "NOT ASCERTAINED"  
;
   label define S2KSCLVL
      1  "LESS THAN 1ST GRADE"  
      2  "PRIMARY SCHOOL"  
      3  "ELEMENTARY SCHOOL"  
      4  "COMBINED SCHOOL"  
      -9  "NOT ASCERTAINED"  
;
   label define S2KSCTYP
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC"  
      -9  "NOT ASCERTAINED"  
;
   label define S3PUPRI
      1  "PUBLIC"  
      2  "PRIVATE"  
      -9  "NOT ASCERTAINED"  
;
   label define S3SCTYP
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC"  
      -9  "NOT ASCERTAINED"  
;
   label define S4003F
      1  "PERCENT"  
      2  "NUMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4007F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4008F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4009F
      1  "0"  
      2  "GREATER THAN 0 AND LESS THAN 5"  
      3  "5 TO LESS THAN 10"  
      4  "10 TO LESS THAN 25"  
      5  "25 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4010F
      1  "0"  
      2  "GREATER THAN 0 AND LESS THAN 5"  
      3  "5 TO LESS THAN 10"  
      4  "10 TO LESS THAN 25"  
      5  "25 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4012F
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4013F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4014F
      1  "40 OR LESS"  
      2  "MORE THAN 40 TO 150"  
      3  "MORE THAN 150"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4015F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4016F
      1  "LESS THAN 500"  
      2  "500 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4017F
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4018F
      1  "30 OR LESS"  
      2  "MORE THAN 30 TO 50"  
      3  "MORE THAN 50 TO 80"  
      4  "MORE THAN 80"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4022F
      1  "RURAL, FARMING COMMUNITY OR INDIAN RESERVATION"  
      2  "A SMALL CITY OR TOWN OF FEWER THAN 50000"  
      3  "A MEDIUM-SIZED CITY (50,000 TO 100,000)"  
      4  "A SUBURB OF A MEDIUM-SIZED CITY"  
      5  "A LARGE CITY (100,001 TO 500,000 PEOPLE)"  
      6  "A SUBURB OF A LARGE CITY"  
      7  "A VERY LARGE CITY (OVER 500,000 PEOPLE)"  
      8  "A SUBURB OF A VERY LARGE CITY"  
      9  "MILITARY BASE OR STATION"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4023F
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S4024F
      1  "BOX CHECKED"  
      2  "BOX NOT CHECKED"  
;
   label define S4027F
      1  "TRUE"  
      2  "FALSE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4029F
      1  "NEVER"  
      2  "ONCE A YEAR"  
      3  "2 TO 3 TIMES A YEAR"  
      4  "4 TO 6 TIMES A YEAR"  
      5  "7 OR MORE TIMES A YEAR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4030F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4043F
      1  "NOT SERVED IN THIS SCHOOL"  
      2  "MOST OF THEIR DAY IN SEPARATE CLASSES"  
      3  "MOST OF THEIR DAY IN THE REGULAR CLASSROOM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4044F
      1  "NONE"  
      2  "25% OR LESS"  
      3  "26% TO 50%"  
      4  "51% TO 75%"  
      5  "76% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4061F
      1  "LESS THAN $15,000"  
      2  "$15,000 TO $20,000"  
      3  "$20,001 TO $25,000"  
      4  "$25,001 TO $30,000"  
      5  "MORE THAN $30,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4062F
      1  "LESS THAN $25,000"  
      2  "$25,000 TO $35,000"  
      3  "$35,001 TO $45,000"  
      4  "$45,001 TO $60,000"  
      5  "MORE THAN $60,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4063F
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4064F
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4068F
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4069F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4070F
      1  "NOT VERY SUCCESSFUL"  
      2  "SOMEWHAT SUCCESSFUL"  
      3  "VERY SUCCESSFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4071F
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4072F
      1  "NO INFLUENCE"  
      2  "SOME INFLUENCE"  
      3  "A GREAT DEAL OF INFLUENCE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4073F
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4088F
      0  "0"  
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6+"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4089F
      1  "LESS THAN MASTER'S DEGREE"  
      2  "MASTER'S DEGREE"  
      3  "EDUCATION SPECIALIST/PROFESSIONAL DIPLOMA"  
      4  "DOCTORATE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4098F
      1  "NEARLY EVERY CHILD"  
      2  "76% OR MORE"  
      3  "51% TO 75%"  
      4  "26% TO 50%"  
      5  "25% OR LESS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4099F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4101F
      2000  "2000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S4ENRLF
      1  "0 - 20"  
      2  "21 - 40"  
      3  "41 - 60"  
      4  "61- 80"  
      5  "81 - 100"  
      6  "101 - 120"  
      7  "121 - 140"  
      8  "141 - 160"  
      9  "161 - 180"  
      10  "181 OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S4ENRLK
      1  "0 - 20"  
      2  "21 - 40"  
      3  "41 - 60"  
      4  "61- 80"  
      5  "81 - 100"  
      6  "101 - 120"  
      7  "121 - 140"  
      8  "141 - 160"  
      9  "161 - 180"  
      10  "181 OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S4ENRLS
      1  "0 - 149"  
      2  "150 - 299"  
      3  "300 - 499"  
      4  "500 - 749"  
      5  "750 AND ABOVE"  
      -9  "NOT ASCERTAINED"  
;
   label define S4MINOR
      1  "0 TO LESS THAN 10"  
      2  "10 TO LESS THAN 25"  
      3  "25 TO LESS THAN 50"  
      4  "50 TO LESS THAN 75"  
      5  "75 OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S4PUPRI
      1  "PUBLIC"  
      2  "PRIVATE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S4RETNEW
      1  "RETURNING SCHOOL"  
      2  "NEW SCHOOL"  
;
   label define S4SCLVL
      1  "LESS THAN 1ST GRADE"  
      2  "PRIMARY SCHOOL"  
      3  "ELEMENTARY SCHOOL"  
      4  "COMBINED SCHOOL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S4SCTYP
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S504F
      1  "0 - 149"  
      2  "150 - 299"  
      3  "300 - 499"  
      4  "500 - 749"  
      5  "750 AND ABOVE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S505F
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S508F
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S509F
      1  "PUBLIC"  
      2  "PRIVATE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S510F
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S511F
      1  "LESS THAN 1ST GRADE"  
      2  "PRIMARY SCHOOL"  
      3  "ELEMENTARY SCHOOL"  
      4  "COMBINED SCHOOL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S5ADA
      1  "LESS THAN 90%"  
      2  "90% TO LESS THAN 92%"  
      3  "92% TO LESS THAN 94%"  
      4  "94% TO LESS THAN 96%"  
      5  "96% TO LESS THAN 98%"  
      6  "98% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5ADMNCM
      1  "0 - 5"  
      2  "6 - 20"  
      3  "21 - 50"  
      4  "MORE THAN 50"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5AGREE
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5AMBUSF
      1  "BEFORE 7:00"  
      2  "7:00 TO BEFORE 7:30"  
      3  "7:30 TO BEFORE 8:00"  
      4  "8:00 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 9:00"  
      6  "9:00 OR AFTER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5AMBUSL
      1  "BEFORE 7:30"  
      2  "7:30 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:30"  
      4  "8:30 TO BEFORE 9:00"  
      5  "9:00 TO BEFORE 9:30"  
      6  "9:30 OR AFTER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BLKPCT
      1  "0"  
      2  "MORE THAN 0% & LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BNUMCH
      1  "LESS THAN 10"  
      2  "10 - 19"  
      3  "20 - 29"  
      4  "30 - 39"  
      5  "40 - 49"  
      6  "50 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BOXCHK
      1  "BOX CHECKED"  
      2  "BOX NOT CHECKED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BRKCLR
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE TO THIS SCHOOL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BRKEND
      1  "BEFORE 7:45"  
      2  "7:45 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:15"  
      4  "8:15 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 8:45"  
      6  "8:45 TO BEFORE 9:00"  
      7  "9:00 OR AFTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BRKSTR
      1  "BEFORE 7:15"  
      2  "7:15 TO BEFORE 7:30"  
      3  "7:30 TO BEFORE 7:45"  
      4  "7:45 TO BEFORE 8:00"  
      5  "8:00 TO BEFORE 8:15"  
      6  "8:15 TO BEFORE 8:30"  
      7  "8:30 OR AFTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5BRKTYP
      1  "CAFETERIA"  
      2  "CLASSROOM"  
      3  "SCHOOL BUS"  
      4  "IN SOME OTHER COMMON AREA OF SCHOOL"  
      5  "OTHER SPECIFY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5CHLDNM
      1  "LESS THAN 500"  
      2  "500 OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5DISSRV
      1  "NOT SERVED IN THIS SCHOOL"  
      2  "MOST OF THEIR DAY IN SEPARATE CLASSES"  
      3  "MOST OF THEIR DAY IN REGULAR CLASSROOM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5EDLVL
      1  "LESS THAN MASTER'S DEGREE"  
      2  "MASTER'S DEGREE"  
      3  "EDUCATION SPECIALIST/PROFESSIONAL DIPLOMA"  
      4  "DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5ENRLT
      1  "0 - 20"  
      2  "21 - 40"  
      3  "41 - 60"  
      4  "61 - 80"  
      5  "81 - 100"  
      6  "101 - 120"  
      7  "121 - 140"  
      8  "141 - 160"  
      9  "161 - 180"  
      10  "MORE THAN 180"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S5ETHNIC
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5FACOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5GNDER
      1  "MALE"  
      2  "FEMALE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5GOAL
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5HSPPCT
      1  "0"  
      2  "MORE THAN 0% & LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5INSTCM
      1  "30 OR LESS"  
      2  "31 - 50"  
      3  "51 - 80"  
      4  "MORE THAN 80"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5LEPSCH
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5LEPTHR
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5MAJOR
      1  "EARLY CHILDHOOD ED/SPEC ED/ESL/CHILD DEV/METHODS OF TEACHING RDG/MTH/SCI"  
      2  "ELEMENTARY EDUCATION"  
      3  "SCHOOL ADMINISTRATION/MANAGEMENT"  
      4  "OTHER (SPECIFY)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5OFTACT
      1  "NEVER"  
      2  "ONCE A YEAR"  
      3  "2 TO 3 TIMES A YEAR"  
      4  "4 TO 6 TIMES A YEAR"  
      5  "7 OR MORE TIMES A YEAR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5OTHPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5PROBLM
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S5SCINC
      1  "50% OR MORE LOW-INCOME CHILDREN"  
      2  "LESS THAN 50% LOW-INCOME CHILDREN"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S5STRTAM
      1  "BEFORE 7:45"  
      2  "7:45 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:15"  
      4  "8:15 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 8:45"  
      6  "8:45 TO BEFORE 9:00"  
      7  "9:00 OR AFTER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5TEABLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5TEAWHT
      1  "LESS THAN 80%"  
      2  "80% TO LESS THAN 85%"  
      3  "85% TO LESS THAN 90%"  
      4  "90% TO LESS THAN 95%"  
      5  "95% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5TT1F
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE TO THIS SCHOOL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5TT1SW
      1  "TARGETED ASSISTANCE PROGRAM"  
      2  "SCHOOLWIDE PROGRAM"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S5YYCOMP
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S67TH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S68TH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ABSENT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ADA
      1  "LESS THAN 90%"  
      2  "90% TO LESS THAN 92%"  
      3  "92% TO LESS THAN 94%"  
      4  "94% TO LESS THAN 96%"  
      5  "96% TO LESS THAN 98%"  
      6  "98% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ADAFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6AFTSCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ALCOHO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6AMBUSF
      1  "BEFORE 7:00"  
      2  "7:00 TO BEFORE 7:30"  
      3  "7:30 TO BEFORE 8:00"  
      4  "8:00 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 9:00"  
      6  "9:00 OR AFTER"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6AMBUSL
      1  "BEFORE 7:30"  
      2  "7:30 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:30"  
      4  "8:30 TO BEFORE 9:00"  
      5  "9:00 TO BEFORE 9:30"  
      6  "9:30 OR AFTER"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ARTOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ASNFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ATTACK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6AUDTOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6B4SCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BLKFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BLKPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BNUMCH
      1  "LESS THAN 10"  
      2  "10 - 19"  
      3  "20 - 29"  
      4  "30 - 39"  
      5  "40 - 49"  
      6  "50 OR MORE"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BRKCLR
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BRKEND
      1  "BEFORE 7:45"  
      2  "7:45 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:15"  
      4  "8:15 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 8:45"  
      6  "8:45 TO BEFORE 9:00"  
      7  "9:00 OR AFTER"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BRKLOC
      1  "CAFETERIA"  
      2  "CLASSROOM"  
      3  "SCHOOL BUS"  
      4  "IN SOME OTHER COMMON AREA OF SCHOOL"  
      5  "OTHER SPECIFY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6BRKSTR
      1  "BEFORE 7:15"  
      2  "7:15 TO BEFORE 7:30"  
      3  "7:30 TO BEFORE 7:45"  
      4  "7:45 TO BEFORE 8:00"  
      5  "8:00 TO BEFORE 8:15"  
      6  "8:15 TO BEFORE 8:30"  
      7  "8:30 OR AFTER"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CAFEOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CARTE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CATHOL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CHCESK
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CHLDOU
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CLSSOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CNSNSS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6COMPOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6COSTLY
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6CRIME
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6DETECT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6DIOCES
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6DRUGS
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6EARLCH
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6EDLVL
      1  "LESS THAN MASTER'S DEGREE"  
      2  "MASTER'S DEGREE"  
      3  "EDUCATION SPECIALIST/PROFESSIONAL DIPLOMA"  
      4  "DOCTORATE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ENRL5F
      1  "0 - 20"  
      2  "21 - 40"  
      3  "41 - 60"  
      4  "61 - 80"  
      5  "81 - 100"  
      6  "101 - 120"  
      7  "121 - 140"  
      8  "141 - 160"  
      9  "161 - 180"  
      10  "MORE THAN 180"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ENRLS
      1  "0 - 149"  
      2  "150 - 299"  
      3  "300 - 499"  
      4  "500 - 749"  
      5  "750 AND ABOVE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ESCORT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6FEWSTD
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6FIFTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6FORCE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GANGS
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GFTPRG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GNDER
      1  "MALE"  
      2  "FEMALE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOA10F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOA11F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOA12F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOA13F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOA14F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOAL5F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOAL6F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOAL8F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GOAL9F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6GYMOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6HLLPSS
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6HLLWAY
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6HOWFUL
      1  "LESS THAN 50% FULL"  
      2  "50 TO 75% FULL"  
      3  "75 TO 100% FULL, OR"  
      4  "OVER CAPACITY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6HSPFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6HSPPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THEN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ILDRUG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6INDFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6INTCOM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6INVOLV
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6LATEST
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6LEPFIF
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6LEPSCH
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6LITTER
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6LOCKDR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6MAJOR
      1  "EARLY CHILDHOOD ED/SPEC ED/ESL/CHILD DEV/METHODS OF TEACHING RDG/MTH/SCI"  
      2  "ELEMENTARY EDUCATION"  
      3  "SCHOOL ADMINISTRATION/MANAGEMENT"  
      4  "OTHER (SPECIFY)"  
      -9  "NOT ASCERTAINED"  
;
   label define S6MINOR
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6MULTOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6MUSCOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6NOFACL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6NOSTAF
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6ORDR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6OTHER
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6OTHFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6OTHPCT
      1  "0"  
      2  "LESS THAN 1%"  
      3  "1% TO LESS THAN 2%"  
      4  "2% TO LESS THAN 3%"  
      5  "3% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6OTHREL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6OVRCRD
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PARISH
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PRINBX
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PRKNDR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PUBLIC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PUPRI
      1  "PUBLIC"  
      2  "PRIVATE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURBK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURBRD
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURCHO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURICE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURJUC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURLBK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURLSL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURMLK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURNJC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PUROTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURSKM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURSLT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURVEG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURVJC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURWTR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURYGT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PURYOG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6PVTEAR
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6RESTRM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6RLCH_I
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SCHEYY
      2004  "2004"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SCLVL
      1  "LESS THAN 1ST GRADE"  
      2  "PRIMARY SCHOOL"  
      3  "ELEMENTARY SCHOOL"  
      4  "COMBINED SCHOOL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SCTYP
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SECURT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SIGNIN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SIXTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SPLNDS
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6SPPRT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6STABNT
      1  "SERIOUS PROBLEM"  
      2  "MODERATE PROBLEM"  
      3  "MINOR PROBLEM"  
      4  "NOT A PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6STORE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6STRTAM
      1  "BEFORE 7:45"  
      2  "7:45 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:15"  
      4  "8:15 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 8:45"  
      6  "8:45 TO BEFORE 9:00"  
      7  "9:00 OR AFTER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TARDY
      1  "SERIOUS PROBLEM"  
      2  "MODERATE PROBLEM"  
      3  "MINOR PROBLEM"  
      4  "NOT A PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TEST3F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TEST4F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TEST5F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TEST6F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TEST7F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TEST8F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TNSION
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TRFFIC
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TRNOVR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1CLA
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1ED
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1EXT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1F
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1FLS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1INC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1PD
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1PO
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TT1TA
      1  "TARGETED ASSISTANCE PROGRAM"  
      2  "SCHOOLWIDE PROGRAM"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6TTLSUM
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6USDABR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6VANDAL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6VCANCY
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6VENDIN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6VLENCE
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define S6WEAPON
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6WHTFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S6WLCOME
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S6YYCOMP
      2004  "2004"  
;
   label define SCHG
      1  "CHILD DID NOT CHANGE SCHOOL"  
      2  "CHILD TRANSFERRED FROM PUBLIC SCHOOL TO PUBLIC SCHOOL"  
      3  "CHILD TRANSFERRED FROM PRIVATE SCHOOL TO PRIVATE SCHOOL"  
      4  "CHILD TRANSFERRED FROM PUBLIC SCHOOL TO PRIVATE SCHOOL"  
      5  "CHILD TRANSFERRED FROM PRIVATE SCHOOL TO PUBLIC SCHOOL"  
      6  "CHILD TRANSFERRED, OTHER"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define SPECS
      1  "CHILD GOT SPECIAL EDUCATION SERVICES"  
      2  "CHILD DID NOT GET SPECIAL EDUCATION SERVICES"  
      -9  "NOT ASCERTAINED"  
;
   label define SUPPRESS
      -2  "SUPPRESSED"  
;
   label define T1001F
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T1002F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T1004F
      1998  "1998"  
      1999  "1999"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2001F
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2002F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2003F
      1  "YES"  
      2  "NO"  
      3  "NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2004F
      1  "ESL/BILINGUAL"  
      2  "HANDICAPPED/SPECIAL EDUCATION"  
      3  "SCHOOL-WIDE TITLE 1"  
      4  "COMPUTER"  
      5  "OTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2005F
      1  "A LOT LESS ACTIVE THAN MOST"  
      2  "A LITTLE LESS ACTIVE THAN MOST"  
      3  "ABOUT THE SAME AS MOST"  
      4  "A LITTLE MORE ACTIVE THAN MOST"  
      5  "A LOT MORE ACTIVE THAN MOST"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2006F
      1  "FAR BELOW AVERAGE"  
      2  "BELOW AVERAGE"  
      3  "AVERAGE"  
      4  "ABOVE AVERAGE"  
      5  "FAR ABOVE AVERAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2007F
      1  "NEVER"  
      2  "SELDOM"  
      3  "USUALLY"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2008F
      0  "NONE"  
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2010F
      1  "MOVED TO A HIGHER GROUP"  
      2  "MOVED TO A LOWER GROUP"  
      3  "NOT MOVED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2011F
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2012F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2013F
      1  "DISCUSS PROBLEMS"  
      2  "TO DISCUSS HOW WELL THE CHILD IS DOING"  
      3  "BOTH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2014F
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T2016F
      1999  "1999"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4001F
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4002F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4003F
      1  "YES"  
      2  "NO"  
      3  "NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4004F
      1  "A LOT LESS ACTIVE THAN MOST"  
      2  "A LITTLE LESS ACTIVE THAN MOST"  
      3  "ABOUT THE SAME AS MOST"  
      4  "A LITTLE MORE ACTIVE THAN MOST"  
      5  "A LOT MORE ACTIVE THAN MOST"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4005F
      1  "FAR BELOW AVERAGE"  
      2  "BELOW AVERAGE"  
      3  "AVERAGE"  
      4  "ABOVE AVERAGE"  
      5  "FAR ABOVE AVERAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4006F
      1  "NEVER"  
      2  "SELDOM"  
      3  "USUALLY"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4007F
      0  "NONE"  
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4009F
      1  "MOVED TO A HIGHER GROUP"  
      2  "MOVED TO A LOWER GROUP"  
      3  "NOT MOVED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4010F
      1  "SEVERAL TIMES A WEEK"  
      2  "SEVERAL TIMES A MONTH"  
      3  "ONCE A MONTH"  
      4  "A FEW TIMES OVER THE SCHOOL YEAR"  
      5  "ONCE"  
      6  "NEVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4011F
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4012F
      1  "DISCUSS PROBLEMS"  
      2  "TO DISCUSS HOW WELL THE CHILD IS DOING"  
      3  "BOTH (NOT EXPLICIT RESPONSE OPTION)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4013F
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4015F
      2000  "2000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4016F
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5"  
      6  "6"  
      7  "7"  
      8  "8 AND ABOVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4017F
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T4GLVL
      1  "KINDERGARTEN - HALF DAY"  
      2  "KINDERGARTEN - FULL DAY"  
      3  "KINDERGARTEN - HALF/FULL DAY UNKNOWN"  
      4  "FIRST GRADE"  
      5  "SECOND GRADE"  
      6  "UNGRADED CLASSROOM"  
      -9  "NOT ASCERTAINED"  
;
   label define T501F
      1  "KINDERGARTEN"  
      2  "FIRST GRADE"  
      3  "SECOND GRADE"  
      4  "THIRD GRADE"  
      5  "FOURTH GRADE"  
      6  "FIFTH GRADE"  
      7  "UNGRADED CLASSROOM"  
      -9  "NOT ASCERTAINED"  
;
   label define T5ABIL
      1  "NEVER"  
      2  "SELDOM"  
      3  "USUALLY"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5ARS
      1  "NOT YET"  
      2  "BEGINNING"  
      3  "IN PROGRESS"  
      4  "INTERMEDIATE"  
      5  "PROFICIENT"  
      7  "NOT APPLICABLE TO THIS CHILD"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5ASTEST
      1  "CHILD DID NOT PARTICIPATE"  
      2  "CHILD PARTICIPATED TO A LIMITED DEGREE"  
      3  "CHILD PARTICIPATED FULLY"  
      4  "NO SCHOOLWIDE ASSESSMENTS AT THIS GRADE LVL"  
      8  "DON'T KNOW"  
      -7  "REFUSED"  
      -9  "NOT ASCERTAINED"  
;
   label define T5CHRDGP
      1  "1"  
      2  "2"  
      3  "3"  
      4  "4"  
      5  "5 OR ABOVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5GPMOBL
      1  "MOVED TO A HIGHER GROUP"  
      2  "MOVED TO A LOWER GROUP"  
      3  "NOT MOVED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5MTSTF
      1  "SEVERAL TIMES A WEEK"  
      2  "SEVERAL TIMES A MONTH"  
      3  "ONCE A MONTH"  
      4  "A FEW TIMES OVER THE SCHOOL YEAR"  
      5  "ONCE"  
      6  "NEVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5NORDGP
      0  "NONE"  
      1  "ONE"  
      2  "TWO"  
      3  "THREE"  
      4  "FOUR"  
      5  "FIVE OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5PERSON
      1  "CONSULTED WITH SOMEONE ELSE"  
      2  "UNABLE TO CONSULT WITH A PERSON KNOWLEDGEABLE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5PURP
      1  "DISCUSS PROBLEMS"  
      2  "DISCUSS HOW WELL THE CHILD IS DOING"  
      3  "BOTH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5QXCOM
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5QXCOY
      2002  "2002"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5RT
      1  "FAR BELOW AVERAGE"  
      2  "BELOW AVERAGE"  
      3  "AVERAGE"  
      4  "ABOVE AVERAGE"  
      5  "FAR ABOVE AVERAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5STRPLY
      1  "A LOT LESS ACTIVE THAN MOST"  
      2  "A LITTLE LESS ACTIVE THAN MOST"  
      3  "ABOUT THE SAME AS MOST"  
      4  "A LITTLE MORE ACTIVE THAN MOST"  
      5  "A LOT MORE ACTIVE THAN MOST"  
      6  "CHILD NOT OBSERVED IN STRUCTURED PLAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5UNPLAY
      1  "A LOT LESS ACTIVE THAN MOST"  
      2  "A LITTLE LESS ACTIVE THAN MOST"  
      3  "ABOUT THE SAME AS MOST"  
      4  "A LITTLE MORE ACTIVE THAN MOST"  
      5  "A LOT MORE ACTIVE THAN MOST"  
      6  "CHILD NOT OBSERVED IN UNSTRUCTURED PLAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5YNNANO
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE/NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5YNNO
      1  "YES"  
      2  "NO"  
      3  "NOT OFFERED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T5YNPNP
      1  "YES"  
      2  "NO"  
      3  "PROGRAM NOT PROVIDED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define T6GLVL
      0  "KINDERGARTEN"  
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "SIXTH GRADE"  
      7  "SEVENTH GRADE"  
      8  "EIGHTH GRADE"  
      9  "UNGRADED CLASSROOM"  
      -9  "NOT ASCERTAINED"  
;
   label define TF
      1  "TRUE"  
      0  "FALSE"  
;
   label define TF1789F
      1  "TRUE"  
      2  "FALSE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define TF19F
      1  "TRUE"  
      0  "FALSE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define TF20F
      1  "TRUE"  
      0  "FALSE"  
      -1  "NOT APPLICABLE"  
;
   label define U4RIEP
      1  "CHILD HAS IEP"  
      2  "CHILD DOES NOT HAVE IEP"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define U4SCHBMM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define U4SCHBYY
      1999  "1999"  
      -9  "NOT ASCERTAINED"  
;
   label define U4SCHEYY
      2000  "2000"  
      -9  "NOT ASCERTAINED"  
;
   label define U506F
      1  "CHILD HAS IEP"  
      2  "CHILD DOES NOT HAVE IEP"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define U6ABSTOT
      1  "0"  
      2  "LESS THAN 1"  
      3  "1 TO LESS THAN 2"  
      4  "2 TO LESS THAN 5"  
      5  "5 TO LESS THAN 10"  
      6  "10 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define U6AUXABS
      1  "0"  
      2  "LESS THAN 1"  
      3  "1 TO LESS THAN 2"  
      4  "2 TO LESS THAN 5"  
      5  "5 TO LESS THAN 10"  
      6  "10 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define U6AXABS
      1  "0"  
      2  "LESS THAN 1"  
      3  "1 TO LESS THAN 2"  
      4  "2 TO LESS THAN 5"  
      5  "5 TO LESS THAN 10"  
      6  "10 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define U6BTARD
      1  "0"  
      2  "LESS THAN 1"  
      3  "1 TO LESS THAN 2"  
      4  "2 TO LESS THAN 5"  
      5  "5 TO LESS THAN 10"  
      6  "10 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define U6BUXTAR
      1  "0"  
      2  "LESS THAN 1"  
      3  "1 TO LESS THAN 2"  
      4  "2 TO LESS THAN 5"  
      5  "5 TO LESS THAN 10"  
      6  "10 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define U6BXTARD
      1  "0"  
      2  "LESS THAN 1"  
      3  "1 TO LESS THAN 2"  
      4  "2 TO LESS THAN 5"  
      5  "5 TO LESS THAN 10"  
      6  "10 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define U6RIEP
      1  "CHILD HAS IEP"  
      2  "CHILD DOES NOT HAVE IEP"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define URBAN
      1  "LARGE AND MID-SIZE CITY"  
      2  "LARGE AND MID-SIZE SUBURB AND LARGE TOWN"  
      3  "SMALL TOWN AND RURAL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define W1INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
;
   label define W1LANGST
      1  "NON-ENGLISH"  
      2  "ENGLISH"  
      -9  "NOT ASCERTAINED"  
;
   label define W1POVRTY
      1  "BELOW POVERTY THRESHOLD"  
      2  "AT OR ABOVE POVERTY THRESHOLD"  
;
   label define W1RACETH
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define W1SESQ
      1  "FIRST QUINTILE"  
      2  "SECOND QUINTILE"  
      3  "THIRD QUINTILE"  
      4  "FOURTH QUINTILE"  
      5  "FIFTH QUINTILE"  
;
   label define W3INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
;
   label define W3POVRTY
      1  "BELOW POVERTY THRESHOLD"  
      2  "AT OR ABOVE POVERTY THRESHOLD"  
;
   label define W3RACETH
      1  "WHITE, NON-HISPANIC"  
      2  "BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "HISPANIC, RACE SPECIFIED"  
      4  "HISPANIC, RACE NOT SPECIFIED"  
      5  "ASIAN"  
      6  "NATIVE HAWAIIAN, OTHER PACIFIC ISLANDER"  
      7  "AMERICAN INDIAN OR ALASKA NATIVE"  
      8  "MORE THAN ONE RACE, NON HISPANIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define W3SESQ
      1  "FIRST QUINTILE"  
      2  "SECOND QUINTILE"  
      3  "THIRD QUINTILE"  
      4  "FOURTH QUINTILE"  
      5  "FIFTH QUINTILE"  
;
   label define W5INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
;
   label define W5PARED
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
;
   label define W5PED
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define W5POVRTY
      1  "BELOW POVERTY THRESHOLD"  
      2  "AT OR ABOVE POVERTY THRESHOLD"  
;
   label define W5SESQ5F
      1  "FIRST QUINTILE"  
      2  "SECOND QUINTILE"  
      3  "THIRD QUINTILE"  
      4  "FOURTH QUINTILE"  
      5  "FIFTH QUINTILE"  
;
   label define YN
      1  "YES"  
      2  "NO"  
;
   label define YN1789F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define YN19F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define YN1F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
;
   label define YN789F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define YN89F
      1  "YES"  
      2  "NO"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define YRRND
      1  "YEAR ROUND SCHOOL"  
      2  "NOT YEAR ROUND SCHOOL"  
      -9  "NOT ASCERTAINED"  
      -1  "NOT APPLICABLE"  
;
   label define _789F
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C1R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C1R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C2R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C2R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C3R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C3R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C4R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C4R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C5R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -9  "NOT ASCERTAINED"  
;
   label define C5R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -9  "NOT ASCERTAINED"  
;
   label define C6R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -9  "NOT ASCERTAINED"  
;
   label define C6R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ABLE
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVINA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVINK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVIOA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVIOK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVIPA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVIRA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVISA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVISI
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ADVISK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ANGRY
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ARTS
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ASHAME
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ASMTMM
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ASMTST
      1  "COMPLETELY SCORABLE ASSESSMENT DATA"  
      2  "PARTIALLY COMPLETED ASSESSMENT DATA"  
      4  "STUDENT W/ DISABILITY, NOT ASSESSED"  
      5  "NONRESPONDENT"  
;
   label define C7ASMTYY
      2007  "2007"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHANCE
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERNA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERNK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHEROA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHEROK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERPA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERRA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERSA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERSI
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CHERSK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLOSCL
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLOSTC
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLSCAR
      1  "NEVER"  
      2  "SELDOM"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      5  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLSFEL
      1  "NEVER"  
      2  "SELDOM"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      5  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLSFR
      1  "NEVER"  
      2  "SELDOM"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      5  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLSLIK
      1  "NEVER"  
      2  "SELDOM"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      5  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLSOTH
      1  "NEVER"  
      2  "SELDOM"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      5  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7CLUB
      1  "DID NOT PARTICIPATE"  
      2  "PARTICIPATED"  
      3  "PARTICIPATED AS AN OFFICER, LEADER, OR CAPTAIN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7COMPUT
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7DAYSPE
      1  "0 DAYS"  
      2  "1 DAY"  
      3  "2 DAYS"  
      4  "3 DAYS"  
      5  "4 DAYS"  
      6  "5 DAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7DESCWT
      1  "VERY UNDERWEIGHT"  
      2  "SLIGHTLY UNDERWEIGHT"  
      3  "ABOUT THE RIGHT WEIGHT"  
      4  "SLIGHTLY OVERWEIGHT"  
      5  "VERY OVERWEIGHT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7DESMTH
      1  "GENERAL MATHEMATICS"  
      2  "INTRODUCTION TO ALGEBRA/PRE-ALGEBRA"  
      3  "ALGEBRA"  
      4  "INTEGRATED OR SEQUENTIAL MATHEMATICS"  
      5  "ALGEBRA II"  
      6  "GEOMETRY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7DESSCI
      1  "GENERAL SCIENCE"  
      2  "GENERAL PHYSICAL SCIENCE"  
      3  "BIOLOGY"  
      4  "BOTANY OR ZOOLOGY"  
      5  "EARTH SCIENCE"  
      6  "SCIENCE AND TECHNOLOGY"  
      7  "OTHER SCIENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7DRAMA
      1  "DID NOT PARTICIPATE"  
      2  "PARTICIPATED"  
      3  "PARTICIPATED AS AN OFFICER, LEADER, OR CAPTAIN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ENGBST
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ENJMTH
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ENJOY
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7ENJRD
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7EXERCS
      1  "0 DAYS"  
      2  "1 DAY"  
      3  "2 DAYS"  
      4  "3 DAYS"  
      5  "4 DAYS"  
      6  "5 DAYS"  
      7  "6 DAYS"  
      8  "7 DAYS"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FITIN
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FLGOOD
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FRNCLS
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "NOT APPLICABLE, I HAVE NO CLOSE FRIENDS"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FRNEDU
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "NOT APPLICABLE, I HAVE NO CLOSE FRIENDS"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FRNGRD
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "NOT APPLICABLE, I HAVE NO CLOSE FRIENDS"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FROUT
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7FROVER
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7GOFRND
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7GRDENG
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7GRDPAR
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "IMPORTANT"  
      4  "VERY IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7GRDYOU
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "IMPORTANT"  
      4  "VERY IMPORTANT"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7GROUP
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7HGT1A
      1  "QUARTER INCH"  
      2  "HALF INCH"  
      3  "THREE-QUARTER INCH"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C7HGT2A
      1  "QUARTER INCH"  
      2  "HALF INCH"  
      3  "THREE-QUARTER INCH"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C7HOME
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7HOWFAR
      1  "LESS THAN HIGH SCHOOL GRADUATION"  
      2  "HIGH SCHOOL GRADUATION OR GED ONLY"  
      3  "ATTEND OR COMPLETE A 2-YEAR PROGRAM IN A COMMUNITY COLLEGE OR VOCATIONAL SCHOOL"  
      4  "ATTEND COLLEGE, BUT NOT COMPLETE A 4-YEAR DEGREE"  
      5  "GRADUATE FROM A 4-YEAR COLLEGE"  
      6  "OBTAIN A MASTER'S DEGREE OR EQUIVALENT"  
      7  "OBTAIN A PHD, MD, OR OTHER ADVANCED DEGREE"  
      -7  "REFUSED"  
      -8  "DON’T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LIKMTH
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LIKRD
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LNGOTH
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "ABOUT HALF OF THE TIME"  
      4  "ALWAYS OR MOST OF THE TIME"  
      5  "DOES NOT APPLY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LNGPAR
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "ABOUT HALF OF THE TIME"  
      4  "ALWAYS OR MOST OF THE TIME"  
      5  "DOES NOT APPLY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LNGSCH
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "ABOUT HALF OF THE TIME"  
      4  "ALWAYS OR MOST OF THE TIME"  
      5  "DOES NOT APPLY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LNGSIB
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "ABOUT HALF OF THE TIME"  
      4  "ALWAYS OR MOST OF THE TIME"  
      5  "DOES NOT APPLY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LONLY
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7LUCK
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define C7MTHBST
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7MTHGD
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7MUSIC
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7NATENG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7NOBOOK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7NOCNTR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7NOGOOD
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7NOPLAN
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7NOPRD
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7OTHSPT
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7PLANS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7R4MPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "NUMBER AND SHAPE"  
      2  "RELATIVE SIZE"  
      3  "ORDINALITY, SEQUENCE"  
      4  "ADDITION/SUBTRACTION"  
      5  "MULTIPLICATION/DIVISION"  
      6  "PLACE VALUE"  
      7  "RATE AND MEASUREMENT"  
      8  "FRACTIONS"  
      9  "AREA AND VOLUME"  
      -9  "NOT ASCERTAINED"  
;
   label define C7R4RPF
      0  "NON-MASTERY OF THE LOWEST PROFICIENCY LEVEL"  
      1  "LETTER RECOGNITION"  
      2  "BEGINNING SOUNDS"  
      3  "ENDING SOUNDS"  
      4  "SIGHT WORDS"  
      5  "COMPREHENSION OF WORDS IN CONTEXT"  
      6  "LITERAL INFERENCE"  
      7  "EXTRAPOLATION"  
      8  "EVALUATION"  
      9  "EVALUATING NONFICTION"  
      10  "EVALUATING COMPLEX SYNTAX"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SAD
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SAFE
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SATISF
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLNA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLNK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLOA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLOK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLPA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLRA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLSA
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLSI
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SCHLSK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SMADV
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SPORTS
      1  "DID NOT PARTICIPATE"  
      2  "PARTICIPATED"  
      3  "PARTICIPATED AS AN OFFICER, LEADER, OR CAPTAIN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7STOPS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7SUMMER
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7TALK
      1  "RARELY OR NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "ONCE OR TWICE A WEEK"  
      4  "EVERY DAY OR ALMOST EVERY DAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7TRYWT
      1  "LOSE WEIGHT"  
      2  "GAIN WEIGHT"  
      3  "STAY THE SAME WEIGHT"  
      4  "I AM NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7TUTORM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7TUTORR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7TVROOM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7USELES
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WGT1A
      1  "HALF LB"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WGT2A
      1  "HALF LB"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WORTH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "AGREE"  
      4  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WRYFIN
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WRYHNG
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WRYTST
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7WRYWEL
      1  "NOT AT ALL TRUE"  
      2  "A LITTLE BIT TRUE"  
      3  "MOSTLY TRUE"  
      4  "VERY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define C7YYCOMP
      2007  "2007"  
;
   label define F7MTHSCI
      1  "MATH"  
      2  "SCIENCE"  
;
   label define F7SPECS
      1  "STUDENT GOT SPECIAL EDUCATION SERVICES"  
      2  "STUDENT DID NOT GET SPECIAL EDUCATION SERVICES"  
      -9  "NOT ASCERTAINED"  
;
   label define F7YRRND
      1  "YEAR ROUND SCHOOL"  
      2  "NOT YEAR ROUND SCHOOL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define G7ABSENT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7ANALYO
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7ATTENT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7BEHAV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7BEHIND
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7CLASP
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7CMPHW
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7CREATO
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7DESCRB
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7DISBEH
      1  "YES"  
      2  "NO"  
      3  "NA (NO GUIDANCE COUNSELOR)"  
      4  "NA (STUDENT DID NOT EXHIBIT THIS BEHAVIOR)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7DISCIP
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7DISORG
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7DISRUP
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7EFFO
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7EFFORT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7EMOPRB
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7ENTEST
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7ENWORK
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7FRQABS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7GATHER
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7GRAMMO
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7GRAMMR
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7HEALTH
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7HONORS
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE (NO SUCH HONOR AVAILABLE)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7IMPRV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7INFER
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7LEVEL
      1  "INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL IN READING"  
      2  "REGULAR"  
      3  "HONORS, ENRICHMENT, OR GIFTED AND TALENTED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7NOPRIM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7NOSEC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7ORGANZ
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7OTHRES
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7PASSIV
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G7PERFRM
      1  "YES"  
      2  "NO"  
      3  "NA (NO GUIDANCE COUNSELOR)"  
      4  "NA (STUDENT DID NOT EXHIBIT THIS BEHAVIOR)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G7PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define G7Q2931F
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7RDLOUD
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7RELWEL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7SKILL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7STYLE
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7TARDY
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7TIME
      1  "LESS THAN 3 HOURS"  
      2  "3 TO 4.9 HOURS"  
      3  "5 TO 6.9 HOURS"  
      4  "7 TO 9.9 HOURS"  
      5  "10 OR MORE HOURS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7TIMEWK
      1  "I DO NOT ASSIGN HOMEWORK"  
      2  "LESS THAN 15 MINUTES"  
      3  "ABOUT 15 TO 30 MINUTES"  
      4  "ABOUT 30 MINUTES TO AN HOUR"  
      5  "MORE THAN AN HOUR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7TLKOUT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7TOCLA
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7TOSTN
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7WKDONE
      1  "HOMEWORK NOT ASSIGNED"  
      2  "NEVER"  
      3  "RARELY"  
      4  "SOME OF THE TIME"  
      5  "MOST OF THE TIME"  
      6  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7WRKHRD
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7WRTVAR
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define G7YYCOMP
      2007  "2007"  
;
   label define J71ACCPT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ANTHR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ARTMU
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71BILIN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71BIOED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71BIOGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71BIOUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71CHEM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71CHGAP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71CIVIC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71CLSZO
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71CMPSC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71CNTNL
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71COMMU
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71COMP
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71DFMTH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EARTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ECON
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EDMGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EDMUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EDRGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EDRUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EDSGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EDSUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ELEMC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENGGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENGL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENGTC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENGUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENJOY
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENRGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ENRUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ERLYC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ERTGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ERTUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71ESLCT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71EXAM
      1  "NOT TAKEN"  
      2  "TAKEN AND PASSED"  
      3  "TAKEN AND HAVE NOT YET PASSED"  
      4  "TAKEN AND AWAITING TEST RESULTS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71FCTOR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71FRLNG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71GEOGR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71GTTHR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71HABIT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71HGHST
      1  "HGH SCHL, ASSOCIATE'S, BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "PROFESSIONAL DIPLOMA OR DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71HIST
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71HLTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71JOBTS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71JOURN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71LANG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71LNGGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71LNGUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71LTLDO
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MATH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MEDGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MEDUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MIDED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MISBH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MKDIF
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MKLES
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MTHGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MTHTC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71MTHUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71NAMER
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71NODRP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71NOTCA
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71OTHCH
      1  "WELL PREPARED"  
      2  "MODERATELY PREPARED"  
      3  "NOT WELL PREPARED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71OTHED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71OTHGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71OTHSC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71OTHSS
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71OTHUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PAPRW
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PARED
      1  "DID NOT COMPLETE HIGH SCHOOL"  
      2  "HIGH SCHOOL DIPLOMA OR GED"  
      3  "ASSOCIATE'S DEGREE"  
      4  "BACHELOR'S DEGREE"  
      5  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      6  "MASTER'S DEGREE"  
      7  "COMPLETED A PHD, MD, OR OTHER ADVANCED PROFESSIONAL DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PHYED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PHYGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PHYS
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PHYUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PSUPP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PSYCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71PYSCI
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71RAC5F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71RDGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71RDSPC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71RDUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SCHSP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SCIED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SCITC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SCNDC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SOCIO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SOCST
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SPCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71SPEDC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71TCERT
      1  "REGULAR OR STANDARD STATE CERTIFICATION OR ADVANCED PROFESSIONAL DEGREE"  
      2  "PROBATIONARY CERTIFICATE"  
      3  "PROVISIONAL OR OTHER TYPE"  
      4  "TEMPORARY CERTIFICATE"  
      5  "EMERGENCY CERTIFICATE OR WAIVER"  
      6  "REGULAR OR FULL CERTIFICATION BY AN ACCREDITING OR CERTIFYING BODY OTHER THAN THE STATE"  
      7  "I DO NOT HAVE ANY OF THE ABOVE CERTIFICATIONS IN THIS STATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71TEACH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71VOTEC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71WSTTM
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J71YYCOM
      2007  "2007"  
;
   label define J72ACCPT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ANTHR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ARTMU
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72BILIN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72BIOED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72BIOGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72BIOUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72CHEM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72CHGAP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72CIVIC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72CLSZO
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72CMPSC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72CNTNL
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72COMMU
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72COMP
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72DFMTH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EARTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ECON
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EDMGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EDMUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EDRGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EDRUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EDSGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EDSUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ELEMC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENGGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENGL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENGTC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENGUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENJOY
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENRGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ENRUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ERLYC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ERTGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ERTUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72ESLCT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72EXAM
      1  "NOT TAKEN"  
      2  "TAKEN AND PASSED"  
      3  "TAKEN AND HAVE NOT YET PASSED"  
      4  "TAKEN AND AWAITING TEST RESULTS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72FCTOR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72FRLNG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72GEOGR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72GTTHR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72HABIT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72HGHST
      1  "HGH SCHL, ASSOCIATE'S, BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "PROFESSIONAL DIPLOMA OR DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72HIST
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72HLTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72JOBTS
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72JOURN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72LANG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72LNGGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72LNGUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72LTLDO
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MATH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MEDGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MEDUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MIDED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MISBH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MKDIF
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MKLES
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MMCOM
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MTHGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MTHTC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72MTHUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72NAMER
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72NODRP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72NOTCA
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72OTHCH
      1  "WELL PREPARED"  
      2  "MODERATELY PREPARED"  
      3  "NOT WELL PREPARED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72OTHED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72OTHGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72OTHSC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72OTHSS
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72OTHUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PAPRW
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PARED
      1  "DID NOT COMPLETE HIGH SCHOOL"  
      2  "HIGH SCHOOL DIPLOMA OR GED"  
      3  "ASSOCIATE'S DEGREE"  
      4  "BACHELOR'S DEGREE"  
      5  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      6  "MASTER'S DEGREE"  
      7  "COMPLETED A PHD, MD, OR OTHER ADVANCED PROFESSIONAL DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PHYED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PHYGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PHYS
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PHYUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PSUPP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PSYCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72PYSCI
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72RAC5F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72RDGD
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72RDSPC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72RDUN
      1  "YES, A MAJOR"  
      2  "YES, A MINOR OR SPECIAL EMPHASIS"  
      3  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SCHSP
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SCIED
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SCITC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SCNDC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SOCIO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SOCST
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SPCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72SPEDC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72TCERT
      1  "REGULAR OR STANDARD STATE CERTIFICATION OR ADVANCED PROFESSIONAL DEGREE"  
      2  "PROBATIONARY CERTIFICATE"  
      3  "PROVISIONAL OR OTHER TYPE"  
      4  "TEMPORARY CERTIFICATE"  
      5  "EMERGENCY CERTIFICATE OR WAIVER"  
      6  "REGULAR OR FULL CERTIFICATION BY AN ACCREDITING OR CERTIFYING BODY OTHER THAN THE STATE"  
      7  "I DO NOT HAVE ANY OF THE ABOVE CERTIFICATIONS IN THIS STATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72TEACH
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72VOTEC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72WSTTM
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define J72YYCOM
      2007  "2007"  
;
   label define M7ABSENT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7APPLY
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7ATTENT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7BEHAV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7BEHIND
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7CALCUL
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7CLASP
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7CMPAVL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7CMPHW
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7CMPNUM
      1  "ONE COMPUTER FOR EACH STUDENT"  
      2  "ONE COMPUTER FOR EVERY TWO STUDENTS"  
      3  "ONE COMPUTER FOR EVERY THREE OR MORE STUDENTS"  
      4  "I DO NOT USE COMPUTERS IN MY MATH INSTRUCTION"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7COMPUT
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7COURSE
      1  "GENERAL MATHEMATICS"  
      2  "INTRODUCTION TO ALGEBRA/PRE-ALGEBRA"  
      3  "ALGEBRA"  
      4  "INTEGRATED OR SEQUENTIAL MATHEMATICS"  
      5  "ALGEBRA II"  
      6  "GEOMETRY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7DISBEH
      1  "YES"  
      2  "NO"  
      3  "NA (NO GUIDANCE COUNSELOR)"  
      4  "NA (STUDENT DID NOT EXHIBIT THIS BEHAVIOR)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7DISCIP
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7DISORG
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7DISRUP
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7EFFO
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7EFFORT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7EMOPRB
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7FRQABS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7GRAPH
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7GRPPTN
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7HEALTH
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7HONORS
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE (NO SUCH HONOR AVAILABLE)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7IMPRV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7LEVEL
      1  "INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL IN MATHEMATICS"  
      2  "REGULAR"  
      3  "HONORS, ENRICHMENT, OR GIFTED AND TALENTED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7MATEST
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7MAWORK
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7MCOMP
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7MDISC
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7MWRITE
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7NOPRIM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7NOSEC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7NOSOL
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7OTHCAL
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7OTHRES
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PASSIV
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PERFRM
      1  "YES"  
      2  "NO"  
      3  "NA (NO GUIDANCE COUNSELOR)"  
      4  "NA (STUDENT DID NOT EXHIBIT THIS BEHAVIOR)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PRBLIF
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7PROOFS
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7RELWEL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7REPRES
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7SCIENT
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7SKILL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TALKAB
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TARDY
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TIME
      1  "LESS THAN 3 HOURS"  
      2  "3 TO 4.9 HOURS"  
      3  "5 TO 6.9 HOURS"  
      4  "7 TO 9.9 HOURS"  
      5  "10 OR MORE HOURS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TIMEWK
      1  "I DO NOT ASSIGN HOMEWORK"  
      2  "LESS THAN 15 MINUTES"  
      3  "ABOUT 15 TO 30 MINUTES"  
      4  "ABOUT 30 MINUTES TO AN HOUR"  
      5  "MORE THAN AN HOUR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TLKOUT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TOCLA
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7TOSTN
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7WKDONE
      1  "HOMEWORK NOT ASSIGNED"  
      2  "NEVER"  
      3  "RARELY"  
      4  "SOME OF THE TIME"  
      5  "MOST OF THE TIME"  
      6  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7WRITE
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7WRKHRD
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define M7YYCOMP
      2007  "2007"  
;
   label define N7ABSENT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -9  "NOT ASCERTAINED"  
;
   label define N7APPLY
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7ATTENT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7BEHAV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7BEHIND
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7BEHVR
      1  "GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "GROUP MISBEHAVES FREQUENTLY"  
      3  "GROUP MISBEHAVES OCCASIONALLY"  
      4  "GROUP BEHAVES WELL"  
      5  "GROUP BEHAVES EXCEPTIONALLY WELL"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7CLASP
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7CMPAVL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7CMPHW
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7CMPNUM
      1  "ONE COMPUTER FOR EACH STUDENT"  
      2  "ONE COMPUTER FOR EVERY TWO STUDENTS"  
      3  "ONE COMPUTER FOR EVERY THREE OR MORE STUDENTS"  
      4  "I DO NOT USE COMPUTERS IN MY SCIENCE INSTRUCTION"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7COURSE
      1  "GENERAL SCIENCE"  
      2  "GENERAL PHYSICAL SCIENCE"  
      3  "BIOLOGY"  
      4  "BOTANY OR ZOOLOGY"  
      5  "EARTH SCIENCE"  
      6  "SCIENCE AND TECHNOLOGY"  
      7  "OTHER SCIENCE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7DESIGN
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7DISBEH
      1  "YES"  
      2  "NO"  
      3  "NA (NO GUIDANCE COUNSELOR)"  
      4  "NA (STUDENT DID NOT EXHIBIT THIS BEHAVIOR)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7DISCIP
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7DISORG
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7DISRUP
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7EFFO
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7EFFORT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7EMOPRB
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define N7FRQABS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define N7HEALTH
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7HONORS
      1  "YES"  
      2  "NO"  
      3  "NOT APPLICABLE (NO SUCH HONOR AVAILABLE)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7HYPOTH
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7IMPRV
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7LEVEL
      1  "INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL IN SCIENCE"  
      2  "REGULAR"  
      3  "HONORS, ENRICHMENT, OR GIFTED AND TALENTED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7NOPRIM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7NOSEC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7ORAL
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A DAY"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7ORGDAT
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7OTHRES
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PASSIV
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PBLK
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PERFRM
      1  "YES"  
      2  "NO"  
      3  "NA (NO GUIDANCE COUNSELOR)"  
      4  "NA (STUDENT DID NOT EXHIBIT THIS BEHAVIOR)"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PHIS
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PMIN
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PRESEN
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7PROBLM
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7RATEEQ
      1  "EXCELLENT"  
      2  "GOOD"  
      3  "FAIR"  
      4  "POOR"  
      5  "NONE AVAILABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7RELWEL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCANAL
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCCOMP
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCCONC
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCFACT
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCHAND
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCINNW
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCINT
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCITXT
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCLAB
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCPROB
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCPROJ
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCREL
      1  "VERY HEAVY EMPHASIS"  
      2  "HEAVY EMPHASIS"  
      3  "MODERATE EMPHASIS"  
      4  "LITTLE EMPHASIS"  
      5  "NO EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCTEST
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCWORK
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A DAY"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SCWRIT
      1  "ALMOST EVERY DAY"  
      2  "ONCE OR TWICE A WEEK"  
      3  "ONCE OR TWICE A MONTH"  
      4  "NEVER OR HARDLY EVER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7SKILL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7TARDY
      1  "NEVER"  
      2  "RARELY"  
      3  "SOME OF THE TIME"  
      4  "MOST OF THE TIME"  
      5  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7TIME
      1  "LESS THAN 3 HOURS"  
      2  "3 TO 4.9 HOURS"  
      3  "5 TO 6.9 HOURS"  
      4  "7 TO 9.9 HOURS"  
      5  "10 OR MORE HOURS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7TIMEWK
      1  "I DO NOT ASSIGN HOMEWORK"  
      2  "LESS THAN 15 MINUTES"  
      3  "ABOUT 15 TO 30 MINUTES"  
      4  "ABOUT 30 MINUTES TO AN HOUR"  
      5  "MORE THAN AN HOUR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7TLKOUT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7TOCLA
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7TOSTN
      1  "NOT IMPORTANT"  
      2  "SOMEWHAT IMPORTANT"  
      3  "VERY IMPORTANT"  
      4  "EXTREMELY IMPORTANT"  
      5  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7WKDONE
      1  "HOMEWORK NOT ASSIGNED"  
      2  "NEVER"  
      3  "RARELY"  
      4  "SOME OF THE TIME"  
      5  "MOST OF THE TIME"  
      6  "ALL OF THE TIME"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7WRITE
      1  "OUTSTANDING"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      6  "NOT APPLICABLE/NOT OBSERVED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7WRKHRD
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define N7YYCOMP
      2007  "2007"  
;
   label define P7ABSDAD
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define P7ABSMOM
      1  "BIOLOGICAL ONLY"  
      2  "BOTH BIOLOGICAL AND ADOPTIVE"  
      -1  "NOT APPLICABLE"  
;
   label define P7ALONE
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7ANYLNG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7APPETI
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7APPROV
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      5  "CHILD HAS NO FRIENDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7ARGCHD
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7ATTENT
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7BLUE
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7BOTHER
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7BROTHE
      1  "FULL BROTHER"  
      2  "HALF BROTHER"  
      3  "STEP BROTHER"  
      4  "ADOPTIVE BROTHER"  
      5  "FOSTER BROTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7BTADLT
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7BULLID
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CHDLOC
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CHEATS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CHKHWK
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CHL_1F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CHL_2F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CHORES
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7COMMIT
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7COMPAA
      1  "LESS ACTIVE THAN OTHER TEENS OF HIS/HER AGE"  
      2  "ABOUT AS ACTIVE"  
      3  "SLIGHTLY MORE ACTIVE"  
      4  "A LOT MORE ACTIVE THAN OTHER TEENS OF HIS/HER AGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7COMPAT
      1  "BETTER THAN OTHER TEENS HIS/HER AGE"  
      2  "AS WELL AS OTHER TEENS"  
      3  "SLIGHTLY LESS WELL THAN OTHER TEENS"  
      4  "MUCH LESS WELL THAN OTHER TEENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7COMPRM
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CONSID
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CONSRV
      1  "STRONGLY CONSERVATIVE"  
      2  "CONSERVATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CONTAC
      1  "LESS THAN ONE MONTH"  
      2  "MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "MORE THAN A YEAR"  
      4  "NO CONTACT SINCE BIRTH"  
      5  "PARENT IS DECEASED"  
      6  "NO CONTACT SINCE ADOPTION"  
      7  "NO ADOPTIVE (MOTHER/FATHER)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CONWGT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CRITIC
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CUR
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P7CURFEW
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DADOCC
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DECIDE
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DEPRES
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DIABET
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DISTRC
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DRUGS
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "DISAGREE"  
      5  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DSCUSS
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7DSTRCT
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7EDUP1F
      1 - 15  "1 - 15"  
;
   label define P7EFFORT
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7EMPP1F
      1 - 15  "1 - 15"  
;
   label define P7ENGLIS
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7ENJOY
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FAITHF
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FATHER
      1  "BIRTH FATHER"  
      2  "ADOPTIVE FATHER"  
      3  "STEP FATHER"  
      4  "FOSTER FATHER OR MALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FEARFL
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FEARS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FIDGET
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FIGHTS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FREERD
      1  "FREE"  
      2  "REDUCED PRICE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQFAM
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQHBY
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQHWK
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQOTH
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQPLY
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQREL
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQRST
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQSCH
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQSHP
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQSPT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQTLK
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQTRP
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FRQTV
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "FREQUENTLY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FSADST
      1  "FOOD SECURE"  
      2  "FOOD INSECURE WITHOUT HUNGER"  
      3  "FOOD INSECURE WITH HUNGER"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FSCHST
      1  "FOOD SECURE OR FOOD INSECURE WITHOUT HUNGER AMONG CHILDREN"  
      2  "FOOD INSECURE WITH HUNGER AMONG CHILDREN"  
      -9  "NOT ASCERTAINED"  
;
   label define P7FSSTAT
      1  "FOOD SECURE"  
      2  "FOOD INSECURE WITHOUT HUNGER"  
      3  "FOOD INSECURE WITH HUNGER"  
      -9  "NOT ASCERTAINED"  
;
   label define P7GDFRND
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7GETALN
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7GOOD
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "DISAGREE"  
      5  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7GRADES
      0  "NEVER WENT TO SCHOOL"  
      1  "1ST GRADE"  
      2  "2ND GRADE"  
      3  "3RD GRADE"  
      4  "4TH GRADE"  
      5  "5TH GRADE"  
      6  "6TH GRADE"  
      7  "7TH GRADE"  
      8  "8TH GRADE"  
      9  "9TH GRADE"  
      10  "10TH GRADE"  
      11  "11TH GRADE"  
      12  "12TH GRADE BUT NO DIPLOMA"  
      13  "HS DIP./EQUIV. OR VOC/TECH PROG. AFTER HS - NO VOC/TECH DIP."  
      14  "VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      15  "SOME COLLEGE BUT NO DEGREE"  
      16  "ASSOCIATE'S DEGREE"  
      17  "BACHELOR'S DEGREE"  
      18  "GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      19  "MASTER'S DEGREE (MA, MS)"  
      20  "DOCTORATE DEGREE (PHD, EDD)"  
      21  "PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HAPPY
      1  "VERY HAPPY"  
      2  "FAIRLY HAPPY"  
      3  "NOT TOO HAPPY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HDAD
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT FATHER"  
;
   label define P7HDEMP
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO FATHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HEALTH
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HFAMIL
      1  "2 PARENTS PLUS SIBLINGS"  
      2  "2 PARENTS NO SIBLING"  
      3  "1 PARENT PLUS SIBLINGS"  
      4  "1 PARENT NO SIBLING"  
      5  "OTHER"  
;
   label define P7HLPFUL
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HLPSCI
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HMEMP
      1  "35 HOURS OR MORE PER WEEK"  
      2  "LESS THAN 35 HOURS PER WEEK"  
      3  "LOOKING FOR WORK"  
      4  "NOT IN THE LABOR FORCE"  
      -1  "NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HMOM
      1  "BIOLOGICAL"  
      2  "ADOPTIVE"  
      3  "STEP"  
      4  "FOSTER"  
      5  "PARTNER"  
      6  "DON'T KNOW TYPE"  
      7  "NO RESIDENT MOTHER"  
;
   label define P7HOMEWO
      1  "MOTHER"  
      2  "FATHER"  
      3  "SISTER OR BROTHER"  
      4  "GRANDPARENT"  
      5  "ANOTHER ADULT IN THE HOUSEHOLD"  
      6  "SOMEONE AT AN AFTER SCHOOL PROGRAM"  
      7  "ADULTS WHO DON'T LIVE IN THE HOUSEHOLD"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HOWFAR
      1  "TO RECEIVE LESS THAN A HIGH SCHOOL DIPLOMA"  
      2  "TO GRADUATE FROM HIGH SCHOOL"  
      3  "TO ATTEND TWO OR MORE YEARS OF COLLEGE"  
      4  "TO FINISH A FOUR- OR FIVE-YEAR COLLEGE DEGREE"  
      5  "TO EARN A MASTER'S DEGREE OR EQUIVALENT"  
      6  "TO FINISH A PH.D., MD, OR OTHER ADVANCED DEGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HOWHEL
      1  "VERY HELPFUL"  
      2  "HELPFUL"  
      3  "NOT HELPFUL"  
      4  "NOT AT ALL HELPFUL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HOWMAN
      1  "10 MINUTES OR LESS"  
      2  "11-30 MINUTES"  
      3  "31-59 MINUTES"  
      4  "1-2 HOURS"  
      5  "MORE THAN 2 HOURS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HOWPAY
      1  "LESS THAN $1000"  
      2  "$1000 TO LESS THAN $2000"  
      3  "$2000 TO LESS THAN $3000"  
      4  "$3000 TO LESS THAN $4000"  
      5  "$4000 TO LESS THAN $5000"  
      6  "$5000 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HOWTRF
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HOWTRU
      1  "OFTEN TRUE"  
      2  "SOMETIMES TRUE"  
      3  "NEVER TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7HPARNT
      1  "BIOLOGICAL MOTHER AND BIOLOGICAL FATHER"  
      2  "BIOLOGICAL MOTHER AND OTHER FATHER (STEP-, ADOPTIVE, FOSTER)"  
      3  "BIOLOGICAL FATHER AND OTHER MOTHER (STEP-, ADOPTIVE, FOSTER)"  
      4  "BIOLOGICAL MOTHER ONLY"  
      5  "BIOLOGICAL FATHER ONLY"  
      6  "TWO ADOPTIVE PARENTS"  
      7  "SINGLE ADOPTIVE PARENT OR ADOPTIVE PARENT AND STEPPARENT"  
      8  "RELATED GUARDIAN(S)"  
      9  "UNRELATED GUARDIAN(S)"  
;
   label define P7HSCALE
      1  "EXCELLENT"  
      2  "VERY GOOD"  
      3  "GOOD"  
      4  "FAIR"  
      5  "POOR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7ILLNES
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7IMPBLF
      1  "VERY IMPORTANT"  
      2  "IMPORTANT"  
      3  "SOMEWHAT IMPORTANT"  
      4  "NOT AT ALL IMPORTANT"  
      5  "RESPONDENT REPORTS HAVING NO RELIGION OR RELIGIOUS BELIEFS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7INCOME
      1  "$25,000 OR LESS"  
      2  "MORE THAN $25,000"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7INSCHL
      1  "AT SCHOOL"  
      2  "OUT OF SCHOOL"  
      3  "BOTH"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7INTERF
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7INTERV
      1  "ENGLISH"  
      2  "SPANISH"  
      91  "ANOTHER LANGUAGE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7JOI
      1  "JOINED ROUND 1"  
      2  "JOINED ROUND 2"  
      3  "JOINED ROUND 3"  
      4  "JOINED ROUND 4"  
      5  "JOINED ROUND 5"  
      6  "JOINED ROUND 6"  
      7  "JOINED ROUND 7"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P7KINDCH
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7KPMIND
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LANG
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LEARNG
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "DISAGREE"  
      5  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LIBERL
      1  "STRONGLY LIBERAL"  
      2  "LIBERAL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LIFLNG
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LIKED
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LISTNS
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LONELY
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7LOVE
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MALEFE
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MARITA
      1  "MARRIED"  
      2  "SEPARATED"  
      3  "DIVORCED"  
      4  "WIDOWED"  
      5  "NEVER MARRIED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MED_N
      1  "LESS THAN HALF"  
      2  "ABOUT HALF"  
      3  "MORE THAN HALF"  
      4  "ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MODE
      1  "TELEPHONE"  
      2  "IN-PERSON"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MOMOCC
      1  "EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "TEACHER, EXCEPT POSTSECONDARY"  
      7  "PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "REGISTERED NURSES, PHARMACISTS"  
      9  "WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "MARKETING & SALES OCCUPATION"  
      13  "ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "SERVICE OCCUPATIONS"  
      15  "AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "MECHANICS & REPAIRS"  
      17  "CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "PRECISION PRODUCTION OCCUPATION"  
      19  "PRODUCTION WORKING OCCUPATION"  
      20  "TRANSPORTATION, MATERIAL MOVING"  
      21  "HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "UNEMPLOYED OR RETIRED"  
      -1  "NO OCCUPATION OR NO MOTHER IN HOUSEHOLD"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MOSTIM
      1  "A BRILLIANT STUDENT"  
      2  "A LEADER IN SCHOOL ACTIVITIES"  
      3  "AN ATHLETIC STAR"  
      4  "THE MOST POPULAR"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MOTHER
      1  "BIRTH MOTHER"  
      2  "ADOPTIVE MOTHER"  
      3  "STEP MOTHER"  
      4  "FOSTER MOTHER OR FEMALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MOTHFA
      1  "MOTHER"  
      2  "FATHER"  
      3  "BOTH"  
      4  "NEITHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7MTFRND
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      5  "CHILD HAS NO FRIENDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NERVOS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOAPPR
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      5  "CHILD HAS NO FRIENDS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOCOLL
      1  "EXTREMELY DISAPPOINTED"  
      2  "VERY DISAPPOINTED"  
      3  "SOMEWHAT DISAPPOINTED"  
      4  "NOT DISAPPOINTED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NONREL
      1  "GIRLFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      2  "BOYFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      3  "FEMALE GUARDIAN"  
      4  "MALE GUARDIAN"  
      5  "DAUGHTER/SON OF PARENT'S PARTNER"  
      6  "OTHER RELATIVE OF PARENT'S PARTNER"  
      7  "OTHER NONRELATIVE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOTATF
      1  "NOT AT ALL"  
      2  "A FEW TIMES A MONTH"  
      3  "A FEW TIMES A WEEK"  
      4  "EVERYDAY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOTATT
      1  "NOT AT ALL"  
      2  "ONCE"  
      3  "TWICE"  
      4  "THREE OR MORE TIMES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOTGO
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOTGRD
      1  "EXTREMELY DISAPPOINTED"  
      2  "VERY DISAPPOINTED"  
      3  "SOMEWHAT DISAPPOINTED"  
      4  "NOT DISAPPOINTED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NOUNDR
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NUMBKS
      1  "ONE BOOK"  
      2  "MORE THAN ONE BOOK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7NUMTHR
      1  "FIVE TIMES OR LESS"  
      2  "BETWEEN 6 AND 20 TIMES"  
      3  "BETWEEN 21 AND 50 TIMES"  
      4  "MORE THAN 50 TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OFFERS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OFTDHW
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      6  "HOMEWORK IS NOT ASSIGNED"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OFTENI
      1  "ALMOST EVERY MONTH"  
      2  "SOME MONTHS, BUT NOT EVERY MONTH"  
      3  "IN ONLY 1 OR 2 MONTHS"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OFTENT
      1  "OFTEN"  
      2  "SOMETIMES"  
      3  "HARDLY EVER"  
      4  "NEVER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OFTSCI
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7ONEMON
      1  "LESS THAN ONE MONTH"  
      2  "LESS THAN A YEAR"  
      3  "1 TO 2 YEARS"  
      4  "3 TO 4 YEARS"  
      5  "5 YEARS OR MORE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OTH_N
      1  "LESS THAN HALF"  
      2  "ABOUT HALF"  
      3  "MORE THAN HALF"  
      4  "ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OVERWT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7OWNRNT
      1  "OWN"  
      2  "RENT"  
      3  "DO SOMETHING ELSE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7PER
      1  "RESPONDENT"  
      2  "FOCAL CHILD"  
      3  "TWIN"  
      -1  "NOT APPLICABLE"  
;
   label define P7PERWEE
      1  "NEVER"  
      2  "LESS THAN ONCE A WEEK"  
      3  "1 TO 2 TIMES A WEEK"  
      4  "3 TO 4 TIMES A WEEK"  
      5  "5 OR MORE TIMES A WEEK"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7PIQ
      1  "YES"  
      2  "NO"  
      3  "NO OPPORTUNITY YET"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P7POLIT
      1  "A LIBERAL"  
      2  "A CONSERVATIVE"  
      3  "A MODERATE"  
      4  "HAVEN'T THOUGHT MUCH ABOUT THIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7PRMLNG
      0  "ENGLISH"  
      1  "ARABIC"  
      2  "CHINESE"  
      3  "FILIPINO LANGUAGE"  
      4  "FRENCH"  
      5  "GERMAN"  
      6  "GREEK"  
      7  "ITALIAN"  
      8  "JAPANESE"  
      9  "KOREAN"  
      10  "POLISH"  
      11  "PORTUGUESE"  
      12  "SPANISH"  
      13  "VIETNAMESE"  
      14  "OTHER LANGUAGES"  
      15  "AFRICAN LANGUAGES"  
      16  "EASTERN EUROPEAN LANGUAGES"  
      17  "NATIVE AMERICAN LANGUAGES"  
      18  "SIGN LANGUAGE"  
      19  "MIDDLE EASTERN LANGUAGES"  
      20  "WESTERN EUROPEAN LANGUAGES"  
      21  "INDIAN SUBCONTINENTAL LANGUAGES"  
      22  "SOUTH EAST ASIAN LANGUAGES"  
      23  "PACIFIC ISLANDER LANGUAGES"  
      24  "CANNOT CHOOSE A PRIMARY LANGUAGE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7PRTREL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7PUSHHT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RDP
      1  "DEPARTED ROUND 1"  
      2  "DEPARTED ROUND 2"  
      3  "DEPARTED ROUND 3"  
      4  "DEPARTED ROUND 4"  
      5  "DEPARTED ROUND 5"  
      6  "DEPARTED ROUND 6"  
      7  "DEPARTED ROUND 7"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P7READBK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7READEN
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RELATI
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NON-RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RELIG
      1  "NEVER OR ALMOST NEVER"  
      2  "SEVERAL TIMES A YEAR"  
      3  "SEVERAL TIMES A MONTH"  
      4  "ONCE A WEEK"  
      5  "SEVERAL TIMES A WEEK"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RES_1F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RES_2F
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "VERY OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RESREL
      1  "BIOLOGICAL MOTHER"  
      2  "OTHER MOTHER TYPE"  
      3  "BIOLOGICAL FATHER"  
      4  "OTHER FATHER TYPE"  
      5  "NON-PARENT RELATIVE"  
      6  "NON-RELATIVE"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RESTLS
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RPTCRD
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7RSTLSS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SAD
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SAFE
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "DISAGREE"  
      5  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SAFEPL
      1  "NOT AT ALL SAFE"  
      2  "SOMEWHAT SAFE"  
      3  "VERY SAFE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SATPRB
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "DISAGREE"  
      4  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SATSCH
      1  "VERY SATISFIED"  
      2  "SOMEWHAT SATISFIED"  
      3  "SOMEWHAT DISSATISFIED"  
      4  "VERY DISSATISFIED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SCHGRD
      1  "MOSTLY A'S"  
      2  "MOSTLY B'S"  
      3  "MOSTLY C'S"  
      4  "MOSTLY D'S"  
      5  "MOSTLY F'S"  
      6  "CHILD'S SCHOOL DOES NOT GIVE GRADES"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SCHOOL
      1  "ASSIGNED"  
      2  "CHOSEN"  
      3  "ASSIGNED SCHOOL IS SCHOOL OF CHOICE"  
      4  "CHILD IS HOMESCHOOLED"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SCHWRK
      1  "EXCELLENT"  
      2  "ABOVE AVERAGE"  
      3  "AVERAGE"  
      4  "BELOW AVERAGE"  
      5  "FAILING"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SHARES
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SHOUT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SISTER
      1  "FULL SISTER"  
      2  "HALF SISTER"  
      3  "STEP SISTER"  
      4  "ADOPTIVE SISTER"  
      5  "FOSTER SISTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SPEAKE
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7STEALS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7STPSPK
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7SUSPND
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TALKLS
      1  "NEVER"  
      2  "SOME OF THE TIME"  
      3  "A MODERATE AMOUNT OF THE TIME"  
      4  "MOST OF THE TIME"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TEMPER
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7THINKS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TIMEST
      1  "FIVE TIMES OR LESS"  
      2  "BETWEEN 6 AND 20 TIMES"  
      3  "BETWEEN 21 AND 50 TIMES"  
      4  "MORE THAN 50 TIMES"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TIMETO
      1  "NEVER"  
      2  "LESS THAN 6 MONTHS"  
      3  "6 MONTHS TO ONE YEAR"  
      4  "1 TO 2 YEARS"  
      5  "MORE THAN 2 YEARS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TLKAFT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TLKEVT
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TLKPRG
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TLKTRB
      1  "NEVER"  
      2  "RARELY"  
      3  "SOMETIMES"  
      4  "OFTEN"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7TRUST
      1  "NEVER"  
      2  "SOMETIMES"  
      3  "OFTEN"  
      4  "ALWAYS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7UNDERS
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7UNDRWT
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7UNHAPP
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7VIOLNC
      1  "STRONGLY AGREE"  
      2  "AGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "DISAGREE"  
      5  "STRONGLY DISAGREE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WELBHV
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WGTEVL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WHEREI
      1  "STUDENT'S HOME"  
      2  "STUDENT'S SCHOOL"  
      3  "SOMEWHERE ELSE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WHOLIK
      1  "CLOSER TO LIBERALS"  
      2  "CLOSER TO CONSERVATIVES"  
      3  "NEITHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WHOSCI
      1  "MOTHER"  
      2  "FATHER"  
      3  "SISTER OR BROTHER"  
      4  "GRANDPARENT"  
      5  "ANOTHER ADULT IN THE HOUSEHOLD"  
      6  "SOMEONE AT AN AFTER SCHOOL PROGRAM"  
      7  "ADULTS WHO DON'T LIVE IN THE HOUSEHOLD"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WHYLEF
      1  "SEPARATION OR DIVORCE"  
      2  "ATTENDING COLLEGE OR BOARDING SCHOOL"  
      3  "LIVING ELSEWHERE FOR EMPLOYMENT-RELATED REASONS"  
      4  "DECEASED"  
      5  "MOVED ON"  
      6  "ROSTER ERROR"  
      7  "MOVED BACK WITH PARENTS"  
      91  "SOME OTHER REASON"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WORRYS
      1  "NOT TRUE"  
      2  "SOMEWHAT TRUE"  
      3  "CERTAINLY TRUE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P7WRITEN
      1  "VERY WELL"  
      2  "PRETTY WELL"  
      3  "NOT VERY WELL"  
      4  "NOT WELL AT ALL"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define R7AGE
      1  "148 TO LESS THAN 163"  
      2  "163 TO LESS THAN 169"  
      3  "169 TO LESS THAN 175"  
      4  "175 TO LESS THAN 181"  
      5  "181 TO  203"  
      -9  "NOT ASCERTAINED"  
;
   label define R7ELIG
      1  "STUDENT ELIGIBLE"  
      2  "STUDENT INELIGIBLE-OUT OF SCOPE"  
      3  "STUDENT INELIGIBLE-MOVED OUT OF COUNTRY"  
      4  "STUDENT INELIGIBLE-DECEASED"  
;
   label define R7R6SCHG
      1  "STUDENT DID NOT CHANGE SCHOOL"  
      2  "STUDENT MOVED FROM PUBLIC SCHOOL TO PUBLIC SCHOOL"  
      3  "STUDENT MOVED FROM PRIVATE SCHOOL TO PRIVATE SCHOOL"  
      4  "STUDENT MOVED FROM PUBLIC SCHOOL TO PRIVATE SCHOOL"  
      5  "STUDENT MOVED FROM PRIVATE SCHOOL TO PUBLIC SCHOOL"  
      6  "STUDENT MOVED, OTHER"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define R7REGION
      1  "NORTHEAST"  
      2  "MIDWEST"  
      3  "SOUTH"  
      4  "WEST"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define R7URBAN
      1  "LARGE AND MID-SIZE CITY"  
      2  "LARGE AND MID-SIZE SUBURB AND LARGE TOWN"  
      3  "SMALL TOWN AND RURAL"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ADA
      1  "LESS THAN 90%"  
      2  "90% TO LESS THAN 92%"  
      3  "92% TO LESS THAN 94%"  
      4  "94% TO LESS THAN 96%"  
      5  "96% TO LESS THAN 98%"  
      6  "98% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ADAFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ADANUM
      1  "LESS THAN 200"  
      2  "200 TO LESS THAN 300"  
      3  "300 TO LESS THAN 400"  
      4  "400 TO LESS THAN 500"  
      5  "500 TO LESS THAN 700"  
      6  "700 TO LESS THAN 900"  
      7  "900 OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7AFTNO
      1  "YES"  
      2  "NO"  
      -9  "NOT ASCERTAINED"  
;
   label define S7AFTPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ALCOHL
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -9  "NOT ASCERTAINED"  
;
   label define S7APPRCH
      1  "DIFFERENTIATED COURSES IN CORE BUT STUDENTS HAVE OPEN ACCESS TO ANY COURSE"  
      2  "DIFFERENTIATED COURSES AND DIFFERENTIATED GROUPING IN CORE"  
      3  "UNDIFFERENTIATED COURSES IN CORE AND STUDENTS HAVE OPEN ACCESS TO ANY COURSE"  
      4  "OTHER"  
      5  "DIFFERENTIATED GROUPING IN THE CLASSROOM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ARTOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ASNFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S7AUDTOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BILNO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BILPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BLKFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BLKPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BRKCLR
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BRKEND
      1  "BEFORE 7:45"  
      2  "7:45 TO BEFORE 8:00"  
      3  "8:00 TO BEFORE 8:15"  
      4  "8:15 TO BEFORE 8:30"  
      5  "8:30 TO BEFORE 8:45"  
      6  "8:45 TO BEFORE 9:00"  
      7  "9:00 OR AFTER"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BRKLOC
      1  "CAFETERIA"  
      2  "CLASSROOM"  
      3  "SCHOOL BUS"  
      4  "IN SOME OTHER COMMON AREA OF SCHOOL"  
      5  "OTHER SPECIFY"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BRKSTR
      1  "BEFORE 7:15"  
      2  "7:15 TO BEFORE 7:30"  
      3  "7:30 TO BEFORE 7:45"  
      4  "7:45 TO BEFORE 8:00"  
      5  "8:00 TO BEFORE 8:15"  
      6  "8:15 TO BEFORE 8:30"  
      7  "8:30 OR AFTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7BULLY
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CAFEOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CARTE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CATHOL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CHCESK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CLSCUT
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CLSSOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7COMPOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CONFLC
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7COSTLY
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7CRIME
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7DISORD
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7DRGFRQ
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7DRUGS
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ENRL8F
      1  "0 - 20"  
      2  "21 - 40"  
      3  "41 - 60"  
      4  "61 - 80"  
      5  "81 - 100"  
      6  "101 - 120"  
      7  "121 - 140"  
      8  "141 - 160"  
      9  "161 - 180"  
      10  "MORE THAN 180"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ENRLS
      1  "0 - 149"  
      2  "150 - 299"  
      3  "300 - 499"  
      4  "500 - 749"  
      5  "750 AND ABOVE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ESLNO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7ESLPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7FEWSTD
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GANGS
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GIFNO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GIFPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GNDER
      1  "MALE"  
      2  "FEMALE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GNGACT
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GOA11F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GOA12F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GOA13F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GOA14F
      1  "NO OR MINOR EMPHASIS"  
      2  "MODERATE EMPHASIS"  
      3  "MAJOR EMPHASIS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7GYMOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7HIGGRD
      10  "SIXTH, SEVENTH, OR EIGHTH GRADE"  
      11  "NINTH GRADE"  
      14  "ELEVENTH OR TWELFTH GRADE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7HIGHED
      1  "BACHELOR'S DEGREE"  
      2  "AT LEAST ONE YEAR BEYOND BACHELOR'S"  
      3  "MASTER'S DEGREE"  
      4  "EDUCATION SPECIALIST OR PROFESSIONAL DIPLOMA"  
      5  "DOCTORATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7HOWFUL
      1  "LESS THAN 50% FULL"  
      2  "50 TO 75% FULL"  
      3  "75 TO 100% FULL, OR"  
      4  "OVER CAPACITY"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7HSPFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S7HSPPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7INDFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S7INSCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7INVOLV
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7LATEST
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7LBRYOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7LEPETH
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7LEPSCH
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7LOWGRD
      1  "PRE-KINDERGARTEN"  
      2  "KINDERGARTEN"  
      6  "FIRST, THIRD, OR FOURTH GRADE"  
      7  "FIFTH GRADE"  
      8  "SIXTH GRADE"  
      9  "SEVENTH GRADE"  
      10  "EIGHTH OR NINTH GRADE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7MINOR
      1  "LESS THAN 10%"  
      2  "10% TO LESS THAN 25%"  
      3  "25% TO LESS THAN 50%"  
      4  "50% TO LESS THAN 75%"  
      5  "75% OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7MMCOMP
      1  "JANUARY"  
      2  "FEBRUARY"  
      3  "MARCH"  
      4  "APRIL"  
      5  "MAY"  
      6  "JUNE"  
      7  "JULY"  
      8  "AUGUST"  
      9  "SEPTEMBER"  
      10  "OCTOBER"  
      11  "NOVEMBER"  
      12  "DECEMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7MTINO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7MTIPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7MULTOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7MUSCOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7NOFACL
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7NOSTAF
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7OTHER
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7OTHFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7OTHPCT
      1  "0"  
      2  "LESS THAN 1%"  
      3  "1% TO LESS THAN 2%"  
      4  "2% TO LESS THAN 3%"  
      5  "3% OR MORE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7OTHREL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7OUTSCH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7OVRCRD
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PLAYOK
      1  "DO NOT HAVE"  
      2  "NEVER ADEQUATE"  
      3  "OFTEN NOT ADEQUATE"  
      4  "SOMETIMES NOT ADEQUATE"  
      5  "ALWAYS ADEQUATE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PUPRI
      1  "PUBLIC"  
      2  "PRIVATE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURBK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURBRD
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURCHO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURICE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURJUC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURLBK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURLSL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURMLK
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURNJC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PUROTH
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURSKM
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURSLT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURVEG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURVJC
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURWTR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURYGT
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7PURYOG
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7RACTEN
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7RDINO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7RDIPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7REGSKL
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7REQUIR
      1  "STATE REQUIREMENT"  
      2  "DISTRICT REQUIREMENT"  
      3  "SCHOOL REQUIREMENT"  
      4  "OTHER"  
      5  "NO REQUIREMENT"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7RLCH_I
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7SCTYP
      1  "CATHOLIC"  
      2  "OTHER RELIGIOUS"  
      3  "OTHER PRIVATE"  
      4  "PUBLIC"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define S7SPDNO
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7SPDPCT
      1  "LESS THAN 1%"  
      2  "1% TO LESS THAN 5%"  
      3  "5% TO LESS THAN 10%"  
      4  "10% TO LESS THAN 25%"  
      5  "25% OR MORE"  
      -1  "INAPPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7STNDRD
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7STORE
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7THEFT
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7TNSION
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7TRNOVR
      1  "STRONGLY DISAGREE"  
      2  "DISAGREE"  
      3  "NEITHER AGREE NOR DISAGREE"  
      4  "AGREE"  
      5  "STRONGLY AGREE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7USDABR
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7VANDAL
      1  "HAPPENS DAILY"  
      2  "HAPPENS AT LEAST ONCE A WEEK"  
      3  "HAPPENS AT LEAST ONCE A MONTH"  
      4  "HAPPENS ON OCCASION"  
      5  "NEVER HAPPENS"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7VCANCY
      1  "BIG PROBLEM"  
      2  "SOMEWHAT OF A PROBLEM"  
      3  "NO PROBLEM"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7VENDIN
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define S7WHTFLG
      1  "PERCENT"  
      2  "NUMBER"  
      -9  "NOT ASCERTAINED"  
;
   label define S7YYCOMP
      2007  "2007"  
;
   label define T7GLVL
      0  "KINDERGARTEN"  
      1  "FIRST GRADE"  
      2  "SECOND GRADE"  
      3  "THIRD GRADE"  
      4  "FOURTH GRADE"  
      5  "FIFTH GRADE"  
      6  "SIXTH GRADE"  
      7  "SEVENTH GRADE"  
      8  "EIGHTH GRADE"  
      9  "NINTH GRADE"  
      10  "TENTH GRADE"  
      13  "UNGRADED CLASSROOM"  
      -9  "NOT ASCERTAINED"  
;
   label define W8INCCAT
      1  "$5,000 OR LESS"  
      2  "$5,001 TO $10,000"  
      3  "$10,001 TO $15,000"  
      4  "$15,001 TO $20,000"  
      5  "$20,001 TO $25,000"  
      6  "$25,001 TO $30,000"  
      7  "$30,001 TO $35,000"  
      8  "$35,001 TO $40,000"  
      9  "$40,001 TO $50,000"  
      10  "$50,001 TO $75,000"  
      11  "$75,001 TO $100,000"  
      12  "$100,001 TO $200,000"  
      13  "$200,001 OR MORE"  
;
   label define W8PARED
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
;
   label define W8PED
      1  "8TH GRADE OR BELOW"  
      2  "9TH - 12TH GRADE"  
      3  "HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "VOC/TECH PROGRAM"  
      5  "SOME COLLEGE"  
      6  "BACHELOR'S DEGREE"  
      7  "GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "MASTER'S DEGREE (MA, MS)"  
      9  "DOCTORATE OR PROFESSIONAL DEGREE"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define W8POVRTY
      1  "BELOW POVERTY THRESHOLD"  
      2  "AT OR ABOVE POVERTY THRESHOLD"  
;
   label define W8SESQ8F
      1  "FIRST QUINTILE"  
      2  "SECOND QUINTILE"  
      3  "THIRD QUINTILE"  
      4  "FOURTH QUINTILE"  
      5  "FIFTH QUINTILE"  
;
   label define P5JOI
      1  "JOINED ROUND 1"  
      2  "JOINED ROUND 2"  
      3  "JOINED ROUND 3"  
      4  "JOINED ROUND 4"  
      5  "JOINED ROUND 5"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P5PER
      1  "RESPONDENT"  
      2  "FOCAL CHILD"  
      3  "TWIN"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P5RDP
      1  "DEPARTED ROUND 1"  
      2  "DEPARTED ROUND 2"  
      3  "DEPARTED ROUND 3"  
      4  "DEPARTED ROUND 4"  
      5  "DEPARTED ROUND 5"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define PBROTHER
      1  "FULL BROTHER"  
      2  "HALF BROTHER"  
      3  "STEP BROTHER"  
      4  "ADOPTIVE BROTHER"  
      5  "FOSTER BROTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PFATHER
      1  "BIRTH FATHER"  
      2  "ADOPTIVE FATHER"  
      3  "STEP FATHER"  
      4  "FOSTER FATHER OR MALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PMALEFEM
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PMOTHER
      1  "BIRTH MOTHER"  
      2  "ADOPTIVE MOTHER"  
      3  "STEP MOTHER"  
      4  "FOSTER MOTHER OR FEMALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PNONRELA
      1  "GIRLFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      2  "BOYFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      3  "FEMALE GUARDIAN"  
      4  "MALE GUARDIAN"  
      5  "DAUGHTER/SON OF PARENT'S PARTNER"  
      6  "OTHER RELATIVE OF PARENT'S PARTNER"  
      7  "OTHER NONRELATIVE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PRELATIO
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND OR PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NON-RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PSISTER
      1  "FULL SISTER"  
      2  "HALF SISTER"  
      3  "STEP SISTER"  
      4  "ADOPTIVE SISTER"  
      5  "FOSTER SISTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define PWHYLEFT
      1  "SEPARATION OR DIVORCE"  
      2  "ATTENDING COLLEGE OR BOARDING SCHOOL"  
      3  "LIVING ELSEWHERE FOR EMPLOYMENT-RELATED REASONS"  
      4  "DECEASED"  
      5  "MOVED ON"  
      6  "ROSTER ERROR"  
      7  "MOVED BACK WITH PARENTS"  
      91  "SOME OTHER REASON"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P20005F
      1  "RESPONDENT"  
      2  "FOCAL CHILD"  
      3  "TWIN"  
      -1  "NOT APPLICABLE"  
;
   label define P20006F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20007F
      1  "SEPARATION OR DIVORCE"  
      2  "ATTENDING COLLEGE/BOARDING SCHOOL"  
      3  "LIVING ELSEWHERE FOR EMPL-RELATED"  
      4  "DECEASED"  
      5  "SOME OTHER REASON"  
      6  "MOVED ON"  
      7  "ROSTER ERROR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20008F
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20009F
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NONRELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20010F
      1  "BIRTH MOTHER"  
      2  "ADOPTIVE MOTHER"  
      3  "STEP MOTHER"  
      4  "FOSTER MOTHER OR FEMALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20011F
      1  "BIRTH FATHER"  
      2  "ADOPTIVE FATHER"  
      3  "STEP FATHER"  
      4  "FOSTER FATHER/MALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20012F
      1  "FULL SISTER"  
      2  "HALF SISTER"  
      3  "STEP SISTER"  
      4  "ADOPTIVE SISTER"  
      5  "FOSTER SISTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20013F
      1  "FULL BROTHER"  
      2  "HALF BROTHER"  
      3  "STEP BROTHER"  
      4  "ADOPTIVE BROTHER"  
      5  "FOSTER BROTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20014F
      1  "GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      2  "BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      3  "FEMALE GUARDIAN"  
      4  "MALE GUARDIAN"  
      5  "DAUGHTER OR SON OF PARENT'S PARTNER"  
      6  "OTHER RELATIVE OF PARENT'S PARTNER"  
      7  "OTHER NONRELATIVE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20015F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define P20016F
      1  "JOINED ROUND 1"  
      2  "JOINED ROUND 2"  
      3  "JOINED ROUND 3"  
      4  "JOINED ROUND 4"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define P20147F
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P20148F
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NONRELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P20149F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P20150F
      1  "DEPARTED ROUND 1"  
      2  "DEPARTED ROUND 2"  
      3  "DEPARTED ROUND 3"  
      4  "DEPARTED ROUND 4"  
      -1  "NOT APPLICABLE"  
      -9  "NOT ASCERTAINED"  
;
   label define R10356F
      1  "RESPONDENT"  
      2  "FOCAL CHILD"  
      3  "TWIN"  
      -1  "NOT APPLICABLE"  
;
   label define R10500F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10501F
      1  "MALE"  
      2  "FEMALE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10530F
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NON-RELATIVE"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10531F
      1  "BIRTH MOTHER"  
      2  "ADOPTIVE MOTHER"  
      3  "STEP MOTHER"  
      4  "FOSTER MOTHER OR FEMALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10532F
      1  "BIRTH FATHER"  
      2  "ADOPTIVE FATHER"  
      3  "STEP FATHER"  
      4  "FOSTER FATHER OR MALE GUARDIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10533F
      1  "FULL SISTER"  
      2  "HALF SISTER"  
      3  "STEP SISTER"  
      4  "ADOPTIVE SISTER"  
      5  "FOSTER SISTER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10534F
      1  "FULL BROTHER"  
      2  "HALF BROTHER"  
      3  "STEP BROTHER"  
      4  "ADOPTIVE BROTHER"  
      5  "FOSTER BROTHER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10535F
      1  "GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      2  "BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      3  "FEMALE GUARDIAN"  
      4  "MALE GUARDIAN"  
      5  "DAUGHTER OR SON OF PARENT'S PARTNER"  
      6  "OTHER RELATIVE OF PARENT'S PARTNER"  
      7  "OTHER NON-RELATIVE (SPECIFY)"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10536F
      1  "YES"  
      2  "NO"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10637F
      1  "RESPONDENT"  
      2  "FOCAL CHILD"  
      3  "TWIN"  
;
   label define R10640F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10641F
      1  "MALE"  
      2  "FEMALE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10643F
      1  "MOTHER/FEMALE GUARDIAN"  
      2  "FATHER/MALE GUARDIAN"  
      3  "SISTER"  
      4  "BROTHER"  
      5  "GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "GRANDMOTHER"  
      8  "GRANDFATHER"  
      9  "AUNT"  
      10  "UNCLE"  
      11  "COUSIN"  
      12  "OTHER RELATIVE"  
      13  "OTHER NON-RELATIVE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10644F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
;
   label define R10649F
      1  "YES"  
      2  "NO"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P3REASL
      1  "SEPARATION OR DIVORCE"  
      2  "ATTENDING COLLEGE/BOARDING SCHOOL"  
      3  "LIVING ELSEWHERE FOR EMPL-RELATED"  
      4  "DECEASED"  
      5  "SOME OTHER REASON"  
      6  "MOVED ON"  
      7  "ROSTER ERROR"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4ASIABD
      1  "ASIAN INDIAN"  
      2  "CHINESE"  
      3  "FILIPINO"  
      4  "JAPANESE"  
      5  "KOREAN"  
      6  "VIETNAMESE"  
      7  "HMONG"  
      8  "OTHER ASIAN"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4HISPBD
      1  "MEXICAN, MEXICAN AMERICAN, OR CHICANO"  
      2  "PUERTO RICAN"  
      3  "CUBAN"  
      4  "OTHER SPANISH/HISPANIC/LATINO GROUP"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label define P4PACIBD
      1  "NATIVE HAWAIIAN"  
      2  "GUAMANIAN OR CHAMORRO"  
      3  "SAMOAN"  
      4  "OTHER PACIFIC ISLANDER"  
      -1  "NOT APPLICABLE"  
      -7  "REFUSED"  
      -8  "DON'T KNOW"  
      -9  "NOT ASCERTAINED"  
;
   label values A13YROL _1789F;
   label values A14YROL _1789F;
   label values A15YROL _1789F;
   label values A16YROL _1789F;
   label values A17YROL _1789F;
   label values A18YROL _1789F;
   label values A19YROL _1789F;
   label values A1AMRIN _1789F;
   label values A1ASIAN _1789F;
   label values A1BLACK _1789F;
   label values A1BOYS _1789F;
   label values A1COMPDD _1789F;
   label values A1DYSWK _1789F;
   label values A1ESLOU _1789F;
   label values A1ESLRE _1789F;
   label values A1GIRLS _1789F;
   label values A1HISP _1789F;
   label values A1HRSDA _1789F;
   label values A1LETT _1789F;
   label values A1NOESL _1789F;
   label values A1NUMLE _1789F;
   label values A1PBLK _1789F;
   label values A1PHIS _1789F;
   label values A1PMIN _1789F;
   label values A1RACEO _1789F;
   label values A1REPK _1789F;
   label values A1SNTNC _1789F;
   label values A1TOTAG _1789F;
   label values A1TOTRA _1789F;
   label values A1WHITE _1789F;
   label values A1WORD _1789F;
   label values A2ABSEN _1789F;
   label values A2DDCOMP _1789F;
   label values A2DELAY _1789F;
   label values A2DISAB _1789F;
   label values A2DYRECS _1789F;
   label values A2EMPRB _1789F;
   label values A2ESLNON _1789F;
   label values A2ESLWRK _1789F;
   label values A2GIFT _1789F;
   label values A2HEAR _1789F;
   label values A2IEP _1789F;
   label values A2IMPAI _1789F;
   label values A2LEFT _1789F;
   label values A2LRNDI _1789F;
   label values A2MNAIDE _1789F;
   label values A2MNEXTR _1789F;
   label values A2MNOSHP _1789F;
   label values A2MNPOIN _1789F;
   label values A2MNSPEC _1789F;
   label values A2MORE _1789F;
   label values A2MTHBL _1789F;
   label values A2NEW _1789F;
   label values A2NUMRD _1789F;
   label values A2NUMTH _1789F;
   label values A2ORTHO _1789F;
   label values A2OTDIS _1789F;
   label values A2OTHER _1789F;
   label values A2PDAIDE _1789F;
   label values A2PRTGF _1789F;
   label values A2RDBLO _1789F;
   label values A2REGNON _1789F;
   label values A2REGWRK _1789F;
   label values A2RETAR _1789F;
   label values A2SC504 _1789F;
   label values A2SPCIA _1789F;
   label values A2SPEDNO _1789F;
   label values A2SPEDWK _1789F;
   label values A2TARDY _1789F;
   label values A2TRAUM _1789F;
   label values A2VHRS _1789F;
   label values A2VIS _1789F;
   label values A410YRMO _1789F;
   label values A45YRSLS _1789F;
   label values A46YROL _1789F;
   label values A47YROL _1789F;
   label values A48YROL _1789F;
   label values A49YROL _1789F;
   label values A4ABSEN _1789F;
   label values A4AMRIN _1789F;
   label values A4ASIAN _1789F;
   label values A4ATNDK _1789F;
   label values A4BLACK _1789F;
   label values A4BOYS _1789F;
   label values A4DDCOM _1789F;
   label values A4DELAY _1789F;
   label values A4DISAB _1789F;
   label values A4DYRECS _1789F;
   label values A4EMPRB _1789F;
   label values A4ESLIT _1789F;
   label values A4ESLOT _1789F;
   label values A4ESLOU _1789F;
   label values A4ESLRE _1789F;
   label values A4GIFT _1789F;
   label values A4GIRLS _1789F;
   label values A4HEAR _1789F;
   label values A4HISP _1789F;
   label values A4IEP _1789F;
   label values A4IMPAI _1789F;
   label values A4K3YRO _1789F;
   label values A4K4YRO _1789F;
   label values A4K5YRO _1789F;
   label values A4K6YRO _1789F;
   label values A4K7YRO _1789F;
   label values A4K8YRO _1789F;
   label values A4K9YRO _1789F;
   label values A4KABSE _1789F;
   label values A4KAMRI _1789F;
   label values A4KASIA _1789F;
   label values A4KBLAC _1789F;
   label values A4KBOYS _1789F;
   label values A4KDDCOM _1789F;
   label values A4KDELA _1789F;
   label values A4KDISA _1789F;
   label values A4KDYREC _1789F;
   label values A4KDYSW _1789F;
   label values A4KEMPR _1789F;
   label values A4KESLIT _1789F;
   label values A4KESLOT _1789F;
   label values A4KGIFT _1789F;
   label values A4KGIRL _1789F;
   label values A4KHEAR _1789F;
   label values A4KHISP _1789F;
   label values A4KHRSD _1789F;
   label values A4KIEP _1789F;
   label values A4KIMPA _1789F;
   label values A4KLEFT _1789F;
   label values A4KLETT _1789F;
   label values A4KLRND _1789F;
   label values A4KMNAID _1789F;
   label values A4KMNEXT _1789F;
   label values A4KMNOSH _1789F;
   label values A4KMNPOI _1789F;
   label values A4KMNSPE _1789F;
   label values A4KMORE _1789F;
   label values A4KMTHB _1789F;
   label values A4KNEW _1789F;
   label values A4KNUMRD _1789F;
   label values A4KNUMTH _1789F;
   label values A4KORTH _1789F;
   label values A4KOTHE _1789F;
   label values A4KPDAID _1789F;
   label values A4KPRTG _1789F;
   label values A4KRACE _1789F;
   label values A4KRDBL _1789F;
   label values A4KREGIT _1789F;
   label values A4KREGOT _1789F;
   label values A4KREPK _1789F;
   label values A4KSC50 _1789F;
   label values A4KSNTN _1789F;
   label values A4KSPCI _1789F;
   label values A4KSPEIT _1789F;
   label values A4KSPEOT _1789F;
   label values A4KTAGE _1789F;
   label values A4KTARD _1789F;
   label values A4KTOTR _1789F;
   label values A4KVHRS _1789F;
   label values A4KVIS _1789F;
   label values A4KWHIT _1789F;
   label values A4KWORD _1789F;
   label values A4LEFT _1789F;
   label values A4LETT _1789F;
   label values A4LRNDI _1789F;
   label values A4MNAIDE _1789F;
   label values A4MNEXTR _1789F;
   label values A4MNOSHP _1789F;
   label values A4MNPOIN _1789F;
   label values A4MNSPEC _1789F;
   label values A4MORE _1789F;
   label values A4MTHABV _1789F;
   label values A4MTHBL _1789F;
   label values A4NEW _1789F;
   label values A4NOESL _1789F;
   label values A4NUMLE _1789F;
   label values A4NUMRD _1789F;
   label values A4NUMTH _1789F;
   label values A4ORTHO _1789F;
   label values A4OTHER _1789F;
   label values A4PDAIDE _1789F;
   label values A4PRTGF _1789F;
   label values A4RACEO _1789F;
   label values A4RDABV _1789F;
   label values A4RDBLO _1789F;
   label values A4REGIT _1789F;
   label values A4REGOT _1789F;
   label values A4REP1ST _1789F;
   label values A4SC504 _1789F;
   label values A4SNTNC _1789F;
   label values A4SPCIA _1789F;
   label values A4SPECIT _1789F;
   label values A4SPECOT _1789F;
   label values A4TARDY _1789F;
   label values A4TOTAG _1789F;
   label values A4TOTRA _1789F;
   label values A4TRAUM _1789F;
   label values A4VIS _1789F;
   label values A4VOLHRS _1789F;
   label values A4VOLIT _1789F;
   label values A4VOLOT _1789F;
   label values A4WHITE _1789F;
   label values A4WORD _1789F;
   label values A510YROL _1789F;
   label values A511YRMO _1789F;
   label values A57YRSLS _1789F;
   label values A58YROL _1789F;
   label values A59YROL _1789F;
   label values A5ABSEN _1789F;
   label values A5AMRIN _1789F;
   label values A5ASIAN _1789F;
   label values A5BLACK _1789F;
   label values A5BOYS _1789F;
   label values A5CLSZ _1789F;
   label values A5COMPUT _1789F;
   label values A5COMUSE _1789F;
   label values A5DDCOM _1789F;
   label values A5DELAY _1789F;
   label values A5DISAB _1789F;
   label values A5DYRECS _1789F;
   label values A5ECHABK _1789F;
   label values A5ELFSBR _1789F;
   label values A5ELFSLU _1789F;
   label values A5ELRPBR _1789F;
   label values A5ELRPLU _1789F;
   label values A5EMPRB _1789F;
   label values A5ESLINS _1789F;
   label values A5ESLOU _1789F;
   label values A5ESLRE _1789F;
   label values A5ESLXIN _1789F;
   label values A5FLCHAP _1789F;
   label values A5GIFT _1789F;
   label values A5GIRLS _1789F;
   label values A5HEAR _1789F;
   label values A5HISP _1789F;
   label values A5HRPAID _1789F;
   label values A5IEP _1789F;
   label values A5IMPAI _1789F;
   label values A5INET _1789F;
   label values A5LEFT _1789F;
   label values A5LRNDI _1789F;
   label values A5MNAIDE _1789F;
   label values A5MNEXTR _1789F;
   label values A5MNOSHP _1789F;
   label values A5MNPOIN _1789F;
   label values A5MNSPEC _1789F;
   label values A5MORE _1789F;
   label values A5MTHABV _1789F;
   label values A5MTHBL _1789F;
   label values A5NEW _1789F;
   label values A5NOESL _1789F;
   label values A5NUMLE _1789F;
   label values A5NUMRD _1789F;
   label values A5NUMTH _1789F;
   label values A5ORTHO _1789F;
   label values A5OTHER _1789F;
   label values A5PRTGF _1789F;
   label values A5RACEO _1789F;
   label values A5RDABV _1789F;
   label values A5RDBLO _1789F;
   label values A5REGINS _1789F;
   label values A5REGXIN _1789F;
   label values A5REPEAT _1789F;
   label values A5SC504 _1789F;
   label values A5SNTNC _1789F;
   label values A5SPCIA _1789F;
   label values A5SPEINS _1789F;
   label values A5SPEXIN _1789F;
   label values A5TARDY _1789F;
   label values A5TOTAG _1789F;
   label values A5TOTRA _1789F;
   label values A5TRAUM _1789F;
   label values A5TSTPRP _1789F;
   label values A5VIS _1789F;
   label values A5VOLHRS _1789F;
   label values A5VOLIT _1789F;
   label values A5VOLOT _1789F;
   label values A5WHITE _1789F;
   label values B1AGE _1789F;
   label values B1DDCOMP _1789F;
   label values B1YRBORN _1789F;
   label values B1YRS2T5 _1789F;
   label values B1YRS6PL _1789F;
   label values B1YRSART _1789F;
   label values B1YRSBIL _1789F;
   label values B1YRSCH _1789F;
   label values B1YRSESL _1789F;
   label values B1YRSFST _1789F;
   label values B1YRSKIN _1789F;
   label values B1YRSPE _1789F;
   label values B1YRSPRE _1789F;
   label values B1YRSSPE _1789F;
   label values B2AGE _1789F;
   label values B2DDCOMP _1789F;
   label values B2YRBORN _1789F;
   label values B2YRS2T5 _1789F;
   label values B2YRS6PL _1789F;
   label values B2YRSART _1789F;
   label values B2YRSBIL _1789F;
   label values B2YRSCH _1789F;
   label values B2YRSESL _1789F;
   label values B2YRSFST _1789F;
   label values B2YRSKIN _1789F;
   label values B2YRSPE _1789F;
   label values B2YRSPRE _1789F;
   label values B2YRSSPE _1789F;
   label values B4AGE _1789F;
   label values B4DDCOMP _1789F;
   label values B4KDDCOM _1789F;
   label values B4KYRBOR _1789F;
   label values B4KYRS2T _1789F;
   label values B4KYRS6P _1789F;
   label values B4KYRSAR _1789F;
   label values B4KYRSBI _1789F;
   label values B4KYRSCH _1789F;
   label values B4KYRSES _1789F;
   label values B4KYRSFS _1789F;
   label values B4KYRSKI _1789F;
   label values B4KYRSPE _1789F;
   label values B4KYRSPR _1789F;
   label values B4KYRSSP _1789F;
   label values B4KYRSTC _1789F;
   label values B4YRBORN _1789F;
   label values B4YRS2T5 _1789F;
   label values B4YRS6PL _1789F;
   label values B4YRSART _1789F;
   label values B4YRSBIL _1789F;
   label values B4YRSCH _1789F;
   label values B4YRSESL _1789F;
   label values B4YRSFST _1789F;
   label values B4YRSKIN _1789F;
   label values B4YRSPE _1789F;
   label values B4YRSPRE _1789F;
   label values B4YRSSPE _1789F;
   label values B4YRSTC _1789F;
   label values B5DDCOMP _1789F;
   label values B5MAWKSP _1789F;
   label values B5RDWKSP _1789F;
   label values B5SCWKSP _1789F;
   label values B5SSWKSP _1789F;
   label values B5YRBORN _1789F;
   label values B5YRSCH _1789F;
   label values B5YRSGRA _1789F;
   label values B5YRSTC _1789F;
   label values C1BMI _1789F;
   label values C1CMOTOR _1789F;
   label values C1FMOTOR _1789F;
   label values C1GMOTOR _1789F;
   label values C1HEIGHT _1789F;
   label values C1R4MNOR _1789F;
   label values C1R4MPB1 _1789F;
   label values C1R4MPB2 _1789F;
   label values C1R4MPB3 _1789F;
   label values C1R4MPB4 _1789F;
   label values C1R4MPB5 _1789F;
   label values C1R4MPB6 _1789F;
   label values C1R4MPB7 _1789F;
   label values C1R4MPB8 _1789F;
   label values C1R4MPB9 _1789F;
   label values C1R4MSCL _1789F;
   label values C1R4MSET _1789F;
   label values C1R4MTSC _1789F;
   label values C1R4RNOR _1789F;
   label values C1R4RP10 _1789F;
   label values C1R4RPB1 _1789F;
   label values C1R4RPB2 _1789F;
   label values C1R4RPB3 _1789F;
   label values C1R4RPB4 _1789F;
   label values C1R4RPB5 _1789F;
   label values C1R4RPB6 _1789F;
   label values C1R4RPB7 _1789F;
   label values C1R4RPB8 _1789F;
   label values C1R4RPB9 _1789F;
   label values C1R4RSCL _1789F;
   label values C1R4RSET _1789F;
   label values C1R4RTSC _1789F;
   label values C1RGRONR _1789F;
   label values C1RGSCAL _1789F;
   label values C1RGSET _1789F;
   label values C1RGTSCO _1789F;
   label values C1SCART _1789F;
   label values C1SCORD _1789F;
   label values C1SCSTO _1789F;
   label values C1SCTOT _1789F;
   label values C1SSCART _1789F;
   label values C1SSCORD _1789F;
   label values C1SSCSTO _1789F;
   label values C1SSCTOT _1789F;
   label values C1WEIGHT _1789F;
   label values C2BMI _1789F;
   label values C2HEIGHT _1789F;
   label values C2R4MNOR _1789F;
   label values C2R4MPB1 _1789F;
   label values C2R4MPB2 _1789F;
   label values C2R4MPB3 _1789F;
   label values C2R4MPB4 _1789F;
   label values C2R4MPB5 _1789F;
   label values C2R4MPB6 _1789F;
   label values C2R4MPB7 _1789F;
   label values C2R4MPB8 _1789F;
   label values C2R4MPB9 _1789F;
   label values C2R4MSCL _1789F;
   label values C2R4MSET _1789F;
   label values C2R4MTSC _1789F;
   label values C2R4RNOR _1789F;
   label values C2R4RP10 _1789F;
   label values C2R4RPB1 _1789F;
   label values C2R4RPB2 _1789F;
   label values C2R4RPB3 _1789F;
   label values C2R4RPB4 _1789F;
   label values C2R4RPB5 _1789F;
   label values C2R4RPB6 _1789F;
   label values C2R4RPB7 _1789F;
   label values C2R4RPB8 _1789F;
   label values C2R4RPB9 _1789F;
   label values C2R4RSCL _1789F;
   label values C2R4RSET _1789F;
   label values C2R4RTSC _1789F;
   label values C2RGRONR _1789F;
   label values C2RGSCAL _1789F;
   label values C2RGSET _1789F;
   label values C2RGTSCO _1789F;
   label values C2SCART _1789F;
   label values C2SCORD _1789F;
   label values C2SCSTO _1789F;
   label values C2SCTOT _1789F;
   label values C2SSCART _1789F;
   label values C2SSCORD _1789F;
   label values C2SSCSTO _1789F;
   label values C2SSCTOT _1789F;
   label values C2WEIGHT _1789F;
   label values C3ASMTDD _1789F;
   label values C3BMI _1789F;
   label values C3HEIGHT _1789F;
   label values C3HGT1 _1789F;
   label values C3HGT2 _1789F;
   label values C3R4MNOR _1789F;
   label values C3R4MPB1 _1789F;
   label values C3R4MPB2 _1789F;
   label values C3R4MPB3 _1789F;
   label values C3R4MPB4 _1789F;
   label values C3R4MPB5 _1789F;
   label values C3R4MPB6 _1789F;
   label values C3R4MPB7 _1789F;
   label values C3R4MPB8 _1789F;
   label values C3R4MPB9 _1789F;
   label values C3R4MSCL _1789F;
   label values C3R4MSET _1789F;
   label values C3R4MTSC _1789F;
   label values C3R4RNOR _1789F;
   label values C3R4RP10 _1789F;
   label values C3R4RPB1 _1789F;
   label values C3R4RPB2 _1789F;
   label values C3R4RPB3 _1789F;
   label values C3R4RPB4 _1789F;
   label values C3R4RPB5 _1789F;
   label values C3R4RPB6 _1789F;
   label values C3R4RPB7 _1789F;
   label values C3R4RPB8 _1789F;
   label values C3R4RPB9 _1789F;
   label values C3R4RSCL _1789F;
   label values C3R4RSET _1789F;
   label values C3R4RTSC _1789F;
   label values C3RGRONR _1789F;
   label values C3RGSCAL _1789F;
   label values C3RGSET _1789F;
   label values C3RGTSCO _1789F;
   label values C3SCART _1789F;
   label values C3SCORD _1789F;
   label values C3SCSTO _1789F;
   label values C3SCTOT _1789F;
   label values C3SSCART _1789F;
   label values C3SSCORD _1789F;
   label values C3SSCSTO _1789F;
   label values C3SSCTOT _1789F;
   label values C3WEIGHT _1789F;
   label values C3WGT1 _1789F;
   label values C3WGT2 _1789F;
   label values C4BMI _1789F;
   label values C4HEIGHT _1789F;
   label values C4HGT1 _1789F;
   label values C4HGT2 _1789F;
   label values C4R4MNOR _1789F;
   label values C4R4MPB1 _1789F;
   label values C4R4MPB2 _1789F;
   label values C4R4MPB3 _1789F;
   label values C4R4MPB4 _1789F;
   label values C4R4MPB5 _1789F;
   label values C4R4MPB6 _1789F;
   label values C4R4MPB7 _1789F;
   label values C4R4MPB8 _1789F;
   label values C4R4MPB9 _1789F;
   label values C4R4MSCL _1789F;
   label values C4R4MSET _1789F;
   label values C4R4MTSC _1789F;
   label values C4R4RNOR _1789F;
   label values C4R4RP10 _1789F;
   label values C4R4RPB1 _1789F;
   label values C4R4RPB2 _1789F;
   label values C4R4RPB3 _1789F;
   label values C4R4RPB4 _1789F;
   label values C4R4RPB5 _1789F;
   label values C4R4RPB6 _1789F;
   label values C4R4RPB7 _1789F;
   label values C4R4RPB8 _1789F;
   label values C4R4RPB9 _1789F;
   label values C4R4RSCL _1789F;
   label values C4R4RSET _1789F;
   label values C4R4RTSC _1789F;
   label values C4RGRONR _1789F;
   label values C4RGSCAL _1789F;
   label values C4RGSET _1789F;
   label values C4RGTSCO _1789F;
   label values C4SCART _1789F;
   label values C4SCORD _1789F;
   label values C4SCSTO _1789F;
   label values C4SCTOT _1789F;
   label values C4SSCART _1789F;
   label values C4SSCORD _1789F;
   label values C4SSCSTO _1789F;
   label values C4SSCTOT _1789F;
   label values C4WEIGHT _1789F;
   label values C4WGT1 _1789F;
   label values C4WGT2 _1789F;
   label values C5BMI _1789F;
   label values C5EARTSC _1789F;
   label values C5HEIGHT _1789F;
   label values C5HGT1 _1789F;
   label values C5HGT2 _1789F;
   label values C5LIFESC _1789F;
   label values C5PHYSSC _1789F;
   label values C5R2SNR3 _1789F;
   label values C5R2SSCL _1789F;
   label values C5R2SSET _1789F;
   label values C5R2STSC _1789F;
   label values C5R4MNR3 _1789F;
   label values C5R4MPB1 _1789F;
   label values C5R4MPB2 _1789F;
   label values C5R4MPB3 _1789F;
   label values C5R4MPB4 _1789F;
   label values C5R4MPB5 _1789F;
   label values C5R4MPB6 _1789F;
   label values C5R4MPB7 _1789F;
   label values C5R4MPB8 _1789F;
   label values C5R4MPB9 _1789F;
   label values C5R4MSCL _1789F;
   label values C5R4MSET _1789F;
   label values C5R4MTSC _1789F;
   label values C5R4RNR3 _1789F;
   label values C5R4RP10 _1789F;
   label values C5R4RPB1 _1789F;
   label values C5R4RPB2 _1789F;
   label values C5R4RPB3 _1789F;
   label values C5R4RPB4 _1789F;
   label values C5R4RPB5 _1789F;
   label values C5R4RPB6 _1789F;
   label values C5R4RPB7 _1789F;
   label values C5R4RPB8 _1789F;
   label values C5R4RPB9 _1789F;
   label values C5R4RSCL _1789F;
   label values C5R4RSET _1789F;
   label values C5R4RTSC _1789F;
   label values C5SDQEXR _1789F;
   label values C5SDQINR _1789F;
   label values C5SDQMTR _1789F;
   label values C5SDQPRC _1789F;
   label values C5SDQRDC _1789F;
   label values C5SDQSBC _1789F;
   label values C5WEIGHT _1789F;
   label values C5WGT1 _1789F;
   label values C5WGT2 _1789F;
   label values C6ASMTDD _1789F;
   label values C6BMI _1789F;
   label values C6EARTS5 _1789F;
   label values C6EARTSC _1789F;
   label values C6HEIGHT _1789F;
   label values C6HGT1 _1789F;
   label values C6HGT2 _1789F;
   label values C6LIFES5 _1789F;
   label values C6LIFESC _1789F;
   label values C6PHYSS5 _1789F;
   label values C6PHYSSC _1789F;
   label values C6R2SNR5 _1789F;
   label values C6R2SSCL _1789F;
   label values C6R2SSET _1789F;
   label values C6R2STSC _1789F;
   label values C6R3RDEC _1789F;
   label values C6R4MNR5 _1789F;
   label values C6R4MPB1 _1789F;
   label values C6R4MPB2 _1789F;
   label values C6R4MPB3 _1789F;
   label values C6R4MPB4 _1789F;
   label values C6R4MPB5 _1789F;
   label values C6R4MPB6 _1789F;
   label values C6R4MPB7 _1789F;
   label values C6R4MPB8 _1789F;
   label values C6R4MPB9 _1789F;
   label values C6R4MSCL _1789F;
   label values C6R4MSET _1789F;
   label values C6R4MTSC _1789F;
   label values C6R4RNR5 _1789F;
   label values C6R4RP10 _1789F;
   label values C6R4RPB1 _1789F;
   label values C6R4RPB2 _1789F;
   label values C6R4RPB3 _1789F;
   label values C6R4RPB4 _1789F;
   label values C6R4RPB5 _1789F;
   label values C6R4RPB6 _1789F;
   label values C6R4RPB7 _1789F;
   label values C6R4RPB8 _1789F;
   label values C6R4RPB9 _1789F;
   label values C6R4RSCL _1789F;
   label values C6R4RSET _1789F;
   label values C6R4RTSC _1789F;
   label values C6SDQEXT _1789F;
   label values C6SDQINT _1789F;
   label values C6SDQMTC _1789F;
   label values C6SDQPRC _1789F;
   label values C6SDQRDC _1789F;
   label values C6SDQSBC _1789F;
   label values C6WEIGHT _1789F;
   label values C6WGT1 _1789F;
   label values C6WGT2 _1789F;
   label values C7ASMTDD _1789F;
   label values C7DDCOMP _1789F;
   label values C7HGT1 _1789F;
   label values C7HGT2 _1789F;
   label values C7HRSCLB _1789F;
   label values C7HRSRD _1789F;
   label values C7HRSWRK _1789F;
   label values C7INTWKD _1789F;
   label values C7INTWKN _1789F;
   label values C7R2SNR8 _1789F;
   label values C7R2SSCL _1789F;
   label values C7R2SSET _1789F;
   label values C7R2STSC _1789F;
   label values C7R4MNR8 _1789F;
   label values C7R4MPB1 _1789F;
   label values C7R4MPB2 _1789F;
   label values C7R4MPB3 _1789F;
   label values C7R4MPB4 _1789F;
   label values C7R4MPB5 _1789F;
   label values C7R4MPB6 _1789F;
   label values C7R4MPB7 _1789F;
   label values C7R4MPB8 _1789F;
   label values C7R4MPB9 _1789F;
   label values C7R4MSCL _1789F;
   label values C7R4MSET _1789F;
   label values C7R4MTSC _1789F;
   label values C7R4RNR8 _1789F;
   label values C7R4RP10 _1789F;
   label values C7R4RPB1 _1789F;
   label values C7R4RPB2 _1789F;
   label values C7R4RPB3 _1789F;
   label values C7R4RPB4 _1789F;
   label values C7R4RPB5 _1789F;
   label values C7R4RPB6 _1789F;
   label values C7R4RPB7 _1789F;
   label values C7R4RPB8 _1789F;
   label values C7R4RPB9 _1789F;
   label values C7R4RSCL _1789F;
   label values C7R4RSET _1789F;
   label values C7R4RTSC _1789F;
   label values C7RDNEWS _1789F;
   label values C7SDQINT _1789F;
   label values C7SDQMTC _1789F;
   label values C7SDQRDC _1789F;
   label values C7TVNEWS _1789F;
   label values C7TVWKDY _1789F;
   label values C7TVWKEN _1789F;
   label values C7VIDWKD _1789F;
   label values C7VIDWKN _1789F;
   label values C7WGT1 _1789F;
   label values C7WGT2 _1789F;
   label values DOBDD _1789F;
   label values DOBYY _1789F;
   label values G6ABSEN _1789F;
   label values G6AMRIN _1789F;
   label values G6ASIAN _1789F;
   label values G6BLACK _1789F;
   label values G6BOYS _1789F;
   label values G6CLSZ _1789F;
   label values G6DDCOM _1789F;
   label values G6DISAB _1789F;
   label values G6ECHABK _1789F;
   label values G6FLCHAP _1789F;
   label values G6FLTEXT _1789F;
   label values G6GIFT _1789F;
   label values G6GIRLS _1789F;
   label values G6HISP _1789F;
   label values G6NUMLE _1789F;
   label values G6NUMRD _1789F;
   label values G6RACEO _1789F;
   label values G6TOTGEN _1789F;
   label values G6TOTRA _1789F;
   label values G6WHITE _1789F;
   label values G7AMRIN _1789F;
   label values G7ASIAN _1789F;
   label values G7BLACK _1789F;
   label values G7BOOK _1789F;
   label values G7DDCOM _1789F;
   label values G7HISP _1789F;
   label values G7LITER _1789F;
   label values G7OTHER _1789F;
   label values G7RACEO _1789F;
   label values G7READNG _1789F;
   label values G7TOTRA _1789F;
   label values G7WHITE _1789F;
   label values G7WRITE _1789F;
   label values J61COMUS _1789F;
   label values J61DDCOM _1789F;
   label values J61DYREC _1789F;
   label values J61ESLIN _1789F;
   label values J61INET _1789F;
   label values J61MAWKS _1789F;
   label values J61RDWKS _1789F;
   label values J61REGIN _1789F;
   label values J61SCWKS _1789F;
   label values J61SPEIN _1789F;
   label values J61SSWKS _1789F;
   label values J61TSTPR _1789F;
   label values J61YRBOR _1789F;
   label values J61YRSCH _1789F;
   label values J61YRSGR _1789F;
   label values J61YRSTC _1789F;
   label values J62COMUS _1789F;
   label values J62DDCOM _1789F;
   label values J62DYREC _1789F;
   label values J62ESLIN _1789F;
   label values J62INET _1789F;
   label values J62MAWKS _1789F;
   label values J62RDWKS _1789F;
   label values J62REGIN _1789F;
   label values J62SCWKS _1789F;
   label values J62SPEIN _1789F;
   label values J62SSWKS _1789F;
   label values J62TSTPR _1789F;
   label values J62YRBOR _1789F;
   label values J62YRSCH _1789F;
   label values J62YRSGR _1789F;
   label values J62YRSTC _1789F;
   label values J71DDCOM _1789F;
   label values J71YRBOR _1789F;
   label values J71YRSCH _1789F;
   label values J71YRSSB _1789F;
   label values J71YRSTC _1789F;
   label values J72DDCOM _1789F;
   label values J72YRBOR _1789F;
   label values J72YRSCH _1789F;
   label values J72YRSSB _1789F;
   label values J72YRSTC _1789F;
   label values K2Q5_OBS _1789F;
   label values K4Q4 _1789F;
   label values K4Q9_OBS _1789F;
   label values K5DDCOM _1789F;
   label values K5PRTCLS _1789F;
   label values K6DDCOM _1789F;
   label values L5DAYSYR _1789F;
   label values L5DD02 _1789F;
   label values M6ABSEN _1789F;
   label values M6AMRIN _1789F;
   label values M6ASIAN _1789F;
   label values M6BLACK _1789F;
   label values M6BOYS _1789F;
   label values M6CLSZ _1789F;
   label values M6DDCOM _1789F;
   label values M6DISAB _1789F;
   label values M6GIFT _1789F;
   label values M6GIRLS _1789F;
   label values M6HISP _1789F;
   label values M6NUMLE _1789F;
   label values M6NUMTH _1789F;
   label values M6RACEO _1789F;
   label values M6TOTGEN _1789F;
   label values M6TOTRA _1789F;
   label values M6WHITE _1789F;
   label values M7ALGEBR _1789F;
   label values M7AMRIN _1789F;
   label values M7ASIAN _1789F;
   label values M7BLACK _1789F;
   label values M7DATA _1789F;
   label values M7DDCOM _1789F;
   label values M7GEOMET _1789F;
   label values M7HISP _1789F;
   label values M7MEASUR _1789F;
   label values M7NUMBER _1789F;
   label values M7OTHMAT _1789F;
   label values M7RACEO _1789F;
   label values M7TOTRA _1789F;
   label values M7WHITE _1789F;
   label values N6ABSEN _1789F;
   label values N6AMRIN _1789F;
   label values N6ASIAN _1789F;
   label values N6BLACK _1789F;
   label values N6BOYS _1789F;
   label values N6CLSZ _1789F;
   label values N6DDCOM _1789F;
   label values N6DISAB _1789F;
   label values N6GIFT _1789F;
   label values N6GIRLS _1789F;
   label values N6HISP _1789F;
   label values N6NUMLE _1789F;
   label values N6RACEO _1789F;
   label values N6TOTGEN _1789F;
   label values N6TOTRA _1789F;
   label values N6WHITE _1789F;
   label values N7AMRIN _1789F;
   label values N7ASIAN _1789F;
   label values N7BLACK _1789F;
   label values N7CHEMSC _1789F;
   label values N7DDCOM _1789F;
   label values N7EARSC _1789F;
   label values N7ENVRSC _1789F;
   label values N7HISP _1789F;
   label values N7LIFESC _1789F;
   label values N7OTHSC _1789F;
   label values N7PHYSSC _1789F;
   label values N7RACEO _1789F;
   label values N7TOTRA _1789F;
   label values N7WHITE _1789F;
   label values P1ADLTL2 _1789F;
   label values P1AGE_10 _1789F;
   label values P1AGE_11 _1789F;
   label values P1AGE_12 _1789F;
   label values P1AGE_13 _1789F;
   label values P1AGE_14 _1789F;
   label values P1AGE_15 _1789F;
   label values P1AGE_16 _1789F;
   label values P1AGE_17 _1789F;
   label values P1AGE_3 _1789F;
   label values P1AGE_4 _1789F;
   label values P1AGE_5 _1789F;
   label values P1AGE_6 _1789F;
   label values P1AGE_7 _1789F;
   label values P1AGE_8 _1789F;
   label values P1AGE_9 _1789F;
   label values P1AGEENT _1789F;
   label values P1AGEFRS _1789F;
   label values P1ALQHH1 _1789F;
   label values P1ALQHH2 _1789F;
   label values P1ALQHH3 _1789F;
   label values P1ALQHH4 _1789F;
   label values P1BDAGE _1789F;
   label values P1BIM_N1 _1789F;
   label values P1BIM_N3 _1789F;
   label values P1BIOLO3 _1789F;
   label values P1BIOLO6 _1789F;
   label values P1BIOWH2 _1789F;
   label values P1BMAFB _1789F;
   label values P1BMAGE _1789F;
   label values P1CADULT _1789F;
   label values P1CAGEMO _1789F;
   label values P1CAGEYR _1789F;
   label values P1CCHLD _1789F;
   label values P1CCSTPK _1789F;
   label values P1CDAYPK _1789F;
   label values P1CDAYS _1789F;
   label values P1CH2_N1 _1789F;
   label values P1CH2_N3 _1789F;
   label values P1CHLAUD _1789F;
   label values P1CHLBOO _1789F;
   label values P1CHROTH _1789F;
   label values P1CHRS _1789F;
   label values P1CHRSPK _1789F;
   label values P1CNUMPK _1789F;
   label values P1CONTRO _1789F;
   label values P1COSTPK _1789F;
   label values P1CTRNUM _1789F;
   label values P1DADID _1789F;
   label values P1DB2_N1 _1789F;
   label values P1DB2_N3 _1789F;
   label values P1DDINT _1789F;
   label values P1EARLY _1789F;
   label values P1EMQHH1 _1789F;
   label values P1EMQHH2 _1789F;
   label values P1HAGEMO _1789F;
   label values P1HAGEYR _1789F;
   label values P1HDAGE _1789F;
   label values P1HMAFB _1789F;
   label values P1HMAGE _1789F;
   label values P1HRS_1 _1789F;
   label values P1HRS_2 _1789F;
   label values P1HRSNOW _1789F;
   label values P1HRSPRK _1789F;
   label values P1HSADLT _1789F;
   label values P1HSCHLD _1789F;
   label values P1HSCOST _1789F;
   label values P1HSDAYS _1789F;
   label values P1HSHRS _1789F;
   label values P1HSNUM _1789F;
   label values P1HTOTAL _1789F;
   label values P1IMPULS _1789F;
   label values P1JOB_1 _1789F;
   label values P1JOB_2 _1789F;
   label values P1LEARN _1789F;
   label values P1LESS18 _1789F;
   label values P1MDLIV2 _1789F;
   label values P1MDLIV4 _1789F;
   label values P1MDWH2 _1789F;
   label values P1MOMID _1789F;
   label values P1MON_1 _1789F;
   label values P1MON_2 _1789F;
   label values P1MON_3 _1789F;
   label values P1MON_4 _1789F;
   label values P1MTHLIV _1789F;
   label values P1NADULT _1789F;
   label values P1NAGEMO _1789F;
   label values P1NAGEYR _1789F;
   label values P1NCHLD _1789F;
   label values P1NCSTPK _1789F;
   label values P1NDAYPK _1789F;
   label values P1NDAYS _1789F;
   label values P1NHROTH _1789F;
   label values P1NHRS _1789F;
   label values P1NHRSPK _1789F;
   label values P1NNUMPK _1789F;
   label values P1NUMKPR _1789F;
   label values P1NUMNOW _1789F;
   label values P1NUMPLA _1789F;
   label values P1NUMSIB _1789F;
   label values P1OLDMOM _1789F;
   label values P1OTHWH2 _1789F;
   label values P1OVER18 _1789F;
   label values P1PEQHH1 _1789F;
   label values P1PEQHH2 _1789F;
   label values P1PEQHH3 _1789F;
   label values P1PEQHH4 _1789F;
   label values P1PLQHH1 _1789F;
   label values P1PLQHH2 _1789F;
   label values P1PLQHH3 _1789F;
   label values P1PLQHH4 _1789F;
   label values P1RADULT _1789F;
   label values P1RAGEMO _1789F;
   label values P1RAGEYR _1789F;
   label values P1RCHLD _1789F;
   label values P1RCSTPK _1789F;
   label values P1RDAYPK _1789F;
   label values P1RDAYS _1789F;
   label values P1RESWH2 _1789F;
   label values P1RHROTH _1789F;
   label values P1RHRS _1789F;
   label values P1RHRSPK _1789F;
   label values P1RNUMPK _1789F;
   label values P1SADLON _1789F;
   label values P1SIN_N1 _1789F;
   label values P1SIN_N2 _1789F;
   label values P1SIN_N3 _1789F;
   label values P1SIN_N4 _1789F;
   label values P1SOCIAL _1789F;
   label values P1STOPYY _1789F;
   label values P1TIMEFI _1789F;
   label values P1WEIGHO _1789F;
   label values P1WEIGHP _1789F;
   label values P1WHENL2 _1789F;
   label values P1WHNCU2 _1789F;
   label values P1WHNLI2 _1789F;
   label values P1WHNMA2 _1789F;
   label values P1WHNSTY _1789F;
   label values P1WKL_1 _1789F;
   label values P1WKL_2 _1789F;
   label values P1WKL_3 _1789F;
   label values P1WKL_4 _1789F;
   label values P1YRS_1 _1789F;
   label values P1YRS_2 _1789F;
   label values P1YRS_3 _1789F;
   label values P1YRS_4 _1789F;
   label values P1YRSLIV _1789F;
   label values P1YYB_N1 _1789F;
   label values P1YYB_N3 _1789F;
   label values P2AGE_1 _1789F;
   label values P2AGE_10 _1789F;
   label values P2AGE_11 _1789F;
   label values P2AGE_12 _1789F;
   label values P2AGE_13 _1789F;
   label values P2AGE_14 _1789F;
   label values P2AGE_15 _1789F;
   label values P2AGE_16 _1789F;
   label values P2AGE_17 _1789F;
   label values P2AGE_2 _1789F;
   label values P2AGE_3 _1789F;
   label values P2AGE_4 _1789F;
   label values P2AGE_5 _1789F;
   label values P2AGE_6 _1789F;
   label values P2AGE_7 _1789F;
   label values P2AGE_8 _1789F;
   label values P2AGE_9 _1789F;
   label values P2BKREG _1789F;
   label values P2BKTOG _1789F;
   label values P2CONTRO _1789F;
   label values P2DADID _1789F;
   label values P2DAY_N1 _1789F;
   label values P2DAY_N2 _1789F;
   label values P2DAY_N3 _1789F;
   label values P2DAY_N4 _1789F;
   label values P2EARLY _1789F;
   label values P2EVENG _1789F;
   label values P2EVENG2 _1789F;
   label values P2FSRAW _1789F;
   label values P2HDAGE _1789F;
   label values P2HMAGE _1789F;
   label values P2HOWPAY _1789F;
   label values P2HTOTAL _1789F;
   label values P2IMPULS _1789F;
   label values P2INCOME _1789F;
   label values P2LATEHR _1789F;
   label values P2LATEMN _1789F;
   label values P2LEARN _1789F;
   label values P2LESS18 _1789F;
   label values P2MOFDST _1789F;
   label values P2MOMID _1789F;
   label values P2NIT_N1 _1789F;
   label values P2NIT_N2 _1789F;
   label values P2NIT_N3 _1789F;
   label values P2NIT_N4 _1789F;
   label values P2NUMBKF _1789F;
   label values P2NUMDAY _1789F;
   label values P2NUMLNC _1789F;
   label values P2NUMSIB _1789F;
   label values P2NUMTVW _1789F;
   label values P2OFTEN1 _1789F;
   label values P2OFTEN2 _1789F;
   label values P2OFTEN3 _1789F;
   label values P2OFTEN4 _1789F;
   label values P2OFTEN5 _1789F;
   label values P2OFTEN6 _1789F;
   label values P2OFTEN7 _1789F;
   label values P2OVER18 _1789F;
   label values P2PCLASS _1789F;
   label values P2PHN_N1 _1789F;
   label values P2PHN_N2 _1789F;
   label values P2PHN_N3 _1789F;
   label values P2PHN_N4 _1789F;
   label values P2RAPID _1789F;
   label values P2SADLON _1789F;
   label values P2SIN_N1 _1789F;
   label values P2SIN_N2 _1789F;
   label values P2SIN_N3 _1789F;
   label values P2SIN_N4 _1789F;
   label values P2SOCIAL _1789F;
   label values P2SPRHHM _1789F;
   label values P2THER14 _1789F;
   label values P2TIMEHR _1789F;
   label values P2TIMEMN _1789F;
   label values P2WEIGHO _1789F;
   label values P2WEIGHP _1789F;
   label values P2WHENAF _1789F;
   label values P2YRCOME _1789F;
   label values P3AGE_1 _1789F;
   label values P3AGE_10 _1789F;
   label values P3AGE_11 _1789F;
   label values P3AGE_12 _1789F;
   label values P3AGE_13 _1789F;
   label values P3AGE_14 _1789F;
   label values P3AGE_15 _1789F;
   label values P3AGE_2 _1789F;
   label values P3AGE_3 _1789F;
   label values P3AGE_4 _1789F;
   label values P3AGE_5 _1789F;
   label values P3AGE_6 _1789F;
   label values P3AGE_7 _1789F;
   label values P3AGE_8 _1789F;
   label values P3AGE_9 _1789F;
   label values P3DCDAYS _1789F;
   label values P3DCHRS _1789F;
   label values P3DCOTHR _1789F;
   label values P3DCWKS _1789F;
   label values P3EARLY _1789F;
   label values P3HRSNOW _1789F;
   label values P3LTOTDD _1789F;
   label values P3NDYPRM _1789F;
   label values P3NHRPRM _1789F;
   label values P3NMDCMP _1789F;
   label values P3NMDTUT _1789F;
   label values P3NMDVAC _1789F;
   label values P3NMHCMP _1789F;
   label values P3NMHTUT _1789F;
   label values P3NMWCMP _1789F;
   label values P3NMWTUT _1789F;
   label values P3NRLNMD _1789F;
   label values P3NRLNMH _1789F;
   label values P3NRLNMW _1789F;
   label values P3NRLOTH _1789F;
   label values P3NUMCMP _1789F;
   label values P3NUMNOW _1789F;
   label values P3NWTHPA _1789F;
   label values P3PREDDD _1789F;
   label values P3PRSTDD _1789F;
   label values P3RELNMD _1789F;
   label values P3RELNMH _1789F;
   label values P3RELNMW _1789F;
   label values P3RELOTH _1789F;
   label values P3STRTDD _1789F;
   label values P3SUMSH _1789F;
   label values P3SUMVD _1789F;
   label values P3THER14 _1789F;
   label values P3TVAFDH _1789F;
   label values P3TVAFDM _1789F;
   label values P3TVBRDH _1789F;
   label values P3TVBRDM _1789F;
   label values P3TVBRKH _1789F;
   label values P3TVBRKM _1789F;
   label values P3TVSATH _1789F;
   label values P3TVSATM _1789F;
   label values P3TVSUNH _1789F;
   label values P3TVSUNM _1789F;
   label values P3VISBKS _1789F;
   label values P3VISLIB _1789F;
   label values P3WEIGHO _1789F;
   label values P3WEIGHP _1789F;
   label values P4AGE_1 _1789F;
   label values P4AGE_10 _1789F;
   label values P4AGE_11 _1789F;
   label values P4AGE_12 _1789F;
   label values P4AGE_13 _1789F;
   label values P4AGE_14 _1789F;
   label values P4AGE_15 _1789F;
   label values P4AGE_16 _1789F;
   label values P4AGE_17 _1789F;
   label values P4AGE_18 _1789F;
   label values P4AGE_19 _1789F;
   label values P4AGE_2 _1789F;
   label values P4AGE_3 _1789F;
   label values P4AGE_4 _1789F;
   label values P4AGE_5 _1789F;
   label values P4AGE_6 _1789F;
   label values P4AGE_7 _1789F;
   label values P4AGE_8 _1789F;
   label values P4AGE_9 _1789F;
   label values P4AGEBIR _1789F;
   label values P4BKREG _1789F;
   label values P4BKTOG _1789F;
   label values P4CADULT _1789F;
   label values P4CCCOST _1789F;
   label values P4CCHLD _1789F;
   label values P4CCNMCH _1789F;
   label values P4CDAYS _1789F;
   label values P4CHGSCH _1789F;
   label values P4CHLBOO _1789F;
   label values P4CHROTH _1789F;
   label values P4CHRS _1789F;
   label values P4CONTRO _1789F;
   label values P4DADID _1789F;
   label values P4DAGEUS _1789F;
   label values P4EARLY _1789F;
   label values P4EDUP1 _1789F;
   label values P4EDUP2 _1789F;
   label values P4EMPP1 _1789F;
   label values P4EMPP2 _1789F;
   label values P4EVENG _1789F;
   label values P4EVENG2 _1789F;
   label values P4HDAGE _1789F;
   label values P4HMAGE _1789F;
   label values P4HOWPAY _1789F;
   label values P4HRS_1 _1789F;
   label values P4HRS_2 _1789F;
   label values P4HRSNOW _1789F;
   label values P4HRTR_1 _1789F;
   label values P4HRTR_2 _1789F;
   label values P4HTOTAL _1789F;
   label values P4HWLGRD _1789F;
   label values P4IMPULS _1789F;
   label values P4JOB_1 _1789F;
   label values P4JOB_2 _1789F;
   label values P4LEARN _1789F;
   label values P4LESS18 _1789F;
   label values P4LRSRVY _1789F;
   label values P4MAGEUS _1789F;
   label values P4MOFDST _1789F;
   label values P4MOMID _1789F;
   label values P4NADULT _1789F;
   label values P4NCCOST _1789F;
   label values P4NCHLD _1789F;
   label values P4NCNMCH _1789F;
   label values P4NDAYS _1789F;
   label values P4NHROTH _1789F;
   label values P4NHRS _1789F;
   label values P4NUMBKF _1789F;
   label values P4NUMDAY _1789F;
   label values P4NUMLNC _1789F;
   label values P4NUMNOW _1789F;
   label values P4NUMPLA _1789F;
   label values P4NUMSIB _1789F;
   label values P4OVER18 _1789F;
   label values P4PCLASS _1789F;
   label values P4RADULT _1789F;
   label values P4RCCOST _1789F;
   label values P4RCHLD _1789F;
   label values P4RCNMCH _1789F;
   label values P4RDAYS _1789F;
   label values P4RHROTH _1789F;
   label values P4RHRS _1789F;
   label values P4SADLON _1789F;
   label values P4SIN_N1 _1789F;
   label values P4SIN_N2 _1789F;
   label values P4SIN_N3 _1789F;
   label values P4SIN_N4 _1789F;
   label values P4SOCIAL _1789F;
   label values P4TARDY _1789F;
   label values P4TIMEHR _1789F;
   label values P4TIMEMN _1789F;
   label values P4TINCTH _1789F;
   label values P4TVAFDH _1789F;
   label values P4TVAFDM _1789F;
   label values P4TVBF8H _1789F;
   label values P4TVBF8M _1789F;
   label values P4TVSATH _1789F;
   label values P4TVSATM _1789F;
   label values P4TVSUNH _1789F;
   label values P4TVSUNM _1789F;
   label values P4TVW3DH _1789F;
   label values P4TVW3DM _1789F;
   label values P4TVW83H _1789F;
   label values P4TVW83M _1789F;
   label values P4WEIGHO _1789F;
   label values P4WEIGHP _1789F;
   label values P4WHENAF _1789F;
   label values P5AGE_1 _1789F;
   label values P5AGE_10 _1789F;
   label values P5AGE_11 _1789F;
   label values P5AGE_12 _1789F;
   label values P5AGE_13 _1789F;
   label values P5AGE_14 _1789F;
   label values P5AGE_15 _1789F;
   label values P5AGE_16 _1789F;
   label values P5AGE_17 _1789F;
   label values P5AGE_18 _1789F;
   label values P5AGE_19 _1789F;
   label values P5AGE_2 _1789F;
   label values P5AGE_3 _1789F;
   label values P5AGE_4 _1789F;
   label values P5AGE_5 _1789F;
   label values P5AGE_6 _1789F;
   label values P5AGE_7 _1789F;
   label values P5AGE_8 _1789F;
   label values P5AGE_9 _1789F;
   label values P5BKREG _1789F;
   label values P5BKTOG _1789F;
   label values P5CADULT _1789F;
   label values P5CCCOST _1789F;
   label values P5CCHLD _1789F;
   label values P5CCNMCH _1789F;
   label values P5CDAYS _1789F;
   label values P5CHGSCH _1789F;
   label values P5CHLBOO _1789F;
   label values P5CHLDID _1789F;
   label values P5CHNSBF _1789F;
   label values P5CHROTH _1789F;
   label values P5CHRS _1789F;
   label values P5DADID _1789F;
   label values P5DAGEUS _1789F;
   label values P5DAY_N1 _1789F;
   label values P5DAY_N2 _1789F;
   label values P5DAY_N3 _1789F;
   label values P5DAY_N4 _1789F;
   label values P5DGEMYY _1789F;
   label values P5EDUP1 _1789F;
   label values P5EDUP2 _1789F;
   label values P5EMPP1 _1789F;
   label values P5EMPP2 _1789F;
   label values P5EVENG _1789F;
   label values P5EVENG2 _1789F;
   label values P5FSCHRA _1789F;
   label values P5FSRAW _1789F;
   label values P5HDAGE _1789F;
   label values P5HMAGE _1789F;
   label values P5HRS_1 _1789F;
   label values P5HRS_2 _1789F;
   label values P5HRSNOW _1789F;
   label values P5HRTR_1 _1789F;
   label values P5HRTR_2 _1789F;
   label values P5HTOTAL _1789F;
   label values P5HWLGRD _1789F;
   label values P5JOB_1 _1789F;
   label values P5JOB_2 _1789F;
   label values P5LESS18 _1789F;
   label values P5LRSRVY _1789F;
   label values P5MAGEUS _1789F;
   label values P5MOFDST _1789F;
   label values P5MOMID _1789F;
   label values P5NADULT _1789F;
   label values P5NCCOST _1789F;
   label values P5NCHLD _1789F;
   label values P5NCNMCH _1789F;
   label values P5NDAYS _1789F;
   label values P5NHROTH _1789F;
   label values P5NHRS _1789F;
   label values P5NIT_N1 _1789F;
   label values P5NIT_N2 _1789F;
   label values P5NIT_N3 _1789F;
   label values P5NIT_N4 _1789F;
   label values P5NUMBKF _1789F;
   label values P5NUMDAY _1789F;
   label values P5NUMLNC _1789F;
   label values P5NUMNOW _1789F;
   label values P5NUMPLA _1789F;
   label values P5NUMSIB _1789F;
   label values P5OVER18 _1789F;
   label values P5PCLASS _1789F;
   label values P5PHN_N1 _1789F;
   label values P5PHN_N2 _1789F;
   label values P5PHN_N3 _1789F;
   label values P5PHN_N4 _1789F;
   label values P5RADULT _1789F;
   label values P5RAPID _1789F;
   label values P5RCCOST _1789F;
   label values P5RCHLD _1789F;
   label values P5RCNMCH _1789F;
   label values P5RDAYS _1789F;
   label values P5RESID _1789F;
   label values P5RESPBF _1789F;
   label values P5RHROTH _1789F;
   label values P5RHRS _1789F;
   label values P5SCHRWK _1789F;
   label values P5SIN_N1 _1789F;
   label values P5SIN_N2 _1789F;
   label values P5SIN_N3 _1789F;
   label values P5SIN_N4 _1789F;
   label values P5THSINJ _1789F;
   label values P5TIMEHR _1789F;
   label values P5TIMEHW _1789F;
   label values P5TIMEMN _1789F;
   label values P5TINCTH _1789F;
   label values P5TVAFDH _1789F;
   label values P5TVAFDM _1789F;
   label values P5TVBF8H _1789F;
   label values P5TVBF8M _1789F;
   label values P5TVSATH _1789F;
   label values P5TVSATM _1789F;
   label values P5TVSUNH _1789F;
   label values P5TVSUNM _1789F;
   label values P5TVW3DH _1789F;
   label values P5TVW3DM _1789F;
   label values P5TVW83H _1789F;
   label values P5TVW83M _1789F;
   label values P5VISER _1789F;
   label values P5WHENAF _1789F;
   label values P6AGE_1 _1789F;
   label values P6AGE_10 _1789F;
   label values P6AGE_11 _1789F;
   label values P6AGE_12 _1789F;
   label values P6AGE_13 _1789F;
   label values P6AGE_14 _1789F;
   label values P6AGE_15 _1789F;
   label values P6AGE_2 _1789F;
   label values P6AGE_3 _1789F;
   label values P6AGE_4 _1789F;
   label values P6AGE_5 _1789F;
   label values P6AGE_6 _1789F;
   label values P6AGE_7 _1789F;
   label values P6AGE_8 _1789F;
   label values P6AGE_9 _1789F;
   label values P6BKREG _1789F;
   label values P6BKTOG _1789F;
   label values P6CCCOST _1789F;
   label values P6CCNMCH _1789F;
   label values P6CDAYS _1789F;
   label values P6CHGSCH _1789F;
   label values P6CHLBOO _1789F;
   label values P6CHROTH _1789F;
   label values P6CHRS _1789F;
   label values P6DADID _1789F;
   label values P6DAGEUS _1789F;
   label values P6DGEMYY _1789F;
   label values P6EDUP1 _1789F;
   label values P6EDUP2 _1789F;
   label values P6EMPP1 _1789F;
   label values P6EMPP2 _1789F;
   label values P6EVENG _1789F;
   label values P6EVENG2 _1789F;
   label values P6FSADRA _1789F;
   label values P6FSCHRA _1789F;
   label values P6FSRAW _1789F;
   label values P6FTHAGE _1789F;
   label values P6HDAGE _1789F;
   label values P6HMAGE _1789F;
   label values P6HRS_1 _1789F;
   label values P6HRS_2 _1789F;
   label values P6HRSNOW _1789F;
   label values P6HRTR_1 _1789F;
   label values P6HRTR_2 _1789F;
   label values P6HTOTAL _1789F;
   label values P6JOB_1 _1789F;
   label values P6JOB_2 _1789F;
   label values P6LESS18 _1789F;
   label values P6LRSRVY _1789F;
   label values P6MAGEUS _1789F;
   label values P6MOFDST _1789F;
   label values P6MOMID _1789F;
   label values P6MTHAGE _1789F;
   label values P6NCCOST _1789F;
   label values P6NCNMCH _1789F;
   label values P6NDAYS _1789F;
   label values P6NHROTH _1789F;
   label values P6NHRS _1789F;
   label values P6NIT_N1 _1789F;
   label values P6NIT_N2 _1789F;
   label values P6NIT_N3 _1789F;
   label values P6NIT_N4 _1789F;
   label values P6NUMBKF _1789F;
   label values P6NUMDAY _1789F;
   label values P6NUMLNC _1789F;
   label values P6NUMNOW _1789F;
   label values P6NUMPLA _1789F;
   label values P6NUMSIB _1789F;
   label values P6OVER18 _1789F;
   label values P6PCLASS _1789F;
   label values P6PHN_N1 _1789F;
   label values P6PHN_N2 _1789F;
   label values P6PHN_N3 _1789F;
   label values P6PHN_N4 _1789F;
   label values P6RAPID _1789F;
   label values P6RCCOST _1789F;
   label values P6RCNMCH _1789F;
   label values P6RDAYS _1789F;
   label values P6RHROTH _1789F;
   label values P6RHRS _1789F;
   label values P6SCHRWK _1789F;
   label values P6SEEDOC _1789F;
   label values P6SIN_N1 _1789F;
   label values P6SIN_N2 _1789F;
   label values P6SIN_N3 _1789F;
   label values P6SIN_N4 _1789F;
   label values P6SPOUSE _1789F;
   label values P6THSINJ _1789F;
   label values P6TIMEHR _1789F;
   label values P6TIMEHW _1789F;
   label values P6TIMEMN _1789F;
   label values P6TINCTH _1789F;
   label values P6TMHWHR _1789F;
   label values P6TVAFDH _1789F;
   label values P6TVAFDM _1789F;
   label values P6TVBF8H _1789F;
   label values P6TVBF8M _1789F;
   label values P6TVSATH _1789F;
   label values P6TVSATM _1789F;
   label values P6TVSUNH _1789F;
   label values P6TVSUNM _1789F;
   label values P6TVW3DH _1789F;
   label values P6TVW3DM _1789F;
   label values P6WHENAF _1789F;
   label values P7ADULTS _1789F;
   label values P7AGE_1 _1789F;
   label values P7AGE_10 _1789F;
   label values P7AGE_11 _1789F;
   label values P7AGE_12 _1789F;
   label values P7AGE_13 _1789F;
   label values P7AGE_14 _1789F;
   label values P7AGE_15 _1789F;
   label values P7AGE_16 _1789F;
   label values P7AGE_17 _1789F;
   label values P7AGE_2 _1789F;
   label values P7AGE_3 _1789F;
   label values P7AGE_4 _1789F;
   label values P7AGE_5 _1789F;
   label values P7AGE_6 _1789F;
   label values P7AGE_7 _1789F;
   label values P7AGE_8 _1789F;
   label values P7AGE_9 _1789F;
   label values P7BKREG _1789F;
   label values P7BKTOG _1789F;
   label values P7CHGSCH _1789F;
   label values P7DADID _1789F;
   label values P7EDUP2 _1789F;
   label values P7EMPP2 _1789F;
   label values P7EVENG _1789F;
   label values P7EVENG2 _1789F;
   label values P7FSADRA _1789F;
   label values P7FSCHRA _1789F;
   label values P7FSRAW _1789F;
   label values P7HDAGE _1789F;
   label values P7HMAGE _1789F;
   label values P7HRS_1 _1789F;
   label values P7HRS_2 _1789F;
   label values P7JOB_1 _1789F;
   label values P7JOB_2 _1789F;
   label values P7MOFDST _1789F;
   label values P7MOMID _1789F;
   label values P7NIT_N1 _1789F;
   label values P7NIT_N2 _1789F;
   label values P7NIT_N3 _1789F;
   label values P7NIT_N4 _1789F;
   label values P7NUMBKF _1789F;
   label values P7NUMLNC _1789F;
   label values P7NUMLOV _1789F;
   label values P7NUMPHY _1789F;
   label values P7NUMPLA _1789F;
   label values P7NUMPRS _1789F;
   label values P7NUMSIB _1789F;
   label values P7NUMSUS _1789F;
   label values P7PCLASS _1789F;
   label values P7PHN_N1 _1789F;
   label values P7PHN_N2 _1789F;
   label values P7PHN_N3 _1789F;
   label values P7PHN_N4 _1789F;
   label values P7PRNDUE _1789F;
   label values P7SEEDOC _1789F;
   label values P7SIN_N1 _1789F;
   label values P7SIN_N2 _1789F;
   label values P7SIN_N3 _1789F;
   label values P7SIN_N4 _1789F;
   label values P7SPOUSE _1789F;
   label values P7THSINJ _1789F;
   label values P7TINCTH _1789F;
   label values P7VALHSE _1789F;
   label values P7WGTAGE _1789F;
   label values P7WHENAF _1789F;
   label values R1_KAGE _1789F;
   label values R2_KAGE _1789F;
   label values R3AGE _1789F;
   label values R4AGE _1789F;
   label values S2ADA _1789F;
   label values S2ADMFTE _1789F;
   label values S2ADMNCM _1789F;
   label values S2AIDFTE _1789F;
   label values S2ANUMCH _1789F;
   label values S2BRTHYR _1789F;
   label values S2BUSSED _1789F;
   label values S2CDRRMS _1789F;
   label values S2CHLDNM _1789F;
   label values S2CMPFTE _1789F;
   label values S2COUFTE _1789F;
   label values S2CRDFTE _1789F;
   label values S2CRSADM _1789F;
   label values S2CRSCDV _1789F;
   label values S2CRSECE _1789F;
   label values S2CRSELE _1789F;
   label values S2CRSESL _1789F;
   label values S2CRSMTM _1789F;
   label values S2CRSMTR _1789F;
   label values S2CRSSCI _1789F;
   label values S2CRSSPE _1789F;
   label values S2DDCOMP _1789F;
   label values S2DDFIVE _1789F;
   label values S2DISCAT _1789F;
   label values S2ESAFTE _1789F;
   label values S2ESLFTE _1789F;
   label values S2ETHNIC _1789F;
   label values S2FDCHDN _1789F;
   label values S2FDCLS _1789F;
   label values S2FDHRS _1789F;
   label values S2FLCH_I _1789F;
   label values S2FRLFTE _1789F;
   label values S2FTETOT _1789F;
   label values S2GYMFTE _1789F;
   label values S2HDCHDN _1789F;
   label values S2HDCLS _1789F;
   label values S2HDHRS _1789F;
   label values S2HDSFTE _1789F;
   label values S2HWLONG _1789F;
   label values S2INRMGT _1789F;
   label values S2INSTCM _1789F;
   label values S2INSTRU _1789F;
   label values S2KCCHDN _1789F;
   label values S2KCHRS _1789F;
   label values S2KENRLK _1789F;
   label values S2KFLNCH _1789F;
   label values S2KGFTED _1789F;
   label values S2KLNGTH _1789F;
   label values S2KRLNCH _1789F;
   label values S2LANRMS _1789F;
   label values S2LEPKND _1789F;
   label values S2LEPSCH _1789F;
   label values S2LIAFTE _1789F;
   label values S2LIBFTE _1789F;
   label values S2MONITR _1789F;
   label values S2MSCFTE _1789F;
   label values S2NETRMS _1789F;
   label values S2NGHBOR _1789F;
   label values S2NMADMN _1789F;
   label values S2NMBKPT _1789F;
   label values S2NMDSTR _1789F;
   label values S2NMOMDD _1789F;
   label values S2NMREPS _1789F;
   label values S2NMTECH _1789F;
   label values S2NONFTE _1789F;
   label values S2NRSFTE _1789F;
   label values S2NUMBRD _1789F;
   label values S2NUMDAY _1789F;
   label values S2NUMOTH _1789F;
   label values S2OBSVNT _1789F;
   label values S2OBSVTT _1789F;
   label values S2OUTSID _1789F;
   label values S2PCTMTH _1789F;
   label values S2PCTRD _1789F;
   label values S2PPRWRK _1789F;
   label values S2PRINHR _1789F;
   label values S2Q62ASN _1789F;
   label values S2Q62BLK _1789F;
   label values S2Q62IND _1789F;
   label values S2Q62WHT _1789F;
   label values S2RLCH_I _1789F;
   label values S2RMNUM _1789F;
   label values S2SPAFTE _1789F;
   label values S2SPEFTE _1789F;
   label values S2SRVBTH _1789F;
   label values S2STUDNT _1789F;
   label values S2T1CHDN _1789F;
   label values S2T1HRS _1789F;
   label values S2TALKPT _1789F;
   label values S2TCHFTE _1789F;
   label values S2TEEECH _1789F;
   label values S2THRFTE _1789F;
   label values S2TKCHDN _1789F;
   label values S2TKHRS _1789F;
   label values S2TOTCM _1789F;
   label values S2TOTPRI _1789F;
   label values S2TT1FTE _1789F;
   label values S2YR1ST _1789F;
   label values S2YR2TO5 _1789F;
   label values S2YR6 _1789F;
   label values S2YRART _1789F;
   label values S2YRBILG _1789F;
   label values S2YRESL _1789F;
   label values S2YRK _1789F;
   label values S2YRPHED _1789F;
   label values S2YRPREK _1789F;
   label values S2YRSBIL _1789F;
   label values S2YRSESL _1789F;
   label values S2YRSPED _1789F;
   label values S2YSTCH _1789F;
   label values S2YYCOMP _1789F;
   label values S2YYFIVE _1789F;
   label values S4ADA _1789F;
   label values S4ADMFTE _1789F;
   label values S4ADMNCM _1789F;
   label values S4AIDFTE _1789F;
   label values S4ANUMCH _1789F;
   label values S4BNUMCH _1789F;
   label values S4BRTHYR _1789F;
   label values S4CNUMCH _1789F;
   label values S4DDCOMP _1789F;
   label values S4DISCAT _1789F;
   label values S4ESAFTE _1789F;
   label values S4ESLFTE _1789F;
   label values S4FLCH_I _1789F;
   label values S4FLNCH _1789F;
   label values S4FRLFTE _1789F;
   label values S4FTETOT _1789F;
   label values S4GFTED _1789F;
   label values S4GYMFTE _1789F;
   label values S4HWLONG _1789F;
   label values S4INRMGT _1789F;
   label values S4INSTRU _1789F;
   label values S4LEPFRS _1789F;
   label values S4LEPSCH _1789F;
   label values S4LIBFTE _1789F;
   label values S4MONITR _1789F;
   label values S4MSCFTE _1789F;
   label values S4NGHBOR _1789F;
   label values S4NMADMN _1789F;
   label values S4NMBKPT _1789F;
   label values S4NMDSTR _1789F;
   label values S4NMOMDD _1789F;
   label values S4NMREPS _1789F;
   label values S4NMTECH _1789F;
   label values S4NRSFTE _1789F;
   label values S4NUMBRD _1789F;
   label values S4NUMDAY _1789F;
   label values S4NUMOTH _1789F;
   label values S4OTHPCT _1789F;
   label values S4PCTMTH _1789F;
   label values S4PCTRD _1789F;
   label values S4PPRWRK _1789F;
   label values S4PRINHR _1789F;
   label values S4REAFTE _1789F;
   label values S4RLCH_I _1789F;
   label values S4RLNCH _1789F;
   label values S4SPAFTE _1789F;
   label values S4SPEFTE _1789F;
   label values S4SRVBTH _1789F;
   label values S4STUDNT _1789F;
   label values S4TALKPT _1789F;
   label values S4TCHFTE _1789F;
   label values S4TEACH _1789F;
   label values S4TEAOTH _1789F;
   label values S4TEAWHT _1789F;
   label values S4THRFTE _1789F;
   label values S4TOTCM _1789F;
   label values S4TOTPRI _1789F;
   label values S4TT1FTE _1789F;
   label values S4YR1ST _1789F;
   label values S4YR2TO5 _1789F;
   label values S4YR6 _1789F;
   label values S4YRART _1789F;
   label values S4YRBILG _1789F;
   label values S4YRESL _1789F;
   label values S4YRK _1789F;
   label values S4YRPHED _1789F;
   label values S4YRPREK _1789F;
   label values S4YRSBIL _1789F;
   label values S4YRSESL _1789F;
   label values S4YRSPED _1789F;
   label values S4YSTCH _1789F;
   label values S5ANUMCH _1789F;
   label values S5BRTHYR _1789F;
   label values S5CNUMCH _1789F;
   label values S5DDCOMP _1789F;
   label values S5ESLFL _1789F;
   label values S5ESLPT _1789F;
   label values S5FLCH_I _1789F;
   label values S5FLNCH _1789F;
   label values S5GIFTFL _1789F;
   label values S5GIFTPT _1789F;
   label values S5HWLONG _1789F;
   label values S5LIBRFL _1789F;
   label values S5LIBRPT _1789F;
   label values S5MSARFL _1789F;
   label values S5MSARPT _1789F;
   label values S5NURSFL _1789F;
   label values S5NURSPT _1789F;
   label values S5PARAFL _1789F;
   label values S5PARAPT _1789F;
   label values S5PCTMTH _1789F;
   label values S5PCTRD _1789F;
   label values S5PORTBL _1789F;
   label values S5PRINHR _1789F;
   label values S5PSYCFL _1789F;
   label values S5PSYCPT _1789F;
   label values S5READFL _1789F;
   label values S5READPT _1789F;
   label values S5RTCHFL _1789F;
   label values S5RTCHPT _1789F;
   label values S5SPEDFL _1789F;
   label values S5SPEDPT _1789F;
   label values S5TOTCM _1789F;
   label values S5TOTPRI _1789F;
   label values S5YSTCH _1789F;
   label values S6ANUMCH _1789F;
   label values S6BRTHYR _1789F;
   label values S6CNUMCH _1789F;
   label values S6DAYSYR _1789F;
   label values S6DDCOMP _1789F;
   label values S6ESLFL _1789F;
   label values S6ESLPT _1789F;
   label values S6FLCH_I _1789F;
   label values S6GIFTFL _1789F;
   label values S6GIFTPT _1789F;
   label values S6HWLONG _1789F;
   label values S6LIBRFL _1789F;
   label values S6LIBRPT _1789F;
   label values S6MSARFL _1789F;
   label values S6MSARPT _1789F;
   label values S6NURSFL _1789F;
   label values S6NURSPT _1789F;
   label values S6PARAFL _1789F;
   label values S6PARAPT _1789F;
   label values S6PCTMTH _1789F;
   label values S6PCTRD _1789F;
   label values S6PORTBL _1789F;
   label values S6PRINHR _1789F;
   label values S6PSYCFL _1789F;
   label values S6PSYCPT _1789F;
   label values S6READFL _1789F;
   label values S6READPT _1789F;
   label values S6RTCHFL _1789F;
   label values S6RTCHPT _1789F;
   label values S6SPEDFL _1789F;
   label values S6SPEDPT _1789F;
   label values S6TOTPRI _1789F;
   label values S6YSTCH _1789F;
   label values S7ALGEBR _1789F;
   label values S7ANUMCH _1789F;
   label values S7BRTHYR _1789F;
   label values S7DAYSYR _1789F;
   label values S7DDCOMP _1789F;
   label values S7FLCH_I _1789F;
   label values S7MTHEIG _1789F;
   label values S7OTHMTH _1789F;
   label values S7PCTMTH _1789F;
   label values S7PCTMTS _1789F;
   label values S7PCTRD _1789F;
   label values S7PCTRDS _1789F;
   label values S7PORTBL _1789F;
   label values S7PREALG _1789F;
   label values S7PRINHR _1789F;
   label values S7STRSAL _1789F;
   label values S7TOTPRI _1789F;
   label values S7YSTCH _1789F;
   label values T1CONTRO _1789F;
   label values T1EXTERN _1789F;
   label values T1INTERN _1789F;
   label values T1INTERP _1789F;
   label values T1LEARN _1789F;
   label values T1RARSGE _1789F;
   label values T1RARSLI _1789F;
   label values T1RARSMA _1789F;
   label values T1RSCODD _1789F;
   label values T2CHRDGP _1789F;
   label values T2CONTRO _1789F;
   label values T2EXTERN _1789F;
   label values T2INTERN _1789F;
   label values T2INTERP _1789F;
   label values T2LEARN _1789F;
   label values T2RARSGE _1789F;
   label values T2RARSLI _1789F;
   label values T2RARSMA _1789F;
   label values T2RSCODD _1789F;
   label values T4ARSGEN _1789F;
   label values T4ARSLIT _1789F;
   label values T4ARSMAT _1789F;
   label values T4CONTRO _1789F;
   label values T4EXTERN _1789F;
   label values T4INTERN _1789F;
   label values T4INTERP _1789F;
   label values T4KARSGE _1789F;
   label values T4KARSLI _1789F;
   label values T4KARSMA _1789F;
   label values T4KCHRDG _1789F;
   label values T4KQXCOD _1789F;
   label values T4LEARN _1789F;
   label values T4QXCOD _1789F;
   label values T5ARSLIT _1789F;
   label values T5ARSMAT _1789F;
   label values T5ARSSCI _1789F;
   label values T5ARSSOC _1789F;
   label values T5CONTRO _1789F;
   label values T5EXTERN _1789F;
   label values T5INTERN _1789F;
   label values T5INTERP _1789F;
   label values T5LEARN _1789F;
   label values T5QXCOD _1789F;
   label values T5SCINT _1789F;
   label values T6ARSLIT _1789F;
   label values T6ARSMAT _1789F;
   label values T6ARSSCI _1789F;
   label values T6CONTRO _1789F;
   label values T6EXTERN _1789F;
   label values T6INTERN _1789F;
   label values T6INTERP _1789F;
   label values T6LEARN _1789F;
   label values T6SCINT _1789F;
   label values T7ARSMAT _1789F;
   label values T7ARSORL _1789F;
   label values T7ARSSCI _1789F;
   label values T7ARSWRT _1789F;
   label values U2ABSN _1789F;
   label values U2TARD _1789F;
   label values U4ABSN _1789F;
   label values U4SCHBDD _1789F;
   label values U4SCHEDD _1789F;
   label values U4TARD _1789F;
   label values W1DADSCR _1789F;
   label values W1INCOME _1789F;
   label values W1MOMSCR _1789F;
   label values W3DADSCR _1789F;
   label values W3MOMSCR _1789F;
   label values W5DADSCR _1789F;
   label values W5MOMSCR _1789F;
   label values W8DADSCR _1789F;
   label values W8MOMSCR _1789F;
   label values WKDADSCR _1789F;
   label values WKMOMSCR _1789F;
   label values WKNUMPRK _1789F;
   label values C1R4MTHT _789F;
   label values C1R4RTHT _789F;
   label values C1RGTHT _789F;
   label values C1RRPRIN _789F;
   label values C1TCWPSU _789F;
   label values C1TCWSTR _789F;
   label values C1TPWPSU _789F;
   label values C1TPWSTR _789F;
   label values C2R4MTHT _789F;
   label values C2R4RTHT _789F;
   label values C2RGTHT _789F;
   label values C2RRPRIN _789F;
   label values C3R4MTHT _789F;
   label values C3R4RTHT _789F;
   label values C3RGTHT _789F;
   label values C3RRPRIN _789F;
   label values C4R4MTHT _789F;
   label values C4R4RTHT _789F;
   label values C4RGTHT _789F;
   label values C4RRPRIN _789F;
   label values C5R2RDEC _789F;
   label values C5R2STHT _789F;
   label values C5R4MTHT _789F;
   label values C5R4RTHT _789F;
   label values C6R2STHT _789F;
   label values C6R4MTHT _789F;
   label values C6R4RTHT _789F;
   label values C7BMI _789F;
   label values C7CONCPT _789F;
   label values C7HEIGHT _789F;
   label values C7LOCUS _789F;
   label values C7R2STHT _789F;
   label values C7R4MTHT _789F;
   label values C7R4RTHT _789F;
   label values C7WEIGHT _789F;
   label values P1AGE_1 _789F;
   label values P1AGE_2 _789F;
   label values P1SPOUSE _789F;
   label values P2SPOUSE _789F;
   label values P3SPOUSE _789F;
   label values P4MYROUS _789F;
   label values P4SPOUSE _789F;
   label values P5SPOUSE _789F;
   label values P7CHLDID _789F;
   label values P7HTOTAL _789F;
   label values P7LESS18 _789F;
   label values P7OVER18 _789F;
   label values P7RESID _789F;
   label values W8SESL _789F;
   label values A1KGTYP A1003F;
   label values A1LEP A1021F;
   label values A1OTLAN A1021F;
   label values A1PRESC A1021F;
   label values A1PCPRE A1022F;
   label values A1BEHVR A1027F;
   label values A1CSPNH A1028F;
   label values A1CVTNM A1029F;
   label values A1CCHNS A1030F;
   label values A1CJPNS A1031F;
   label values A1CKRN A1032F;
   label values A1CFLPN A1033F;
   label values A1OTASN A1034F;
   label values A1OTLNG A1035F;
   label values A1LANOS A1036F;
   label values A1TNOOT A1041F;
   label values A1TSPNH A1042F;
   label values A1LEPOS A1043F;
   label values A1NONEN A1044F;
   label values A1COMPMM A1045F;
   label values A1COMPYY A1047F;
   label values A1CLASS A1CLASS;
   label values A2CLASS A1CLASS;
   label values A2BEHVR A2025F;
   label values A2CSPNH A2026F;
   label values A2ENGLS A2026F;
   label values A2LANG A2026F;
   label values A2CHCLDS A2027F;
   label values A2INDVDL A2027F;
   label values A2SMLGRP A2027F;
   label values A2WHLCLS A2027F;
   label values A2CNSLT A2028F;
   label values A2COLLEG A2028F;
   label values A2COMMTE A2028F;
   label values A2FDBACK A2028F;
   label values A2INSRVC A2028F;
   label values A2OBSERV A2028F;
   label values A2RELTIM A2028F;
   label values A2STFFTR A2028F;
   label values A2SUPPOR A2028F;
   label values A2TECH A2028F;
   label values A2WRKSHP A2028F;
   label values A2OFTART A2029F;
   label values A2OFTDAN A2029F;
   label values A2OFTESL A2029F;
   label values A2OFTFOR A2029F;
   label values A2OFTHTR A2029F;
   label values A2OFTMTH A2029F;
   label values A2OFTMUS A2029F;
   label values A2OFTRDL A2029F;
   label values A2OFTSCI A2029F;
   label values A2OFTSOC A2029F;
   label values A2TXPE A2029F;
   label values A2TXART A2030F;
   label values A2TXDAN A2030F;
   label values A2TXESL A2030F;
   label values A2TXFOR A2030F;
   label values A2TXMTH A2030F;
   label values A2TXMUS A2030F;
   label values A2TXRDLA A2030F;
   label values A2TXSCI A2030F;
   label values A2TXSOC A2030F;
   label values A2TXTHTR A2030F;
   label values A2TXSPEN A2031F;
   label values A2TXRCE A2033F;
   label values A2LUNCH A2034F;
   label values A2RECESS A2035F;
   label values A2DIVMTH A2036F;
   label values A2DIVRD A2036F;
   label values A2MINMTH A2038F;
   label values A2MINRD A2038F;
   label values A2AIDTUT A2040F;
   label values A2EXASIS A2040F;
   label values A2PULLOU A2040F;
   label values A2SPECTU A2040F;
   label values A2OTASSI A2045F;
   label values A2BORROW A2047F;
   label values A2GOTOLI A2047F;
   label values A2SPK A2055F;
   label values A2LVLED A2056F;
   label values A2CERTF A2057F;
   label values A2ART A2058F;
   label values A2AUDIOV A2058F;
   label values A2CLSSPC A2058F;
   label values A2COMPEQ A2058F;
   label values A2DISMAT A2058F;
   label values A2DITTO A2058F;
   label values A2FURNIT A2058F;
   label values A2HEATAC A2058F;
   label values A2INSTRM A2058F;
   label values A2LEPMAT A2058F;
   label values A2MANIPU A2058F;
   label values A2PAPER A2058F;
   label values A2RECRDS A2058F;
   label values A2SOFTWA A2058F;
   label values A2TRADBK A2058F;
   label values A2TXTBK A2058F;
   label values A2VIDEO A2058F;
   label values A2WORKBK A2058F;
   label values A2ARTMAT A2059F;
   label values A2BOOKS A2059F;
   label values A2COOK A2059F;
   label values A2COSTUM A2059F;
   label values A2EQUIPM A2059F;
   label values A2MUSIC A2059F;
   label values A2PLAYER A2059F;
   label values A2TVWTCH A2059F;
   label values A2VCR A2059F;
   label values A2BASAL A2060F;
   label values A2CALCUL A2060F;
   label values A2CALEND A2060F;
   label values A2CHLKBD A2060F;
   label values A2CHSBK A2060F;
   label values A2COMPOS A2060F;
   label values A2CRTIVE A2060F;
   label values A2CURRDV A2060F;
   label values A2DICTAT A2060F;
   label values A2DISCHD A2060F;
   label values A2DOPROJ A2060F;
   label values A2EXPMTH A2060F;
   label values A2GEOMET A2060F;
   label values A2INDCHD A2060F;
   label values A2INVENT A2060F;
   label values A2JRNL A2060F;
   label values A2LERNLT A2060F;
   label values A2LESPLN A2060F;
   label values A2MANIPS A2060F;
   label values A2MTHGME A2060F;
   label values A2MTHSHT A2060F;
   label values A2MTHTXT A2060F;
   label values A2MUSMTH A2060F;
   label values A2MXDGRP A2060F;
   label values A2MXMATH A2060F;
   label values A2NEWVOC A2060F;
   label values A2NOPRNT A2060F;
   label values A2OUTLOU A2060F;
   label values A2PEER A2060F;
   label values A2PHONIC A2060F;
   label values A2PRACLT A2060F;
   label values A2PRTNRS A2060F;
   label values A2PRTUTR A2060F;
   label values A2PUBLSH A2060F;
   label values A2READLD A2060F;
   label values A2REALLI A2060F;
   label values A2RETELL A2060F;
   label values A2RULERS A2060F;
   label values A2SEEPRI A2060F;
   label values A2SILENT A2060F;
   label values A2SKITS A2060F;
   label values A2TELLRS A2060F;
   label values A2WRKBK A2060F;
   label values A2WRTWRD A2060F;
   label values A21TO10 A2061F;
   label values A22S5S10 A2061F;
   label values A23DGT A2061F;
   label values A2ACCURA A2061F;
   label values A2ADD2DG A2061F;
   label values A2ALPBTZ A2061F;
   label values A2BODY A2061F;
   label values A2BYD100 A2061F;
   label values A2CARRY A2061F;
   label values A2CMNITY A2061F;
   label values A2COMPSE A2061F;
   label values A2CONVNT A2061F;
   label values A2CULTUR A2061F;
   label values A2DATACO A2061F;
   label values A2DINOSR A2061F;
   label values A2DRCTNS A2061F;
   label values A2ECOLOG A2061F;
   label values A2EQTN A2061F;
   label values A2ESTQNT A2061F;
   label values A2FRCTNS A2061F;
   label values A2GEORPH A2061F;
   label values A2GRAPHS A2061F;
   label values A2HISTOR A2061F;
   label values A2HYGIEN A2061F;
   label values A2IDQNTY A2061F;
   label values A2LAWS A2061F;
   label values A2LIGHT A2061F;
   label values A2MAGNET A2061F;
   label values A2MAINID A2061F;
   label values A2MAPRD A2061F;
   label values A2MATCH A2061F;
   label values A2MIXOP A2061F;
   label values A2MOTORS A2061F;
   label values A2ORALID A2061F;
   label values A2ORDINL A2061F;
   label values A2PLACE A2061F;
   label values A2PLANT A2061F;
   label values A2PNCTUA A2061F;
   label values A2PRBBTY A2061F;
   label values A2PREDIC A2061F;
   label values A2PREPOS A2061F;
   label values A2PTTRNS A2061F;
   label values A2QUANTI A2061F;
   label values A2RCGNZE A2061F;
   label values A2RDFLNT A2061F;
   label values A2REGZCN A2061F;
   label values A2RHYMNG A2061F;
   label values A2SCMTHD A2061F;
   label values A2SHAPES A2061F;
   label values A2SNGDGT A2061F;
   label values A2SOCPRO A2061F;
   label values A2SOLAR A2061F;
   label values A2SOUND A2061F;
   label values A2SPELL A2061F;
   label values A2SUB2DG A2061F;
   label values A2SUBGRP A2061F;
   label values A2SUBSDG A2061F;
   label values A2SYLLAB A2061F;
   label values A2SZORDR A2061F;
   label values A2TELLTI A2061F;
   label values A2TEMP A2061F;
   label values A2TEXTCU A2061F;
   label values A2TOOLS A2061F;
   label values A2TWODGT A2061F;
   label values A2VOCAB A2061F;
   label values A2W12100 A2061F;
   label values A2WATER A2061F;
   label values A2WRTNME A2061F;
   label values A2WRTSTO A2061F;
   label values A2WTHER A2061F;
   label values A2ADTRND A2062F;
   label values A2INCLUS A2062F;
   label values A2INVSPE A2062F;
   label values A2LRNART A2063F;
   label values A2LRNGMS A2063F;
   label values A2LRNKEY A2063F;
   label values A2LRNLAN A2063F;
   label values A2LRNMSC A2063F;
   label values A2LRNMTH A2063F;
   label values A2LRNRD A2063F;
   label values A2LRNSCN A2063F;
   label values A2LRNSS A2063F;
   label values A2NUMCNF A2064F;
   label values A2ATTART A2065F;
   label values A2ATTOPN A2065F;
   label values A2REGHLP A2065F;
   label values A2TPCONF A2065F;
   label values A2SHARED A2067F;
   label values A2SNTHME A2067F;
   label values A2MMCOMP A2068F;
   label values A2YYCOMP A2070F;
   label values A4KAMPM A4001F;
   label values A4KCNSLT A4001F;
   label values A4KCOLLE A4001F;
   label values A4KCOMMT A4001F;
   label values A4KFDBAC A4001F;
   label values A4KFULDY A4001F;
   label values A4KINSRV A4001F;
   label values A4KKNDRT A4001F;
   label values A4KOBSER A4001F;
   label values A4KRELTI A4001F;
   label values A4KSTFFT A4001F;
   label values A4KSUPPO A4001F;
   label values A4KTECH A4001F;
   label values A4KWRKSH A4001F;
   label values A4KENGL A4021F;
   label values A4KICHN A4021F;
   label values A4KIFLP A4021F;
   label values A4KIKRN A4021F;
   label values A4KIOTA A4021F;
   label values A4KIOTL A4021F;
   label values A4KIVTN A4021F;
   label values A4KOTLA A4021F;
   label values A4KPRES A4021F;
   label values A4KPCPR A4022F;
   label values A4KBEHV A4027F;
   label values A4CSPNH A4028F;
   label values A4ENGL1 A4028F;
   label values A4KCSPN A4028F;
   label values A4KENG1 A4028F;
   label values A4KLEP A4028F;
   label values A4LEP A4028F;
   label values A4TKRN A4028F;
   label values A4TNOOT A4028F;
   label values A4TSPNH A4028F;
   label values A4AIDTUT A4050F;
   label values A4DIVMTH A4050F;
   label values A4DIVRD A4050F;
   label values A4EXASIS A4050F;
   label values A4KAIDTU A4050F;
   label values A4KDIVMT A4050F;
   label values A4KDIVRD A4050F;
   label values A4KEXASI A4050F;
   label values A4KOFTAR A4050F;
   label values A4KOFTDA A4050F;
   label values A4KOFTES A4050F;
   label values A4KOFTFO A4050F;
   label values A4KOFTHT A4050F;
   label values A4KOFTMT A4050F;
   label values A4KOFTMU A4050F;
   label values A4KOFTRD A4050F;
   label values A4KOFTSC A4050F;
   label values A4KOFTSO A4050F;
   label values A4KOTASS A4050F;
   label values A4KPULLO A4050F;
   label values A4KSPECT A4050F;
   label values A4KTXPE A4050F;
   label values A4OFTART A4050F;
   label values A4OFTDAN A4050F;
   label values A4OFTESL A4050F;
   label values A4OFTFOR A4050F;
   label values A4OFTHTR A4050F;
   label values A4OFTMTH A4050F;
   label values A4OFTMUS A4050F;
   label values A4OFTRDL A4050F;
   label values A4OFTSCI A4050F;
   label values A4OFTSOC A4050F;
   label values A4OTASSI A4050F;
   label values A4PULLOU A4050F;
   label values A4SPECTU A4050F;
   label values A4TXPE A4050F;
   label values A4KTXART A4051F;
   label values A4KTXDAN A4051F;
   label values A4KTXESL A4051F;
   label values A4KTXFOR A4051F;
   label values A4KTXMTH A4051F;
   label values A4KTXMUS A4051F;
   label values A4KTXRDL A4051F;
   label values A4KTXSCI A4051F;
   label values A4KTXSOC A4051F;
   label values A4KTXTHT A4051F;
   label values A4TXART A4051F;
   label values A4TXDAN A4051F;
   label values A4TXESL A4051F;
   label values A4TXFOR A4051F;
   label values A4TXMTH A4051F;
   label values A4TXMUS A4051F;
   label values A4TXRDLA A4051F;
   label values A4TXSCI A4051F;
   label values A4TXSOC A4051F;
   label values A4TXTHTR A4051F;
   label values A4KTXSPE A4052F;
   label values A4TXSPEN A4052F;
   label values A4KTXRCE A4054F;
   label values A4TXRCE A4054F;
   label values A4KLUNCH A4055F;
   label values A4KRECES A4055F;
   label values A4LUNCH A4055F;
   label values A4RECESS A4055F;
   label values A4KMINMT A4057F;
   label values A4KMINRD A4057F;
   label values A4MINMTH A4057F;
   label values A4MINRD A4057F;
   label values A4GOTOLI A4064F;
   label values A4KGOTOL A4064F;
   label values A4BORROW A4065F;
   label values A4KBORRO A4065F;
   label values A4KWSPK A4073F;
   label values A4WELSPK A4073F;
   label values A4EDLEVL A4074F;
   label values A4KEDLV A4074F;
   label values A4KMJEL A4075F;
   label values A4KMJER A4075F;
   label values A4KPDEL A4075F;
   label values A4KPDER A4075F;
   label values A4KPDTC A4075F;
   label values A4MJELED A4075F;
   label values A4MJERCH A4075F;
   label values A4ART A4076F;
   label values A4AUDIOV A4076F;
   label values A4BASARD A4076F;
   label values A4CLSSPC A4076F;
   label values A4COMPEQ A4076F;
   label values A4DISMAT A4076F;
   label values A4DITTO A4076F;
   label values A4FURNIT A4076F;
   label values A4HEATAC A4076F;
   label values A4INSTRM A4076F;
   label values A4KART A4076F;
   label values A4KAUDIO A4076F;
   label values A4KCLSSP A4076F;
   label values A4KCOMPE A4076F;
   label values A4KDISMA A4076F;
   label values A4KDITTO A4076F;
   label values A4KFURNI A4076F;
   label values A4KHEATA A4076F;
   label values A4KINSTR A4076F;
   label values A4KLEPMA A4076F;
   label values A4KMANIP A4076F;
   label values A4KPAPER A4076F;
   label values A4KRECRD A4076F;
   label values A4KSOFTW A4076F;
   label values A4KTRADB A4076F;
   label values A4KTXTBK A4076F;
   label values A4KVIDEO A4076F;
   label values A4KWORKB A4076F;
   label values A4LEPMAT A4076F;
   label values A4MANIPU A4076F;
   label values A4PAPER A4076F;
   label values A4RECRDS A4076F;
   label values A4SOFTWA A4076F;
   label values A4TRADBK A4076F;
   label values A4TXTBK A4076F;
   label values A4VIDEO A4076F;
   label values A4WORKBK A4076F;
   label values A4ARTMAT A4077F;
   label values A4BOOKS A4077F;
   label values A4COOK A4077F;
   label values A4COSTUM A4077F;
   label values A4EQUIPM A4077F;
   label values A4KARTMA A4077F;
   label values A4KBOOKS A4077F;
   label values A4KCOOK A4077F;
   label values A4KCOSTU A4077F;
   label values A4KEQUIP A4077F;
   label values A4KMUSIC A4077F;
   label values A4KPLAYE A4077F;
   label values A4KTVWTC A4077F;
   label values A4KVCR A4077F;
   label values A4MUSIC A4077F;
   label values A4PLAYER A4077F;
   label values A4TVWTCH A4077F;
   label values A4VCR A4077F;
   label values A4CHSBK A4078F;
   label values A4CNTVOC A4078F;
   label values A4COMPOS A4078F;
   label values A4DICTAT A4078F;
   label values A4DOPROJ A4078F;
   label values A4INVENT A4078F;
   label values A4JRNL A4078F;
   label values A4KBASAL A4078F;
   label values A4KCALCU A4078F;
   label values A4KCALEN A4078F;
   label values A4KCHLKB A4078F;
   label values A4KCHSBK A4078F;
   label values A4KCOMPO A4078F;
   label values A4KCRTIV A4078F;
   label values A4KCURRD A4078F;
   label values A4KDICTA A4078F;
   label values A4KDISCH A4078F;
   label values A4KDOPRO A4078F;
   label values A4KEXPMT A4078F;
   label values A4KGEOME A4078F;
   label values A4KINDCH A4078F;
   label values A4KINVEN A4078F;
   label values A4KJRNL A4078F;
   label values A4KLERNL A4078F;
   label values A4KLESPL A4078F;
   label values A4KLRNAR A4078F;
   label values A4KLRNGM A4078F;
   label values A4KLRNKE A4078F;
   label values A4KLRNLA A4078F;
   label values A4KLRNMS A4078F;
   label values A4KLRNMT A4078F;
   label values A4KLRNRD A4078F;
   label values A4KLRNSC A4078F;
   label values A4KLRNSS A4078F;
   label values A4KMANIS A4078F;
   label values A4KMTHGM A4078F;
   label values A4KMTHSH A4078F;
   label values A4KMTHTX A4078F;
   label values A4KMUSMT A4078F;
   label values A4KMXDGR A4078F;
   label values A4KMXMAT A4078F;
   label values A4KNEWVO A4078F;
   label values A4KNOPRN A4078F;
   label values A4KOUTLO A4078F;
   label values A4KPEER A4078F;
   label values A4KPHONI A4078F;
   label values A4KPRACL A4078F;
   label values A4KPRTNR A4078F;
   label values A4KPRTUT A4078F;
   label values A4KPUBLS A4078F;
   label values A4KREADL A4078F;
   label values A4KREALL A4078F;
   label values A4KRETEL A4078F;
   label values A4KRULER A4078F;
   label values A4KSEEPR A4078F;
   label values A4KSILEN A4078F;
   label values A4KSKITS A4078F;
   label values A4KTELLR A4078F;
   label values A4KWRKBK A4078F;
   label values A4KWRTWR A4078F;
   label values A4LERNLT A4078F;
   label values A4LITERA A4078F;
   label values A4LONGPR A4078F;
   label values A4LRNART A4078F;
   label values A4LRNGMS A4078F;
   label values A4LRNKEY A4078F;
   label values A4LRNLAN A4078F;
   label values A4LRNMSC A4078F;
   label values A4LRNMTH A4078F;
   label values A4LRNRD A4078F;
   label values A4LRNSCN A4078F;
   label values A4LRNSS A4078F;
   label values A4MXDGRP A4078F;
   label values A4NEWVOC A4078F;
   label values A4NOPRNT A4078F;
   label values A4PATTRN A4078F;
   label values A4PHONET A4078F;
   label values A4PHONIC A4078F;
   label values A4PRACLT A4078F;
   label values A4PRTUTR A4078F;
   label values A4PUBLSH A4078F;
   label values A4READLD A4078F;
   label values A4RETELL A4078F;
   label values A4SEEPRI A4078F;
   label values A4SILENT A4078F;
   label values A4SKITS A4078F;
   label values A4SMGRPJ A4078F;
   label values A4TELLRS A4078F;
   label values A4WRKBK A4078F;
   label values A4WRTWRD A4078F;
   label values A41TO10 A4079F;
   label values A42S5S10 A4079F;
   label values A43DGT A4079F;
   label values A4ACCURA A4079F;
   label values A4ADD2DG A4079F;
   label values A4ALPBTZ A4079F;
   label values A4BODY A4079F;
   label values A4BYD100 A4079F;
   label values A4CARRY A4079F;
   label values A4CMNITY A4079F;
   label values A4COMPSE A4079F;
   label values A4CONVNT A4079F;
   label values A4CULTUR A4079F;
   label values A4DATACO A4079F;
   label values A4DINOSR A4079F;
   label values A4DRCTNS A4079F;
   label values A4ECOLOG A4079F;
   label values A4EQTN A4079F;
   label values A4ESTQNT A4079F;
   label values A4FRCTNS A4079F;
   label values A4GEORPH A4079F;
   label values A4GRAPHS A4079F;
   label values A4HISTOR A4079F;
   label values A4HYGIEN A4079F;
   label values A4IDQNTY A4079F;
   label values A4K1TO10 A4079F;
   label values A4K2S5S1 A4079F;
   label values A4K3DGT A4079F;
   label values A4KACCUR A4079F;
   label values A4KADD2D A4079F;
   label values A4KALPBT A4079F;
   label values A4KBODY A4079F;
   label values A4KBYD10 A4079F;
   label values A4KCARRY A4079F;
   label values A4KCMNIT A4079F;
   label values A4KCOMPS A4079F;
   label values A4KCONVN A4079F;
   label values A4KCULTU A4079F;
   label values A4KDATAC A4079F;
   label values A4KDINOS A4079F;
   label values A4KDRCTN A4079F;
   label values A4KECOLO A4079F;
   label values A4KEQTN A4079F;
   label values A4KESTQN A4079F;
   label values A4KFRCTN A4079F;
   label values A4KGEORP A4079F;
   label values A4KGRAPH A4079F;
   label values A4KHISTO A4079F;
   label values A4KHYGIE A4079F;
   label values A4KIDQNT A4079F;
   label values A4KLAWS A4079F;
   label values A4KLIGHT A4079F;
   label values A4KMAGNE A4079F;
   label values A4KMAINI A4079F;
   label values A4KMAPRD A4079F;
   label values A4KMATCH A4079F;
   label values A4KMIXOP A4079F;
   label values A4KMOTOR A4079F;
   label values A4KORALI A4079F;
   label values A4KORDIN A4079F;
   label values A4KPATRN A4079F;
   label values A4KPLACE A4079F;
   label values A4KPLANT A4079F;
   label values A4KPNCTU A4079F;
   label values A4KPRBBT A4079F;
   label values A4KPREDI A4079F;
   label values A4KPREPO A4079F;
   label values A4KQUANT A4079F;
   label values A4KRCGNZ A4079F;
   label values A4KRDFLN A4079F;
   label values A4KREGZC A4079F;
   label values A4KRHYMN A4079F;
   label values A4KSCMTH A4079F;
   label values A4KSHAPE A4079F;
   label values A4KSNGDG A4079F;
   label values A4KSOCPR A4079F;
   label values A4KSOLAR A4079F;
   label values A4KSOUND A4079F;
   label values A4KSPELL A4079F;
   label values A4KSUB2D A4079F;
   label values A4KSUBGR A4079F;
   label values A4KSUBSD A4079F;
   label values A4KSYLLA A4079F;
   label values A4KSZORD A4079F;
   label values A4KTELLT A4079F;
   label values A4KTEMP A4079F;
   label values A4KTEXTC A4079F;
   label values A4KTOOLS A4079F;
   label values A4KTWODG A4079F;
   label values A4KVOCAB A4079F;
   label values A4KW1210 A4079F;
   label values A4KWATER A4079F;
   label values A4KWRTNM A4079F;
   label values A4KWRTST A4079F;
   label values A4KWTHER A4079F;
   label values A4LAWS A4079F;
   label values A4LIGHT A4079F;
   label values A4MAGNET A4079F;
   label values A4MAINID A4079F;
   label values A4MAPRD A4079F;
   label values A4MATCH A4079F;
   label values A4MIXOP A4079F;
   label values A4MOTORS A4079F;
   label values A4ORALID A4079F;
   label values A4ORDINL A4079F;
   label values A4PLACE A4079F;
   label values A4PLANT A4079F;
   label values A4PNCTUA A4079F;
   label values A4PRBBTY A4079F;
   label values A4PREDIC A4079F;
   label values A4PREPOS A4079F;
   label values A4PTTRNS A4079F;
   label values A4QUANTI A4079F;
   label values A4RCGNZE A4079F;
   label values A4RDFLNT A4079F;
   label values A4REGZCN A4079F;
   label values A4RHYMNG A4079F;
   label values A4SCMTHD A4079F;
   label values A4SHAPES A4079F;
   label values A4SNGDGT A4079F;
   label values A4SOCPRO A4079F;
   label values A4SOLAR A4079F;
   label values A4SOUND A4079F;
   label values A4SPELL A4079F;
   label values A4SUB2DG A4079F;
   label values A4SUBGRP A4079F;
   label values A4SUBSDG A4079F;
   label values A4SYLLAB A4079F;
   label values A4SZORDR A4079F;
   label values A4TELLTI A4079F;
   label values A4TEMP A4079F;
   label values A4TEXTCU A4079F;
   label values A4TOOLS A4079F;
   label values A4TWODGT A4079F;
   label values A4VOCAB A4079F;
   label values A4W12100 A4079F;
   label values A4WATER A4079F;
   label values A4WRTNME A4079F;
   label values A4WRTSTO A4079F;
   label values A4WTHER A4079F;
   label values A4INVSPE A4080F;
   label values A4KINVSP A4080F;
   label values A4KNUMCN A4081F;
   label values A4NUMCNF A4081F;
   label values A4KATTAR A4082F;
   label values A4KATTOP A4082F;
   label values A4KREGHL A4082F;
   label values A4KTPCON A4082F;
   label values A4REGHLP A4082F;
   label values A4SCHACT A4082F;
   label values A4TPCONF A4082F;
   label values A4KSHARE A4084F;
   label values A4KSNTHM A4084F;
   label values A4SHARED A4084F;
   label values A4SNTHME A4084F;
   label values A4KMMCOM A4085F;
   label values A4MMCOM A4085F;
   label values A4KYYCOM A4087F;
   label values A4YYCOM A4087F;
   label values A4BEHVR A4119F;
   label values A4DESK A4120F;
   label values A4ARTARE A4135F;
   label values A4COMPAR A4135F;
   label values A4DRAMAR A4135F;
   label values A4IENGL A4135F;
   label values A4LISTNC A4135F;
   label values A4MATHAR A4135F;
   label values A4OTLA A4135F;
   label values A4READAR A4135F;
   label values A4SCIAR A4135F;
   label values A4WRTCNT A4135F;
   label values A4CHCLDS A4140F;
   label values A4INDVDL A4140F;
   label values A4SMLGRP A4140F;
   label values A4WHLCLS A4140F;
   label values A4COMMTE A4141F;
   label values A4Q26BOX A4144F;
   label values A4HIGHRD A4145F;
   label values A4LOWRD A4145F;
   label values A4TIMEMT A4151F;
   label values A4TIMERD A4151F;
   label values A4PDELED A4160F;
   label values A4PDERCH A4160F;
   label values A4PDTC A4160F;
   label values A4ATCHRD A4164F;
   label values A4CALCUL A4165F;
   label values A4CALEND A4165F;
   label values A4CHLKBD A4165F;
   label values A4CRTIVE A4165F;
   label values A4DRILL A4165F;
   label values A4EXPMTH A4165F;
   label values A4GEOMET A4165F;
   label values A4MANIPS A4165F;
   label values A4MTHGME A4165F;
   label values A4MTHSHT A4165F;
   label values A4MTHTXT A4165F;
   label values A4MUSMTH A4165F;
   label values A4MXMATH A4165F;
   label values A4OUTLOU A4165F;
   label values A4PEER A4165F;
   label values A4PRTNRS A4165F;
   label values A4REALLI A4165F;
   label values A4RULERS A4165F;
   label values A4SEVSOL A4165F;
   label values A4ATTND A4166F;
   label values A4BEHAVR A4166F;
   label values A4CLASPA A4166F;
   label values A4CMPHWK A4166F;
   label values A4COPRTV A4166F;
   label values A4EFFO A4166F;
   label values A4FLLWDR A4166F;
   label values A4IMPRVM A4166F;
   label values A4TOCLAS A4166F;
   label values A4TOSTND A4166F;
   label values A4EVAL A4167F;
   label values A4CMRCLT A4168F;
   label values A4IGRPRJ A4168F;
   label values A4OTHTST A4168F;
   label values A4STNDRD A4168F;
   label values A4TCHRMD A4168F;
   label values A4TXTBKT A4168F;
   label values A4WRKSHT A4168F;
   label values A4WRKSMP A4168F;
   label values A4CLASS A4CLASS;
   label values A4PBLK A4PBLK;
   label values A4PHIS A4PHIS;
   label values A4PMIN A4PMIN;
   label values A5BEHVR A5BEHVR;
   label values A5NOLART A5CHKBOX;
   label values A5NOMATH A5CHKBOX;
   label values A5NOPAID A5CHKBOX;
   label values A5NOSCNC A5CHKBOX;
   label values A5NOSS A5CHKBOX;
   label values A5NOVOL A5CHKBOX;
   label values A5XSTDTS A5CHKBOX;
   label values A5CLSORG A5CLSORG;
   label values A5COMMTE A5COMMTE;
   label values A5DESKTB A5DESK;
   label values A5EDLEVL A5EDLEVL;
   label values A5EVAL A5EVAL;
   label values A5ENGLEX A5HOW21F;
   label values A5GRPPTN A5HOW21F;
   label values A5INTERP A5HOW21F;
   label values A5LOGJRN A5HOW21F;
   label values A5MANIPU A5HOW21F;
   label values A5MATEST A5HOW21F;
   label values A5MCOMP A5HOW21F;
   label values A5MDISC A5HOW21F;
   label values A5MMEDIA A5HOW21F;
   label values A5MPROJ A5HOW21F;
   label values A5MSINST A5HOW21F;
   label values A5MWRITE A5HOW21F;
   label values A5NWDFVO A5HOW21F;
   label values A5PRBLIF A5HOW21F;
   label values A5RDBKCH A5HOW21F;
   label values A5RDLOUD A5HOW21F;
   label values A5RDPROJ A5HOW21F;
   label values A5RDSCI A5HOW21F;
   label values A5RDSLNT A5HOW21F;
   label values A5RDTEST A5HOW21F;
   label values A5SCCOMP A5HOW21F;
   label values A5SCHAND A5HOW21F;
   label values A5SCINNW A5HOW21F;
   label values A5SCITXT A5HOW21F;
   label values A5SCLIBR A5HOW21F;
   label values A5SCORAL A5HOW21F;
   label values A5SCPROJ A5HOW21F;
   label values A5SCRESL A5HOW21F;
   label values A5SCTEST A5HOW21F;
   label values A5SCWRIT A5HOW21F;
   label values A5SOLSHT A5HOW21F;
   label values A5SOLTXT A5HOW21F;
   label values A5SSDEBA A5HOW21F;
   label values A5SSEVNT A5HOW21F;
   label values A5SSGOVT A5HOW21F;
   label values A5SSHWRK A5HOW21F;
   label values A5SSINET A5HOW21F;
   label values A5SSLECT A5HOW21F;
   label values A5SSMEDI A5HOW21F;
   label values A5SSOPIN A5HOW21F;
   label values A5SSPROJ A5HOW21F;
   label values A5SSREAD A5HOW21F;
   label values A5SSREPT A5HOW21F;
   label values A5SSROLE A5HOW21F;
   label values A5SSSGOV A5HOW21F;
   label values A5SSSHT A5HOW21F;
   label values A5SSVIST A5HOW21F;
   label values A5SSVOL A5HOW21F;
   label values A5TALKRD A5HOW21F;
   label values A5TLKMAT A5HOW21F;
   label values A5UNDSTD A5HOW21F;
   label values A5USECAL A5HOW21F;
   label values A5WKBKSH A5HOW21F;
   label values A5WRITRD A5HOW21F;
   label values A5WRPROC A5HOW21F;
   label values A5AIDTUT A5HOWO1F;
   label values A5DIVMTH A5HOWO1F;
   label values A5DIVRD A5HOWO1F;
   label values A5EXASIS A5HOWO1F;
   label values A5OFTART A5HOWO1F;
   label values A5OFTDAN A5HOWO1F;
   label values A5OFTESL A5HOWO1F;
   label values A5OFTFOR A5HOWO1F;
   label values A5OFTHTR A5HOWO1F;
   label values A5OFTMTH A5HOWO1F;
   label values A5OFTMUS A5HOWO1F;
   label values A5OFTRDL A5HOWO1F;
   label values A5OFTREF A5HOWO1F;
   label values A5OFTSCI A5HOWO1F;
   label values A5OFTSOC A5HOWO1F;
   label values A5OTASSI A5HOWO1F;
   label values A5PULLOU A5HOWO1F;
   label values A5SPECTU A5HOWO1F;
   label values A5TXPE A5HOWO1F;
   label values A5CPHWK A5HOWO2F;
   label values A5HPRHW A5HOWO2F;
   label values A5MMCOM A5MMCOM;
   label values A5NUMCNF A5NUMCNF;
   label values A5PBLK A5PBLK;
   label values A5PHIS A5PHIS;
   label values A5PLEP A5PLEP;
   label values A5PMIN A5PMIN;
   label values A5CHCLDS A5Q24F;
   label values A5HETGRP A5Q24F;
   label values A5INDVDL A5Q24F;
   label values A5SMLGRP A5Q24F;
   label values A5WHLCLS A5Q24F;
   label values A5TXART A5Q26HMT;
   label values A5TXDAN A5Q26HMT;
   label values A5TXESL A5Q26HMT;
   label values A5TXFOR A5Q26HMT;
   label values A5TXMTH A5Q26HMT;
   label values A5TXMUS A5Q26HMT;
   label values A5TXRDLA A5Q26HMT;
   label values A5TXREF A5Q26HMT;
   label values A5TXSCI A5Q26HMT;
   label values A5TXSOC A5Q26HMT;
   label values A5TXTHTR A5Q26HMT;
   label values A5MINMTH A5Q28MIN;
   label values A5MINRD A5Q28MIN;
   label values A5TIMEMT A5Q30F;
   label values A5TIMERD A5Q30F;
   label values A5TIMESC A5Q30F;
   label values A5TIMESS A5Q30F;
   label values A5LUNCH A5Q36F;
   label values A5RECESS A5Q36F;
   label values A5MTHMAT A5Q43F;
   label values A5RDLMAT A5Q43F;
   label values A5SCIMAT A5Q43F;
   label values A5SSMAT A5Q43F;
   label values A5ARTMAT A5Q44F;
   label values A5BOOKS A5Q44F;
   label values A5CLDNPM A5Q44F;
   label values A5COMINT A5Q44F;
   label values A5COMOTH A5Q44F;
   label values A5COOK A5Q44F;
   label values A5COSTUM A5Q44F;
   label values A5EQUIPM A5Q44F;
   label values A5MUSIC A5Q44F;
   label values A5PLAYER A5Q44F;
   label values A5RDBOOK A5Q44F;
   label values A5RDKITS A5Q44F;
   label values A5RDOTHR A5Q44F;
   label values A5SWRDIN A5Q44F;
   label values A5TVWTCH A5Q44F;
   label values A5VCR A5Q44F;
   label values A5BORROW A5Q451F;
   label values A5GOTOLI A5Q45F;
   label values A5ASNTOP A5Q52F;
   label values A5CHKSPL A5Q52F;
   label values A5COLLEC A5Q52F;
   label values A5DISFAM A5Q52F;
   label values A5DISOTH A5Q52F;
   label values A5DRAFTS A5Q52F;
   label values A5FORMAT A5Q52F;
   label values A5OTSRCE A5Q52F;
   label values A5OUTLIN A5Q52F;
   label values A5OWNTOP A5Q52F;
   label values A5PURPOS A5Q52F;
   label values A5TLKYOU A5Q52F;
   label values A5ALGEBR A5Q54F;
   label values A5ANALYT A5Q54F;
   label values A5COMIDA A5Q54F;
   label values A5ESTIM A5Q54F;
   label values A5FRACT A5Q54F;
   label values A5GEOM A5Q54F;
   label values A5MEASUR A5Q54F;
   label values A5MTHCON A5Q54F;
   label values A5NUMOP A5Q54F;
   label values A5PLACEV A5Q54F;
   label values A5PRSOLV A5Q54F;
   label values A5SHAPE A5Q54F;
   label values A5STAT A5Q54F;
   label values A5SCANAL A5Q56F;
   label values A5SCCONC A5Q56F;
   label values A5SCFACT A5Q56F;
   label values A5SCIDEA A5Q56F;
   label values A5SCINT A5Q56F;
   label values A5SCLAB A5Q56F;
   label values A5SCPROB A5Q56F;
   label values A5SCREL A5Q56F;
   label values A5SCTECH A5Q56F;
   label values A5ATTND A5Q58F;
   label values A5BEHAVR A5Q58F;
   label values A5CLASPA A5Q58F;
   label values A5CMPHWK A5Q58F;
   label values A5COPRTV A5Q58F;
   label values A5EFFO A5Q58F;
   label values A5FLLWDR A5Q58F;
   label values A5IMPRVM A5Q58F;
   label values A5TOCLAS A5Q58F;
   label values A5TOSTND A5Q58F;
   label values A5CMRCLT A5Q60F;
   label values A5IGRPRJ A5Q60F;
   label values A5OTHTST A5Q60F;
   label values A5STNDRD A5Q60F;
   label values A5TCHRMD A5Q60F;
   label values A5TXTBKT A5Q60F;
   label values A5WRKSHT A5Q60F;
   label values A5WRKSMP A5Q60F;
   label values A5REGHLP A5Q66F;
   label values A5SCHACT A5Q66F;
   label values A5TPCONF A5Q66F;
   label values A5TSTUSE A5STUSE;
   label values A5INFORM A5TMPROP;
   label values A5NARR A5TMPROP;
   label values A5PERSUA A5TMPROP;
   label values A5RDINFO A5TMPROP;
   label values A5RDLIT A5TMPROP;
   label values A5RDTASK A5TMPROP;
   label values A5TXRCE A5TXRCE;
   label values A5TXSPEN A5TXSPEN;
   label values A5WELSPK A5WELSPK;
   label values A5WRTWK A5WRTWK;
   label values A5YYCOM A5YYCOM;
   label values C6ACCOM ACQAccom;
   label values C6ATTLVL ACQAtten;
   label values C6COOPER ACQCoop;
   label values C6GRADE ACQGrade;
   label values C6MOTIVA ACQModva;
   label values C6WHATDI ACQWhatD;
   label values C6WHATIN ACQWhatI;
   label values C6WHICHA ACQWhich;
   label values C6WHOPRE ACQWhoP;
   label values F5CADISP ASSESSME;
   label values F6CADISP ASSESSME;
   label values F7CADISP ASSESSME;
   label values B1CHCLDS B1001F;
   label values B1INDVDL B1001F;
   label values B1SMLGRP B1001F;
   label values B1WHLCLS B1001F;
   label values B2CHCLDS B1001F;
   label values B2INDVDL B1001F;
   label values B2SMLGRP B1001F;
   label values B2WHLCLS B1001F;
   label values B1ARTARE B1002F;
   label values B1COMPAR B1002F;
   label values B1DRAMAR B1002F;
   label values B1HISP B1002F;
   label values B1HMEVST B1002F;
   label values B1INFOHO B1002F;
   label values B1INKNDR B1002F;
   label values B1LISTNC B1002F;
   label values B1MATHAR B1002F;
   label values B1OTTRAN B1002F;
   label values B1PCKTCH B1002F;
   label values B1PLAYAR B1002F;
   label values B1PRNTOR B1002F;
   label values B1READAR B1002F;
   label values B1SCIAR B1002F;
   label values B1SHRTN B1002F;
   label values B1VSTK B1002F;
   label values B1WATRSA B1002F;
   label values B1WRTCNT B1002F;
   label values B2ARTARE B1002F;
   label values B2COMPAR B1002F;
   label values B2DRAMAR B1002F;
   label values B2HISP B1002F;
   label values B2HMEVST B1002F;
   label values B2INFOHO B1002F;
   label values B2INKNDR B1002F;
   label values B2LISTNC B1002F;
   label values B2MATHAR B1002F;
   label values B2OTTRAN B1002F;
   label values B2PCKTCH B1002F;
   label values B2PLAYAR B1002F;
   label values B2PRNTOR B1002F;
   label values B2READAR B1002F;
   label values B2SCIAR B1002F;
   label values B2SHRTN B1002F;
   label values B2VSTK B1002F;
   label values B2WATRSA B1002F;
   label values B2WRTCNT B1002F;
   label values B1ATTND B1003F;
   label values B1BEHVR B1003F;
   label values B1CLASPA B1003F;
   label values B1COPRTV B1003F;
   label values B1EFFO B1003F;
   label values B1FLLWDR B1003F;
   label values B1IMPRVM B1003F;
   label values B1OTMT B1003F;
   label values B1TOCLAS B1003F;
   label values B1TOSTND B1003F;
   label values B2ATTND B1003F;
   label values B2BEHVR B1003F;
   label values B2CLASPA B1003F;
   label values B2COPRTV B1003F;
   label values B2EFFO B1003F;
   label values B2FLLWDR B1003F;
   label values B2IMPRVM B1003F;
   label values B2OTMT B1003F;
   label values B2TOCLAS B1003F;
   label values B2TOSTND B1003F;
   label values B1EVAL B1004F;
   label values B2EVAL B1004F;
   label values B1NOPAYP B1005F;
   label values B1PAIDPR B1005F;
   label values B2NOPAYP B1005F;
   label values B2PAIDPR B1005F;
   label values B1ALPHBT B1006F;
   label values B1CNT20 B1006F;
   label values B1COMM B1006F;
   label values B1ENGLAN B1006F;
   label values B1FNSHT B1006F;
   label values B1FOLWDR B1006F;
   label values B1IDCOLO B1006F;
   label values B1NOTDSR B1006F;
   label values B1PENCIL B1006F;
   label values B1PRBLMS B1006F;
   label values B1SENSTI B1006F;
   label values B1SHARE B1006F;
   label values B1SITSTI B1006F;
   label values B2ALPHBT B1006F;
   label values B2CNT20 B1006F;
   label values B2COMM B1006F;
   label values B2ENGLAN B1006F;
   label values B2FNSHT B1006F;
   label values B2FOLWDR B1006F;
   label values B2IDCOLO B1006F;
   label values B2NOTDSR B1006F;
   label values B2PENCIL B1006F;
   label values B2PRBLMS B1006F;
   label values B2SENSTI B1006F;
   label values B2SHARE B1006F;
   label values B2SITSTI B1006F;
   label values B1ACCPTD B1007F;
   label values B1ALLKNO B1007F;
   label values B1ALPHBF B1007F;
   label values B1ATNDPR B1007F;
   label values B1CNTNLR B1007F;
   label values B1ENCOUR B1007F;
   label values B1ENJOY B1007F;
   label values B1FRMLIN B1007F;
   label values B1HMWRK B1007F;
   label values B1LRNREA B1007F;
   label values B1MISBHV B1007F;
   label values B1MISSIO B1007F;
   label values B1MKDIFF B1007F;
   label values B1NOTCAP B1007F;
   label values B1PAPRWR B1007F;
   label values B1PRCTWR B1007F;
   label values B1PRESSU B1007F;
   label values B1PRIORI B1007F;
   label values B1PSUPP B1007F;
   label values B1READAT B1007F;
   label values B1SCHSPR B1007F;
   label values B1STNDLO B1007F;
   label values B1TCHPRN B1007F;
   label values B1TEACH B1007F;
   label values B2ACCPTD B1007F;
   label values B2ALLKNO B1007F;
   label values B2ALPHBF B1007F;
   label values B2ATNDPR B1007F;
   label values B2CNTNLR B1007F;
   label values B2ENCOUR B1007F;
   label values B2ENJOY B1007F;
   label values B2FRMLIN B1007F;
   label values B2HMWRK B1007F;
   label values B2LRNREA B1007F;
   label values B2MISBHV B1007F;
   label values B2MISSIO B1007F;
   label values B2MKDIFF B1007F;
   label values B2NOTCAP B1007F;
   label values B2PAPRWR B1007F;
   label values B2PRCTWR B1007F;
   label values B2PRESSU B1007F;
   label values B2PRIORI B1007F;
   label values B2PSUPP B1007F;
   label values B2READAT B1007F;
   label values B2SCHSPR B1007F;
   label values B2STNDLO B1007F;
   label values B2TCHPRN B1007F;
   label values B2TEACH B1007F;
   label values B1SCHPLC B1008F;
   label values B2SCHPLC B1008F;
   label values B1CNTRLC B1009F;
   label values B2CNTRLC B1009F;
   label values B1TGEND B1010F;
   label values B2TGEND B1010F;
   label values B1RACE1 B1012F;
   label values B1RACE2 B1012F;
   label values B1RACE3 B1012F;
   label values B1RACE5 B1012F;
   label values B2RACE1 B1012F;
   label values B2RACE2 B1012F;
   label values B2RACE3 B1012F;
   label values B2RACE5 B1012F;
   label values B1HGHSTD B1024F;
   label values B2HGHSTD B1024F;
   label values B1DEVLP B1025F;
   label values B1EARLY B1025F;
   label values B1ELEM B1025F;
   label values B1ESL B1025F;
   label values B1MTHDMA B1025F;
   label values B1MTHDRD B1025F;
   label values B1MTHDSC B1025F;
   label values B1SPECED B1025F;
   label values B2DEVLP B1025F;
   label values B2EARLY B1025F;
   label values B2ELEM B1025F;
   label values B2ESL B1025F;
   label values B2MTHDMA B1025F;
   label values B2MTHDRD B1025F;
   label values B2MTHDSC B1025F;
   label values B2SPECED B1025F;
   label values B1TYPCER B1026F;
   label values B2TYPCER B1026F;
   label values B1ELEMCT B1027F;
   label values B1ERLYCT B1027F;
   label values B1OTHCRT B1027F;
   label values B2ELEMCT B1027F;
   label values B2ERLYCT B1027F;
   label values B2OTHCRT B1027F;
   label values B1MMCOMP B1028F;
   label values B2MMCOMP B1028F;
   label values B1YYCOMP B1030F;
   label values B2YYCOMP B1030F;
   label values B4KCHCLD B4001F;
   label values B4KINDVD B4001F;
   label values B4KSMLGR B4001F;
   label values B4KWHLCL B4001F;
   label values B4BUDDY B4002F;
   label values B4ELEMCT B4002F;
   label values B4ERLYCT B4002F;
   label values B4HISP B4002F;
   label values B4INFOHM B4002F;
   label values B4KARTAR B4002F;
   label values B4KCOMPA B4002F;
   label values B4KDRAMA B4002F;
   label values B4KELEMC B4002F;
   label values B4KERLYC B4002F;
   label values B4KHMEVS B4002F;
   label values B4KINFOH B4002F;
   label values B4KINKND B4002F;
   label values B4KINVIS B4002F;
   label values B4KLISTN B4002F;
   label values B4KMATHA B4002F;
   label values B4KOTHCR B4002F;
   label values B4KOTTRA B4002F;
   label values B4KPCKTC B4002F;
   label values B4KPLAYA B4002F;
   label values B4KPRNTO B4002F;
   label values B4KREADA B4002F;
   label values B4KSCIAR B4002F;
   label values B4KSHRTN B4002F;
   label values B4KVSTK B4002F;
   label values B4KWATRS B4002F;
   label values B4KWRTCN B4002F;
   label values B4MTKNDR B4002F;
   label values B4OTTRNS B4002F;
   label values B4TCHRSC B4002F;
   label values B4VST1ST B4002F;
   label values B4KATTND B4003F;
   label values B4KBEHVR B4003F;
   label values B4KCLASP B4003F;
   label values B4KCOPRT B4003F;
   label values B4KEFFO B4003F;
   label values B4KFLLWD B4003F;
   label values B4KIMPRV B4003F;
   label values B4KOTMT B4003F;
   label values B4KTOCLA B4003F;
   label values B4KTOSTN B4003F;
   label values B4KEVAL B4004F;
   label values B4KNOPAY B4005F;
   label values B4KPAIDP B4005F;
   label values B4NOPAYP B4005F;
   label values B4PAIDPR B4005F;
   label values B4KALPHB B4006F;
   label values B4KCNT20 B4006F;
   label values B4KCOMM B4006F;
   label values B4KENGLA B4006F;
   label values B4KFNSHT B4006F;
   label values B4KFOLWD B4006F;
   label values B4KIDCOL B4006F;
   label values B4KNOTDS B4006F;
   label values B4KPENCI B4006F;
   label values B4KPRBLM B4006F;
   label values B4KSENST B4006F;
   label values B4KSHARE B4006F;
   label values B4KSITST B4006F;
   label values B4ALPHBF B4007F;
   label values B4ATNDK B4007F;
   label values B4ENJOY B4007F;
   label values B4FRMINK B4007F;
   label values B4HMWK1 B4007F;
   label values B4KALPHA B4007F;
   label values B4KATNDP B4007F;
   label values B4KENJOY B4007F;
   label values B4KFRMLI B4007F;
   label values B4KHMWRK B4007F;
   label values B4KLRNRE B4007F;
   label values B4KMKDIF B4007F;
   label values B4KPRCTW B4007F;
   label values B4KREADT B4007F;
   label values B4KTCHPR B4007F;
   label values B4KTEACH B4007F;
   label values B4LRNREA B4007F;
   label values B4MKDIFF B4007F;
   label values B4PRCTW1 B4007F;
   label values B4READAT B4007F;
   label values B4TCHPRN B4007F;
   label values B4TEACH B4007F;
   label values B4ACCPTD B4008F;
   label values B4ADTRND B4008F;
   label values B4ALLKNO B4008F;
   label values B4CNTNLR B4008F;
   label values B4ENCOUR B4008F;
   label values B4INCLUS B4008F;
   label values B4KACCPT B4008F;
   label values B4KADTRN B4008F;
   label values B4KALLKN B4008F;
   label values B4KCNTNL B4008F;
   label values B4KENCOU B4008F;
   label values B4KINCLU B4008F;
   label values B4KMISBH B4008F;
   label values B4KMISSI B4008F;
   label values B4KNOTCA B4008F;
   label values B4KPAPRW B4008F;
   label values B4KPRESS B4008F;
   label values B4KPRIOR B4008F;
   label values B4KPSUPP B4008F;
   label values B4KSCHSP B4008F;
   label values B4KSTNDL B4008F;
   label values B4LEPINC B4008F;
   label values B4LEPTRN B4008F;
   label values B4MISBHV B4008F;
   label values B4MISSIO B4008F;
   label values B4NOTCAP B4008F;
   label values B4PAPRWR B4008F;
   label values B4PRESSU B4008F;
   label values B4PRIORI B4008F;
   label values B4PSUPP B4008F;
   label values B4SCHSPR B4008F;
   label values B4STNDLO B4008F;
   label values B4KSCHPL B4009F;
   label values B4SCHPLC B4009F;
   label values B4CNTRLC B4010F;
   label values B4KCNTRL B4010F;
   label values B4CNSLT B4012F;
   label values B4COLLEG B4012F;
   label values B4FDBACK B4012F;
   label values B4INSRVC B4012F;
   label values B4KRACE3 B4012F;
   label values B4KRACE5 B4012F;
   label values B4OBSERV B4012F;
   label values B4RACE3 B4012F;
   label values B4RACE5 B4012F;
   label values B4RELTIM B4012F;
   label values B4SUPPOR B4012F;
   label values B4TECH B4012F;
   label values B4WRKSHP B4012F;
   label values B4KHGHST B4025F;
   label values B4DEVLP B4026F;
   label values B4EARLY B4026F;
   label values B4ELEM B4026F;
   label values B4ESL B4026F;
   label values B4KDEVLP B4026F;
   label values B4KEARLY B4026F;
   label values B4KELEM B4026F;
   label values B4KESL B4026F;
   label values B4KMTHDM B4026F;
   label values B4KMTHDR B4026F;
   label values B4KMTHDS B4026F;
   label values B4KSPECE B4026F;
   label values B4MTHDMA B4026F;
   label values B4MTHDRD B4026F;
   label values B4MTHDSC B4026F;
   label values B4SPECED B4026F;
   label values B4KTYPCE B4027F;
   label values B4TYPCER B4027F;
   label values B4KMMCOM B4028F;
   label values B4KYYCOM B4030F;
   label values B4CURRDV B4031F;
   label values B4DISCHD B4031F;
   label values B4INDCHD B4031F;
   label values B4LESPLN B4031F;
   label values B4HGHSTD B4045F;
   label values B4GRDECE B4046F;
   label values B4GRDEE B4046F;
   label values B4GRDNEM B4046F;
   label values B4GRDOEM B4046F;
   label values B4GRDSE B4046F;
   label values B4UNDECE B4046F;
   label values B4UNDEE B4046F;
   label values B4UNDNEM B4046F;
   label values B4UNDOEM B4046F;
   label values B4UNDSE B4046F;
   label values B4MMCOMP B4047F;
   label values B4YYCOMP B4049F;
   label values B5ACCPTD B5AGREE;
   label values B5ADTRND B5AGREE;
   label values B5ALLKNO B5AGREE;
   label values B5BULLY B5AGREE;
   label values B5CLSZOK B5AGREE;
   label values B5CNTNLR B5AGREE;
   label values B5COMSUP B5AGREE;
   label values B5ENCOUR B5AGREE;
   label values B5ENJOY B5AGREE;
   label values B5HMWK3 B5AGREE;
   label values B5INCLUS B5AGREE;
   label values B5JOBTST B5AGREE;
   label values B5LEPINC B5AGREE;
   label values B5LEPTRN B5AGREE;
   label values B5MISBHV B5AGREE;
   label values B5MISSIO B5AGREE;
   label values B5MKDIFF B5AGREE;
   label values B5NOTCAP B5AGREE;
   label values B5PAPRWR B5AGREE;
   label values B5PHSCNF B5AGREE;
   label values B5PRCOMP B5AGREE;
   label values B5PRCTW3 B5AGREE;
   label values B5PRESSU B5AGREE;
   label values B5PRIORI B5AGREE;
   label values B5PRREAD B5AGREE;
   label values B5PSUPP B5AGREE;
   label values B5RDPROB B5AGREE;
   label values B5READAT B5AGREE;
   label values B5SCHSPR B5AGREE;
   label values B5STNDLO B5AGREE;
   label values B5TEACH B5AGREE;
   label values B5CNTRLC B5CNTRLC;
   label values B5HGHSTD B5HGHSTD;
   label values B5NOPAYP B5HRSPWK;
   label values B5PAIDPR B5HRSPWK;
   label values B5MMCOMP B5MMCOMP;
   label values B5ASSIGN B5MNASIN;
   label values B5CURRDV B5Q1F;
   label values B5DISCHD B5Q1F;
   label values B5INDCHD B5Q1F;
   label values B5LESPLN B5Q1F;
   label values B5CLMGMT B5Q21F;
   label values B5DEVLP B5Q21F;
   label values B5EARLY B5Q21F;
   label values B5ELEM B5Q21F;
   label values B5ESL B5Q21F;
   label values B5MTHDMA B5Q21F;
   label values B5MTHDRD B5Q21F;
   label values B5MTHDSC B5Q21F;
   label values B5SPECED B5Q21F;
   label values B5MAUSE B5Q2F;
   label values B5RDUSE B5Q2F;
   label values B5SCUSE B5Q2F;
   label values B5SSUSE B5Q2F;
   label values B5SCHPLC B5SCHPLC;
   label values B5TYPCER B5TYPCER;
   label values B5YYCOMP B5YYCOMP;
   label values C1ASMTMM C1ASMTMM;
   label values C1ASMTST C1ASMTST;
   label values C2ASMTST C1ASMTST;
   label values C1ASMTYY C1ASMTYY;
   label values C1PSYMTR C1PSYMTR;
   label values C1R4MPF C1R4MPF;
   label values C1R4RPF C1R4RPF;
   label values C1SCREEN C1SCREEN;
   label values C2SCREEN C1SCREEN;
   label values C1SPASMT C1SPASMT;
   label values C2SPASMT C1SPASMT;
   label values C1SPHOME C1SPHOME;
   label values C2SPHOME C1SPHOME;
   label values C2ASMTMM C2ASMTMM;
   label values C2ASMTYY C2ASMTYY;
   label values C2R4MPF C2R4MPF;
   label values C2R4RPF C2R4RPF;
   label values C3ASMTMM C3ASMTMM;
   label values C3ASMTST C3ASMTST;
   label values C4ASMTST C3ASMTST;
   label values C3ASMTYY C3ASMTYY;
   label values C3R4MPF C3R4MPF;
   label values C3R4RPF C3R4RPF;
   label values C3SCREEN C3SCREEN;
   label values C4SCREEN C3SCREEN;
   label values C3SPASMT C3SPASMT;
   label values C4SPASMT C3SPASMT;
   label values C3SPHOME C3SPHOME;
   label values C4SPHOME C3SPHOME;
   label values C4ASMTMM C4ASMTMM;
   label values C4ASMTYY C4ASMTYY;
   label values C4R4MPF C4R4MPF;
   label values C4R4RPF C4R4RPF;
   label values C5GRADE C5_280F;
   label values C5WHERE C5_281F;
   label values C5INTRUP C5_324F;
   label values C5WHATIN C5_325F;
   label values C5DISRUP C5_326F;
   label values C5WHATDI C5_327F;
   label values C5ACCOM C5_329F;
   label values C5WHICHA C5_330F;
   label values C5PRESNT C5_331F;
   label values C5WHOPRE C5_332F;
   label values C5MOTIVA C5_333F;
   label values C5COOPER C5_334F;
   label values C5ATTLVL C5_335F;
   label values C5OBSERV C5_336F;
   label values C5NONRES C5_397F;
   label values C5BRKFNL C5_398F;
   label values C5INGRAD C5_5F;
   label values C5ASMTMM C5ASMTMM;
   label values C5ASMTST C5ASMTST;
   label values C5ASMTYY C5ASMTYY;
   label values C5R4MPF C5R4MPF;
   label values C5R4RPF C5R4RPF;
   label values C6ASMTMM C6ASMTMM;
   label values C6ASMTST C6ASMTST;
   label values C6ASMTYY C6ASMTYY;
   label values C6NONRES C6NONRES;
   label values C6R4MPF C6R4MPF;
   label values C6R4RPF C6R4RPF;
   label values C7ABLE C7ABLE;
   label values C7ADVINA C7ADVINA;
   label values C7ADVINK C7ADVINK;
   label values C7ADVIOA C7ADVIOA;
   label values C7ADVIOK C7ADVIOK;
   label values C7ADVIPA C7ADVIPA;
   label values C7ADVIRA C7ADVIRA;
   label values C7ADVISA C7ADVISA;
   label values C7ADVISI C7ADVISI;
   label values C7ADVISK C7ADVISK;
   label values C7ANGRY C7ANGRY;
   label values C7ARTS C7ARTS;
   label values C7ASHAME C7ASHAME;
   label values C7ASMTMM C7ASMTMM;
   label values C7ASMTST C7ASMTST;
   label values C7ASMTYY C7ASMTYY;
   label values C7CHANCE C7CHANCE;
   label values C7CHERNA C7CHERNA;
   label values C7CHERNK C7CHERNK;
   label values C7CHEROA C7CHEROA;
   label values C7CHEROK C7CHEROK;
   label values C7CHERPA C7CHERPA;
   label values C7CHERRA C7CHERRA;
   label values C7CHERSA C7CHERSA;
   label values C7CHERSI C7CHERSI;
   label values C7CHERSK C7CHERSK;
   label values C7CLOSCL C7CLOSCL;
   label values C7CLOSTC C7CLOSTC;
   label values C7CLSCAR C7CLSCAR;
   label values C7CLSFEL C7CLSFEL;
   label values C7CLSFR C7CLSFR;
   label values C7CLSLIK C7CLSLIK;
   label values C7CLSOTH C7CLSOTH;
   label values C7CLUB C7CLUB;
   label values C7COMPUT C7COMPUT;
   label values C7DAYSPE C7DAYSPE;
   label values C7DESCWT C7DESCWT;
   label values C7DESMTH C7DESMTH;
   label values C7DESSCI C7DESSCI;
   label values C7DRAMA C7DRAMA;
   label values C7ENGBST C7ENGBST;
   label values C7ENJMTH C7ENJMTH;
   label values C7ENJOY C7ENJOY;
   label values C7ENJRD C7ENJRD;
   label values C7EXERCS C7EXERCS;
   label values C7FITIN C7FITIN;
   label values C7FLGOOD C7FLGOOD;
   label values C7FRNCLS C7FRNCLS;
   label values C7FRNEDU C7FRNEDU;
   label values C7FRNGRD C7FRNGRD;
   label values C7FROUT C7FROUT;
   label values C7FROVER C7FROVER;
   label values C7GOFRND C7GOFRND;
   label values C7GRDENG C7GRDENG;
   label values C7GRDPAR C7GRDPAR;
   label values C7GRDYOU C7GRDYOU;
   label values C7GROUP C7GROUP;
   label values C7HGT1A C7HGT1A;
   label values C7HGT2A C7HGT2A;
   label values C7HOME C7HOME;
   label values C7HOWFAR C7HOWFAR;
   label values C7LIKMTH C7LIKMTH;
   label values C7LIKRD C7LIKRD;
   label values C7LNGOTH C7LNGOTH;
   label values C7LNGPAR C7LNGPAR;
   label values C7LNGSCH C7LNGSCH;
   label values C7LNGSIB C7LNGSIB;
   label values C7LONLY C7LONLY;
   label values C7LUCK C7LUCK;
   label values C7MMCOMP C7MMCOMP;
   label values C7MTHBST C7MTHBST;
   label values C7MTHGD C7MTHGD;
   label values C7MUSIC C7MUSIC;
   label values C7NATENG C7NATENG;
   label values C7NOBOOK C7NOBOOK;
   label values C7NOCNTR C7NOCNTR;
   label values C7NOGOOD C7NOGOOD;
   label values C7NOPLAN C7NOPLAN;
   label values C7NOPRD C7NOPRD;
   label values C7OTHSPT C7OTHSPT;
   label values C7PLANS C7PLANS;
   label values C7R4MPF C7R4MPF;
   label values C7R4RPF C7R4RPF;
   label values C7SAD C7SAD;
   label values C7SAFE C7SAFE;
   label values C7SATISF C7SATISF;
   label values C7SCHLNA C7SCHLNA;
   label values C7SCHLNK C7SCHLNK;
   label values C7SCHLOA C7SCHLOA;
   label values C7SCHLOK C7SCHLOK;
   label values C7SCHLPA C7SCHLPA;
   label values C7SCHLRA C7SCHLRA;
   label values C7SCHLSA C7SCHLSA;
   label values C7SCHLSI C7SCHLSI;
   label values C7SCHLSK C7SCHLSK;
   label values C7SMADV C7SMADV;
   label values C7SPORTS C7SPORTS;
   label values C7STOPS C7STOPS;
   label values C7SUMMER C7SUMMER;
   label values C7TALK C7TALK;
   label values C7TRYWT C7TRYWT;
   label values C7TUTORM C7TUTORM;
   label values C7TUTORR C7TUTORR;
   label values C7TVROOM C7TVROOM;
   label values C7USELES C7USELES;
   label values C7WGT1A C7WGT1A;
   label values C7WGT2A C7WGT2A;
   label values C7WORTH C7WORTH;
   label values C7WRYFIN C7WRYFIN;
   label values C7WRYHNG C7WRYHNG;
   label values C7WRYTST C7WRYTST;
   label values C7WRYWEL C7WRYWEL;
   label values C7YYCOMP C7YYCOMP;
   label values F5PIDISP CAPISTAT;
   label values F6PIDISP CAPISTAT;
   label values F7PIDISP CAPISTAT;
   label values CPSOLDS CPSOLDS;
   label values CREGION CREGION;
   label values CS_TYPE2 CS_TYPE;
   label values DOBMM DOBMM;
   label values R3ELIG ELIG;
   label values R4ELIG ELIG;
   label values R5ELIG ELIG;
   label values F1CLASS F1CLASS;
   label values F2CLASS F2CLASS;
   label values F6MTHSCI F6MTHSCI;
   label values F6SPECS F6SPECS;
   label values F6YRRND F6YRRND;
   label values F7MTHSCI F7MTHSCI;
   label values F7SPECS F7SPECS;
   label values F7YRRND F7YRRND;
   label values G6ABIL G6ABIL;
   label values G6ABILTY G6ABILTY;
   label values G6ASSMT G6ASSMT;
   label values G6BEHVR G6BEHVR;
   label values G6BORROW G6BORROW;
   label values G6CHCLDS G6CHCLDS;
   label values G6COMPTR G6COMPTR;
   label values G6CORERD G6CORERD;
   label values G6COUNSL G6COUNSL;
   label values G6DIVRD G6DIVRD;
   label values G6EXPOST G6EXPOST;
   label values G6GOTOLI G6GOTOLI;
   label values G6GRRDCL G6GRRDCL;
   label values G6HETGRP G6HETGRP;
   label values G6INDVDL G6INDVDL;
   label values G6INFMTS G6INFMTS;
   label values G6INFO G6INFO;
   label values G6INFORM G6INFORM;
   label values G6LRXENG G6LRXENG;
   label values G6MECHAN G6MECHAN;
   label values G6MINRD G6MINRD;
   label values G6MLTSTR G6MLTSTR;
   label values G6MMCOM G6MMCOM;
   label values G6MTSTF G6MTSTF;
   label values G6NARR G6NARR;
   label values G6PARCON G6PARCON;
   label values G6PBLK G6PBLK;
   label values G6PERSUA G6PERSUA;
   label values G6PHIS G6PHIS;
   label values G6PLEP G6PLEP;
   label values G6PMIN G6PMIN;
   label values G6ASGNTP G6Q2931F;
   label values G6CHSTOP G6Q2931F;
   label values G6COMWRT G6Q2931F;
   label values G6DEFPUR G6Q2931F;
   label values G6DOGRAM G6Q2931F;
   label values G6INTERP G6Q2931F;
   label values G6MKOUTL G6Q2931F;
   label values G6MMEDIA G6Q2931F;
   label values G6NWDFVO G6Q2931F;
   label values G6RDBKCH G6Q2931F;
   label values G6RDLOUD G6Q2931F;
   label values G6RDPROJ G6Q2931F;
   label values G6RDSLNT G6Q2931F;
   label values G6RDTEST G6Q2931F;
   label values G6TALKRD G6Q2931F;
   label values G6TLKWRK G6Q2931F;
   label values G6UNDSTD G6Q2931F;
   label values G6USECOM G6Q2931F;
   label values G6USERES G6Q2931F;
   label values G6WKBKSH G6Q2931F;
   label values G6WRITRD G6Q2931F;
   label values G6WTDRAF G6Q2931F;
   label values G6RALOUD G6RALOUD;
   label values G6RDFLN G6RDFLN;
   label values G6RDINFO G6RDINFO;
   label values G6RDLIT G6RDLIT;
   label values G6RDTASK G6RDTASK;
   label values G6REFLWR G6REFLWR;
   label values G6REGCON G6REGCON;
   label values G6RETCLS G6RETCLS;
   label values G6RETGRA G6RETGRA;
   label values G6RTLANG G6RTLANG;
   label values G6SGRDG G6SGRDG;
   label values G6SMLGRP G6SMLGRP;
   label values G6SPEAK G6SPEAK;
   label values G6SPEDRE G6SPEDRE;
   label values G6STRPLY G6STRPLY;
   label values G6TT1RD G6TT1RD;
   label values G6TTRRD G6TTRRD;
   label values G6UNPLAY G6UNPLAY;
   label values G6VOLUNT G6VOLUNT;
   label values G6WHLCLS G6WHLCLS;
   label values G6YYCOM G6YYCOM;
   label values G7ABSENT G7ABSENT;
   label values G7ANALYO G7ANALYO;
   label values G7ATTENT G7ATTENT;
   label values G7BEHAV G7BEHAV;
   label values G7BEHIND G7BEHIND;
   label values G7BEHVR G7BEHVR;
   label values G7CLASP G7CLASP;
   label values G7CMPHW G7CMPHW;
   label values G7CREATO G7CREATO;
   label values G7DESCRB G7DESCRB;
   label values G7DISBEH G7DISBEH;
   label values G7DISCIP G7DISCIP;
   label values G7DISORG G7DISORG;
   label values G7DISRUP G7DISRUP;
   label values G7EFFO G7EFFO;
   label values G7EFFORT G7EFFORT;
   label values G7EMOPRB G7EMOPRB;
   label values G7ENTEST G7ENTEST;
   label values G7ENWORK G7ENWORK;
   label values G7FRQABS G7FRQABS;
   label values G7GATHER G7GATHER;
   label values G7GRAMMO G7GRAMMO;
   label values G7GRAMMR G7GRAMMR;
   label values G7HEALTH G7HEALTH;
   label values G7HONORS G7HONORS;
   label values G7IMPRV G7IMPRV;
   label values G7INFER G7INFER;
   label values G7LEVEL G7LEVEL;
   label values G7MMCOM G7MMCOMP;
   label values G7NOPRIM G7NOPRIM;
   label values G7NOSEC G7NOSEC;
   label values G7ORGANZ G7ORGANZ;
   label values G7OTHRES G7OTHRES;
   label values G7PASSIV G7PASSIV;
   label values G7PBLK G7PBLK;
   label values G7PERFRM G7PERFRM;
   label values G7PHIS G7PHIS;
   label values G7PMIN G7PMIN;
   label values G7MMEDIA G7Q2931F;
   label values G7PREDIC G7Q2931F;
   label values G7RDPROJ G7Q2931F;
   label values G7REVISE G7Q2931F;
   label values G7TALKRD G7Q2931F;
   label values G7WKBKSH G7Q2931F;
   label values G7WRITRD G7Q2931F;
   label values G7RDLOUD G7RDLOUD;
   label values G7RELWEL G7RELWEL;
   label values G7SKILL G7SKILL;
   label values G7STYLE G7STYLE;
   label values G7TARDY G7TARDY;
   label values G7TIME G7TIME;
   label values G7TIMEWK G7TIMEWK;
   label values G7TLKOUT G7TLKOUT;
   label values G7TOCLA G7TOCLA;
   label values G7TOSTN G7TOSTN;
   label values G7WKDONE G7WKDONE;
   label values G7WRKHRD G7WRKHRD;
   label values G7WRTVAR G7WRTVAR;
   label values G7YYCOM G7YYCOMP;
   label values GENDER GENDER;
   label values HSATTEND HSATTEND;
   label values HSCHECK HSCHECK;
   label values C6INGRAD InGrade;
   label values J61ACCPT J61ACCPT;
   label values J62ACCPT J61ACCPT;
   label values J61ADTRN J61ADTRN;
   label values J62ADTRN J61ADTRN;
   label values J61ALLKN J61ALLKN;
   label values J62ALLKN J61ALLKN;
   label values J61ARTMA J61ARTMA;
   label values J62ARTMA J61ARTMA;
   label values J61BEHAV J61BEHAV;
   label values J62BEHAV J61BEHAV;
   label values J61BULLY J61BULLY;
   label values J62BULLY J61BULLY;
   label values J61CLASP J61CLASP;
   label values J62CLASP J61CLASP;
   label values J61CLDNP J61CLDNP;
   label values J62CLDNP J61CLDNP;
   label values J61CLMGM J61CLMGM;
   label values J62CLMGM J61CLMGM;
   label values J61CLORG J61CLORG;
   label values J62CLORG J61CLORG;
   label values J61CLSZO J61CLSZO;
   label values J62CLSZO J61CLSZO;
   label values J61CMPHW J61CMPHW;
   label values J62CMPHW J61CMPHW;
   label values J61CNTNL J61CNTNL;
   label values J62CNTNL J61CNTNL;
   label values J61CNTRL J61CNTRL;
   label values J62CNTRL J61CNTRL;
   label values J61COMAR J61COMAR;
   label values J62COMAR J61COMAR;
   label values J61COMEN J61COMEN;
   label values J62COMEN J61COMEN;
   label values J61COMIN J61COMIN;
   label values J62COMIN J61COMIN;
   label values J61COMKE J61COMKE;
   label values J62COMKE J61COMKE;
   label values J61COMMT J61COMMT;
   label values J62COMMT J61COMMT;
   label values J61COMMU J61COMMU;
   label values J62COMMU J61COMMU;
   label values J61COMSO J61COMSO;
   label values J62COMSO J61COMSO;
   label values J61COMSU J61COMSU;
   label values J62COMSU J61COMSU;
   label values J61CURRD J61CURRD;
   label values J62CURRD J61CURRD;
   label values J61DEVLP J61DEVLP;
   label values J62DEVLP J61DEVLP;
   label values J61DISCH J61DISCH;
   label values J62DISCH J61DISCH;
   label values J61EARLY J61EARLY;
   label values J62EARLY J61EARLY;
   label values J61EDLEV J61EDLEV;
   label values J62EDLEV J61EDLEV;
   label values J61EFFO J61EFFO;
   label values J62EFFO J61EFFO;
   label values J61ELEM J61ELEM;
   label values J62ELEM J61ELEM;
   label values J61ELEMC J61ELEMC;
   label values J62ELEMC J61ELEMC;
   label values J61ELMTC J61ELMTC;
   label values J62ELMTC J61ELMTC;
   label values J61ELSCC J61ELSCC;
   label values J62ELSCC J61ELSCC;
   label values J61ENCOU J61ENCOU;
   label values J62ENCOU J61ENCOU;
   label values J61ENJOY J61ENJOY;
   label values J62ENJOY J61ENJOY;
   label values J61ERLYC J61ERLYC;
   label values J62ERLYC J61ERLYC;
   label values J61ESL J61ESL;
   label values J62ESL J61ESL;
   label values J61ESLCT J61ESLCT;
   label values J62ESLCT J61ESLCT;
   label values J61EVAL J61EVAL;
   label values J62EVAL J61EVAL;
   label values J61GRDEC J61GRDEC;
   label values J62GRDEC J61GRDEC;
   label values J61GRDEE J61GRDEE;
   label values J62GRDEE J61GRDEE;
   label values J61GRDNE J61GRDNE;
   label values J62GRDNE J61GRDNE;
   label values J61GRDOE J61GRDOE;
   label values J62GRDOE J61GRDOE;
   label values J61GRDSE J61GRDSE;
   label values J62GRDSE J61GRDSE;
   label values J61GRENG J61GRENG;
   label values J62GRENG J61GRENG;
   label values J61GRESC J61GRESC;
   label values J62GRESC J61GRESC;
   label values J61GRINS J61GRINS;
   label values J62GRINS J61GRINS;
   label values J61GRLSC J61GRLSC;
   label values J62GRLSC J61GRLSC;
   label values J61GRMAT J61GRMAT;
   label values J62GRMAT J61GRMAT;
   label values J61GRMTE J61GRMTE;
   label values J62GRMTE J61GRMTE;
   label values J61GRPSC J61GRPSC;
   label values J62GRPSC J61GRPSC;
   label values J61GRRDL J61GRRDL;
   label values J62GRRDL J61GRRDL;
   label values J61GRSCE J61GRSCE;
   label values J62GRSCE J61GRSCE;
   label values J61HGHST J61HGHST;
   label values J62HGHST J61HGHST;
   label values J61IGRPR J61IGRPR;
   label values J62IGRPR J61IGRPR;
   label values J61IMPRV J61IMPRV;
   label values J62IMPRV J61IMPRV;
   label values J61INCLU J61INCLU;
   label values J62INCLU J61INCLU;
   label values J61INDCH J61INDCH;
   label values J62INDCH J61INDCH;
   label values J61JOBTS J61JOBTS;
   label values J62JOBTS J61JOBTS;
   label values J61LEPIN J61LEPIN;
   label values J62LEPIN J61LEPIN;
   label values J61LEPTR J61LEPTR;
   label values J62LEPTR J61LEPTR;
   label values J61LESPL J61LESPL;
   label values J62LESPL J61LESPL;
   label values J61LUNCH J61LUNCH;
   label values J62LUNCH J61LUNCH;
   label values J61MASSI J61MASSI;
   label values J62MASSI J61MASSI;
   label values J61MAUSE J61MAUSE;
   label values J62MAUSE J61MAUSE;
   label values J61MISBH J61MISBH;
   label values J62MISBH J61MISBH;
   label values J61MISSI J61MISSI;
   label values J62MISSI J61MISSI;
   label values J61MKDIF J61MKDIF;
   label values J62MKDIF J61MKDIF;
   label values J61MMCOM J61MMCOM;
   label values J62MMCOM J61MMCOM;
   label values J61MTHDM J61MTHDM;
   label values J62MTHDM J61MTHDM;
   label values J61MTHDR J61MTHDR;
   label values J62MTHDR J61MTHDR;
   label values J61MTHDS J61MTHDS;
   label values J62MTHDS J61MTHDS;
   label values J61MTHLA J61MTHLA;
   label values J62MTHLA J61MTHLA;
   label values J61MUSIC J61MUSIC;
   label values J62MUSIC J61MUSIC;
   label values J61NOTCA J61NOTCA;
   label values J62NOTCA J61NOTCA;
   label values J61OFTAR J61OFTAR;
   label values J62OFTAR J61OFTAR;
   label values J61OFTFO J61OFTFO;
   label values J62OFTFO J61OFTFO;
   label values J61OFTMT J61OFTMT;
   label values J62OFTMT J61OFTMT;
   label values J61OFTMU J61OFTMU;
   label values J62OFTMU J61OFTMU;
   label values J61OFTRD J61OFTRD;
   label values J62OFTRD J61OFTRD;
   label values J61OFTRE J61OFTRE;
   label values J62OFTRE J61OFTRE;
   label values J61OFTSC J61OFTSC;
   label values J62OFTSC J61OFTSC;
   label values J61OFTSO J61OFTSO;
   label values J62OFTSO J61OFTSO;
   label values J61OFTWR J61OFTWR;
   label values J62OFTWR J61OFTWR;
   label values J61PAPRW J61PAPRW;
   label values J62PAPRW J61PAPRW;
   label values J61PHSCN J61PHSCN;
   label values J62PHSCN J61PHSCN;
   label values J61PLAYE J61PLAYE;
   label values J62PLAYE J61PLAYE;
   label values J61PRCOM J61PRCOM;
   label values J62PRCOM J61PRCOM;
   label values J61PRESS J61PRESS;
   label values J62PRESS J61PRESS;
   label values J61PRIOR J61PRIOR;
   label values J62PRIOR J61PRIOR;
   label values J61PRREA J61PRREA;
   label values J62PRREA J61PRREA;
   label values J61PSUPP J61PSUPP;
   label values J62PSUPP J61PSUPP;
   label values J61RACE5 J61RAC5F;
   label values J62RACE5 J61RAC5F;
   label values J61RDBOO J61RDBOO;
   label values J62RDBOO J61RDBOO;
   label values J61RDKIT J61RDKIT;
   label values J62RDKIT J61RDKIT;
   label values J61RDOTH J61RDOTH;
   label values J62RDOTH J61RDOTH;
   label values J61RDPRO J61RDPRO;
   label values J62RDPRO J61RDPRO;
   label values J61RDSPC J61RDSPC;
   label values J62RDSPC J61RDSPC;
   label values J61RDUSE J61RDUSE;
   label values J62RDUSE J61RDUSE;
   label values J61RECES J61RECES;
   label values J62RECES J61RECES;
   label values J61SCHPL J61SCHPL;
   label values J62SCHPL J61SCHPL;
   label values J61SCHSP J61SCHSP;
   label values J62SCHSP J61SCHSP;
   label values J61SCKIT J61SCKIT;
   label values J62SCKIT J61SCKIT;
   label values J61SCNDC J61SCNDC;
   label values J62SCNDC J61SCNDC;
   label values J61SCUSE J61SCUSE;
   label values J62SCUSE J61SCUSE;
   label values J61SEMTC J61SEMTC;
   label values J62SEMTC J61SEMTC;
   label values J61SESCC J61SESCC;
   label values J62SESCC J61SESCC;
   label values J61SPECE J61SPECE;
   label values J62SPECE J61SPECE;
   label values J61SPEDC J61SPEDC;
   label values J62SPEDC J61SPEDC;
   label values J61SSUSE J61SSUSE;
   label values J62SSUSE J61SSUSE;
   label values J61STNDL J61STNDL;
   label values J62STNDL J61STNDL;
   label values J61STNDR J61STNDR;
   label values J62STNDR J61STNDR;
   label values J61TCHCT J61TCHCT;
   label values J62TCHCT J61TCHCT;
   label values J61TCHRM J61TCHRM;
   label values J62TCHRM J61TCHRM;
   label values J61TEACH J61TEACH;
   label values J62TEACH J61TEACH;
   label values J61TIMEM J61TIME;
   label values J61TIMER J61TIME;
   label values J61TIMSC J61TIME;
   label values J61TIMSS J61TIME;
   label values J62TIMEM J61TIME;
   label values J62TIMER J61TIME;
   label values J62TIMSC J61TIME;
   label values J62TIMSS J61TIME;
   label values J61TOCLA J61TOCLA;
   label values J62TOCLA J61TOCLA;
   label values J61TOSTN J61TOSTN;
   label values J62TOSTN J61TOSTN;
   label values J61TSTSC J61TSTSC;
   label values J62TSTSC J61TSTSC;
   label values J61TSTUS J61TSTUS;
   label values J62TSTUS J61TSTUS;
   label values J61TVWTC J61TVWTC;
   label values J62TVWTC J61TVWTC;
   label values J61TXART J61TXART;
   label values J62TXART J61TXART;
   label values J61TXFOR J61TXFOR;
   label values J62TXFOR J61TXFOR;
   label values J61TXMTH J61TXMTH;
   label values J62TXMTH J61TXMTH;
   label values J61TXMUS J61TXMUS;
   label values J62TXMUS J61TXMUS;
   label values J61TXPE J61TXPE;
   label values J62TXPE J61TXPE;
   label values J61TXRDL J61TXRDL;
   label values J62TXRDL J61TXRDL;
   label values J61TXREF J61TXREF;
   label values J62TXREF J61TXREF;
   label values J61TXSCI J61TXSCI;
   label values J62TXSCI J61TXSCI;
   label values J61TXSOC J61TXSOC;
   label values J62TXSOC J61TXSOC;
   label values J61TXSPE J61TXSPE;
   label values J62TXSPE J61TXSPE;
   label values J61TXTBK J61TXTBK;
   label values J62TXTBK J61TXTBK;
   label values J61TXWRT J61TXWRT;
   label values J62TXWRT J61TXWRT;
   label values J61UNDEC J61UNDEC;
   label values J62UNDEC J61UNDEC;
   label values J61UNDEE J61UNDEE;
   label values J62UNDEE J61UNDEE;
   label values J61UNDEN J61UNDEN;
   label values J62UNDEN J61UNDEN;
   label values J61UNDES J61UNDES;
   label values J62UNDES J61UNDES;
   label values J61UNDIN J61UNDIN;
   label values J62UNDIN J61UNDIN;
   label values J61UNDLS J61UNDLS;
   label values J62UNDLS J61UNDLS;
   label values J61UNDME J61UNDME;
   label values J62UNDME J61UNDME;
   label values J61UNDMT J61UNDMT;
   label values J62UNDMT J61UNDMT;
   label values J61UNDNE J61UNDNE;
   label values J62UNDNE J61UNDNE;
   label values J61UNDOE J61UNDOE;
   label values J62UNDOE J61UNDOE;
   label values J61UNDPS J61UNDPS;
   label values J62UNDPS J61UNDPS;
   label values J61UNDRD J61UNDRD;
   label values J62UNDRD J61UNDRD;
   label values J61UNDSC J61UNDSC;
   label values J62UNDSC J61UNDSC;
   label values J61UNDSE J61UNDSE;
   label values J62UNDSE J61UNDSE;
   label values J61VCR J61VCR;
   label values J62VCR J61VCR;
   label values J61WRKSH J61WRKSH;
   label values J62WRKSH J61WRKSH;
   label values J61WRKSM J61WRKSM;
   label values J62WRKSM J61WRKSM;
   label values J61XSTDT J61XSTDT;
   label values J62XSTDT J61XSTDT;
   label values J61YYCOM J61YYCOM;
   label values J62YYCOM J61YYCOM;
   label values J71ACCPT J71ACCPT;
   label values J71ANTHR J71ANTHR;
   label values J71ARTMU J71ARTMU;
   label values J71BILIN J71BILIN;
   label values J71BIOED J71BIOED;
   label values J71BIOGD J71BIOGD;
   label values J71BIOUN J71BIOUN;
   label values J71CHEM J71CHEM;
   label values J71CHGAP J71CHGAP;
   label values J71CIVIC J71CIVIC;
   label values J71CLSZO J71CLSZO;
   label values J71CMPSC J71CMPSC;
   label values J71CNTNL J71CNTNL;
   label values J71COMMU J71COMMU;
   label values J71COMP J71COMP;
   label values J71DFMTH J71DFMTH;
   label values J71EARTH J71EARTH;
   label values J71ECON J71ECON;
   label values J71EDMGD J71EDMGD;
   label values J71EDMUN J71EDMUN;
   label values J71EDRGD J71EDRGD;
   label values J71EDRUN J71EDRUN;
   label values J71EDSGD J71EDSGD;
   label values J71EDSUN J71EDSUN;
   label values J71ELEMC J71ELEMC;
   label values J71ENGGD J71ENGGD;
   label values J71ENGL J71ENGL;
   label values J71ENGTC J71ENGTC;
   label values J71ENGUN J71ENGUN;
   label values J71ENJOY J71ENJOY;
   label values J71ENRGD J71ENRGD;
   label values J71ENRUN J71ENRUN;
   label values J71ERLYC J71ERLYC;
   label values J71ERTGD J71ERTGD;
   label values J71ERTUN J71ERTUN;
   label values J71ESLCT J71ESLCT;
   label values J71EXAM J71EXAM;
   label values J71FCTOR J71FCTOR;
   label values J71FRLNG J71FRLNG;
   label values J71GEOGR J71GEOGR;
   label values J71GTTHR J71GTTHR;
   label values J71HABIT J71HABIT;
   label values J71HGHST J71HGHST;
   label values J71HIST J71HIST;
   label values J71HLTH J71HLTH;
   label values J71JOBTS J71JOBTS;
   label values J71JOURN J71JOURN;
   label values J71LANG J71LANG;
   label values J71LNGGD J71LNGGD;
   label values J71LNGUN J71LNGUN;
   label values J71LTLDO J71LTLDO;
   label values J71MATH J71MATH;
   label values J71MEDGD J71MEDGD;
   label values J71MEDUN J71MEDUN;
   label values J71MIDED J71MIDED;
   label values J71MISBH J71MISBH;
   label values J71MKDIF J71MKDIF;
   label values J71MKLES J71MKLES;
   label values J71MMCOM J71MMCOM;
   label values J71MTHGD J71MTHGD;
   label values J71MTHTC J71MTHTC;
   label values J71MTHUN J71MTHUN;
   label values J71NAMER J71NAMER;
   label values J71NODRP J71NODRP;
   label values J71NOTCA J71NOTCA;
   label values J71OTHCH J71OTHCH;
   label values J71OTHED J71OTHED;
   label values J71OTHGD J71OTHGD;
   label values J71OTHSC J71OTHSC;
   label values J71OTHSS J71OTHSS;
   label values J71OTHUN J71OTHUN;
   label values J71PAPRW J71PAPRW;
   label values J71PARED J71PARED;
   label values J71PHYED J71PHYED;
   label values J71PHYGD J71PHYGD;
   label values J71PHYS J71PHYS;
   label values J71PHYUN J71PHYUN;
   label values J71PSUPP J71PSUPP;
   label values J71PSYCH J71PSYCH;
   label values J71PYSCI J71PYSCI;
   label values J71RACE5 J71RAC5F;
   label values J71RDGD J71RDGD;
   label values J71RDSPC J71RDSPC;
   label values J71RDUN J71RDUN;
   label values J71SCHSP J71SCHSP;
   label values J71SCIED J71SCIED;
   label values J71SCITC J71SCITC;
   label values J71SCNDC J71SCNDC;
   label values J71SOCIO J71SOCIO;
   label values J71SOCST J71SOCST;
   label values J71SPCH J71SPCH;
   label values J71SPEDC J71SPEDC;
   label values J71TCERT J71TCERT;
   label values J71TEACH J71TEACH;
   label values J71VOTEC J71VOTEC;
   label values J71WSTTM J71WSTTM;
   label values J71YYCOM J71YYCOM;
   label values J72ACCPT J72ACCPT;
   label values J72ANTHR J72ANTHR;
   label values J72ARTMU J72ARTMU;
   label values J72BILIN J72BILIN;
   label values J72BIOED J72BIOED;
   label values J72BIOGD J72BIOGD;
   label values J72BIOUN J72BIOUN;
   label values J72CHEM J72CHEM;
   label values J72CHGAP J72CHGAP;
   label values J72CIVIC J72CIVIC;
   label values J72CLSZO J72CLSZO;
   label values J72CMPSC J72CMPSC;
   label values J72CNTNL J72CNTNL;
   label values J72COMMU J72COMMU;
   label values J72COMP J72COMP;
   label values J72DFMTH J72DFMTH;
   label values J72EARTH J72EARTH;
   label values J72ECON J72ECON;
   label values J72EDMGD J72EDMGD;
   label values J72EDMUN J72EDMUN;
   label values J72EDRGD J72EDRGD;
   label values J72EDRUN J72EDRUN;
   label values J72EDSGD J72EDSGD;
   label values J72EDSUN J72EDSUN;
   label values J72ELEMC J72ELEMC;
   label values J72ENGGD J72ENGGD;
   label values J72ENGL J72ENGL;
   label values J72ENGTC J72ENGTC;
   label values J72ENGUN J72ENGUN;
   label values J72ENJOY J72ENJOY;
   label values J72ENRGD J72ENRGD;
   label values J72ENRUN J72ENRUN;
   label values J72ERLYC J72ERLYC;
   label values J72ERTGD J72ERTGD;
   label values J72ERTUN J72ERTUN;
   label values J72ESLCT J72ESLCT;
   label values J72EXAM J72EXAM;
   label values J72FCTOR J72FCTOR;
   label values J72FRLNG J72FRLNG;
   label values J72GEOGR J72GEOGR;
   label values J72GTTHR J72GTTHR;
   label values J72HABIT J72HABIT;
   label values J72HGHST J72HGHST;
   label values J72HIST J72HIST;
   label values J72HLTH J72HLTH;
   label values J72JOBTS J72JOBTS;
   label values J72JOURN J72JOURN;
   label values J72LANG J72LANG;
   label values J72LNGGD J72LNGGD;
   label values J72LNGUN J72LNGUN;
   label values J72LTLDO J72LTLDO;
   label values J72MATH J72MATH;
   label values J72MEDGD J72MEDGD;
   label values J72MEDUN J72MEDUN;
   label values J72MIDED J72MIDED;
   label values J72MISBH J72MISBH;
   label values J72MKDIF J72MKDIF;
   label values J72MKLES J72MKLES;
   label values J72MMCOM J72MMCOM;
   label values J72MTHGD J72MTHGD;
   label values J72MTHTC J72MTHTC;
   label values J72MTHUN J72MTHUN;
   label values J72NAMER J72NAMER;
   label values J72NODRP J72NODRP;
   label values J72NOTCA J72NOTCA;
   label values J72OTHCH J72OTHCH;
   label values J72OTHED J72OTHED;
   label values J72OTHGD J72OTHGD;
   label values J72OTHSC J72OTHSC;
   label values J72OTHSS J72OTHSS;
   label values J72OTHUN J72OTHUN;
   label values J72PAPRW J72PAPRW;
   label values J72PARED J72PARED;
   label values J72PHYED J72PHYED;
   label values J72PHYGD J72PHYGD;
   label values J72PHYS J72PHYS;
   label values J72PHYUN J72PHYUN;
   label values J72PSUPP J72PSUPP;
   label values J72PSYCH J72PSYCH;
   label values J72PYSCI J72PYSCI;
   label values J72RACE5 J72RAC5F;
   label values J72RDGD J72RDGD;
   label values J72RDSPC J72RDSPC;
   label values J72RDUN J72RDUN;
   label values J72SCHSP J72SCHSP;
   label values J72SCIED J72SCIED;
   label values J72SCITC J72SCITC;
   label values J72SCNDC J72SCNDC;
   label values J72SOCIO J72SOCIO;
   label values J72SOCST J72SOCST;
   label values J72SPCH J72SPCH;
   label values J72SPEDC J72SPEDC;
   label values J72TCERT J72TCERT;
   label values J72TEACH J72TEACH;
   label values J72VOTEC J72VOTEC;
   label values J72WSTTM J72WSTTM;
   label values J72YYCOM J72YYCOM;
   label values K2Q1A_C K2001F;
   label values K2Q1A_D K2001F;
   label values K2Q1A_E K2001F;
   label values K2Q1A_F K2001F;
   label values K2Q1A_G K2001F;
   label values K2Q1A_H K2001F;
   label values K2Q1A_I K2002F;
   label values K2Q1B_A K2002F;
   label values K2Q1C_A K2002F;
   label values K2Q1D_A K2002F;
   label values K2Q1E_A K2002F;
   label values K2Q1F_A K2002F;
   label values K2Q1G_A K2002F;
   label values K2Q1H_A K2002F;
   label values K2Q1I_A K2002F;
   label values K2Q1J_A K2002F;
   label values K2Q1K_A K2002F;
   label values K2Q1L_B K2002F;
   label values K2Q1B_B K2003F;
   label values K2Q1B_I K2003F;
   label values K2Q1C_B K2003F;
   label values K2Q1C_I K2003F;
   label values K2Q1D_B K2003F;
   label values K2Q1D_I K2003F;
   label values K2Q1E_B K2003F;
   label values K2Q1E_I K2003F;
   label values K2Q1F_B K2003F;
   label values K2Q1F_I K2003F;
   label values K2Q1G_B K2003F;
   label values K2Q1G_I K2003F;
   label values K2Q1H_B K2003F;
   label values K2Q1H_I K2003F;
   label values K2Q1I_B K2003F;
   label values K2Q1I_I K2003F;
   label values K2Q1J_B K2003F;
   label values K2Q1J_I K2003F;
   label values K2Q1K_B K2003F;
   label values K2Q1K_I K2003F;
   label values K2Q1L_I K2003F;
   label values K2Q4 K2003F;
   label values K2Q1B_C K2004F;
   label values K2Q1B_D K2004F;
   label values K2Q1B_E K2004F;
   label values K2Q1B_F K2004F;
   label values K2Q1B_G K2004F;
   label values K2Q1B_H K2004F;
   label values K2Q1C_C K2004F;
   label values K2Q1C_D K2004F;
   label values K2Q1C_E K2004F;
   label values K2Q1C_F K2004F;
   label values K2Q1C_G K2004F;
   label values K2Q1C_H K2004F;
   label values K2Q1D_C K2004F;
   label values K2Q1D_D K2004F;
   label values K2Q1D_E K2004F;
   label values K2Q1D_F K2004F;
   label values K2Q1D_G K2004F;
   label values K2Q1D_H K2004F;
   label values K2Q1E_C K2004F;
   label values K2Q1E_D K2004F;
   label values K2Q1E_E K2004F;
   label values K2Q1E_F K2004F;
   label values K2Q1E_G K2004F;
   label values K2Q1E_H K2004F;
   label values K2Q1F_C K2004F;
   label values K2Q1F_D K2004F;
   label values K2Q1F_E K2004F;
   label values K2Q1F_F K2004F;
   label values K2Q1F_G K2004F;
   label values K2Q1F_H K2004F;
   label values K2Q1G_C K2004F;
   label values K2Q1G_D K2004F;
   label values K2Q1G_E K2004F;
   label values K2Q1G_F K2004F;
   label values K2Q1G_G K2004F;
   label values K2Q1G_H K2004F;
   label values K2Q1H_C K2004F;
   label values K2Q1H_D K2004F;
   label values K2Q1H_E K2004F;
   label values K2Q1H_F K2004F;
   label values K2Q1H_G K2004F;
   label values K2Q1H_H K2004F;
   label values K2Q1I_C K2004F;
   label values K2Q1I_D K2004F;
   label values K2Q1I_E K2004F;
   label values K2Q1I_F K2004F;
   label values K2Q1I_G K2004F;
   label values K2Q1I_H K2004F;
   label values K2Q1J_C K2004F;
   label values K2Q1J_D K2004F;
   label values K2Q1J_E K2004F;
   label values K2Q1J_F K2004F;
   label values K2Q1J_G K2004F;
   label values K2Q1J_H K2004F;
   label values K2Q1K_C K2004F;
   label values K2Q1K_F K2004F;
   label values K2Q1L_C K2004F;
   label values K2Q1L_D K2004F;
   label values K2Q1L_E K2004F;
   label values K2Q1L_F K2004F;
   label values K2Q1L_G K2004F;
   label values K2Q1L_H K2004F;
   label values K2Q2_A K2005F;
   label values K2Q2_B K2005F;
   label values K2Q2_C K2005F;
   label values K2Q2_D K2005F;
   label values K2Q2_E K2005F;
   label values K2Q2_F K2005F;
   label values K2Q2_G K2005F;
   label values K2Q2_H K2005F;
   label values K2Q2_I K2005F;
   label values K2Q2_J K2005F;
   label values K2Q2_K K2005F;
   label values K2Q2_L K2005F;
   label values K2Q3 K2006F;
   label values K2Q3A_A K2007F;
   label values K2Q3B_B K2007F;
   label values K2Q3C_C K2007F;
   label values K2Q3D_D K2007F;
   label values K2Q5_A K2009F;
   label values K2Q5_B K2009F;
   label values K2Q5_C K2009F;
   label values K2Q5_D K2009F;
   label values K2Q6_A K2010F;
   label values K2Q6_B K2010F;
   label values K2Q6_C K2010F;
   label values K2Q6_D K2010F;
   label values K2Q6_E K2010F;
   label values K2Q6_F K2010F;
   label values K4Q1A_B K4001F;
   label values K4Q1A_C K4001F;
   label values K4Q1A_D K4001F;
   label values K4Q1A_E K4001F;
   label values K4Q1A_F K4001F;
   label values K4Q1A_G K4001F;
   label values K4Q1A_H K4001F;
   label values K4Q1A_I K4001F;
   label values K4Q1A_J K4001F;
   label values K4Q1A_K K4001F;
   label values K4Q1A_M K4001F;
   label values K4Q1B_A K4001F;
   label values K4Q6 K4001F;
   label values K4Q2A_A K4002F;
   label values K4Q2A_B K4002F;
   label values K4Q2A_C K4002F;
   label values K4Q2A_D K4002F;
   label values K4Q2A_E K4002F;
   label values K4Q2A_F K4002F;
   label values K4Q2A_G K4002F;
   label values K4Q2A_H K4002F;
   label values K4Q2A_I K4002F;
   label values K4Q2A_J K4002F;
   label values K4Q2A_K K4002F;
   label values K4Q2A_L K4002F;
   label values K4Q2A_M K4002F;
   label values K4Q2B_A K4002F;
   label values K4Q2B_B K4002F;
   label values K4Q2B_C K4002F;
   label values K4Q2B_D K4002F;
   label values K4Q2B_E K4002F;
   label values K4Q2B_F K4002F;
   label values K4Q2B_G K4002F;
   label values K4Q2B_H K4002F;
   label values K4Q2B_I K4002F;
   label values K4Q2B_J K4002F;
   label values K4Q2B_L K4002F;
   label values K4Q2B_M K4002F;
   label values K4Q2C_A K4002F;
   label values K4Q2C_B K4002F;
   label values K4Q2C_C K4002F;
   label values K4Q2C_D K4002F;
   label values K4Q2C_E K4002F;
   label values K4Q2C_F K4002F;
   label values K4Q2C_G K4002F;
   label values K4Q2C_H K4002F;
   label values K4Q2C_I K4002F;
   label values K4Q2C_J K4002F;
   label values K4Q2C_L K4002F;
   label values K4Q2C_M K4002F;
   label values K4Q2D_A K4002F;
   label values K4Q2D_B K4002F;
   label values K4Q2D_C K4002F;
   label values K4Q2D_D K4002F;
   label values K4Q2D_E K4002F;
   label values K4Q2D_F K4002F;
   label values K4Q2D_G K4002F;
   label values K4Q2D_H K4002F;
   label values K4Q2D_I K4002F;
   label values K4Q2D_J K4002F;
   label values K4Q2D_K K4002F;
   label values K4Q2D_L K4002F;
   label values K4Q2D_M K4002F;
   label values K4Q2E_A K4002F;
   label values K4Q2E_B K4002F;
   label values K4Q2E_C K4002F;
   label values K4Q2E_D K4002F;
   label values K4Q2E_E K4002F;
   label values K4Q2E_F K4002F;
   label values K4Q2E_G K4002F;
   label values K4Q2E_H K4002F;
   label values K4Q2E_I K4002F;
   label values K4Q2E_J K4002F;
   label values K4Q2E_L K4002F;
   label values K4Q2E_M K4002F;
   label values K4Q2F_A K4002F;
   label values K4Q2F_B K4002F;
   label values K4Q2F_C K4002F;
   label values K4Q2F_D K4002F;
   label values K4Q2F_E K4002F;
   label values K4Q2F_F K4002F;
   label values K4Q2F_G K4002F;
   label values K4Q2F_H K4002F;
   label values K4Q2F_I K4002F;
   label values K4Q2F_J K4002F;
   label values K4Q2F_L K4002F;
   label values K4Q2F_M K4002F;
   label values K4Q1B_B K4003F;
   label values K4Q1B_C K4003F;
   label values K4Q1B_D K4003F;
   label values K4Q1B_E K4003F;
   label values K4Q1B_F K4003F;
   label values K4Q1B_G K4003F;
   label values K4Q1B_H K4003F;
   label values K4Q1B_I K4003F;
   label values K4Q1B_J K4003F;
   label values K4Q1B_K K4003F;
   label values K4Q1B_L K4003F;
   label values K4Q1B_M K4003F;
   label values K4Q3_A K4003F;
   label values K4Q3_B K4003F;
   label values K4Q3_C K4003F;
   label values K4Q3_D K4003F;
   label values K4Q3_E K4003F;
   label values K4Q3_F K4003F;
   label values K4Q3_G K4003F;
   label values K4Q3_H K4003F;
   label values K4Q3_I K4003F;
   label values K4Q3_J K4003F;
   label values K4Q3_K K4003F;
   label values K4Q3_L K4003F;
   label values K4Q3_M K4003F;
   label values K4Q5_A K4005F;
   label values K4Q5_B K4005F;
   label values K4Q5_C K4005F;
   label values K4Q5_D K4005F;
   label values K4Q5_E K4005F;
   label values K4Q5_F K4005F;
   label values K4Q5_G K4005F;
   label values K4Q5_H K4005F;
   label values K4Q5_I K4005F;
   label values K4Q5_J K4005F;
   label values K4Q5_K K4005F;
   label values K4Q5_L K4005F;
   label values K4Q7 K4006F;
   label values K4Q8A K4007F;
   label values K4Q8B K4007F;
   label values K4Q8C K4007F;
   label values K4Q8D K4007F;
   label values K4Q9_A K4009F;
   label values K4Q9_B K4009F;
   label values K4Q9_C K4009F;
   label values K4Q9_D K4009F;
   label values K4Q10_A K4010F;
   label values K4Q10_B K4010F;
   label values K4Q10_C K4010F;
   label values K4Q10_D K4010F;
   label values K4Q10_E K4010F;
   label values K4Q10_F K4010F;
   label values K5CLDOBS K5CLDOBS;
   label values K5MMCOM K5MMCOM;
   label values K5BARSO K5Q2AF;
   label values K5FENCEO K5Q2AF;
   label values K5SCAMO K5Q2AF;
   label values K5SEXITO K5Q2AF;
   label values K5SIGNOO K5Q2AF;
   label values K5SIGNPO K5Q2AF;
   label values K5SPRNKO K5Q2AF;
   label values K5FREXTS K5Q2BF;
   label values K5INTCMS K5Q2BF;
   label values K5SEXITS K5Q2BF;
   label values K5SIGNOS K5Q2BF;
   label values K5SIGNPS K5Q2BF;
   label values K5SPRNKS K5Q2BF;
   label values K5ATNTCH K5Q3F;
   label values K5DHALL K5Q3F;
   label values K5HLPSTF K5Q3F;
   label values K5ORDCLS K5Q3F;
   label values K5ORDHAL K5Q3F;
   label values K5PERPRN K5Q3F;
   label values K5CRY K5Q4F;
   label values K5FIGHT K5Q4F;
   label values K5SMILE K5Q4F;
   label values K5TALK K5Q4F;
   label values K5BOARD K5Q5F;
   label values K5GRAFIT K5Q5F;
   label values K5LITTER K5Q5F;
   label values K5ONSTRE K5Q5F;
   label values K5YYCOM K5YYCOM;
   label values K6BARSO K6BARSO;
   label values K6BOARD K6BOARD;
   label values K6FENCEO K6FENCEO;
   label values K6FREXTS K6FREXTS;
   label values K6GRAFIT K6GRAFIT;
   label values K6INTCMS K6INTCMS;
   label values K6LITTER K6LITTER;
   label values K6MMCOM K6MMCOM;
   label values K6ONSTRE K6ONSTRE;
   label values K6SCAMO K6SCAMO;
   label values K6SEXITO K6SEXITO;
   label values K6SEXITS K6SEXITS;
   label values K6SIGNOO K6SIGNOO;
   label values K6SIGNOS K6SIGNOS;
   label values K6SIGNPO K6SIGNPO;
   label values K6SIGNPS K6SIGNPS;
   label values K6SPRNKO K6SPRNKO;
   label values K6SPRNKS K6SPRNKS;
   label values K6YYCOM K6YYCOM;
   label values KURBAN_R KURBAN;
   label values L5SCHEYY L5SCHEYY;
   label values L5SYREYY L5SYREYY;
   label values L5YY02 L5YY02F;
   label values M64ESTIM M64ESTIM;
   label values M6ABIL M6ABIL;
   label values M6ABILTY M6ABILTY;
   label values M6ALG M6ALG;
   label values M6ALGEBR M6ALGEBR;
   label values M6ANALYT M6ANALYT;
   label values M6BEHVR M6BEHVR;
   label values M6CHCLDS M6CHCLDS;
   label values M6COMIDA M6COMIDA;
   label values M6DIVIDE M6DIVIDE;
   label values M6DIVMTH M6DIVMTH;
   label values M6ESTIM M6ESTIM;
   label values M6FRAC M6FRAC;
   label values M6GEOM M6GEOM;
   label values M6GRPPTN M6GRPPTN;
   label values M6HETGRP M6HETGRP;
   label values M6INDVDL M6INDVDL;
   label values M6MANGE M6MANGE;
   label values M6MANIPU M6MANIPU;
   label values M6MATEST M6MATEST;
   label values M6MCOMP M6MCOMP;
   label values M6MDISC M6MDISC;
   label values M6MEASTL M6MEASTL;
   label values M6MEASUR M6MEASUR;
   label values M6MINMTH M6MINMTH;
   label values M6MMCOM M6MMCOM;
   label values M6MSINST M6MSINST;
   label values M6MTHCON M6MTHCON;
   label values M6MWRITE M6MWRITE;
   label values M6NUMOP M6NUMOP;
   label values M6PBLK M6PBLK;
   label values M6PHIS M6PHIS;
   label values M6PLACEV M6PLACEV;
   label values M6PLCVL M6PLCVL;
   label values M6PLEP M6PLEP;
   label values M6PMIN M6PMIN;
   label values M6PRBLIF M6PRBLIF;
   label values M6PROBLM M6PROBLM;
   label values M6PRSOLV M6PRSOLV;
   label values M6RDFRAC M6RDFRAC;
   label values M6RTMTH M6RTMTH;
   label values M6SGMTH M6SGMTH;
   label values M6SHAPE M6SHAPE;
   label values M6SMLGRP M6SMLGRP;
   label values M6STAT M6STAT;
   label values M6STRAT M6STRAT;
   label values M6SUBTRA M6SUBTRA;
   label values M6TEXTS M6TEXTS;
   label values M6TT1MTH M6TT1MTH;
   label values M6TTRMTH M6TTRMTH;
   label values M6USECAL M6USECAL;
   label values M6VISUAL M6VISUAL;
   label values M6WHLCLS M6WHLCLS;
   label values M6YYCOM M6YYCOM;
   label values M7ABSENT M7ABSENT;
   label values M7APPLY M7APPLY;
   label values M7ATTENT M7ATTENT;
   label values M7BEHAV M7BEHAV;
   label values M7BEHIND M7BEHIND;
   label values M7BEHVR M7BEHVR;
   label values M7CALCUL M7CALCUL;
   label values M7CLASP M7CLASP;
   label values M7CMPAVL M7CMPAVL;
   label values M7CMPHW M7CMPHW;
   label values M7CMPNUM M7CMPNUM;
   label values M7COMPUT M7COMPUT;
   label values M7COURSE M7COURSE;
   label values M7DISBEH M7DISBEH;
   label values M7DISCIP M7DISCIP;
   label values M7DISORG M7DISORG;
   label values M7DISRUP M7DISRUP;
   label values M7EFFO M7EFFO;
   label values M7EFFORT M7EFFORT;
   label values M7EMOPRB M7EMOPRB;
   label values M7FRQABS M7FRQABS;
   label values M7GRAPH M7GRAPH;
   label values M7GRPPTN M7GRPPTN;
   label values M7HEALTH M7HEALTH;
   label values M7HONORS M7HONORS;
   label values M7IMPRV M7IMPRV;
   label values M7LEVEL M7LEVEL;
   label values M7MATEST M7MATEST;
   label values M7MAWORK M7MAWORK;
   label values M7MCOMP M7MCOMP;
   label values M7MDISC M7MDISC;
   label values M7MMCOM M7MMCOMP;
   label values M7MWRITE M7MWRITE;
   label values M7NOPRIM M7NOPRIM;
   label values M7NOSEC M7NOSEC;
   label values M7NOSOL M7NOSOL;
   label values M7OTHCAL M7OTHCAL;
   label values M7OTHRES M7OTHRES;
   label values M7PASSIV M7PASSIV;
   label values M7PBLK M7PBLK;
   label values M7PERFRM M7PERFRM;
   label values M7PHIS M7PHIS;
   label values M7PMIN M7PMIN;
   label values M7PRBLIF M7PRBLIF;
   label values M7PROOFS M7PROOFS;
   label values M7RELWEL M7RELWEL;
   label values M7REPRES M7REPRES;
   label values M7SCIENT M7SCIENT;
   label values M7SKILL M7SKILL;
   label values M7TALKAB M7TALKAB;
   label values M7TARDY M7TARDY;
   label values M7TIME M7TIME;
   label values M7TIMEWK M7TIMEWK;
   label values M7TLKOUT M7TLKOUT;
   label values M7TOCLA M7TOCLA;
   label values M7TOSTN M7TOSTN;
   label values M7WKDONE M7WKDONE;
   label values M7WRITE M7WRITE;
   label values M7WRKHRD M7WRKHRD;
   label values M7YYCOM M7YYCOMP;
   label values N6ABIL N6ABIL;
   label values N6ABILTY N6ABILTY;
   label values N6BEHVR N6BEHVR;
   label values N6CHCLDS N6CHCLDS;
   label values N6CLSSFY N6CLSSFY;
   label values N6COMSC N6COMSC;
   label values N6EXPLN N6EXPLN;
   label values N6HETGRP N6HETGRP;
   label values N6HYPOTH N6HYPOTH;
   label values N6INDVDL N6INDVDL;
   label values N6LIFSCI N6LIFSCI;
   label values N6MMCOM N6MMCOM;
   label values N6PBLK N6PBLK;
   label values N6PHIS N6PHIS;
   label values N6PHYSCI N6PHYSCI;
   label values N6PLEP N6PLEP;
   label values N6PMIN N6PMIN;
   label values N6PRINCP N6PRINCP;
   label values N6RTSKIL N6RTSKIL;
   label values N6SCANAL N6SCANAL;
   label values N6SCCOMP N6SCCOMP;
   label values N6SCCONC N6SCCONC;
   label values N6SCFACT N6SCFACT;
   label values N6SCHAND N6SCHAND;
   label values N6SCIDEA N6SCIDEA;
   label values N6SCINNW N6SCINNW;
   label values N6SCINT N6SCINT;
   label values N6SCIPRD N6SCIPRD;
   label values N6SCITXT N6SCITXT;
   label values N6SCLAB N6SCLAB;
   label values N6SCLIBR N6SCLIBR;
   label values N6SCPROB N6SCPROB;
   label values N6SCPROJ N6SCPROJ;
   label values N6SCREL N6SCREL;
   label values N6SCRESL N6SCRESL;
   label values N6SCTECH N6SCTECH;
   label values N6SCTEST N6SCTEST;
   label values N6SCWRIT N6SCWRIT;
   label values N6SEQUIP N6SEQUIP;
   label values N6SMLGRP N6SMLGRP;
   label values N6USEINT N6USEINT;
   label values N6WHLCLS N6WHLCLS;
   label values N6YYCOM N6YYCOM;
   label values N7ABSENT N7ABSENT;
   label values N7APPLY N7APPLY;
   label values N7ATTENT N7ATTENT;
   label values N7BEHAV N7BEHAV;
   label values N7BEHIND N7BEHIND;
   label values N7BEHVR N7BEHVR;
   label values N7CLASP N7CLASP;
   label values N7CMPAVL N7CMPAVL;
   label values N7CMPHW N7CMPHW;
   label values N7CMPNUM N7CMPNUM;
   label values N7COURSE N7COURSE;
   label values N7DESIGN N7DESIGN;
   label values N7DISBEH N7DISBEH;
   label values N7DISCIP N7DISCIP;
   label values N7DISORG N7DISORG;
   label values N7DISRUP N7DISRUP;
   label values N7EFFO N7EFFO;
   label values N7EFFORT N7EFFORT;
   label values N7EMOPRB N7EMOPRB;
   label values N7FRQABS N7FRQABS;
   label values N7HEALTH N7HEALTH;
   label values N7HONORS N7HONORS;
   label values N7HYPOTH N7HYPOTH;
   label values N7IMPRV N7IMPRV;
   label values N7LEVEL N7LEVEL;
   label values N7MMCOM N7MMCOMP;
   label values N7NOPRIM N7NOPRIM;
   label values N7NOSEC N7NOSEC;
   label values N7ORAL N7ORAL;
   label values N7ORGDAT N7ORGDAT;
   label values N7OTHRES N7OTHRES;
   label values N7PASSIV N7PASSIV;
   label values N7PBLK N7PBLK;
   label values N7PERFRM N7PERFRM;
   label values N7PHIS N7PHIS;
   label values N7PMIN N7PMIN;
   label values N7PRESEN N7PRESEN;
   label values N7PROBLM N7PROBLM;
   label values N7RATEEQ N7RATEEQ;
   label values N7RELWEL N7RELWEL;
   label values N7SCANAL N7SCANAL;
   label values N7SCCOMP N7SCCOMP;
   label values N7SCCONC N7SCCONC;
   label values N7SCFACT N7SCFACT;
   label values N7SCHAND N7SCHAND;
   label values N7SCINNW N7SCINNW;
   label values N7SCINT N7SCINT;
   label values N7SCITXT N7SCITXT;
   label values N7SCLAB N7SCLAB;
   label values N7SCPROB N7SCPROB;
   label values N7SCPROJ N7SCPROJ;
   label values N7SCREL N7SCREL;
   label values N7SCTEST N7SCTEST;
   label values N7SCWORK N7SCWORK;
   label values N7SCWRIT N7SCWRIT;
   label values N7SKILL N7SKILL;
   label values N7TARDY N7TARDY;
   label values N7TIME N7TIME;
   label values N7TIMEWK N7TIMEWK;
   label values N7TLKOUT N7TLKOUT;
   label values N7TOCLA N7TOCLA;
   label values N7TOSTN N7TOSTN;
   label values N7WKDONE N7WKDONE;
   label values N7WRITE N7WRITE;
   label values N7WRKHRD N7WRKHRD;
   label values N7YYCOM N7YYCOMP;
   label values P1MMINT P1001F;
   label values P1YYINT P1003F;
   label values P1STPREP P1004F;
   label values P1STOPIC P1005F;
   label values P1STLATE P1006F;
   label values P1STDISC P1007F;
   label values P1MTEACH P1008F;
   label values P1CHOOSE P1009F;
   label values P1SCHOOL P1010F;
   label values P1WHENEN P1011F;
   label values P1WHICHY P1012F;
   label values P1COMPL P1013F;
   label values P1UPSET P1014F;
   label values P1PRETEN P1015F;
   label values P1GOOD P1016F;
   label values P1LIKET P1017F;
   label values P1LOOKFO P1018F;
   label values P1COUNT P1019F;
   label values P1SHARE P1020F;
   label values P1PENCIL P1021F;
   label values P1STILL P1022F;
   label values P1LETTER P1023F;
   label values P1VERBAL P1024F;
   label values P1EXPECT P1025F;
   label values P1READBO P1026F;
   label values P1TELLST P1027F;
   label values P1SINGSO P1028F;
   label values P1HELPAR P1029F;
   label values P1CHORES P1030F;
   label values P1GAMES P1031F;
   label values P1NATURE P1032F;
   label values P1BUILD P1033F;
   label values P1SPORT P1034F;
   label values P1CHLPIC P1037F;
   label values P1CHREAD P1038F;
   label values P1CHSESA P1039F;
   label values P1ADLTLV P1040F;
   label values P1AFDC P1040F;
   label values P1CTRNOW P1040F;
   label values P1FINANC P1040F;
   label values P1FSTAMP P1040F;
   label values P1HSEVER P1040F;
   label values P1LIKDAD P1040F;
   label values P1LIKMOM P1040F;
   label values P1NRNOW P1040F;
   label values P1PAY_1 P1040F;
   label values P1RELNOW P1040F;
   label values P1WICCHD P1040F;
   label values P1LMOM01 P1041F;
   label values P1LMOM02 P1041F;
   label values P1LMOM03 P1041F;
   label values P1LMOM04 P1041F;
   label values P1LMOM05 P1041F;
   label values P1LMOM06 P1041F;
   label values P1LMOM07 P1041F;
   label values P1LMOM08 P1041F;
   label values P1LMOM09 P1041F;
   label values P1LMOM10 P1041F;
   label values P1LMOM11 P1041F;
   label values P1LMOM12 P1041F;
   label values P1LMOM13 P1041F;
   label values P1LMOM14 P1041F;
   label values P1LDAD01 P1042F;
   label values P1LDAD02 P1042F;
   label values P1LDAD03 P1042F;
   label values P1LDAD04 P1042F;
   label values P1LDAD05 P1042F;
   label values P1LDAD06 P1042F;
   label values P1LDAD07 P1042F;
   label values P1LDAD08 P1042F;
   label values P1LDAD09 P1042F;
   label values P1LDAD10 P1042F;
   label values P1LDAD11 P1042F;
   label values P1LDAD12 P1042F;
   label values P1LDAD13 P1042F;
   label values P1LDAD14 P1042F;
   label values P1LVGRAN P1043F;
   label values P1CLSGRN P1044F;
   label values P1ANYAID P1045F;
   label values P1BIOLEG P1045F;
   label values P1BIOLO4 P1045F;
   label values P1BIOLOG P1045F;
   label values P1BIOPA2 P1045F;
   label values P1BIOPAR P1045F;
   label values P1BMH_N1 P1045F;
   label values P1BMH_N3 P1045F;
   label values P1CEMPPK P1045F;
   label values P1CEVER P1045F;
   label values P1CFEEPK P1045F;
   label values P1COTHPK P1045F;
   label values P1CPREK P1045F;
   label values P1CRELPK P1045F;
   label values P1CSAMEK P1045F;
   label values P1CTRK P1045F;
   label values P1CWEEK P1045F;
   label values P1CWELPK P1045F;
   label values P1FSTAM2 P1045F;
   label values P1HSEMP P1045F;
   label values P1HSFEE P1045F;
   label values P1HSOTH P1045F;
   label values P1HSPREK P1045F;
   label values P1HSREL P1045F;
   label values P1HSWELF P1045F;
   label values P1KNOWLE P1045F;
   label values P1LEGMAR P1045F;
   label values P1LIVING P1045F;
   label values P1LIVNON P1045F;
   label values P1LOK_1 P1045F;
   label values P1LOK_2 P1045F;
   label values P1MARRY P1045F;
   label values P1MOMWRK P1045F;
   label values P1NEMPPK P1045F;
   label values P1NFEEPK P1045F;
   label values P1NOTHPK P1045F;
   label values P1NPREK P1045F;
   label values P1NRELPK P1045F;
   label values P1NREVER P1045F;
   label values P1NWEEK P1045F;
   label values P1NWELPK P1045F;
   label values P1PAY_2 P1045F;
   label values P1REMPPK P1045F;
   label values P1RESBIO P1045F;
   label values P1RESLIV P1045F;
   label values P1RESOTH P1045F;
   label values P1REVER P1045F;
   label values P1RFEEPK P1045F;
   label values P1ROTHPK P1045F;
   label values P1RPREK P1045F;
   label values P1RRELPK P1045F;
   label values P1RWEEK P1045F;
   label values P1RWELPK P1045F;
   label values P1SAMETW P1045F;
   label values P1TAK_1 P1045F;
   label values P1TAK_2 P1045F;
   label values P1VAC_1 P1045F;
   label values P1VAC_2 P1045F;
   label values P1WICMOM P1045F;
   label values P1NRNUM P1048F;
   label values P1NUMARR P1048F;
   label values P1NUMNON P1048F;
   label values P1RELNUM P1048F;
   label values P1NPLACE P1049F;
   label values P1NPLCPK P1049F;
   label values P1RPLACE P1049F;
   label values P1RPLCPK P1049F;
   label values P1CMOPK P1052F;
   label values P1NMOPK P1052F;
   label values P1RMOPK P1052F;
   label values P1WHENAF P1052F;
   label values P1WHENFS P1052F;
   label values P1RUNTPK P1054F;
   label values P1AMTCHD P1055F;
   label values P1RELTV P1057F;
   label values P1CBEFOR P1058F;
   label values P1CFTER P1058F;
   label values P1CWKEND P1058F;
   label values P1NAFTER P1058F;
   label values P1NBEFOR P1058F;
   label values P1NWKEND P1058F;
   label values P1RAFTER P1058F;
   label values P1RBEFOR P1058F;
   label values P1RWKEND P1058F;
   label values P1NUNTPK P1069F;
   label values P1NONEPK P1070F;
   label values P1HSTYPE P1077F;
   label values P1HSUNIT P1083F;
   label values P1HSONE P1084F;
   label values P1CPRGPK P1091F;
   label values P1CUNTPK P1095F;
   label values P1CONEPK P1096F;
   label values P1ACTIV2 P1106F;
   label values P1CLIMB P1106F;
   label values P1COMMU2 P1106F;
   label values P1COMMUN P1106F;
   label values P1COMPLI P1106F;
   label values P1DIAGNO P1106F;
   label values P1DIFFH3 P1106F;
   label values P1EARIN2 P1106F;
   label values P1EVALUA P1106F;
   label values P1LIMBS P1106F;
   label values P1PRONO2 P1106F;
   label values P1RESPON P1106F;
   label values P1STILLR P1106F;
   label values P1THER10 P1106F;
   label values P1THER11 P1106F;
   label values P1THER12 P1106F;
   label values P1THER13 P1106F;
   label values P1THERA2 P1106F;
   label values P1THERA3 P1106F;
   label values P1THERA4 P1106F;
   label values P1THERA5 P1106F;
   label values P1THERA6 P1106F;
   label values P1THERA7 P1106F;
   label values P1THERA8 P1106F;
   label values P1THERA9 P1106F;
   label values P1THERAP P1106F;
   label values P1VISIO2 P1106F;
   label values P1WEIGH5 P1106F;
   label values P1WEIGH6 P1106F;
   label values P1DIFFH2 P1107F;
   label values P1DIFFHR P1107F;
   label values P1EARINF P1107F;
   label values P1PREMAT P1107F;
   label values P1SIGHT P1107F;
   label values P1VISION P1107F;
   label values P1EARDAY P1109F;
   label values P1MULTIP P1110F;
   label values P1SIBLIV P1111F;
   label values P1HHOLD P1112F;
   label values P1IDENTI P1113F;
   label values P1FIRST P1114F;
   label values P1HEAVY P1115F;
   label values P1COMP1 P1116F;
   label values P1COMP10 P1116F;
   label values P1COMP11 P1116F;
   label values P1COMP2 P1116F;
   label values P1COMP3 P1116F;
   label values P1COMP4 P1116F;
   label values P1COMP5 P1116F;
   label values P1COMP6 P1116F;
   label values P1COMP7 P1116F;
   label values P1COMP8 P1116F;
   label values P1COMP9 P1116F;
   label values P1SAMEAG P1117F;
   label values P1ATTENI P1118F;
   label values P1BEHAVE P1118F;
   label values P1COORD P1118F;
   label values P1PRONOU P1118F;
   label values P1SOLVE P1118F;
   label values P1ACTIVE P1119F;
   label values P1HSCALE P1120F;
   label values P1HELPFL P1121F;
   label values P1WHNMAR P1122F;
   label values P1WHENLI P1124F;
   label values P1WHNCUR P1126F;
   label values P1WHNSTM P1128F;
   label values P1BIOLO2 P1130F;
   label values P1BIOLO5 P1132F;
   label values P1RESWHN P1134F;
   label values P1WHNLIK P1136F;
   label values P1BIOWHN P1138F;
   label values P1OTHWHN P1140F;
   label values P1MDWHN P1142F;
   label values P1KNOWL2 P1144F;
   label values P1STOPMM P1145F;
   label values P1MDLIVE P1147F;
   label values P1MDLIV3 P1149F;
   label values P1BIO_N1 P1164F;
   label values P1BIO_N3 P1164F;
   label values P1DB1_N1 P1165F;
   label values P1MM_N1 P1168F;
   label values P1BM1_N1 P1170F;
   label values P1BM1_N3 P1170F;
   label values P1BM2_N1 P1170F;
   label values P1BM2_N3 P1170F;
   label values P1BM3_N1 P1170F;
   label values P1BM3_N3 P1170F;
   label values P1BM4_N1 P1170F;
   label values P1BM4_N3 P1170F;
   label values P1BM5_N1 P1170F;
   label values P1BM5_N3 P1170F;
   label values P1BM6_N1 P1170F;
   label values P1BM6_N3 P1170F;
   label values P1CHD_N1 P1171F;
   label values P1CHP_N1 P1172F;
   label values P1DB1_N3 P1174F;
   label values P1MM_N3 P1177F;
   label values P1CHD_N3 P1179F;
   label values P1CHP_N3 P1180F;
   label values P1HOWOT1 P1183F;
   label values P1HOWOT2 P1183F;
   label values P1HOWOT3 P1183F;
   label values P1HOWOT4 P1183F;
   label values P1HOWOT5 P1183F;
   label values P1HOWOT6 P1183F;
   label values P1HOWOT7 P1183F;
   label values P1HOWOT8 P1183F;
   label values P1CTA_N1 P1184F;
   label values P1CTA_N3 P1184F;
   label values P1ENR_2 P1184F;
   label values P1HIS_1 P1184F;
   label values P1HIS_2 P1184F;
   label values P1SCH_N3 P1184F;
   label values P1TRN_2 P1184F;
   label values P1CTP_N1 P1185F;
   label values P1CTP_N3 P1185F;
   label values P1CTA_N2 P1187F;
   label values P1CTA_N4 P1187F;
   label values P1ENR_3 P1187F;
   label values P1ENR_4 P1187F;
   label values P1HIS_3 P1187F;
   label values P1HIS_4 P1187F;
   label values P1SCH_N2 P1187F;
   label values P1SCH_N4 P1187F;
   label values P1TRN_3 P1187F;
   label values P1TRN_4 P1187F;
   label values P1CTP_N2 P1188F;
   label values P1CTP_N4 P1188F;
   label values P1ANYLNG P1192F;
   label values P1ENGLIS P1193F;
   label values P1LANGS1 P1194F;
   label values P1LANGS2 P1194F;
   label values P1LANGS3 P1194F;
   label values P1LANGS4 P1194F;
   label values P1PRMLNG P1195F;
   label values P1SPEAKE P1196F;
   label values P1READEN P1197F;
   label values P1WRITEN P1198F;
   label values P1UNDERS P1199F;
   label values P1RES_1 P1204F;
   label values P1RES_2 P1204F;
   label values P1CHL_1 P1205F;
   label values P1CHL_2 P1205F;
   label values P1RES_3 P1206F;
   label values P1RES_4 P1206F;
   label values P1CHL_3 P1207F;
   label values P1CHL_4 P1207F;
   label values P1HIG_1 P1212F;
   label values P1ENR_1 P1213F;
   label values P1TRN_1 P1213F;
   label values P1FPT_1 P1214F;
   label values P1FPT_2 P1214F;
   label values P1FTHGRD P1216F;
   label values P1GRD_N3 P1216F;
   label values P1HIG_2 P1216F;
   label values P1MTHGRD P1216F;
   label values P1GRD_N2 P1218F;
   label values P1GRD_N4 P1218F;
   label values P1HIG_3 P1218F;
   label values P1HIG_4 P1218F;
   label values P1FPT_3 P1219F;
   label values P1FPT_4 P1219F;
   label values P1GRD_N1 P1222F;
   label values P1SCH_N1 P1223F;
   label values P1HIGHSC P1224F;
   label values P1HIGHS2 P1225F;
   label values P1MATHS P1226F;
   label values P1MATHS2 P1227F;
   label values P1MATHS3 P1228F;
   label values P1MATHS4 P1229F;
   label values P1MATHS5 P1230F;
   label values P1MATHS6 P1231F;
   label values P1MATHS7 P1232F;
   label values P1DO1_1 P1237F;
   label values P1DO1_2 P1237F;
   label values P1DO2_1 P1237F;
   label values P1DO2_2 P1237F;
   label values P1DO3_1 P1237F;
   label values P1DO3_2 P1237F;
   label values P1DO4_1 P1237F;
   label values P1DO4_2 P1237F;
   label values P1DO5_1 P1237F;
   label values P1DO5_2 P1237F;
   label values P1DO6_1 P1237F;
   label values P1DO6_2 P1237F;
   label values P1DO7_1 P1237F;
   label values P1DO7_2 P1237F;
   label values P1DOW_1 P1238F;
   label values P1DOW_2 P1238F;
   label values P1OCC_1 P1239F;
   label values P1OCC_2 P1242F;
   label values P1TIMEF2 P1244F;
   label values P2PER_1 P20005F;
   label values P2PER_10 P20005F;
   label values P2PER_11 P20005F;
   label values P2PER_12 P20005F;
   label values P2PER_13 P20005F;
   label values P2PER_14 P20005F;
   label values P2PER_15 P20005F;
   label values P2PER_16 P20005F;
   label values P2PER_17 P20005F;
   label values P2PER_2 P20005F;
   label values P2PER_3 P20005F;
   label values P2PER_4 P20005F;
   label values P2PER_5 P20005F;
   label values P2PER_6 P20005F;
   label values P2PER_7 P20005F;
   label values P2PER_8 P20005F;
   label values P2PER_9 P20005F;
   label values P3PER_1 P20005F;
   label values P3PER_10 P20005F;
   label values P3PER_11 P20005F;
   label values P3PER_12 P20005F;
   label values P3PER_13 P20005F;
   label values P3PER_14 P20005F;
   label values P3PER_15 P20005F;
   label values P3PER_2 P20005F;
   label values P3PER_3 P20005F;
   label values P3PER_4 P20005F;
   label values P3PER_5 P20005F;
   label values P3PER_6 P20005F;
   label values P3PER_7 P20005F;
   label values P3PER_8 P20005F;
   label values P3PER_9 P20005F;
   label values P4PER_1 P20005F;
   label values P4PER_10 P20005F;
   label values P4PER_11 P20005F;
   label values P4PER_12 P20005F;
   label values P4PER_13 P20005F;
   label values P4PER_14 P20005F;
   label values P4PER_15 P20005F;
   label values P4PER_16 P20005F;
   label values P4PER_17 P20005F;
   label values P4PER_18 P20005F;
   label values P4PER_19 P20005F;
   label values P4PER_2 P20005F;
   label values P4PER_3 P20005F;
   label values P4PER_4 P20005F;
   label values P4PER_5 P20005F;
   label values P4PER_6 P20005F;
   label values P4PER_7 P20005F;
   label values P4PER_8 P20005F;
   label values P4PER_9 P20005F;
   label values P2CUR_1 P20006F;
   label values P2CUR_10 P20006F;
   label values P2CUR_11 P20006F;
   label values P2CUR_12 P20006F;
   label values P2CUR_13 P20006F;
   label values P2CUR_14 P20006F;
   label values P2CUR_15 P20006F;
   label values P2CUR_16 P20006F;
   label values P2CUR_17 P20006F;
   label values P2CUR_2 P20006F;
   label values P2CUR_3 P20006F;
   label values P2CUR_4 P20006F;
   label values P2CUR_5 P20006F;
   label values P2CUR_6 P20006F;
   label values P2CUR_7 P20006F;
   label values P2CUR_8 P20006F;
   label values P2CUR_9 P20006F;
   label values P2HSP_1 P20006F;
   label values P2HSP_10 P20006F;
   label values P2HSP_11 P20006F;
   label values P2HSP_12 P20006F;
   label values P2HSP_13 P20006F;
   label values P2HSP_14 P20006F;
   label values P2HSP_15 P20006F;
   label values P2HSP_16 P20006F;
   label values P2HSP_17 P20006F;
   label values P2HSP_2 P20006F;
   label values P2HSP_3 P20006F;
   label values P2HSP_4 P20006F;
   label values P2HSP_5 P20006F;
   label values P2HSP_6 P20006F;
   label values P2HSP_7 P20006F;
   label values P2HSP_8 P20006F;
   label values P2HSP_9 P20006F;
   label values P3CUR_1 P20006F;
   label values P3CUR_10 P20006F;
   label values P3CUR_11 P20006F;
   label values P3CUR_12 P20006F;
   label values P3CUR_13 P20006F;
   label values P3CUR_14 P20006F;
   label values P3CUR_15 P20006F;
   label values P3CUR_2 P20006F;
   label values P3CUR_3 P20006F;
   label values P3CUR_4 P20006F;
   label values P3CUR_5 P20006F;
   label values P3CUR_6 P20006F;
   label values P3CUR_7 P20006F;
   label values P3CUR_8 P20006F;
   label values P3CUR_9 P20006F;
   label values P3HSP_1 P20006F;
   label values P3HSP_10 P20006F;
   label values P3HSP_11 P20006F;
   label values P3HSP_12 P20006F;
   label values P3HSP_13 P20006F;
   label values P3HSP_14 P20006F;
   label values P3HSP_15 P20006F;
   label values P3HSP_2 P20006F;
   label values P3HSP_3 P20006F;
   label values P3HSP_4 P20006F;
   label values P3HSP_5 P20006F;
   label values P3HSP_6 P20006F;
   label values P3HSP_7 P20006F;
   label values P3HSP_8 P20006F;
   label values P3HSP_9 P20006F;
   label values P4CUR_1 P20006F;
   label values P4CUR_10 P20006F;
   label values P4CUR_11 P20006F;
   label values P4CUR_12 P20006F;
   label values P4CUR_13 P20006F;
   label values P4CUR_14 P20006F;
   label values P4CUR_15 P20006F;
   label values P4CUR_16 P20006F;
   label values P4CUR_17 P20006F;
   label values P4CUR_18 P20006F;
   label values P4CUR_19 P20006F;
   label values P4CUR_2 P20006F;
   label values P4CUR_3 P20006F;
   label values P4CUR_4 P20006F;
   label values P4CUR_5 P20006F;
   label values P4CUR_6 P20006F;
   label values P4CUR_7 P20006F;
   label values P4CUR_8 P20006F;
   label values P4CUR_9 P20006F;
   label values P4HSP_1 P20006F;
   label values P4HSP_10 P20006F;
   label values P4HSP_11 P20006F;
   label values P4HSP_12 P20006F;
   label values P4HSP_13 P20006F;
   label values P4HSP_14 P20006F;
   label values P4HSP_15 P20006F;
   label values P4HSP_16 P20006F;
   label values P4HSP_17 P20006F;
   label values P4HSP_18 P20006F;
   label values P4HSP_19 P20006F;
   label values P4HSP_2 P20006F;
   label values P4HSP_3 P20006F;
   label values P4HSP_4 P20006F;
   label values P4HSP_5 P20006F;
   label values P4HSP_6 P20006F;
   label values P4HSP_7 P20006F;
   label values P4HSP_8 P20006F;
   label values P4HSP_9 P20006F;
   label values P2REAS10 P20007F;
   label values P2REAS11 P20007F;
   label values P2REAS12 P20007F;
   label values P2REAS13 P20007F;
   label values P2REAS14 P20007F;
   label values P2REAS15 P20007F;
   label values P2REAS16 P20007F;
   label values P2REAS17 P20007F;
   label values P2REASL1 P20007F;
   label values P2REASL2 P20007F;
   label values P2REASL3 P20007F;
   label values P2REASL4 P20007F;
   label values P2REASL5 P20007F;
   label values P2REASL6 P20007F;
   label values P2REASL7 P20007F;
   label values P2REASL8 P20007F;
   label values P2REASL9 P20007F;
   label values P2SEX_10 P20008F;
   label values P2SEX_11 P20008F;
   label values P2SEX_12 P20008F;
   label values P2SEX_13 P20008F;
   label values P2SEX_14 P20008F;
   label values P2SEX_15 P20008F;
   label values P2SEX_16 P20008F;
   label values P2SEX_17 P20008F;
   label values P2SEX_2 P20008F;
   label values P2SEX_3 P20008F;
   label values P2SEX_4 P20008F;
   label values P2SEX_5 P20008F;
   label values P2SEX_6 P20008F;
   label values P2SEX_7 P20008F;
   label values P2SEX_8 P20008F;
   label values P2SEX_9 P20008F;
   label values P3SEX_10 P20008F;
   label values P3SEX_11 P20008F;
   label values P3SEX_12 P20008F;
   label values P3SEX_13 P20008F;
   label values P3SEX_14 P20008F;
   label values P3SEX_15 P20008F;
   label values P3SEX_2 P20008F;
   label values P3SEX_3 P20008F;
   label values P3SEX_4 P20008F;
   label values P3SEX_5 P20008F;
   label values P3SEX_6 P20008F;
   label values P3SEX_7 P20008F;
   label values P3SEX_8 P20008F;
   label values P3SEX_9 P20008F;
   label values P4SEX_10 P20008F;
   label values P4SEX_11 P20008F;
   label values P4SEX_12 P20008F;
   label values P4SEX_13 P20008F;
   label values P4SEX_14 P20008F;
   label values P4SEX_15 P20008F;
   label values P4SEX_16 P20008F;
   label values P4SEX_17 P20008F;
   label values P4SEX_18 P20008F;
   label values P4SEX_19 P20008F;
   label values P4SEX_2 P20008F;
   label values P4SEX_3 P20008F;
   label values P4SEX_4 P20008F;
   label values P4SEX_5 P20008F;
   label values P4SEX_6 P20008F;
   label values P4SEX_7 P20008F;
   label values P4SEX_8 P20008F;
   label values P4SEX_9 P20008F;
   label values P2REL_10 P20009F;
   label values P2REL_11 P20009F;
   label values P2REL_12 P20009F;
   label values P2REL_13 P20009F;
   label values P2REL_14 P20009F;
   label values P2REL_15 P20009F;
   label values P2REL_16 P20009F;
   label values P2REL_17 P20009F;
   label values P2REL_2 P20009F;
   label values P2REL_3 P20009F;
   label values P2REL_4 P20009F;
   label values P2REL_5 P20009F;
   label values P2REL_6 P20009F;
   label values P2REL_7 P20009F;
   label values P2REL_8 P20009F;
   label values P2REL_9 P20009F;
   label values P3REL_10 P20009F;
   label values P3REL_11 P20009F;
   label values P3REL_12 P20009F;
   label values P3REL_13 P20009F;
   label values P3REL_14 P20009F;
   label values P3REL_15 P20009F;
   label values P3REL_2 P20009F;
   label values P3REL_3 P20009F;
   label values P3REL_4 P20009F;
   label values P3REL_5 P20009F;
   label values P3REL_6 P20009F;
   label values P3REL_7 P20009F;
   label values P3REL_8 P20009F;
   label values P3REL_9 P20009F;
   label values P4REL_10 P20009F;
   label values P4REL_11 P20009F;
   label values P4REL_12 P20009F;
   label values P4REL_13 P20009F;
   label values P4REL_14 P20009F;
   label values P4REL_15 P20009F;
   label values P4REL_16 P20009F;
   label values P4REL_17 P20009F;
   label values P4REL_18 P20009F;
   label values P4REL_19 P20009F;
   label values P4REL_2 P20009F;
   label values P4REL_3 P20009F;
   label values P4REL_4 P20009F;
   label values P4REL_5 P20009F;
   label values P4REL_6 P20009F;
   label values P4REL_7 P20009F;
   label values P4REL_8 P20009F;
   label values P4REL_9 P20009F;
   label values P2MOM_1 P20010F;
   label values P2MOM_10 P20010F;
   label values P2MOM_11 P20010F;
   label values P2MOM_12 P20010F;
   label values P2MOM_13 P20010F;
   label values P2MOM_14 P20010F;
   label values P2MOM_15 P20010F;
   label values P2MOM_16 P20010F;
   label values P2MOM_17 P20010F;
   label values P2MOM_2 P20010F;
   label values P2MOM_3 P20010F;
   label values P2MOM_4 P20010F;
   label values P2MOM_5 P20010F;
   label values P2MOM_6 P20010F;
   label values P2MOM_7 P20010F;
   label values P2MOM_8 P20010F;
   label values P2MOM_9 P20010F;
   label values P3MOM_1 P20010F;
   label values P3MOM_10 P20010F;
   label values P3MOM_11 P20010F;
   label values P3MOM_12 P20010F;
   label values P3MOM_13 P20010F;
   label values P3MOM_14 P20010F;
   label values P3MOM_15 P20010F;
   label values P3MOM_2 P20010F;
   label values P3MOM_3 P20010F;
   label values P3MOM_4 P20010F;
   label values P3MOM_5 P20010F;
   label values P3MOM_6 P20010F;
   label values P3MOM_7 P20010F;
   label values P3MOM_8 P20010F;
   label values P3MOM_9 P20010F;
   label values P4MOM_1 P20010F;
   label values P4MOM_10 P20010F;
   label values P4MOM_11 P20010F;
   label values P4MOM_12 P20010F;
   label values P4MOM_13 P20010F;
   label values P4MOM_14 P20010F;
   label values P4MOM_15 P20010F;
   label values P4MOM_16 P20010F;
   label values P4MOM_17 P20010F;
   label values P4MOM_18 P20010F;
   label values P4MOM_19 P20010F;
   label values P4MOM_2 P20010F;
   label values P4MOM_3 P20010F;
   label values P4MOM_4 P20010F;
   label values P4MOM_5 P20010F;
   label values P4MOM_6 P20010F;
   label values P4MOM_7 P20010F;
   label values P4MOM_8 P20010F;
   label values P4MOM_9 P20010F;
   label values P2DAD_1 P20011F;
   label values P2DAD_10 P20011F;
   label values P2DAD_11 P20011F;
   label values P2DAD_12 P20011F;
   label values P2DAD_13 P20011F;
   label values P2DAD_14 P20011F;
   label values P2DAD_15 P20011F;
   label values P2DAD_16 P20011F;
   label values P2DAD_17 P20011F;
   label values P2DAD_2 P20011F;
   label values P2DAD_3 P20011F;
   label values P2DAD_4 P20011F;
   label values P2DAD_5 P20011F;
   label values P2DAD_6 P20011F;
   label values P2DAD_7 P20011F;
   label values P2DAD_8 P20011F;
   label values P2DAD_9 P20011F;
   label values P3DAD_1 P20011F;
   label values P3DAD_10 P20011F;
   label values P3DAD_11 P20011F;
   label values P3DAD_12 P20011F;
   label values P3DAD_13 P20011F;
   label values P3DAD_14 P20011F;
   label values P3DAD_15 P20011F;
   label values P3DAD_2 P20011F;
   label values P3DAD_3 P20011F;
   label values P3DAD_4 P20011F;
   label values P3DAD_5 P20011F;
   label values P3DAD_6 P20011F;
   label values P3DAD_7 P20011F;
   label values P3DAD_8 P20011F;
   label values P3DAD_9 P20011F;
   label values P4DAD_1 P20011F;
   label values P4DAD_10 P20011F;
   label values P4DAD_11 P20011F;
   label values P4DAD_12 P20011F;
   label values P4DAD_13 P20011F;
   label values P4DAD_14 P20011F;
   label values P4DAD_15 P20011F;
   label values P4DAD_16 P20011F;
   label values P4DAD_17 P20011F;
   label values P4DAD_18 P20011F;
   label values P4DAD_19 P20011F;
   label values P4DAD_2 P20011F;
   label values P4DAD_3 P20011F;
   label values P4DAD_4 P20011F;
   label values P4DAD_5 P20011F;
   label values P4DAD_6 P20011F;
   label values P4DAD_7 P20011F;
   label values P4DAD_8 P20011F;
   label values P4DAD_9 P20011F;
   label values P2SIS_1 P20012F;
   label values P2SIS_10 P20012F;
   label values P2SIS_11 P20012F;
   label values P2SIS_12 P20012F;
   label values P2SIS_13 P20012F;
   label values P2SIS_14 P20012F;
   label values P2SIS_15 P20012F;
   label values P2SIS_16 P20012F;
   label values P2SIS_17 P20012F;
   label values P2SIS_2 P20012F;
   label values P2SIS_3 P20012F;
   label values P2SIS_4 P20012F;
   label values P2SIS_5 P20012F;
   label values P2SIS_6 P20012F;
   label values P2SIS_7 P20012F;
   label values P2SIS_8 P20012F;
   label values P2SIS_9 P20012F;
   label values P3SIS_1 P20012F;
   label values P3SIS_10 P20012F;
   label values P3SIS_11 P20012F;
   label values P3SIS_12 P20012F;
   label values P3SIS_13 P20012F;
   label values P3SIS_14 P20012F;
   label values P3SIS_15 P20012F;
   label values P3SIS_2 P20012F;
   label values P3SIS_3 P20012F;
   label values P3SIS_4 P20012F;
   label values P3SIS_5 P20012F;
   label values P3SIS_6 P20012F;
   label values P3SIS_7 P20012F;
   label values P3SIS_8 P20012F;
   label values P3SIS_9 P20012F;
   label values P4SIS_1 P20012F;
   label values P4SIS_10 P20012F;
   label values P4SIS_11 P20012F;
   label values P4SIS_12 P20012F;
   label values P4SIS_13 P20012F;
   label values P4SIS_14 P20012F;
   label values P4SIS_15 P20012F;
   label values P4SIS_16 P20012F;
   label values P4SIS_17 P20012F;
   label values P4SIS_18 P20012F;
   label values P4SIS_19 P20012F;
   label values P4SIS_2 P20012F;
   label values P4SIS_3 P20012F;
   label values P4SIS_4 P20012F;
   label values P4SIS_5 P20012F;
   label values P4SIS_6 P20012F;
   label values P4SIS_7 P20012F;
   label values P4SIS_8 P20012F;
   label values P4SIS_9 P20012F;
   label values P2BRO_1 P20013F;
   label values P2BRO_10 P20013F;
   label values P2BRO_11 P20013F;
   label values P2BRO_12 P20013F;
   label values P2BRO_13 P20013F;
   label values P2BRO_14 P20013F;
   label values P2BRO_15 P20013F;
   label values P2BRO_16 P20013F;
   label values P2BRO_17 P20013F;
   label values P2BRO_2 P20013F;
   label values P2BRO_3 P20013F;
   label values P2BRO_4 P20013F;
   label values P2BRO_5 P20013F;
   label values P2BRO_6 P20013F;
   label values P2BRO_7 P20013F;
   label values P2BRO_8 P20013F;
   label values P2BRO_9 P20013F;
   label values P3BRO_1 P20013F;
   label values P3BRO_10 P20013F;
   label values P3BRO_11 P20013F;
   label values P3BRO_12 P20013F;
   label values P3BRO_13 P20013F;
   label values P3BRO_14 P20013F;
   label values P3BRO_15 P20013F;
   label values P3BRO_2 P20013F;
   label values P3BRO_3 P20013F;
   label values P3BRO_4 P20013F;
   label values P3BRO_5 P20013F;
   label values P3BRO_6 P20013F;
   label values P3BRO_7 P20013F;
   label values P3BRO_8 P20013F;
   label values P3BRO_9 P20013F;
   label values P4BRO_1 P20013F;
   label values P4BRO_10 P20013F;
   label values P4BRO_11 P20013F;
   label values P4BRO_12 P20013F;
   label values P4BRO_13 P20013F;
   label values P4BRO_14 P20013F;
   label values P4BRO_15 P20013F;
   label values P4BRO_16 P20013F;
   label values P4BRO_17 P20013F;
   label values P4BRO_18 P20013F;
   label values P4BRO_19 P20013F;
   label values P4BRO_2 P20013F;
   label values P4BRO_3 P20013F;
   label values P4BRO_4 P20013F;
   label values P4BRO_5 P20013F;
   label values P4BRO_6 P20013F;
   label values P4BRO_7 P20013F;
   label values P4BRO_8 P20013F;
   label values P4BRO_9 P20013F;
   label values P2UNR_1 P20014F;
   label values P2UNR_10 P20014F;
   label values P2UNR_11 P20014F;
   label values P2UNR_12 P20014F;
   label values P2UNR_13 P20014F;
   label values P2UNR_14 P20014F;
   label values P2UNR_15 P20014F;
   label values P2UNR_16 P20014F;
   label values P2UNR_17 P20014F;
   label values P2UNR_2 P20014F;
   label values P2UNR_3 P20014F;
   label values P2UNR_4 P20014F;
   label values P2UNR_5 P20014F;
   label values P2UNR_6 P20014F;
   label values P2UNR_7 P20014F;
   label values P2UNR_8 P20014F;
   label values P2UNR_9 P20014F;
   label values P3UNR_1 P20014F;
   label values P3UNR_10 P20014F;
   label values P3UNR_11 P20014F;
   label values P3UNR_12 P20014F;
   label values P3UNR_13 P20014F;
   label values P3UNR_14 P20014F;
   label values P3UNR_15 P20014F;
   label values P3UNR_2 P20014F;
   label values P3UNR_3 P20014F;
   label values P3UNR_4 P20014F;
   label values P3UNR_5 P20014F;
   label values P3UNR_6 P20014F;
   label values P3UNR_7 P20014F;
   label values P3UNR_8 P20014F;
   label values P3UNR_9 P20014F;
   label values P4UNR_1 P20014F;
   label values P4UNR_10 P20014F;
   label values P4UNR_11 P20014F;
   label values P4UNR_12 P20014F;
   label values P4UNR_13 P20014F;
   label values P4UNR_14 P20014F;
   label values P4UNR_15 P20014F;
   label values P4UNR_16 P20014F;
   label values P4UNR_17 P20014F;
   label values P4UNR_18 P20014F;
   label values P4UNR_19 P20014F;
   label values P4UNR_2 P20014F;
   label values P4UNR_3 P20014F;
   label values P4UNR_4 P20014F;
   label values P4UNR_5 P20014F;
   label values P4UNR_6 P20014F;
   label values P4UNR_7 P20014F;
   label values P4UNR_8 P20014F;
   label values P4UNR_9 P20014F;
   label values P2RC1_10 P20015F;
   label values P2RC1_11 P20015F;
   label values P2RC1_12 P20015F;
   label values P2RC1_13 P20015F;
   label values P2RC1_14 P20015F;
   label values P2RC1_15 P20015F;
   label values P2RC1_16 P20015F;
   label values P2RC1_17 P20015F;
   label values P2RC1_2 P20015F;
   label values P2RC1_3 P20015F;
   label values P2RC1_4 P20015F;
   label values P2RC1_5 P20015F;
   label values P2RC1_6 P20015F;
   label values P2RC1_7 P20015F;
   label values P2RC1_8 P20015F;
   label values P2RC1_9 P20015F;
   label values P2RC2_10 P20015F;
   label values P2RC2_11 P20015F;
   label values P2RC2_12 P20015F;
   label values P2RC2_13 P20015F;
   label values P2RC2_14 P20015F;
   label values P2RC2_15 P20015F;
   label values P2RC2_16 P20015F;
   label values P2RC2_17 P20015F;
   label values P2RC2_2 P20015F;
   label values P2RC2_3 P20015F;
   label values P2RC2_4 P20015F;
   label values P2RC2_5 P20015F;
   label values P2RC2_6 P20015F;
   label values P2RC2_7 P20015F;
   label values P2RC2_8 P20015F;
   label values P2RC2_9 P20015F;
   label values P2RC3_10 P20015F;
   label values P2RC3_11 P20015F;
   label values P2RC3_12 P20015F;
   label values P2RC3_13 P20015F;
   label values P2RC3_14 P20015F;
   label values P2RC3_15 P20015F;
   label values P2RC3_16 P20015F;
   label values P2RC3_17 P20015F;
   label values P2RC3_2 P20015F;
   label values P2RC3_3 P20015F;
   label values P2RC3_4 P20015F;
   label values P2RC3_5 P20015F;
   label values P2RC3_6 P20015F;
   label values P2RC3_7 P20015F;
   label values P2RC3_8 P20015F;
   label values P2RC3_9 P20015F;
   label values P2RC4_10 P20015F;
   label values P2RC4_11 P20015F;
   label values P2RC4_12 P20015F;
   label values P2RC4_13 P20015F;
   label values P2RC4_14 P20015F;
   label values P2RC4_15 P20015F;
   label values P2RC4_16 P20015F;
   label values P2RC4_17 P20015F;
   label values P2RC4_2 P20015F;
   label values P2RC4_3 P20015F;
   label values P2RC4_4 P20015F;
   label values P2RC4_5 P20015F;
   label values P2RC4_6 P20015F;
   label values P2RC4_7 P20015F;
   label values P2RC4_8 P20015F;
   label values P2RC4_9 P20015F;
   label values P2RC5_10 P20015F;
   label values P2RC5_11 P20015F;
   label values P2RC5_12 P20015F;
   label values P2RC5_13 P20015F;
   label values P2RC5_14 P20015F;
   label values P2RC5_15 P20015F;
   label values P2RC5_16 P20015F;
   label values P2RC5_17 P20015F;
   label values P2RC5_2 P20015F;
   label values P2RC5_3 P20015F;
   label values P2RC5_4 P20015F;
   label values P2RC5_5 P20015F;
   label values P2RC5_6 P20015F;
   label values P2RC5_7 P20015F;
   label values P2RC5_8 P20015F;
   label values P2RC5_9 P20015F;
   label values P2RC6_10 P20015F;
   label values P2RC6_11 P20015F;
   label values P2RC6_12 P20015F;
   label values P2RC6_13 P20015F;
   label values P2RC6_14 P20015F;
   label values P2RC6_15 P20015F;
   label values P2RC6_16 P20015F;
   label values P2RC6_17 P20015F;
   label values P2RC6_2 P20015F;
   label values P2RC6_3 P20015F;
   label values P2RC6_4 P20015F;
   label values P2RC6_5 P20015F;
   label values P2RC6_6 P20015F;
   label values P2RC6_7 P20015F;
   label values P2RC6_8 P20015F;
   label values P2RC6_9 P20015F;
   label values P3RC1_10 P20015F;
   label values P3RC1_11 P20015F;
   label values P3RC1_12 P20015F;
   label values P3RC1_13 P20015F;
   label values P3RC1_14 P20015F;
   label values P3RC1_15 P20015F;
   label values P3RC1_2 P20015F;
   label values P3RC1_3 P20015F;
   label values P3RC1_4 P20015F;
   label values P3RC1_5 P20015F;
   label values P3RC1_6 P20015F;
   label values P3RC1_7 P20015F;
   label values P3RC1_8 P20015F;
   label values P3RC1_9 P20015F;
   label values P3RC2_10 P20015F;
   label values P3RC2_11 P20015F;
   label values P3RC2_12 P20015F;
   label values P3RC2_13 P20015F;
   label values P3RC2_14 P20015F;
   label values P3RC2_15 P20015F;
   label values P3RC2_2 P20015F;
   label values P3RC2_3 P20015F;
   label values P3RC2_4 P20015F;
   label values P3RC2_5 P20015F;
   label values P3RC2_6 P20015F;
   label values P3RC2_7 P20015F;
   label values P3RC2_8 P20015F;
   label values P3RC2_9 P20015F;
   label values P3RC3_10 P20015F;
   label values P3RC3_11 P20015F;
   label values P3RC3_12 P20015F;
   label values P3RC3_13 P20015F;
   label values P3RC3_14 P20015F;
   label values P3RC3_15 P20015F;
   label values P3RC3_2 P20015F;
   label values P3RC3_3 P20015F;
   label values P3RC3_4 P20015F;
   label values P3RC3_5 P20015F;
   label values P3RC3_6 P20015F;
   label values P3RC3_7 P20015F;
   label values P3RC3_8 P20015F;
   label values P3RC3_9 P20015F;
   label values P3RC4_10 P20015F;
   label values P3RC4_11 P20015F;
   label values P3RC4_12 P20015F;
   label values P3RC4_13 P20015F;
   label values P3RC4_14 P20015F;
   label values P3RC4_15 P20015F;
   label values P3RC4_2 P20015F;
   label values P3RC4_3 P20015F;
   label values P3RC4_4 P20015F;
   label values P3RC4_5 P20015F;
   label values P3RC4_6 P20015F;
   label values P3RC4_7 P20015F;
   label values P3RC4_8 P20015F;
   label values P3RC4_9 P20015F;
   label values P3RC5_10 P20015F;
   label values P3RC5_11 P20015F;
   label values P3RC5_12 P20015F;
   label values P3RC5_13 P20015F;
   label values P3RC5_14 P20015F;
   label values P3RC5_15 P20015F;
   label values P3RC5_2 P20015F;
   label values P3RC5_3 P20015F;
   label values P3RC5_4 P20015F;
   label values P3RC5_5 P20015F;
   label values P3RC5_6 P20015F;
   label values P3RC5_7 P20015F;
   label values P3RC5_8 P20015F;
   label values P3RC5_9 P20015F;
   label values P3RC6_10 P20015F;
   label values P3RC6_11 P20015F;
   label values P3RC6_12 P20015F;
   label values P3RC6_13 P20015F;
   label values P3RC6_14 P20015F;
   label values P3RC6_15 P20015F;
   label values P3RC6_2 P20015F;
   label values P3RC6_3 P20015F;
   label values P3RC6_4 P20015F;
   label values P3RC6_5 P20015F;
   label values P3RC6_6 P20015F;
   label values P3RC6_7 P20015F;
   label values P3RC6_8 P20015F;
   label values P3RC6_9 P20015F;
   label values P4RC1_10 P20015F;
   label values P4RC1_11 P20015F;
   label values P4RC1_12 P20015F;
   label values P4RC1_13 P20015F;
   label values P4RC1_14 P20015F;
   label values P4RC1_15 P20015F;
   label values P4RC1_16 P20015F;
   label values P4RC1_17 P20015F;
   label values P4RC1_18 P20015F;
   label values P4RC1_19 P20015F;
   label values P4RC1_2 P20015F;
   label values P4RC1_3 P20015F;
   label values P4RC1_4 P20015F;
   label values P4RC1_5 P20015F;
   label values P4RC1_6 P20015F;
   label values P4RC1_7 P20015F;
   label values P4RC1_8 P20015F;
   label values P4RC1_9 P20015F;
   label values P4RC2_10 P20015F;
   label values P4RC2_11 P20015F;
   label values P4RC2_12 P20015F;
   label values P4RC2_13 P20015F;
   label values P4RC2_14 P20015F;
   label values P4RC2_15 P20015F;
   label values P4RC2_16 P20015F;
   label values P4RC2_17 P20015F;
   label values P4RC2_18 P20015F;
   label values P4RC2_19 P20015F;
   label values P4RC2_2 P20015F;
   label values P4RC2_3 P20015F;
   label values P4RC2_4 P20015F;
   label values P4RC2_5 P20015F;
   label values P4RC2_6 P20015F;
   label values P4RC2_7 P20015F;
   label values P4RC2_8 P20015F;
   label values P4RC2_9 P20015F;
   label values P4RC3_10 P20015F;
   label values P4RC3_11 P20015F;
   label values P4RC3_12 P20015F;
   label values P4RC3_13 P20015F;
   label values P4RC3_14 P20015F;
   label values P4RC3_15 P20015F;
   label values P4RC3_16 P20015F;
   label values P4RC3_17 P20015F;
   label values P4RC3_18 P20015F;
   label values P4RC3_19 P20015F;
   label values P4RC3_2 P20015F;
   label values P4RC3_3 P20015F;
   label values P4RC3_4 P20015F;
   label values P4RC3_5 P20015F;
   label values P4RC3_6 P20015F;
   label values P4RC3_7 P20015F;
   label values P4RC3_8 P20015F;
   label values P4RC3_9 P20015F;
   label values P4RC4_10 P20015F;
   label values P4RC4_11 P20015F;
   label values P4RC4_12 P20015F;
   label values P4RC4_13 P20015F;
   label values P4RC4_14 P20015F;
   label values P4RC4_15 P20015F;
   label values P4RC4_16 P20015F;
   label values P4RC4_17 P20015F;
   label values P4RC4_18 P20015F;
   label values P4RC4_19 P20015F;
   label values P4RC4_2 P20015F;
   label values P4RC4_3 P20015F;
   label values P4RC4_4 P20015F;
   label values P4RC4_5 P20015F;
   label values P4RC4_6 P20015F;
   label values P4RC4_7 P20015F;
   label values P4RC4_8 P20015F;
   label values P4RC4_9 P20015F;
   label values P4RC5_10 P20015F;
   label values P4RC5_11 P20015F;
   label values P4RC5_12 P20015F;
   label values P4RC5_13 P20015F;
   label values P4RC5_14 P20015F;
   label values P4RC5_15 P20015F;
   label values P4RC5_16 P20015F;
   label values P4RC5_17 P20015F;
   label values P4RC5_18 P20015F;
   label values P4RC5_19 P20015F;
   label values P4RC5_2 P20015F;
   label values P4RC5_3 P20015F;
   label values P4RC5_4 P20015F;
   label values P4RC5_5 P20015F;
   label values P4RC5_6 P20015F;
   label values P4RC5_7 P20015F;
   label values P4RC5_8 P20015F;
   label values P4RC5_9 P20015F;
   label values P4RC6_10 P20015F;
   label values P4RC6_11 P20015F;
   label values P4RC6_12 P20015F;
   label values P4RC6_13 P20015F;
   label values P4RC6_14 P20015F;
   label values P4RC6_15 P20015F;
   label values P4RC6_16 P20015F;
   label values P4RC6_17 P20015F;
   label values P4RC6_18 P20015F;
   label values P4RC6_19 P20015F;
   label values P4RC6_2 P20015F;
   label values P4RC6_3 P20015F;
   label values P4RC6_4 P20015F;
   label values P4RC6_5 P20015F;
   label values P4RC6_6 P20015F;
   label values P4RC6_7 P20015F;
   label values P4RC6_8 P20015F;
   label values P4RC6_9 P20015F;
   label values P4RC7_10 P20015F;
   label values P4RC7_11 P20015F;
   label values P4RC7_12 P20015F;
   label values P4RC7_13 P20015F;
   label values P4RC7_14 P20015F;
   label values P4RC7_15 P20015F;
   label values P4RC7_16 P20015F;
   label values P4RC7_17 P20015F;
   label values P4RC7_18 P20015F;
   label values P4RC7_19 P20015F;
   label values P4RC7_2 P20015F;
   label values P4RC7_3 P20015F;
   label values P4RC7_4 P20015F;
   label values P4RC7_5 P20015F;
   label values P4RC7_6 P20015F;
   label values P4RC7_7 P20015F;
   label values P4RC7_8 P20015F;
   label values P4RC7_9 P20015F;
   label values P2JOI_1 P20016F;
   label values P2JOI_10 P20016F;
   label values P2JOI_11 P20016F;
   label values P2JOI_12 P20016F;
   label values P2JOI_13 P20016F;
   label values P2JOI_14 P20016F;
   label values P2JOI_15 P20016F;
   label values P2JOI_16 P20016F;
   label values P2JOI_17 P20016F;
   label values P2JOI_2 P20016F;
   label values P2JOI_3 P20016F;
   label values P2JOI_4 P20016F;
   label values P2JOI_5 P20016F;
   label values P2JOI_6 P20016F;
   label values P2JOI_7 P20016F;
   label values P2JOI_8 P20016F;
   label values P2JOI_9 P20016F;
   label values P3JOI_1 P20016F;
   label values P3JOI_10 P20016F;
   label values P3JOI_11 P20016F;
   label values P3JOI_12 P20016F;
   label values P3JOI_13 P20016F;
   label values P3JOI_14 P20016F;
   label values P3JOI_15 P20016F;
   label values P3JOI_2 P20016F;
   label values P3JOI_3 P20016F;
   label values P3JOI_4 P20016F;
   label values P3JOI_5 P20016F;
   label values P3JOI_6 P20016F;
   label values P3JOI_7 P20016F;
   label values P3JOI_8 P20016F;
   label values P3JOI_9 P20016F;
   label values P4JOI_1 P20016F;
   label values P4JOI_10 P20016F;
   label values P4JOI_11 P20016F;
   label values P4JOI_12 P20016F;
   label values P4JOI_13 P20016F;
   label values P4JOI_14 P20016F;
   label values P4JOI_15 P20016F;
   label values P4JOI_16 P20016F;
   label values P4JOI_17 P20016F;
   label values P4JOI_18 P20016F;
   label values P4JOI_19 P20016F;
   label values P4JOI_2 P20016F;
   label values P4JOI_3 P20016F;
   label values P4JOI_4 P20016F;
   label values P4JOI_5 P20016F;
   label values P4JOI_6 P20016F;
   label values P4JOI_7 P20016F;
   label values P4JOI_8 P20016F;
   label values P4JOI_9 P20016F;
   label values P2CHPLAC P2002F;
   label values P2FALLNW P2002F;
   label values P2CITIZN P2004F;
   label values P2ANYLNG P2005F;
   label values P2BIOLOG P2005F;
   label values P2CPREK P2005F;
   label values P2DIFFHR P2005F;
   label values P2HSDIPL P2005F;
   label values P2HSPREK P2005F;
   label values P2NPREK P2005F;
   label values P2PREMAT P2005F;
   label values P2PRTDIP P2005F;
   label values P2RPREK P2005F;
   label values P2SAMETW P2005F;
   label values P2SIGHT P2005F;
   label values P2THER10 P2005F;
   label values P2THER11 P2005F;
   label values P2THER12 P2005F;
   label values P2THER13 P2005F;
   label values P2THERA2 P2005F;
   label values P2THERA3 P2005F;
   label values P2THERA4 P2005F;
   label values P2THERA5 P2005F;
   label values P2THERA6 P2005F;
   label values P2THERA7 P2005F;
   label values P2THERA8 P2005F;
   label values P2THERA9 P2005F;
   label values P2THERAP P2005F;
   label values P2WEIGH5 P2005F;
   label values P2WEIGH6 P2005F;
   label values P2WICCHD P2005F;
   label values P2WICMOM P2005F;
   label values P2EARDAY P2009F;
   label values P2CORREC P2010F;
   label values P2THER15 P2012F;
   label values P2PRMLNG P2013F;
   label values P2SEX_1 P20147F;
   label values P3SEX_1 P20147F;
   label values P4SEX_1 P20147F;
   label values P2REL_1 P20148F;
   label values P3REL_1 P20148F;
   label values P4REL_1 P20148F;
   label values P2RC1_1 P20149F;
   label values P2RC2_1 P20149F;
   label values P2RC3_1 P20149F;
   label values P2RC4_1 P20149F;
   label values P2RC5_1 P20149F;
   label values P2RC6_1 P20149F;
   label values P3RC1_1 P20149F;
   label values P3RC2_1 P20149F;
   label values P3RC3_1 P20149F;
   label values P3RC4_1 P20149F;
   label values P3RC5_1 P20149F;
   label values P3RC6_1 P20149F;
   label values P4RC1_1 P20149F;
   label values P4RC2_1 P20149F;
   label values P4RC3_1 P20149F;
   label values P4RC4_1 P20149F;
   label values P4RC5_1 P20149F;
   label values P4RC6_1 P20149F;
   label values P4RC7_1 P20149F;
   label values P2HIGHGR P2014F;
   label values P2RDP_1 P20150F;
   label values P2RDP_10 P20150F;
   label values P2RDP_11 P20150F;
   label values P2RDP_12 P20150F;
   label values P2RDP_13 P20150F;
   label values P2RDP_14 P20150F;
   label values P2RDP_15 P20150F;
   label values P2RDP_16 P20150F;
   label values P2RDP_17 P20150F;
   label values P2RDP_2 P20150F;
   label values P2RDP_3 P20150F;
   label values P2RDP_4 P20150F;
   label values P2RDP_5 P20150F;
   label values P2RDP_6 P20150F;
   label values P2RDP_7 P20150F;
   label values P2RDP_8 P20150F;
   label values P2RDP_9 P20150F;
   label values P3RDP_1 P20150F;
   label values P3RDP_10 P20150F;
   label values P3RDP_11 P20150F;
   label values P3RDP_12 P20150F;
   label values P3RDP_13 P20150F;
   label values P3RDP_14 P20150F;
   label values P3RDP_15 P20150F;
   label values P3RDP_2 P20150F;
   label values P3RDP_3 P20150F;
   label values P3RDP_4 P20150F;
   label values P3RDP_5 P20150F;
   label values P3RDP_6 P20150F;
   label values P3RDP_7 P20150F;
   label values P3RDP_8 P20150F;
   label values P3RDP_9 P20150F;
   label values P4RDP_1 P20150F;
   label values P4RDP_10 P20150F;
   label values P4RDP_11 P20150F;
   label values P4RDP_12 P20150F;
   label values P4RDP_13 P20150F;
   label values P4RDP_14 P20150F;
   label values P4RDP_15 P20150F;
   label values P4RDP_16 P20150F;
   label values P4RDP_17 P20150F;
   label values P4RDP_18 P20150F;
   label values P4RDP_19 P20150F;
   label values P4RDP_2 P20150F;
   label values P4RDP_3 P20150F;
   label values P4RDP_4 P20150F;
   label values P4RDP_5 P20150F;
   label values P4RDP_6 P20150F;
   label values P4RDP_7 P20150F;
   label values P4RDP_8 P20150F;
   label values P4RDP_9 P20150F;
   label values P2HIGHSP P2015F;
   label values P2MOMWRK P2016F;
   label values P2ATTENB P2017F;
   label values P2CHSAME P2017F;
   label values P2PAR01 P2017F;
   label values P2PAR02 P2017F;
   label values P2PAR03 P2017F;
   label values P2PAR04 P2017F;
   label values P2PAR05 P2017F;
   label values P2PAR06 P2017F;
   label values P2PAR07 P2017F;
   label values P2PAR08 P2017F;
   label values P2PAR09 P2017F;
   label values P2PAR10 P2017F;
   label values P2PAR11 P2017F;
   label values P2PAR12 P2017F;
   label values P2PAR13 P2017F;
   label values P2PAR14 P2017F;
   label values P2PAR15 P2017F;
   label values P2PAR16 P2017F;
   label values P2PAR17 P2017F;
   label values P2PARINT P2017F;
   label values P2WHOAT P2018F;
   label values P2WHOAT2 P2018F;
   label values P2WHOAT3 P2018F;
   label values P2WHODID P2018F;
   label values P2WHOPRT P2018F;
   label values P2WHOVOL P2018F;
   label values P2WHOWEN P2018F;
   label values P2ATTENP P2020F;
   label values P2ATTENS P2020F;
   label values P2BROSIS P2020F;
   label values P2CANTGT P2020F;
   label values P2ESNEW P2020F;
   label values P2FUNDRS P2020F;
   label values P2LANGOE P2020F;
   label values P2MEETTM P2020F;
   label values P2NOCARE P2020F;
   label values P2NOTWEL P2020F;
   label values P2PARADV P2020F;
   label values P2PARGRP P2020F;
   label values P2PROBLM P2020F;
   label values P2SAFEGO P2020F;
   label values P2THINGS P2020F;
   label values P2VOLUNT P2020F;
   label values P2CHANCV P2027F;
   label values P2CHILDR P2027F;
   label values P2COMMUN P2027F;
   label values P2HOWCHD P2027F;
   label values P2WRKSHP P2027F;
   label values P2DISTHM P2028F;
   label values P2TEACHI P2029F;
   label values P2HOWGET P2031F;
   label values P2ARTCRF P2032F;
   label values P2ARTPRG P2032F;
   label values P2ATHLET P2032F;
   label values P2CLUB P2032F;
   label values P2CONCRT P2032F;
   label values P2CRAFTS P2032F;
   label values P2DANCE P2032F;
   label values P2DRAMA P2032F;
   label values P2HOMECM P2032F;
   label values P2LIBRAR P2032F;
   label values P2MUSEUM P2032F;
   label values P2MUSIC P2032F;
   label values P2NOENGL P2032F;
   label values P2NONEDU P2032F;
   label values P2ORGANZ P2032F;
   label values P2SPORT P2032F;
   label values P2TCHMAT P2032F;
   label values P2ZOO P2032F;
   label values P2CHLPIC P2033F;
   label values P2CHREAD P2033F;
   label values P2COMPWK P2033F;
   label values P2SAFEPL P2034F;
   label values P2BURGLR P2035F;
   label values P2DRUG P2035F;
   label values P2GARBAG P2035F;
   label values P2VACANT P2035F;
   label values P2VIOLEN P2035F;
   label values P2GOTOBD P2040F;
   label values P2CULTUR P2045F;
   label values P2ETHNIC P2045F;
   label values P2RELIG P2045F;
   label values P2MARRIG P2046F;
   label values P2DISCUS P2047F;
   label values P2EXCHID P2047F;
   label values P2LAUGH P2047F;
   label values P2TELLTR P2047F;
   label values P2WRKTOG P2047F;
   label values P2ARGAFF P2048F;
   label values P2ARGCHD P2048F;
   label values P2ARGCHO P2048F;
   label values P2ARGDRK P2048F;
   label values P2ARGHEA P2048F;
   label values P2ARGINL P2048F;
   label values P2ARGLSR P2048F;
   label values P2ARGMON P2048F;
   label values P2ARGOTH P2048F;
   label values P2ARGREL P2048F;
   label values P2ARGSEX P2048F;
   label values P2DISCU2 P2048F;
   label values P2HITCHR P2048F;
   label values P2OPINIO P2048F;
   label values P2DADHM2 P2049F;
   label values P2DADHOM P2049F;
   label values P2CSCRT P2050F;
   label values P2CSINF P2050F;
   label values P2CSNOAG P2050F;
   label values P2CSOTH P2050F;
   label values P2CSPEN P2050F;
   label values P2CSWRT P2050F;
   label values P2AGREE1 P2051F;
   label values P2AGREE2 P2051F;
   label values P2AGREE3 P2051F;
   label values P2AGREE4 P2051F;
   label values P2PAYREG P2052F;
   label values P2RECPAY P2052F;
   label values P2ATMNR1 P2053F;
   label values P2ATMNR3 P2053F;
   label values P2ATTNR1 P2053F;
   label values P2ATTNR3 P2053F;
   label values P2CHI_N1 P2053F;
   label values P2CHI_N3 P2053F;
   label values P2CRT_N3 P2053F;
   label values P2LEGLN3 P2053F;
   label values P2MEETN1 P2053F;
   label values P2MEETN3 P2053F;
   label values P2MISSN1 P2053F;
   label values P2MISSN3 P2053F;
   label values P2VOL_N1 P2053F;
   label values P2VOL_N3 P2053F;
   label values P2CTP_N1 P2054F;
   label values P2CTP_N3 P2054F;
   label values P2MIN_N1 P2059F;
   label values P2MIN_N3 P2059F;
   label values P2PAR_N1 P2060F;
   label values P2PAR_N3 P2060F;
   label values P2ATMNR2 P2061F;
   label values P2ATMNR4 P2061F;
   label values P2ATTNR2 P2061F;
   label values P2ATTNR4 P2061F;
   label values P2CHI_N2 P2061F;
   label values P2CHI_N4 P2061F;
   label values P2MEETN2 P2061F;
   label values P2MEETN4 P2061F;
   label values P2MISSN2 P2061F;
   label values P2MISSN4 P2061F;
   label values P2VOL_N2 P2061F;
   label values P2VOL_N4 P2061F;
   label values P2CTP_N2 P2062F;
   label values P2CTP_N4 P2062F;
   label values P2MIN_N2 P2067F;
   label values P2MIN_N4 P2067F;
   label values P2PAR_N2 P2068F;
   label values P2PAR_N4 P2068F;
   label values P2BEPARN P2077F;
   label values P2CHDOES P2077F;
   label values P2CHHARD P2077F;
   label values P2CHLIKE P2077F;
   label values P2EXPRES P2077F;
   label values P2FEELAN P2077F;
   label values P2FLTRAP P2077F;
   label values P2HRDWRM P2077F;
   label values P2MEETND P2077F;
   label values P2MOREWK P2077F;
   label values P2SHOWLV P2077F;
   label values P2TOOBUS P2077F;
   label values P2WARMCL P2077F;
   label values P2HITAPO P2080F;
   label values P2HITBCK P2080F;
   label values P2HITCHO P2080F;
   label values P2HITDIS P2080F;
   label values P2HITFUN P2080F;
   label values P2HITIGN P2080F;
   label values P2HITOTH P2080F;
   label values P2HITPRV P2080F;
   label values P2HITTO P2080F;
   label values P2HITWAR P2080F;
   label values P2HITYEL P2080F;
   label values P2TVRUL2 P2080F;
   label values P2TVRUL3 P2080F;
   label values P2TVRULE P2080F;
   label values P2HITSPK P2082F;
   label values P2DENTIS P2083F;
   label values P2DOCTOR P2083F;
   label values P2CHURCH P2084F;
   label values P2COVER P2084F;
   label values P2CUBSCT P2084F;
   label values P2FRMCLB P2084F;
   label values P2HLTHCL P2084F;
   label values P2PUBPRK P2084F;
   label values P2SPECND P2084F;
   label values P2SPTEAM P2084F;
   label values P2TYPAC1 P2084F;
   label values P2TYPAC2 P2084F;
   label values P2TYPAC3 P2084F;
   label values P2TYPAC4 P2084F;
   label values P2TYPAC5 P2084F;
   label values P2TYPAC6 P2084F;
   label values P2TYPAC7 P2084F;
   label values P2TYPAC8 P2084F;
   label values P2YMCA P2084F;
   label values P2PHYACT P2085F;
   label values P2STRUCT P2085F;
   label values P2AEROBI P2086F;
   label values P2CHA_B P2088F;
   label values P2RATESP P2089F;
   label values P2APPETI P2090F;
   label values P2BLUE P2090F;
   label values P2BOTHER P2090F;
   label values P2DEPRES P2090F;
   label values P2EFFORT P2090F;
   label values P2FEARFL P2090F;
   label values P2KPMIND P2090F;
   label values P2LONELY P2090F;
   label values P2NOTGO P2090F;
   label values P2RESTLS P2090F;
   label values P2SAD P2090F;
   label values P2TALKLS P2090F;
   label values P2HEALTH P2091F;
   label values P2BFNDHP P2092F;
   label values P2BFRVHP P2092F;
   label values P2IMPAIR P2092F;
   label values P2LIMITW P2092F;
   label values P2RPNDHP P2092F;
   label values P2RPRVHP P2092F;
   label values P2SFNDHP P2092F;
   label values P2SFRVHP P2092F;
   label values P2FOODHH P2093F;
   label values P2CHIEVR P2094F;
   label values P2CHSKIP P2094F;
   label values P2CUTML P2094F;
   label values P2EATLES P2094F;
   label values P2EVCUT2 P2094F;
   label values P2FCAVAL P2094F;
   label values P2FCDIET P2094F;
   label values P2FCMON P2094F;
   label values P2FCQUAL P2094F;
   label values P2FCSTR P2094F;
   label values P2HUNGRY P2094F;
   label values P2LOSEWT P2094F;
   label values P2NFCOOK P2094F;
   label values P2NFDIET P2094F;
   label values P2NFMON P2094F;
   label values P2NFSTR P2094F;
   label values P2NFSTV P2094F;
   label values P2NOMONY P2094F;
   label values P2NOTEAT P2094F;
   label values P2BLMEAL P2095F;
   label values P2CANTAF P2095F;
   label values P2FDLAST P2095F;
   label values P2LOWCST P2095F;
   label values P2NOBAL P2095F;
   label values P2WORRFD P2095F;
   label values P2EVCUT P2096F;
   label values P2NOTEA2 P2096F;
   label values P2OFTCUT P2096F;
   label values P2AFDC P2097F;
   label values P2DAYCAR P2097F;
   label values P2FSTAMP P2097F;
   label values P2SCHLBK P2097F;
   label values P2SCHLLU P2097F;
   label values P2CHIEAT P2100F;
   label values P2LUNCHS P2100F;
   label values P2RLUNCH P2100F;
   label values P2FREERD P2101F;
   label values P2HILOW P2106F;
   label values P2INCLOW P2107F;
   label values P2INCHI P2108F;
   label values P2TUITIO P2109F;
   label values P2MODE P2111F;
   label values P2LANGUA P2112F;
   label values P2FSSTAT P2FSSTAT;
   label values P2NUMTV P2NUMTVF;
   label values P3ANYLNG P3001F;
   label values P3BIOLOG P3001F;
   label values P3CPREK P3001F;
   label values P3DIFFHR P3001F;
   label values P3HSDIPL P3001F;
   label values P3HSPREK P3001F;
   label values P3NPREK P3001F;
   label values P3PREMAT P3001F;
   label values P3PRTDIP P3001F;
   label values P3RPREK P3001F;
   label values P3SAMETW P3001F;
   label values P3SIGHT P3001F;
   label values P3THER10 P3001F;
   label values P3THER11 P3001F;
   label values P3THER12 P3001F;
   label values P3THER13 P3001F;
   label values P3THERA2 P3001F;
   label values P3THERA3 P3001F;
   label values P3THERA4 P3001F;
   label values P3THERA5 P3001F;
   label values P3THERA6 P3001F;
   label values P3THERA7 P3001F;
   label values P3THERA8 P3001F;
   label values P3THERA9 P3001F;
   label values P3THERAP P3001F;
   label values P3WEIGH5 P3001F;
   label values P3WEIGH6 P3001F;
   label values P3WICCHD P3001F;
   label values P3WICMOM P3001F;
   label values P3EARDAY P3005F;
   label values P4EARDAY P3005F;
   label values P3CORREC P3006F;
   label values P3THER15 P3008F;
   label values P3PRMLNG P3009F;
   label values P4PRMLNG P3009F;
   label values P3HIGHGR P3010F;
   label values P3HIGHSP P3011F;
   label values P3MOMWRK P3012F;
   label values P4MOMWRK P3012F;
   label values P3AMUSPK P3013F;
   label values P3ARTSCI P3013F;
   label values P3ATTBTS P3013F;
   label values P3BEACH P3013F;
   label values P3CHLVDO P3013F;
   label values P3CMPACA P3013F;
   label values P3CMPART P3013F;
   label values P3CMPCPT P3013F;
   label values P3CMPFTP P3013F;
   label values P3CMPGAM P3013F;
   label values P3CMPMUS P3013F;
   label values P3CMPNAT P3013F;
   label values P3CMPPER P3013F;
   label values P3CMPSPT P3013F;
   label values P3CRTOON P3013F;
   label values P3DANCEL P3013F;
   label values P3DAYCAR P3013F;
   label values P3DCREG P3013F;
   label values P3DONCMP P3013F;
   label values P3EDUPRM P3013F;
   label values P3ELYLAT P3013F;
   label values P3HISTOR P3013F;
   label values P3IDSPRT P3013F;
   label values P3LRGCTY P3013F;
   label values P3MUSICL P3013F;
   label values P3NEWSHO P3013F;
   label values P3NRLCAR P3013F;
   label values P3NRLREG P3013F;
   label values P3NTPARK P3013F;
   label values P3OTHTRP P3013F;
   label values P3PHYTRP P3013F;
   label values P3PLYCRT P3013F;
   label values P3PRMWCH P3013F;
   label values P3PSYTRP P3013F;
   label values P3RELCAR P3013F;
   label values P3RELREG P3013F;
   label values P3SAMTCH P3013F;
   label values P3SCHSRV P3013F;
   label values P3SCOUT P3013F;
   label values P3SITCOM P3013F;
   label values P3SMART P3013F;
   label values P3SMCMPT P3013F;
   label values P3SMDANC P3013F;
   label values P3SMLANG P3013F;
   label values P3SMMATH P3013F;
   label values P3SMMUSI P3013F;
   label values P3SMREAD P3013F;
   label values P3SMSCI P3013F;
   label values P3SMSOC P3013F;
   label values P3SMSPRT P3013F;
   label values P3SOAPS P3013F;
   label values P3SPCTRP P3013F;
   label values P3SPORTS P3013F;
   label values P3SRVSUM P3013F;
   label values P3STHBKS P3013F;
   label values P3STHLIB P3013F;
   label values P3SUMSCH P3013F;
   label values P3SUMVAC P3013F;
   label values P3SWIML P3013F;
   label values P3TLKSHO P3013F;
   label values P3TMSPRT P3013F;
   label values P3TUTOR P3013F;
   label values P3TVNMHW P3013F;
   label values P3TVNUMH P3013F;
   label values P3TWCARE P3013F;
   label values P3TWNCMP P3013F;
   label values P3TWNSCH P3013F;
   label values P3TWNTUT P3013F;
   label values P3TWNVAC P3013F;
   label values P3VAC2WK P3013F;
   label values P3ZOOS P3013F;
   label values P3BGCLUB P3014F;
   label values P3BKLIST P3014F;
   label values P3BTSNGT P3014F;
   label values P3CMASSN P3014F;
   label values P3CMPARK P3014F;
   label values P3CMPOOL P3014F;
   label values P3LIBRAR P3014F;
   label values P3PREPFG P3014F;
   label values P3RECCTR P3014F;
   label values P3SMRACT P3014F;
   label values P4LIBRAR P3014F;
   label values P3LRNMTH P3015F;
   label values P3LRNRDG P3015F;
   label values P3EXPECT P3016F;
   label values P4EXPECT P3016F;
   label values P3LTOTMM P3017F;
   label values P3STRTMM P3019F;
   label values P3ATCAMP P3022F;
   label values P3OTHPLA P3022F;
   label values P3TUTLAN P3022F;
   label values P3TUTMTH P3022F;
   label values P3TUTOTH P3022F;
   label values P3TUTREA P3022F;
   label values P3TUTSCI P3022F;
   label values P3WPAREN P3022F;
   label values P3WRELAT P3022F;
   label values P4TUTLNG P3022F;
   label values P4TUTMTH P3022F;
   label values P4TUTOTH P3022F;
   label values P4TUTRDG P3022F;
   label values P4TUTSCI P3022F;
   label values P3COMEDU P3023F;
   label values P3COMGAM P3023F;
   label values P3CRDGAM P3023F;
   label values P3DOARTS P3023F;
   label values P3DOMATH P3023F;
   label values P3DOWRIT P3023F;
   label values P3FAMCHO P3023F;
   label values P3OUTACT P3023F;
   label values P3PRTPLY P3023F;
   label values P3RDBKTC P3023F;
   label values P3HWLGRD P3024F;
   label values P3RDALON P3025F;
   label values P3CHLPRM P3026F;
   label values P3DISCTV P3037F;
   label values P3FAMWCH P3037F;
   label values P3PRSTMM P3041F;
   label values P3PREDMM P3043F;
   label values P3SMREQ P3047F;
   label values P3NRLNUM P3055F;
   label values P3RELNUM P3055F;
   label values P4RELNUM P3055F;
   label values P3RELMST P3056F;
   label values P3NRLPLA P3057F;
   label values P3RELPLA P3057F;
   label values P3DCNUMB P3066F;
   label values P3MODE P3071F;
   label values P4MODE P3071F;
   label values P3LANGUA P3072F;
   label values P4LANGUA P3072F;
   label values P3REAS10 P3REASL;
   label values P3REAS11 P3REASL;
   label values P3REAS12 P3REASL;
   label values P3REAS13 P3REASL;
   label values P3REAS14 P3REASL;
   label values P3REAS15 P3REASL;
   label values P3REASL1 P3REASL;
   label values P3REASL2 P3REASL;
   label values P3REASL3 P3REASL;
   label values P3REASL4 P3REASL;
   label values P3REASL5 P3REASL;
   label values P3REASL6 P3REASL;
   label values P3REASL7 P3REASL;
   label values P3REASL8 P3REASL;
   label values P3REASL9 P3REASL;
   label values P4ANYLNG P4001F;
   label values P4BIOLOG P4001F;
   label values P4CCEMP P4001F;
   label values P4CCFEE P4001F;
   label values P4CCREL P4001F;
   label values P4CCWEL P4001F;
   label values P4COMMUN P4001F;
   label values P4DBEFK P4001F;
   label values P4DIFFHR P4001F;
   label values P4ENR_1 P4001F;
   label values P4ENR_2 P4001F;
   label values P4FRHRWK P4001F;
   label values P4FRNUMH P4001F;
   label values P4HSBEFK P4001F;
   label values P4KIND98 P4001F;
   label values P4NCBEFK P4001F;
   label values P4NCEMP P4001F;
   label values P4NCFEE P4001F;
   label values P4NCREL P4001F;
   label values P4NCWEL P4001F;
   label values P4NDEG_1 P4001F;
   label values P4NDEG_2 P4001F;
   label values P4PAR01 P4001F;
   label values P4PAR02 P4001F;
   label values P4PAR03 P4001F;
   label values P4PAR04 P4001F;
   label values P4PAR05 P4001F;
   label values P4PAR06 P4001F;
   label values P4PAR07 P4001F;
   label values P4PAR08 P4001F;
   label values P4PAR09 P4001F;
   label values P4PAR10 P4001F;
   label values P4PAR11 P4001F;
   label values P4PAR12 P4001F;
   label values P4PAR13 P4001F;
   label values P4PAR14 P4001F;
   label values P4PAR15 P4001F;
   label values P4PAR16 P4001F;
   label values P4PAR17 P4001F;
   label values P4PREMAT P4001F;
   label values P4RCBEFK P4001F;
   label values P4RCEMP P4001F;
   label values P4RCFEE P4001F;
   label values P4RCREL P4001F;
   label values P4RCWEL P4001F;
   label values P4RSVTSY P4001F;
   label values P4SAMETW P4001F;
   label values P4SAMTCH P4001F;
   label values P4SCONWK P4001F;
   label values P4STRCSV P4001F;
   label values P4THER10 P4001F;
   label values P4THER11 P4001F;
   label values P4THERA2 P4001F;
   label values P4THERA3 P4001F;
   label values P4THERA4 P4001F;
   label values P4THERA5 P4001F;
   label values P4THERA6 P4001F;
   label values P4THERA7 P4001F;
   label values P4THERA8 P4001F;
   label values P4THERA9 P4001F;
   label values P4THERAP P4001F;
   label values P4TRN_1 P4001F;
   label values P4TRN_2 P4001F;
   label values P4TWNCAR P4001F;
   label values P4VLIBLY P4001F;
   label values P4WEIGH5 P4001F;
   label values P4WEIGH6 P4001F;
   label values P4WICCHD P4001F;
   label values P4WICMOM P4001F;
   label values P4BETSCH P4002F;
   label values P4BOUHOU P4002F;
   label values P4EVICT P4002F;
   label values P4FAMPRB P4002F;
   label values P4HOMSCH P4002F;
   label values P4IMMFAM P4002F;
   label values P4LESEXP P4002F;
   label values P4MILFAM P4002F;
   label values P4NATKOT P4002F;
   label values P4NICEHO P4002F;
   label values P4NTATTK P4002F;
   label values P4OLDHOU P4002F;
   label values P4PROMOT P4002F;
   label values P4RELOCA P4002F;
   label values P4RETAIN P4002F;
   label values P4SAFEA P4002F;
   label values P4MSCOUS P4005F;
   label values P4ASIAGP P4006F;
   label values P4CBIRTH P4006F;
   label values P4DADCOB P4006F;
   label values P4HISPGP P4006F;
   label values P4MOMCOB P4006F;
   label values P4PACIGP P4006F;
   label values P5DADCOB P4006F;
   label values P5MOMCOB P4006F;
   label values P4AGOVPG P4008F;
   label values P4ATTENB P4008F;
   label values P4ATTENP P4008F;
   label values P4ATTENS P4008F;
   label values P4CANTGT P4008F;
   label values P4CHIP P4008F;
   label values P4CLBCRD P4008F;
   label values P4FUNDRS P4008F;
   label values P4LANGOE P4008F;
   label values P4MEDAID P4008F;
   label values P4MEETTM P4008F;
   label values P4MILHEA P4008F;
   label values P4NOCARE P4008F;
   label values P4NOINSU P4008F;
   label values P4NOTWEL P4008F;
   label values P4PARGRP P4008F;
   label values P4PARINT P4008F;
   label values P4PRIINS P4008F;
   label values P4PROBLM P4008F;
   label values P4RLBCRD P4008F;
   label values P4SAFEGO P4008F;
   label values P4SELFCA P4008F;
   label values P4SIGHT P4008F;
   label values P4THINGS P4008F;
   label values P4TUTOR P4008F;
   label values P4TVHOME P4008F;
   label values P4VOLUNT P4008F;
   label values P4WHOAT P4009F;
   label values P4WHOAT2 P4009F;
   label values P4WHOAT3 P4009F;
   label values P4WHODID P4009F;
   label values P4WHOPRT P4009F;
   label values P4WHOVOL P4009F;
   label values P4CHANCV P4010F;
   label values P4CHILDR P4010F;
   label values P4HOWCHD P4010F;
   label values P4WRKSHP P4010F;
   label values P4MTEACH P4012F;
   label values P4BELMTH P4014F;
   label values P4BELRDG P4014F;
   label values P4HMWORK P4015F;
   label values P4HLPHWK P4016F;
   label values P4BUILD P4017F;
   label values P4CHORES P4017F;
   label values P4GAMES P4017F;
   label values P4HELPAR P4017F;
   label values P4NATURE P4017F;
   label values P4RDWRNM P4017F;
   label values P4READBO P4017F;
   label values P4SINGSO P4017F;
   label values P4SPORT P4017F;
   label values P4TELLST P4017F;
   label values P4CHREAD P4020F;
   label values P4ARTCRF P4021F;
   label values P4ATHLET P4021F;
   label values P4CLUB P4021F;
   label values P4DANCE P4021F;
   label values P4HOMECM P4021F;
   label values P4MUSIC P4021F;
   label values P4ORGANZ P4021F;
   label values P4COMPWK P4022F;
   label values P4CMPEDU P4023F;
   label values P4GOTOBD P4028F;
   label values P4TIMEAP P4031F;
   label values P4SAFEPL P4032F;
   label values P4RRELSV P4033F;
   label values P4SRELSV P4034F;
   label values P4ADVICE P4035F;
   label values P4CASH P4035F;
   label values P4CHPRSC P4035F;
   label values P4CHSICK P4035F;
   label values P4ERRAND P4035F;
   label values P4RIDEDC P4035F;
   label values P4CTRNOW P4036F;
   label values P4NRNOW P4036F;
   label values P4PAY_1 P4036F;
   label values P4RELNOW P4036F;
   label values P4RELTV P4037F;
   label values P4NPLACE P4038F;
   label values P4RPLACE P4038F;
   label values P4CBEFOR P4039F;
   label values P4CFTER P4039F;
   label values P4CWKEND P4039F;
   label values P4NAFTER P4039F;
   label values P4NBEFOR P4039F;
   label values P4NWKEND P4039F;
   label values P4RAFTER P4039F;
   label values P4RBEFOR P4039F;
   label values P4RWKEND P4039F;
   label values P4CTRK P4040F;
   label values P4CWEEK P4040F;
   label values P4LOK_1 P4040F;
   label values P4LOK_2 P4040F;
   label values P4NWEEK P4040F;
   label values P4PAY_2 P4040F;
   label values P4RWEEK P4040F;
   label values P4TAK_1 P4040F;
   label values P4TAK_2 P4040F;
   label values P4VAC_1 P4040F;
   label values P4VAC_2 P4040F;
   label values P4CCCSTU P4046F;
   label values P4NCCSTU P4046F;
   label values P4RCCSTU P4046F;
   label values P4CCCH P4047F;
   label values P4NCCH P4047F;
   label values P4RCCH P4047F;
   label values P4CTRNUM P4050F;
   label values P4NRNUM P4050F;
   label values P4ATMNR1 P4066F;
   label values P4ATMNR3 P4066F;
   label values P4ATTNR1 P4066F;
   label values P4ATTNR3 P4066F;
   label values P4CHI_N1 P4066F;
   label values P4CHI_N3 P4066F;
   label values P4LEGLN2 P4066F;
   label values P4MEETN1 P4066F;
   label values P4MEETN3 P4066F;
   label values P4VOL_N1 P4066F;
   label values P4VOL_N3 P4066F;
   label values P4CTP_N1 P4067F;
   label values P4CTP_N2 P4067F;
   label values P4CTP_N3 P4067F;
   label values P4MIN_N1 P4069F;
   label values P4MIN_N2 P4069F;
   label values P4MIN_N3 P4069F;
   label values P4PAR_N1 P4070F;
   label values P4PAR_N2 P4070F;
   label values P4PAR_N3 P4070F;
   label values P4AGREE1 P4071F;
   label values P4AGREE2 P4071F;
   label values P4AGREE3 P4071F;
   label values P4AGREE4 P4071F;
   label values P4ATMNR2 P4071F;
   label values P4ATTNR2 P4071F;
   label values P4CHI_N2 P4071F;
   label values P4MEETN2 P4071F;
   label values P4VOL_N2 P4071F;
   label values P4ATMNR4 P4074F;
   label values P4ATTNR4 P4074F;
   label values P4CHI_N4 P4074F;
   label values P4MEETN4 P4074F;
   label values P4VOL_N4 P4074F;
   label values P4CTP_N4 P4075F;
   label values P4MIN_N4 P4077F;
   label values P4PAR_N4 P4078F;
   label values P4CSCRT P4079F;
   label values P4CSINF P4079F;
   label values P4CSNOAG P4079F;
   label values P4CSOTH P4079F;
   label values P4CSPEN P4079F;
   label values P4CSWRT P4079F;
   label values P4PAYREG P4080F;
   label values P4RECPAY P4080F;
   label values P4TVRUL2 P4093F;
   label values P4TVRULE P4093F;
   label values P4FRIEND P4094F;
   label values P4IMPATN P4094F;
   label values P4LISTEN P4094F;
   label values P4OPINIO P4094F;
   label values P4TROUBL P4094F;
   label values P4WORRY P4094F;
   label values P4SAMEAG P4095F;
   label values P4ATTENI P4096F;
   label values P4BEHAVE P4096F;
   label values P4PRONOU P4096F;
   label values P4SOLVE P4096F;
   label values P4ACTIV2 P4097F;
   label values P4COMMU2 P4097F;
   label values P4DIAGNO P4097F;
   label values P4DIFFH3 P4097F;
   label values P4EVALUA P4097F;
   label values P4RESPON P4097F;
   label values P4VISIO2 P4097F;
   label values P4LRSRVM P4098F;
   label values P4MMDIAG P4098F;
   label values P4ACTIVE P4099F;
   label values P4MMDIA2 P4100F;
   label values P4MMDIA4 P4101F;
   label values P4DIFFH2 P4102F;
   label values P4VISION P4102F;
   label values P4MMDIA5 P4103F;
   label values P4DIA6MM P4104F;
   label values P4HSCALE P4105F;
   label values P4SVHELP P4107F;
   label values P4DENTIS P4108F;
   label values P4DOCTOR P4108F;
   label values P4DEGT_1 P4110F;
   label values P4DEGT_2 P4110F;
   label values P4FPT_1 P4111F;
   label values P4FPT_2 P4111F;
   label values P4DO1_1 P4118F;
   label values P4DO1_2 P4118F;
   label values P4DO2_1 P4118F;
   label values P4DO2_2 P4118F;
   label values P4DO3_1 P4118F;
   label values P4DO3_2 P4118F;
   label values P4DO4_1 P4118F;
   label values P4DO4_2 P4118F;
   label values P4DO5_1 P4118F;
   label values P4DO5_2 P4118F;
   label values P4DO6_1 P4118F;
   label values P4DO6_2 P4118F;
   label values P4DO7_1 P4118F;
   label values P4DO7_2 P4118F;
   label values P4DOW_1 P4119F;
   label values P4DOW_2 P4119F;
   label values P4AFDC P4123F;
   label values P4FSTAMP P4123F;
   label values P4SCHLBK P4123F;
   label values P4SCHLLU P4123F;
   label values P4CHIEAT P4126F;
   label values P4LUNCHS P4126F;
   label values P4RLUNCH P4126F;
   label values P4FREERD P4127F;
   label values P4HILOW P4130F;
   label values P4INCCAT P4131F;
   label values P4TUITIO P4133F;
   label values P4HOUSIT P4135F;
   label values P4WHRITV P4138F;
   label values P4ASIABD P4ASIABD;
   label values P4HISPBD P4HISPBD;
   label values P4HDRACE P4HPRACE;
   label values P4PACIBD P4PACIBD;
   label values P4PRIMNW P4PRIMNW;
   label values P5HOWPAY P5C119F;
   label values P5FSCHST P5FSSTAT;
   label values P5FSSTAT P5FSSTAT;
   label values P5HDRACE P5HPRACE;
   label values P5INCCAT P5INCCAT;
   label values P5JOI_1 P5JOI;
   label values P5JOI_10 P5JOI;
   label values P5JOI_11 P5JOI;
   label values P5JOI_12 P5JOI;
   label values P5JOI_13 P5JOI;
   label values P5JOI_14 P5JOI;
   label values P5JOI_15 P5JOI;
   label values P5JOI_16 P5JOI;
   label values P5JOI_17 P5JOI;
   label values P5JOI_18 P5JOI;
   label values P5JOI_19 P5JOI;
   label values P5JOI_2 P5JOI;
   label values P5JOI_3 P5JOI;
   label values P5JOI_4 P5JOI;
   label values P5JOI_5 P5JOI;
   label values P5JOI_6 P5JOI;
   label values P5JOI_7 P5JOI;
   label values P5JOI_8 P5JOI;
   label values P5JOI_9 P5JOI;
   label values P5LANGUA P5LANGUA;
   label values P5DGBEMM P5MMDIAG;
   label values P5DGEMMM P5MMDIAG;
   label values P5DIA6MM P5MMDIAG;
   label values P5LRSRVM P5MMDIAG;
   label values P5MMDIA2 P5MMDIAG;
   label values P5MMDIA4 P5MMDIAG;
   label values P5MMDIA5 P5MMDIAG;
   label values P5MMDIAG P5MMDIAG;
   label values P5PER_1 P5PER;
   label values P5PER_10 P5PER;
   label values P5PER_11 P5PER;
   label values P5PER_12 P5PER;
   label values P5PER_13 P5PER;
   label values P5PER_14 P5PER;
   label values P5PER_15 P5PER;
   label values P5PER_16 P5PER;
   label values P5PER_17 P5PER;
   label values P5PER_18 P5PER;
   label values P5PER_19 P5PER;
   label values P5PER_2 P5PER;
   label values P5PER_3 P5PER;
   label values P5PER_4 P5PER;
   label values P5PER_5 P5PER;
   label values P5PER_6 P5PER;
   label values P5PER_7 P5PER;
   label values P5PER_8 P5PER;
   label values P5PER_9 P5PER;
   label values P5PRIMNW P5PRIMNW;
   label values P5RDP_1 P5RDP;
   label values P5RDP_10 P5RDP;
   label values P5RDP_11 P5RDP;
   label values P5RDP_12 P5RDP;
   label values P5RDP_13 P5RDP;
   label values P5RDP_14 P5RDP;
   label values P5RDP_15 P5RDP;
   label values P5RDP_16 P5RDP;
   label values P5RDP_17 P5RDP;
   label values P5RDP_18 P5RDP;
   label values P5RDP_19 P5RDP;
   label values P5RDP_2 P5RDP;
   label values P5RDP_3 P5RDP;
   label values P5RDP_4 P5RDP;
   label values P5RDP_5 P5RDP;
   label values P5RDP_6 P5RDP;
   label values P5RDP_7 P5RDP;
   label values P5RDP_8 P5RDP;
   label values P5RDP_9 P5RDP;
   label values P5RESREL P5RESREL;
   label values P6ABSDAD P6ABSDAD;
   label values P6ABSMOM P6ABSMOM;
   label values P6TIMEAP P6AMORPM;
   label values P6GOTOBD P6BEDTIM;
   label values P6BRO_1 P6BROTHE;
   label values P6BRO_10 P6BROTHE;
   label values P6BRO_11 P6BROTHE;
   label values P6BRO_12 P6BROTHE;
   label values P6BRO_13 P6BROTHE;
   label values P6BRO_14 P6BROTHE;
   label values P6BRO_15 P6BROTHE;
   label values P6BRO_2 P6BROTHE;
   label values P6BRO_3 P6BROTHE;
   label values P6BRO_4 P6BROTHE;
   label values P6BRO_5 P6BROTHE;
   label values P6BRO_6 P6BROTHE;
   label values P6BRO_7 P6BROTHE;
   label values P6BRO_8 P6BROTHE;
   label values P6BRO_9 P6BROTHE;
   label values P6CCCH P6CAREFO;
   label values P6NCCH P6CAREFO;
   label values P6RCCH P6CAREFO;
   label values P6CHREAD P6CHREAD;
   label values P6FTBRTH P6COB;
   label values P6MTHBTH P6COB;
   label values P6DADCOB P6COB2F;
   label values P6MOMCOB P6COB2F;
   label values P6ACTIVE P6COMPAA;
   label values P6ATTENI P6COMPAT;
   label values P6BEHAVE P6COMPAT;
   label values P6PRONOU P6COMPAT;
   label values P6SAMEAG P6COMPAT;
   label values P6SOLVE P6COMPAT;
   label values P6CTP_N1 P6CONTAC;
   label values P6CTP_N2 P6CONTAC;
   label values P6CTP_N3 P6CONTAC;
   label values P6CTP_N4 P6CONTAC;
   label values P6CUR_1 P6CUR;
   label values P6CUR_10 P6CUR;
   label values P6CUR_11 P6CUR;
   label values P6CUR_12 P6CUR;
   label values P6CUR_13 P6CUR;
   label values P6CUR_14 P6CUR;
   label values P6CUR_15 P6CUR;
   label values P6CUR_2 P6CUR;
   label values P6CUR_3 P6CUR;
   label values P6CUR_4 P6CUR;
   label values P6CUR_5 P6CUR;
   label values P6CUR_6 P6CUR;
   label values P6CUR_7 P6CUR;
   label values P6CUR_8 P6CUR;
   label values P6CUR_9 P6CUR;
   label values P6DADOCC P6DADOCC;
   label values P6DGNEMO P6DIAGNE;
   label values P6DAD_1 P6FATHER;
   label values P6DAD_10 P6FATHER;
   label values P6DAD_11 P6FATHER;
   label values P6DAD_12 P6FATHER;
   label values P6DAD_13 P6FATHER;
   label values P6DAD_14 P6FATHER;
   label values P6DAD_15 P6FATHER;
   label values P6DAD_2 P6FATHER;
   label values P6DAD_3 P6FATHER;
   label values P6DAD_4 P6FATHER;
   label values P6DAD_5 P6FATHER;
   label values P6DAD_6 P6FATHER;
   label values P6DAD_7 P6FATHER;
   label values P6DAD_8 P6FATHER;
   label values P6DAD_9 P6FATHER;
   label values P6FSADST P6FSADST;
   label values P6FSCHST P6FSCHST;
   label values P2FSSCAL P6FSSC2F;
   label values P5FSCHSC P6FSSC2F;
   label values P5FSSCAL P6FSSC2F;
   label values P6FSADSC P6FSSC2F;
   label values P6FSCHSC P6FSSC2F;
   label values P6FSSCAL P6FSSC2F;
   label values P7FSADSC P6FSSC2F;
   label values P7FSCHSC P6FSSC2F;
   label values P7FSSCAL P6FSSC2F;
   label values P6FSSTAT P6FSSTAT;
   label values P6FPT_1 P6FULLTI;
   label values P6FPT_2 P6FULLTI;
   label values P6DEGT_1 P6GRADES;
   label values P6DEGT_2 P6GRADES;
   label values P6MARRIG P6HAPPY;
   label values P6HDAD P6HDAD;
   label values P6HDEMP P6HDEMP;
   label values P6HFAMIL P6HFAMIL;
   label values P6HMEMP P6HMEMP;
   label values P6HMOM P6HMOM;
   label values P6WHOHLP P6HOMEWO;
   label values P6WHOHPM P6HOMEWO;
   label values P6AEROBI P6HOWACT;
   label values P6EXPECT P6HOWFAR;
   label values P6SVHELP P6HOWHEL;
   label values P6MIN_N1 P6HOWMAN;
   label values P6MIN_N2 P6HOWMAN;
   label values P6MIN_N3 P6HOWMAN;
   label values P6MIN_N4 P6HOWMAN;
   label values P6HOWPAY P6HOWPAY;
   label values P6CANTAF P6HOWTRF;
   label values P6BLMEAL P6HOWTRU;
   label values P6FDLAST P6HOWTRU;
   label values P6LOWCST P6HOWTRU;
   label values P6NOBAL P6HOWTRU;
   label values P6WORRFD P6HOWTRU;
   label values P6HEALTH P6HOWWET;
   label values P6HPARNT P6HPARNT;
   label values P6HSCALE P6HSCALE;
   label values P6INCCAT P6INCCAT;
   label values P6HILOW P6INCOME;
   label values P6LANGUA P6INTERV;
   label values P6JOI_1 P6JOI;
   label values P6JOI_10 P6JOI;
   label values P6JOI_11 P6JOI;
   label values P6JOI_12 P6JOI;
   label values P6JOI_13 P6JOI;
   label values P6JOI_14 P6JOI;
   label values P6JOI_15 P6JOI;
   label values P6JOI_2 P6JOI;
   label values P6JOI_3 P6JOI;
   label values P6JOI_4 P6JOI;
   label values P6JOI_5 P6JOI;
   label values P6JOI_6 P6JOI;
   label values P6JOI_7 P6JOI;
   label values P6JOI_8 P6JOI;
   label values P6JOI_9 P6JOI;
   label values P6DOW_1 P6LASTWE;
   label values P6DOW_2 P6LASTWE;
   label values P6SEX_1 P6MALEFE;
   label values P6SEX_10 P6MALEFE;
   label values P6SEX_11 P6MALEFE;
   label values P6SEX_12 P6MALEFE;
   label values P6SEX_13 P6MALEFE;
   label values P6SEX_14 P6MALEFE;
   label values P6SEX_15 P6MALEFE;
   label values P6SEX_2 P6MALEFE;
   label values P6SEX_3 P6MALEFE;
   label values P6SEX_4 P6MALEFE;
   label values P6SEX_5 P6MALEFE;
   label values P6SEX_6 P6MALEFE;
   label values P6SEX_7 P6MALEFE;
   label values P6SEX_8 P6MALEFE;
   label values P6SEX_9 P6MALEFE;
   label values P6CURMAR P6MARITA;
   label values P6MODE P6MODE;
   label values P6MOMOCC P6MOMOCC;
   label values P6CHA_B P6MORELI;
   label values P6MOM_1 P6MOTHER;
   label values P6MOM_10 P6MOTHER;
   label values P6MOM_11 P6MOTHER;
   label values P6MOM_12 P6MOTHER;
   label values P6MOM_13 P6MOTHER;
   label values P6MOM_14 P6MOTHER;
   label values P6MOM_15 P6MOTHER;
   label values P6MOM_2 P6MOTHER;
   label values P6MOM_3 P6MOTHER;
   label values P6MOM_4 P6MOTHER;
   label values P6MOM_5 P6MOTHER;
   label values P6MOM_6 P6MOTHER;
   label values P6MOM_7 P6MOTHER;
   label values P6MOM_8 P6MOTHER;
   label values P6MOM_9 P6MOTHER;
   label values P6WHOAT P6MOTHFA;
   label values P6WHOAT2 P6MOTHFA;
   label values P6WHOAT3 P6MOTHFA;
   label values P6WHODID P6MOTHFA;
   label values P6WHOPRT P6MOTHFA;
   label values P6WHOVOL P6MOTHFA;
   label values P6CMPEDU P6NEVERO;
   label values P6COMPWK P6NEVERO;
   label values P6UNR_1 P6NONREL;
   label values P6UNR_10 P6NONREL;
   label values P6UNR_11 P6NONREL;
   label values P6UNR_12 P6NONREL;
   label values P6UNR_13 P6NONREL;
   label values P6UNR_14 P6NONREL;
   label values P6UNR_15 P6NONREL;
   label values P6UNR_2 P6NONREL;
   label values P6UNR_3 P6NONREL;
   label values P6UNR_4 P6NONREL;
   label values P6UNR_5 P6NONREL;
   label values P6UNR_6 P6NONREL;
   label values P6UNR_7 P6NONREL;
   label values P6UNR_8 P6NONREL;
   label values P6UNR_9 P6NONREL;
   label values P6OFTTLK P6NOTATF;
   label values P6TLKFRD P6NOTATF;
   label values P6TLKALC P6NOTATT;
   label values P6TLKDRG P6NOTATT;
   label values P6TLKSEX P6NOTATT;
   label values P6TLKSMK P6NOTATT;
   label values P6OFTDHW P6OFTDHW;
   label values P6EVCUT P6OFTENI;
   label values P6NOTEA2 P6OFTENI;
   label values P6OFTCUT P6OFTENI;
   label values P6INS_N1 P6OFTENT;
   label values P6INS_N2 P6OFTENT;
   label values P6INS_N3 P6OFTENT;
   label values P6INS_N4 P6OFTENT;
   label values P6OEXPN1 P6OFTENT;
   label values P6OEXPN2 P6OFTENT;
   label values P6OEXPN3 P6OFTENT;
   label values P6OEXPN4 P6OFTENT;
   label values P6CTRNUM P6ONEFIV;
   label values P6NRNUM P6ONEFIV;
   label values P6RELNUM P6ONEFIV;
   label values P6TIMETK P6ONEMON;
   label values P6PER_1 P6PER;
   label values P6PER_10 P6PER;
   label values P6PER_11 P6PER;
   label values P6PER_12 P6PER;
   label values P6PER_13 P6PER;
   label values P6PER_14 P6PER;
   label values P6PER_15 P6PER;
   label values P6PER_2 P6PER;
   label values P6PER_3 P6PER;
   label values P6PER_4 P6PER;
   label values P6PER_5 P6PER;
   label values P6PER_6 P6PER;
   label values P6PER_7 P6PER;
   label values P6PER_8 P6PER;
   label values P6PER_9 P6PER;
   label values P6CCCSTU P6PERTIM;
   label values P6NCCSTU P6PERTIM;
   label values P6RCCSTU P6PERTIM;
   label values P6OFHLPM P6PERWEE;
   label values P6OFHLPR P6PERWEE;
   label values P6PHYACT P6PHYSIC;
   label values P6STRUCT P6PHYSIC;
   label values P6PRIMNW P6PRIMNW;
   label values P6RDP_1 P6RDP;
   label values P6RDP_10 P6RDP;
   label values P6RDP_11 P6RDP;
   label values P6RDP_12 P6RDP;
   label values P6RDP_13 P6RDP;
   label values P6RDP_14 P6RDP;
   label values P6RDP_15 P6RDP;
   label values P6RDP_2 P6RDP;
   label values P6RDP_3 P6RDP;
   label values P6RDP_4 P6RDP;
   label values P6RDP_5 P6RDP;
   label values P6RDP_6 P6RDP;
   label values P6RDP_7 P6RDP;
   label values P6RDP_8 P6RDP;
   label values P6RDP_9 P6RDP;
   label values P6REL_1 P6RELATI;
   label values P6REL_10 P6RELATI;
   label values P6REL_11 P6RELATI;
   label values P6REL_12 P6RELATI;
   label values P6REL_13 P6RELATI;
   label values P6REL_14 P6RELATI;
   label values P6REL_15 P6RELATI;
   label values P6REL_2 P6RELATI;
   label values P6REL_3 P6RELATI;
   label values P6REL_4 P6RELATI;
   label values P6REL_5 P6RELATI;
   label values P6REL_6 P6RELATI;
   label values P6REL_7 P6RELATI;
   label values P6REL_8 P6RELATI;
   label values P6REL_9 P6RELATI;
   label values P6RELTV P6RELMOS;
   label values P6RESREL P6RESREL;
   label values P6SAFEPL P6SAFE;
   label values P6SCHOOL P6SCHOOA;
   label values P6FREERD P6SCHOOL;
   label values P6SIS_1 P6SISTER;
   label values P6SIS_10 P6SISTER;
   label values P6SIS_11 P6SISTER;
   label values P6SIS_12 P6SISTER;
   label values P6SIS_13 P6SISTER;
   label values P6SIS_14 P6SISTER;
   label values P6SIS_15 P6SISTER;
   label values P6SIS_2 P6SISTER;
   label values P6SIS_3 P6SISTER;
   label values P6SIS_4 P6SISTER;
   label values P6SIS_5 P6SISTER;
   label values P6SIS_6 P6SISTER;
   label values P6SIS_7 P6SISTER;
   label values P6SIS_8 P6SISTER;
   label values P6SIS_9 P6SISTER;
   label values P2SPANK P6SPAN2F;
   label values P5SPANK P6SPAN2F;
   label values P6SPANK P6SPAN2F;
   label values P6SEEHLP P6TIMEST;
   label values P6DENTIS P6TIMETO;
   label values P6DOCTOR P6TIMETO;
   label values P6WHRITV P6WHEREI;
   label values P6NPLACE P6WHOSEH;
   label values P6RPLACE P6WHOSEH;
   label values P4REAS10 P6WHYLEF;
   label values P4REAS11 P6WHYLEF;
   label values P4REAS12 P6WHYLEF;
   label values P4REAS13 P6WHYLEF;
   label values P4REAS14 P6WHYLEF;
   label values P4REAS15 P6WHYLEF;
   label values P4REAS16 P6WHYLEF;
   label values P4REAS17 P6WHYLEF;
   label values P4REAS18 P6WHYLEF;
   label values P4REAS19 P6WHYLEF;
   label values P4REASL1 P6WHYLEF;
   label values P4REASL2 P6WHYLEF;
   label values P4REASL3 P6WHYLEF;
   label values P4REASL4 P6WHYLEF;
   label values P4REASL5 P6WHYLEF;
   label values P4REASL6 P6WHYLEF;
   label values P4REASL7 P6WHYLEF;
   label values P4REASL8 P6WHYLEF;
   label values P4REASL9 P6WHYLEF;
   label values P6REAS10 P6WHYLEF;
   label values P6REAS11 P6WHYLEF;
   label values P6REAS12 P6WHYLEF;
   label values P6REAS13 P6WHYLEF;
   label values P6REAS14 P6WHYLEF;
   label values P6REAS15 P6WHYLEF;
   label values P6REASL1 P6WHYLEF;
   label values P6REASL2 P6WHYLEF;
   label values P6REASL3 P6WHYLEF;
   label values P6REASL4 P6WHYLEF;
   label values P6REASL5 P6WHYLEF;
   label values P6REASL6 P6WHYLEF;
   label values P6REASL7 P6WHYLEF;
   label values P6REASL8 P6WHYLEF;
   label values P6REASL9 P6WHYLEF;
   label values P7ABSDAD P7ABSDAD;
   label values P7ABSMOM P7ABSMOM;
   label values P7ALONE P7ALONE;
   label values P7ANYLNG P7ANYLNG;
   label values P7APPETI P7APPETI;
   label values P7APPROV P7APPROV;
   label values P7ARGCHD P7ARGCHD;
   label values P7ATTENT P7ATTENT;
   label values P7BLUE P7BLUE;
   label values P7BOTHER P7BOTHER;
   label values P7BRO_1 P7BROTHE;
   label values P7BRO_10 P7BROTHE;
   label values P7BRO_11 P7BROTHE;
   label values P7BRO_12 P7BROTHE;
   label values P7BRO_13 P7BROTHE;
   label values P7BRO_14 P7BROTHE;
   label values P7BRO_15 P7BROTHE;
   label values P7BRO_16 P7BROTHE;
   label values P7BRO_17 P7BROTHE;
   label values P7BRO_2 P7BROTHE;
   label values P7BRO_3 P7BROTHE;
   label values P7BRO_4 P7BROTHE;
   label values P7BRO_5 P7BROTHE;
   label values P7BRO_6 P7BROTHE;
   label values P7BRO_7 P7BROTHE;
   label values P7BRO_8 P7BROTHE;
   label values P7BRO_9 P7BROTHE;
   label values P7BTADLT P7BTADLT;
   label values P7BULLID P7BULLID;
   label values P7CHDLOC P7CHDLOC;
   label values P7CHEATS P7CHEATS;
   label values P7CHKHWK P7CHKHWK;
   label values P7CHL_1 P7CHL_1F;
   label values P7CHL_2 P7CHL_2F;
   label values P7CHORES P7CHORES;
   label values P7COMMIT P7COMMIT;
   label values P7ACTIVE P7COMPAA;
   label values P7ATTENI P7COMPAT;
   label values P7BEHAVE P7COMPAT;
   label values P7PRONOU P7COMPAT;
   label values P7SAMEAG P7COMPAT;
   label values P7SOLVE P7COMPAT;
   label values P7COMPRM P7COMPRM;
   label values P7CONSID P7CONSID;
   label values P7CONSRV P7CONSRV;
   label values P7CTP_N1 P7CONTAC;
   label values P7CTP_N2 P7CONTAC;
   label values P7CTP_N3 P7CONTAC;
   label values P7CTP_N4 P7CONTAC;
   label values P7CONWGT P7CONWGT;
   label values P7CRITIC P7CRITIC;
   label values P7CUR_1 P7CUR;
   label values P7CUR_10 P7CUR;
   label values P7CUR_11 P7CUR;
   label values P7CUR_12 P7CUR;
   label values P7CUR_13 P7CUR;
   label values P7CUR_14 P7CUR;
   label values P7CUR_15 P7CUR;
   label values P7CUR_16 P7CUR;
   label values P7CUR_17 P7CUR;
   label values P7CUR_2 P7CUR;
   label values P7CUR_3 P7CUR;
   label values P7CUR_4 P7CUR;
   label values P7CUR_5 P7CUR;
   label values P7CUR_6 P7CUR;
   label values P7CUR_7 P7CUR;
   label values P7CUR_8 P7CUR;
   label values P7CUR_9 P7CUR;
   label values P7CURFEW P7CURFEW;
   label values P7DADOCC P7DADOCC;
   label values P7DECIDE P7DECIDE;
   label values P7DEPRES P7DEPRES;
   label values P7DIABET P7DIABET;
   label values P7DISTRC P7DISTRC;
   label values P7DRUGS P7DRUGS;
   label values P7DSCUSS P7DSCUSS;
   label values P7DSTRCT P7DSTRCT;
   label values P7EDUP1 P7EDUP1F;
   label values P7EFFORT P7EFFORT;
   label values P7EMPP1 P7EMPP1F;
   label values P7ENGLIS P7ENGLIS;
   label values P7ENJOY P7ENJOY;
   label values P7FAITHF P7FAITHF;
   label values P7DAD_1 P7FATHER;
   label values P7DAD_10 P7FATHER;
   label values P7DAD_11 P7FATHER;
   label values P7DAD_12 P7FATHER;
   label values P7DAD_13 P7FATHER;
   label values P7DAD_14 P7FATHER;
   label values P7DAD_15 P7FATHER;
   label values P7DAD_16 P7FATHER;
   label values P7DAD_17 P7FATHER;
   label values P7DAD_2 P7FATHER;
   label values P7DAD_3 P7FATHER;
   label values P7DAD_4 P7FATHER;
   label values P7DAD_5 P7FATHER;
   label values P7DAD_6 P7FATHER;
   label values P7DAD_7 P7FATHER;
   label values P7DAD_8 P7FATHER;
   label values P7DAD_9 P7FATHER;
   label values P7FEARFL P7FEARFL;
   label values P7FEARS P7FEARS;
   label values P7FIDGET P7FIDGET;
   label values P7FIGHTS P7FIGHTS;
   label values P7FREERD P7FREERD;
   label values P7FRQFAM P7FRQFAM;
   label values P7FRQHBY P7FRQHBY;
   label values P7FRQHWK P7FRQHWK;
   label values P7FRQOTH P7FRQOTH;
   label values P7FRQPLY P7FRQPLY;
   label values P7FRQREL P7FRQREL;
   label values P7FRQRST P7FRQRST;
   label values P7FRQSCH P7FRQSCH;
   label values P7FRQSHP P7FRQSHP;
   label values P7FRQSPT P7FRQSPT;
   label values P7FRQTLK P7FRQTLK;
   label values P7FRQTRP P7FRQTRP;
   label values P7FRQTV P7FRQTV;
   label values P7FSADST P7FSADST;
   label values P7FSCHST P7FSCHST;
   label values P7FSSTAT P7FSSTAT;
   label values P7GDFRND P7GDFRND;
   label values P7GETALN P7GETALN;
   label values P7GOOD P7GOOD;
   label values P7DEGT_1 P7GRADES;
   label values P7DEGT_2 P7GRADES;
   label values P7MARRIG P7HAPPY;
   label values P7HDAD P7HDAD;
   label values P7HDEMP P7HDEMP;
   label values P7HEALTH P7HEALTH;
   label values P7HFAMIL P7HFAMIL;
   label values P7HLPFUL P7HLPFUL;
   label values P7HLPSCI P7HLPSCI;
   label values P7HMEMP P7HMEMP;
   label values P7HMOM P7HMOM;
   label values P7WHOHLP P7HOMEWO;
   label values P7WHOHPM P7HOMEWO;
   label values P7EXPECT P7HOWFAR;
   label values P7SVHELP P7HOWHEL;
   label values P7MIN_N1 P7HOWMAN;
   label values P7MIN_N2 P7HOWMAN;
   label values P7MIN_N3 P7HOWMAN;
   label values P7MIN_N4 P7HOWMAN;
   label values P7HOWPAY P7HOWPAY;
   label values P7CANTAF P7HOWTRF;
   label values P7BLMEAL P7HOWTRU;
   label values P7FDLAST P7HOWTRU;
   label values P7LOWCST P7HOWTRU;
   label values P7NOBAL P7HOWTRU;
   label values P7WORRFD P7HOWTRU;
   label values P7HPARNT P7HPARNT;
   label values P7HSCALE P7HSCALE;
   label values P7ILLNES P7ILLNES;
   label values P7IMPBLF P7IMPBLF;
   label values P7INCCAT P7INCCAT;
   label values P7HILOW P7INCOME;
   label values P7INSCHL P7INSCHL;
   label values P7INTERF P7INTERF;
   label values P7LANGUA P7INTERV;
   label values P7JOI_1 P7JOI;
   label values P7JOI_10 P7JOI;
   label values P7JOI_11 P7JOI;
   label values P7JOI_12 P7JOI;
   label values P7JOI_13 P7JOI;
   label values P7JOI_14 P7JOI;
   label values P7JOI_15 P7JOI;
   label values P7JOI_16 P7JOI;
   label values P7JOI_17 P7JOI;
   label values P7JOI_2 P7JOI;
   label values P7JOI_3 P7JOI;
   label values P7JOI_4 P7JOI;
   label values P7JOI_5 P7JOI;
   label values P7JOI_6 P7JOI;
   label values P7JOI_7 P7JOI;
   label values P7JOI_8 P7JOI;
   label values P7JOI_9 P7JOI;
   label values P7KINDCH P7KINDCH;
   label values P7KPMIND P7KPMIND;
   label values P7LANG1 P7LANG;
   label values P7LANG10 P7LANG;
   label values P7LANG11 P7LANG;
   label values P7LANG12 P7LANG;
   label values P7LANG13 P7LANG;
   label values P7LANG14 P7LANG;
   label values P7LANG15 P7LANG;
   label values P7LANG16 P7LANG;
   label values P7LANG17 P7LANG;
   label values P7LANG18 P7LANG;
   label values P7LANG19 P7LANG;
   label values P7LANG2 P7LANG;
   label values P7LANG20 P7LANG;
   label values P7LANG21 P7LANG;
   label values P7LANG22 P7LANG;
   label values P7LANG23 P7LANG;
   label values P7LANG3 P7LANG;
   label values P7LANG4 P7LANG;
   label values P7LANG5 P7LANG;
   label values P7LANG6 P7LANG;
   label values P7LANG7 P7LANG;
   label values P7LANG8 P7LANG;
   label values P7LANG9 P7LANG;
   label values P7LEARNG P7LEARNG;
   label values P7LIBERL P7LIBERL;
   label values P7LIFLNG P7LIFLNG;
   label values P7LIKED P7LIKED;
   label values P7LISTNS P7LISTNS;
   label values P7LONELY P7LONELY;
   label values P7LOVE P7LOVE;
   label values P7SEX_1 P7MALEFE;
   label values P7SEX_10 P7MALEFE;
   label values P7SEX_11 P7MALEFE;
   label values P7SEX_12 P7MALEFE;
   label values P7SEX_13 P7MALEFE;
   label values P7SEX_14 P7MALEFE;
   label values P7SEX_15 P7MALEFE;
   label values P7SEX_16 P7MALEFE;
   label values P7SEX_17 P7MALEFE;
   label values P7SEX_2 P7MALEFE;
   label values P7SEX_3 P7MALEFE;
   label values P7SEX_4 P7MALEFE;
   label values P7SEX_5 P7MALEFE;
   label values P7SEX_6 P7MALEFE;
   label values P7SEX_7 P7MALEFE;
   label values P7SEX_8 P7MALEFE;
   label values P7SEX_9 P7MALEFE;
   label values P7CURMAR P7MARITA;
   label values P7MED_N1 P7MED_N;
   label values P7MED_N2 P7MED_N;
   label values P7MED_N3 P7MED_N;
   label values P7MED_N4 P7MED_N;
   label values P7MODE P7MODE;
   label values P7MOMOCC P7MOMOCC;
   label values P7MOSTIM P7MOSTIM;
   label values P7MOM_1 P7MOTHER;
   label values P7MOM_10 P7MOTHER;
   label values P7MOM_11 P7MOTHER;
   label values P7MOM_12 P7MOTHER;
   label values P7MOM_13 P7MOTHER;
   label values P7MOM_14 P7MOTHER;
   label values P7MOM_15 P7MOTHER;
   label values P7MOM_16 P7MOTHER;
   label values P7MOM_17 P7MOTHER;
   label values P7MOM_2 P7MOTHER;
   label values P7MOM_3 P7MOTHER;
   label values P7MOM_4 P7MOTHER;
   label values P7MOM_5 P7MOTHER;
   label values P7MOM_6 P7MOTHER;
   label values P7MOM_7 P7MOTHER;
   label values P7MOM_8 P7MOTHER;
   label values P7MOM_9 P7MOTHER;
   label values P7WHOAT P7MOTHFA;
   label values P7WHOAT2 P7MOTHFA;
   label values P7WHOAT3 P7MOTHFA;
   label values P7WHODID P7MOTHFA;
   label values P7WHOPRT P7MOTHFA;
   label values P7WHOVOL P7MOTHFA;
   label values P7MTFRND P7MTFRND;
   label values P7NERVOS P7NERVOS;
   label values P7NOAPPR P7NOAPPR;
   label values P7NOCOLL P7NOCOLL;
   label values P7UNR_1 P7NONREL;
   label values P7UNR_10 P7NONREL;
   label values P7UNR_11 P7NONREL;
   label values P7UNR_12 P7NONREL;
   label values P7UNR_13 P7NONREL;
   label values P7UNR_14 P7NONREL;
   label values P7UNR_15 P7NONREL;
   label values P7UNR_16 P7NONREL;
   label values P7UNR_17 P7NONREL;
   label values P7UNR_2 P7NONREL;
   label values P7UNR_3 P7NONREL;
   label values P7UNR_4 P7NONREL;
   label values P7UNR_5 P7NONREL;
   label values P7UNR_6 P7NONREL;
   label values P7UNR_7 P7NONREL;
   label values P7UNR_8 P7NONREL;
   label values P7UNR_9 P7NONREL;
   label values P7OFTTLK P7NOTATF;
   label values P7TLKFRD P7NOTATF;
   label values P7TLKFUT P7NOTATF;
   label values P7TLKGRD P7NOTATF;
   label values P7TLKSCH P7NOTATF;
   label values P7TLKALC P7NOTATT;
   label values P7TLKDRG P7NOTATT;
   label values P7TLKSEX P7NOTATT;
   label values P7TLKSMK P7NOTATT;
   label values P7NOTGO P7NOTGO;
   label values P7NOTGRD P7NOTGRD;
   label values P7NOUNDR P7NOUNDR;
   label values P7NUMBKS P7NUMBKS;
   label values P7NUMTHR P7NUMTHR;
   label values P7OFFERS P7OFFERS;
   label values P7OFTDHW P7OFTDHW;
   label values P7EVCUT P7OFTENI;
   label values P7NOTEA2 P7OFTENI;
   label values P7OFTCUT P7OFTENI;
   label values P7INS_N1 P7OFTENT;
   label values P7INS_N2 P7OFTENT;
   label values P7INS_N3 P7OFTENT;
   label values P7INS_N4 P7OFTENT;
   label values P7OEXPN1 P7OFTENT;
   label values P7OEXPN2 P7OFTENT;
   label values P7OEXPN3 P7OFTENT;
   label values P7OEXPN4 P7OFTENT;
   label values P7OFTSCI P7OFTSCI;
   label values P7TIMETK P7ONEMON;
   label values P7OTH_N1 P7OTH_N;
   label values P7OTH_N2 P7OTH_N;
   label values P7OTH_N3 P7OTH_N;
   label values P7OTH_N4 P7OTH_N;
   label values P7OVERWT P7OVERWT;
   label values P7OWNRNT P7OWNRNT;
   label values P7PER_1 P7PER;
   label values P7PER_10 P7PER;
   label values P7PER_11 P7PER;
   label values P7PER_12 P7PER;
   label values P7PER_13 P7PER;
   label values P7PER_14 P7PER;
   label values P7PER_15 P7PER;
   label values P7PER_16 P7PER;
   label values P7PER_17 P7PER;
   label values P7PER_2 P7PER;
   label values P7PER_3 P7PER;
   label values P7PER_4 P7PER;
   label values P7PER_5 P7PER;
   label values P7PER_6 P7PER;
   label values P7PER_7 P7PER;
   label values P7PER_8 P7PER;
   label values P7PER_9 P7PER;
   label values P7OFHLPM P7PERWEE;
   label values P7OFHLPR P7PERWEE;
   label values P7ATTENB P7PIQ;
   label values P7ATTENP P7PIQ;
   label values P7ATTENS P7PIQ;
   label values P7FUNDRS P7PIQ;
   label values P7PARGRP P7PIQ;
   label values P7VOLUNT P7PIQ;
   label values P7POLIT P7POLIT;
   label values P7PRMLNG P7PRMLNG;
   label values P7PRTREL P7PRTREL;
   label values P7PUSHHT P7PUSHHT;
   label values P7RDP_1 P7RDP;
   label values P7RDP_10 P7RDP;
   label values P7RDP_11 P7RDP;
   label values P7RDP_12 P7RDP;
   label values P7RDP_13 P7RDP;
   label values P7RDP_14 P7RDP;
   label values P7RDP_15 P7RDP;
   label values P7RDP_16 P7RDP;
   label values P7RDP_17 P7RDP;
   label values P7RDP_2 P7RDP;
   label values P7RDP_3 P7RDP;
   label values P7RDP_4 P7RDP;
   label values P7RDP_5 P7RDP;
   label values P7RDP_6 P7RDP;
   label values P7RDP_7 P7RDP;
   label values P7RDP_8 P7RDP;
   label values P7RDP_9 P7RDP;
   label values P7READBK P7READBK;
   label values P7READEN P7READEN;
   label values P7REL_1 P7RELATI;
   label values P7REL_10 P7RELATI;
   label values P7REL_11 P7RELATI;
   label values P7REL_12 P7RELATI;
   label values P7REL_13 P7RELATI;
   label values P7REL_14 P7RELATI;
   label values P7REL_15 P7RELATI;
   label values P7REL_16 P7RELATI;
   label values P7REL_17 P7RELATI;
   label values P7REL_2 P7RELATI;
   label values P7REL_3 P7RELATI;
   label values P7REL_4 P7RELATI;
   label values P7REL_5 P7RELATI;
   label values P7REL_6 P7RELATI;
   label values P7REL_7 P7RELATI;
   label values P7REL_8 P7RELATI;
   label values P7REL_9 P7RELATI;
   label values P7RELIG P7RELIG;
   label values P7RES_1 P7RES_1F;
   label values P7RES_2 P7RES_2F;
   label values P7RESREL P7RESREL;
   label values P7RESTLS P7RESTLS;
   label values P7RPTCRD P7RPTCRD;
   label values P7RSTLSS P7RSTLSS;
   label values P7SAD P7SAD;
   label values P7SAFE P7SAFE;
   label values P7SAFEPL P7SAFEPL;
   label values P7SATPRB P7SATPRB;
   label values P7SATSCH P7SATSCH;
   label values P7SCHGRD P7SCHGRD;
   label values P7SCHOOL P7SCHOOL;
   label values P7SCHWRK P7SCHWRK;
   label values P7SHARES P7SHARES;
   label values P7SHOUT P7SHOUT;
   label values P7SIS_1 P7SISTER;
   label values P7SIS_10 P7SISTER;
   label values P7SIS_11 P7SISTER;
   label values P7SIS_12 P7SISTER;
   label values P7SIS_13 P7SISTER;
   label values P7SIS_14 P7SISTER;
   label values P7SIS_15 P7SISTER;
   label values P7SIS_16 P7SISTER;
   label values P7SIS_17 P7SISTER;
   label values P7SIS_2 P7SISTER;
   label values P7SIS_3 P7SISTER;
   label values P7SIS_4 P7SISTER;
   label values P7SIS_5 P7SISTER;
   label values P7SIS_6 P7SISTER;
   label values P7SIS_7 P7SISTER;
   label values P7SIS_8 P7SISTER;
   label values P7SIS_9 P7SISTER;
   label values P7SPEAKE P7SPEAKE;
   label values P7STEALS P7STEALS;
   label values P7STPSPK P7STPSPK;
   label values P7SUSPND P7SUSPND;
   label values P7TALKLS P7TALKLS;
   label values P7TEMPER P7TEMPER;
   label values P7THINKS P7THINKS;
   label values P7SEEHLP P7TIMEST;
   label values P7DENTIS P7TIMETO;
   label values P7DOCTOR P7TIMETO;
   label values P7TLKAFT P7TLKAFT;
   label values P7TLKEVT P7TLKEVT;
   label values P7TLKPRG P7TLKPRG;
   label values P7TLKTRB P7TLKTRB;
   label values P7TRUST P7TRUST;
   label values P7UNDERS P7UNDERS;
   label values P7UNDRWT P7UNDRWT;
   label values P7UNHAPP P7UNHAPP;
   label values P7VIOLNC P7VIOLNC;
   label values P7WELBHV P7WELBHV;
   label values P7WGTEVL P7WGTEVL;
   label values P7WHRITV P7WHEREI;
   label values P7WHOLIK P7WHOLIK;
   label values P7WHOSCI P7WHOSCI;
   label values P7REAS10 P7WHYLEF;
   label values P7REAS11 P7WHYLEF;
   label values P7REAS12 P7WHYLEF;
   label values P7REAS13 P7WHYLEF;
   label values P7REAS14 P7WHYLEF;
   label values P7REAS15 P7WHYLEF;
   label values P7REAS16 P7WHYLEF;
   label values P7REAS17 P7WHYLEF;
   label values P7REASL1 P7WHYLEF;
   label values P7REASL2 P7WHYLEF;
   label values P7REASL3 P7WHYLEF;
   label values P7REASL4 P7WHYLEF;
   label values P7REASL5 P7WHYLEF;
   label values P7REASL6 P7WHYLEF;
   label values P7REASL7 P7WHYLEF;
   label values P7REASL8 P7WHYLEF;
   label values P7REASL9 P7WHYLEF;
   label values P7WORRYS P7WORRYS;
   label values P7WRITEN P7WRITEN;
   label values P5CHAB PAGREELE;
   label values P5CONSEN PAGREELE;
   label values P5ORDDIS PAGREELE;
   label values P5OVRCRD PAGREELE;
   label values P5PARACT PAGREELE;
   label values P5PARWEL PAGREELE;
   label values P5SUPCOM PAGREELE;
   label values P5TCHAB PAGREELE;
   label values P5TIMEAP PAMORPM;
   label values P5GOTOBD PBEDTIME;
   label values P5BRO_1 PBROTHER;
   label values P5BRO_10 PBROTHER;
   label values P5BRO_11 PBROTHER;
   label values P5BRO_12 PBROTHER;
   label values P5BRO_13 PBROTHER;
   label values P5BRO_14 PBROTHER;
   label values P5BRO_15 PBROTHER;
   label values P5BRO_16 PBROTHER;
   label values P5BRO_17 PBROTHER;
   label values P5BRO_18 PBROTHER;
   label values P5BRO_19 PBROTHER;
   label values P5BRO_2 PBROTHER;
   label values P5BRO_3 PBROTHER;
   label values P5BRO_4 PBROTHER;
   label values P5BRO_5 PBROTHER;
   label values P5BRO_6 PBROTHER;
   label values P5BRO_7 PBROTHER;
   label values P5BRO_8 PBROTHER;
   label values P5BRO_9 PBROTHER;
   label values P1ABSDAD PC002F;
   label values P1ABSMOM PC002F;
   label values P1BDVITL PC008F;
   label values P1BMVITL PC008F;
   label values P1DADTYP PC010F;
   label values P1MOMTYP PC010F;
   label values P2DADTYP PC010F;
   label values P2MOMTYP PC010F;
   label values P1HDAD PC011F;
   label values P1HDEMP PC013F;
   label values P1BDRACE PC014F;
   label values P1BMRACE PC014F;
   label values P1HDRACE PC014F;
   label values P1HMRACE PC014F;
   label values P2HDRACE PC014F;
   label values P2HMRACE PC014F;
   label values WKRACETH PC014F;
   label values P1HFAMIL PC015F;
   label values P2HFAMIL PC015F;
   label values P1HMEMP PC018F;
   label values P1HDLANG PC019F;
   label values P1HDLTOD PC019F;
   label values P1HMLANG PC019F;
   label values P1HMLTOM PC019F;
   label values P1HMOM PC020F;
   label values P1HPARNT PC021F;
   label values P2HPARNT PC021F;
   label values P1LANGUG PC024F;
   label values P1PRIMNW PC030F;
   label values P2HMOM PC034F;
   label values WKBMOMAR PC042F;
   label values WKHMOMAR PC042F;
   label values P1DADOCC PC044F;
   label values WKLANGST PC047F;
   label values P1ADADED PC048F;
   label values P1AMOMED PC048F;
   label values P1BDADED PC048F;
   label values P1BMOMED PC048F;
   label values WKDADED PC048F;
   label values WKMOMED PC048F;
   label values WKPARED PC048F;
   label values P1MOMOCC PC049F;
   label values P1PRIMPK PC052F;
   label values WKSESQ5 PC054F;
   label values P1TWINST PC055F;
   label values P2DADCHK PC056F;
   label values P2MOMCHK PC056F;
   label values P2MARSTA PC058F;
   label values P2HDAD PC060F;
   label values P4ABSDAD PC202F;
   label values P4ABSMOM PC202F;
   label values P4BDVITL PC208F;
   label values P4BMVITL PC208F;
   label values P4DADTYP PC210F;
   label values P4MOMTYP PC210F;
   label values P4HDEMP PC213F;
   label values P4HMRACE PC214F;
   label values P4HFAMIL PC215F;
   label values P4HMEMP PC218F;
   label values P4HPARNT PC221F;
   label values P3PRIMNW PC230F;
   label values P4HMOM PC234F;
   label values W1DADED PC248F;
   label values W1MOMED PC248F;
   label values P4MOMOCC PC249F;
   label values W1PARED PC250F;
   label values P4MARSTA PC258F;
   label values P4HDAD PC260F;
   label values P4DADOCC PC450F;
   label values P5ABSDAD PC5001F;
   label values P5ABSMOM PC5001F;
   label values P5HDEMP PC5003F;
   label values P5HMRACE PC5004F;
   label values P5HFAMIL PC5005F;
   label values P5HMEMP PC5006F;
   label values P5HPARNT PC5007F;
   label values P5HMOM PC5008F;
   label values W3DADED PC5009F;
   label values W3MOMED PC5009F;
   label values P5MOMOCC PC5010F;
   label values W3PARED PC5011F;
   label values P5HDAD PC5012F;
   label values P5DADOCC PC5013F;
   label values P5CCCH PCAREFOR;
   label values P5NCCH PCAREFOR;
   label values P5RCCH PCAREFOR;
   label values P5ACTIVE PCOMPA1F;
   label values P5ATTENI PCOMPA2F;
   label values P5BEHAVE PCOMPA2F;
   label values P5PRONOU PCOMPA2F;
   label values P5SAMEAG PCOMPA2F;
   label values P5SOLVE PCOMPA2F;
   label values P5CTP_N1 PCONTACT;
   label values P5CTP_N2 PCONTACT;
   label values P5CTP_N3 PCONTACT;
   label values P5CTP_N4 PCONTACT;
   label values S5ADAFLG PCTNUM;
   label values S5AINDFL PCTNUM;
   label values S5ASINFL PCTNUM;
   label values S5ASNFLG PCTNUM;
   label values S5BLAKFL PCTNUM;
   label values S5BLKFLG PCTNUM;
   label values S5HISPFL PCTNUM;
   label values S5HSPFLG PCTNUM;
   label values S5INDFLG PCTNUM;
   label values S5OTHFLG PCTNUM;
   label values S5TOTHFL PCTNUM;
   label values S5WHTEFL PCTNUM;
   label values S5WHTFLG PCTNUM;
   label values P5DGNEMO PDIAGN3F;
   label values P5PAR_N1 PE_126F;
   label values P5PAR_N2 PE_126F;
   label values P5PAR_N3 PE_126F;
   label values P5PAR_N4 PE_126F;
   label values P5HEALTH PE_130F;
   label values P5DAD_1 PFATHER;
   label values P5DAD_10 PFATHER;
   label values P5DAD_11 PFATHER;
   label values P5DAD_12 PFATHER;
   label values P5DAD_13 PFATHER;
   label values P5DAD_14 PFATHER;
   label values P5DAD_15 PFATHER;
   label values P5DAD_16 PFATHER;
   label values P5DAD_17 PFATHER;
   label values P5DAD_18 PFATHER;
   label values P5DAD_19 PFATHER;
   label values P5DAD_2 PFATHER;
   label values P5DAD_3 PFATHER;
   label values P5DAD_4 PFATHER;
   label values P5DAD_5 PFATHER;
   label values P5DAD_6 PFATHER;
   label values P5DAD_7 PFATHER;
   label values P5DAD_8 PFATHER;
   label values P5DAD_9 PFATHER;
   label values P5TMTSCH PFIFTE2F;
   label values P5FPT_1 PFULLTIM;
   label values P5FPT_2 PFULLTIM;
   label values P5DEGT_1 PGRADES;
   label values P5DEGT_2 PGRADES;
   label values P5MARRIG PHAPPY;
   label values P5HOUSIT PHOUSING;
   label values P5AEROBI PHOWACTI;
   label values P5EXPECT PHOWFARE;
   label values P5SVHELP PHOWHELP;
   label values P5MIN_N1 PHOWMANY;
   label values P5MIN_N2 PHOWMANY;
   label values P5MIN_N3 PHOWMANY;
   label values P5MIN_N4 PHOWMANY;
   label values P5CANTAF PHOWTR1F;
   label values P5ADVICE PHOWTR2F;
   label values P5BLMEAL PHOWTR3F;
   label values P5FDLAST PHOWTR3F;
   label values P5LOWCST PHOWTR3F;
   label values P5NOBAL PHOWTR3F;
   label values P5WORRFD PHOWTR3F;
   label values P5CASH PHOWTR4F;
   label values P5CHPRSC PHOWTR4F;
   label values P5CHSICK PHOWTR4F;
   label values P5ERRAND PHOWTR4F;
   label values P5RIDEDC PHOWTR4F;
   label values P5HSCALE PHOWWE2F;
   label values P5HILOW PINCOME;
   label values P5DOW_1 PLASTWEE;
   label values P5DOW_2 PLASTWEE;
   label values P5SEX_1 PMALEFEM;
   label values P5SEX_10 PMALEFEM;
   label values P5SEX_11 PMALEFEM;
   label values P5SEX_12 PMALEFEM;
   label values P5SEX_13 PMALEFEM;
   label values P5SEX_14 PMALEFEM;
   label values P5SEX_15 PMALEFEM;
   label values P5SEX_16 PMALEFEM;
   label values P5SEX_17 PMALEFEM;
   label values P5SEX_18 PMALEFEM;
   label values P5SEX_19 PMALEFEM;
   label values P5SEX_2 PMALEFEM;
   label values P5SEX_3 PMALEFEM;
   label values P5SEX_4 PMALEFEM;
   label values P5SEX_5 PMALEFEM;
   label values P5SEX_6 PMALEFEM;
   label values P5SEX_7 PMALEFEM;
   label values P5SEX_8 PMALEFEM;
   label values P5SEX_9 PMALEFEM;
   label values P2CURMAR PMARITAL;
   label values P3CURMAR PMARITAL;
   label values P4CURMAR PMARITAL;
   label values P5CURMAR PMARITAL;
   label values P5MODE PMODE;
   label values P5CHA_B PMORELIK;
   label values P5MOM_1 PMOTHER;
   label values P5MOM_10 PMOTHER;
   label values P5MOM_11 PMOTHER;
   label values P5MOM_12 PMOTHER;
   label values P5MOM_13 PMOTHER;
   label values P5MOM_14 PMOTHER;
   label values P5MOM_15 PMOTHER;
   label values P5MOM_16 PMOTHER;
   label values P5MOM_17 PMOTHER;
   label values P5MOM_18 PMOTHER;
   label values P5MOM_19 PMOTHER;
   label values P5MOM_2 PMOTHER;
   label values P5MOM_3 PMOTHER;
   label values P5MOM_4 PMOTHER;
   label values P5MOM_5 PMOTHER;
   label values P5MOM_6 PMOTHER;
   label values P5MOM_7 PMOTHER;
   label values P5MOM_8 PMOTHER;
   label values P5MOM_9 PMOTHER;
   label values P5WHOAT PMOTHFAT;
   label values P5WHOAT2 PMOTHFAT;
   label values P5WHOAT3 PMOTHFAT;
   label values P5WHODID PMOTHFAT;
   label values P5WHOPRT PMOTHFAT;
   label values P5WHOVOL PMOTHFAT;
   label values P5BELMTH PMUCHWOR;
   label values P5BELRDG PMUCHWOR;
   label values P5CMPEDU PNEVER1F;
   label values P5COMPWK PNEVER1F;
   label values P5CHREAD PNEVER2F;
   label values P5BOOKS PNEVERLE;
   label values P5INTRNT PNEVERLE;
   label values P5LETNOT PNEVERLE;
   label values P5NEWMAG PNEVERLE;
   label values P5UNR_1 PNONRELA;
   label values P5UNR_10 PNONRELA;
   label values P5UNR_11 PNONRELA;
   label values P5UNR_12 PNONRELA;
   label values P5UNR_13 PNONRELA;
   label values P5UNR_14 PNONRELA;
   label values P5UNR_15 PNONRELA;
   label values P5UNR_16 PNONRELA;
   label values P5UNR_17 PNONRELA;
   label values P5UNR_18 PNONRELA;
   label values P5UNR_19 PNONRELA;
   label values P5UNR_2 PNONRELA;
   label values P5UNR_3 PNONRELA;
   label values P5UNR_4 PNONRELA;
   label values P5UNR_5 PNONRELA;
   label values P5UNR_6 PNONRELA;
   label values P5UNR_7 PNONRELA;
   label values P5UNR_8 PNONRELA;
   label values P5UNR_9 PNONRELA;
   label values P5BUILD PNOTATAL;
   label values P5CHORES PNOTATAL;
   label values P5GAMES PNOTATAL;
   label values P5HELPAR PNOTATAL;
   label values P5NATURE PNOTATAL;
   label values P5RDWRNM PNOTATAL;
   label values P5READBO PNOTATAL;
   label values P5SINGSO PNOTATAL;
   label values P5SPORT PNOTATAL;
   label values P5TELLST PNOTATAL;
   label values P5EVCUT POFTENIN;
   label values P5NOTEA2 POFTENIN;
   label values P5OFTCUT POFTENIN;
   label values P5INS_N1 POFTENTO;
   label values P5INS_N2 POFTENTO;
   label values P5INS_N3 POFTENTO;
   label values P5INS_N4 POFTENTO;
   label values P5OEXPN1 POFTENTO;
   label values P5OEXPN2 POFTENTO;
   label values P5OEXPN3 POFTENTO;
   label values P5OEXPN4 POFTENTO;
   label values P5CTRNUM PONETOFI;
   label values P5NRNUM PONETOFI;
   label values P5RELNUM PONETOFI;
   label values P5CCCSTU PPERTIME;
   label values P5NCCSTU PPERTIME;
   label values P5RCCSTU PPERTIME;
   label values P5OFTDHW PPERWE1F;
   label values P5OFHLPM PPERWEEK;
   label values P5OFHLPR PPERWEEK;
   label values P5PHYACT PPHYSICA;
   label values P5STRUCT PPHYSICA;
   label values P5BURGLR PPROBL2F;
   label values P5DRUG PPROBL2F;
   label values P5GARBAG PPROBL2F;
   label values P5VACANT PPROBL2F;
   label values P5VIOLEN PPROBL2F;
   label values P5REL_1 PRELATIO;
   label values P5REL_10 PRELATIO;
   label values P5REL_11 PRELATIO;
   label values P5REL_12 PRELATIO;
   label values P5REL_13 PRELATIO;
   label values P5REL_14 PRELATIO;
   label values P5REL_15 PRELATIO;
   label values P5REL_16 PRELATIO;
   label values P5REL_17 PRELATIO;
   label values P5REL_18 PRELATIO;
   label values P5REL_19 PRELATIO;
   label values P5REL_2 PRELATIO;
   label values P5REL_3 PRELATIO;
   label values P5REL_4 PRELATIO;
   label values P5REL_5 PRELATIO;
   label values P5REL_6 PRELATIO;
   label values P5REL_7 PRELATIO;
   label values P5REL_8 PRELATIO;
   label values P5REL_9 PRELATIO;
   label values P5RELTV PRELMOST;
   label values P5SAFEPL PSAFE;
   label values P5SCHOOL PSCHOOLA;
   label values P5FREERD PSCHOOLL;
   label values P5GTTSCH PSCHOOLT;
   label values P5SIS_1 PSISTER;
   label values P5SIS_10 PSISTER;
   label values P5SIS_11 PSISTER;
   label values P5SIS_12 PSISTER;
   label values P5SIS_13 PSISTER;
   label values P5SIS_14 PSISTER;
   label values P5SIS_15 PSISTER;
   label values P5SIS_16 PSISTER;
   label values P5SIS_17 PSISTER;
   label values P5SIS_18 PSISTER;
   label values P5SIS_19 PSISTER;
   label values P5SIS_2 PSISTER;
   label values P5SIS_3 PSISTER;
   label values P5SIS_4 PSISTER;
   label values P5SIS_5 PSISTER;
   label values P5SIS_6 PSISTER;
   label values P5SIS_7 PSISTER;
   label values P5SIS_8 PSISTER;
   label values P5SIS_9 PSISTER;
   label values P5TMBFCL PTENTOTW;
   label values P5APPETI PTIMES2F;
   label values P5BLUE PTIMES2F;
   label values P5BOTHER PTIMES2F;
   label values P5DEPRES PTIMES2F;
   label values P5EFFORT PTIMES2F;
   label values P5FEARFL PTIMES2F;
   label values P5KPMIND PTIMES2F;
   label values P5LONELY PTIMES2F;
   label values P5NOTGO PTIMES2F;
   label values P5RESTLS PTIMES2F;
   label values P5SAD PTIMES2F;
   label values P5TALKLS PTIMES2F;
   label values P5DENTIS PTIMETOT;
   label values P5DOCTOR PTIMETOT;
   label values P5CHDOES PTRUE;
   label values P5CHHARD PTRUE;
   label values P5CHLIKE PTRUE;
   label values P5EXPRES PTRUE;
   label values P5FEELAN PTRUE;
   label values P5MEETND PTRUE;
   label values P5SHOWLV PTRUE;
   label values P5WARMCL PTRUE;
   label values P5CHANCV PVERYW2F;
   label values P5CHILDR PVERYW2F;
   label values P5HOWCHD PVERYW2F;
   label values P5TESTSC PVERYW2F;
   label values P5WRKSHP PVERYW2F;
   label values P5WHRITV PWHEREIN;
   label values P5NPLACE PWHOSEHO;
   label values P5RPLACE PWHOSEHO;
   label values P5REAS10 PWHYLEFT;
   label values P5REAS11 PWHYLEFT;
   label values P5REAS12 PWHYLEFT;
   label values P5REAS13 PWHYLEFT;
   label values P5REAS14 PWHYLEFT;
   label values P5REAS15 PWHYLEFT;
   label values P5REAS16 PWHYLEFT;
   label values P5REAS17 PWHYLEFT;
   label values P5REAS18 PWHYLEFT;
   label values P5REAS19 PWHYLEFT;
   label values P5REASL1 PWHYLEFT;
   label values P5REASL2 PWHYLEFT;
   label values P5REASL3 PWHYLEFT;
   label values P5REASL4 PWHYLEFT;
   label values P5REASL5 PWHYLEFT;
   label values P5REASL6 PWHYLEFT;
   label values P5REASL7 PWHYLEFT;
   label values P5REASL8 PWHYLEFT;
   label values P5REASL9 PWHYLEFT;
   label values P5ACTIV2 PYESNO;
   label values P5AGREE1 PYESNO;
   label values P5AGREE2 PYESNO;
   label values P5AGREE3 PYESNO;
   label values P5AGREE4 PYESNO;
   label values P5ASTTRT PYESNO;
   label values P5ATMNR1 PYESNO;
   label values P5ATMNR2 PYESNO;
   label values P5ATMNR3 PYESNO;
   label values P5ATMNR4 PYESNO;
   label values P5ATTENB PYESNO;
   label values P5ATTENP PYESNO;
   label values P5ATTENS PYESNO;
   label values P5ATTNR1 PYESNO;
   label values P5ATTNR2 PYESNO;
   label values P5ATTNR3 PYESNO;
   label values P5ATTNR4 PYESNO;
   label values P5BETSCH PYESNO;
   label values P5BOUHOU PYESNO;
   label values P5CANTGT PYESNO;
   label values P5CBEFOR PYESNO;
   label values P5CCEMP PYESNO;
   label values P5CCFEE PYESNO;
   label values P5CCREL PYESNO;
   label values P5CCWEL PYESNO;
   label values P5CFTER PYESNO;
   label values P5CHI_N1 PYESNO;
   label values P5CHI_N2 PYESNO;
   label values P5CHI_N3 PYESNO;
   label values P5CHI_N4 PYESNO;
   label values P5CHIEAT PYESNO;
   label values P5CHIEVR PYESNO;
   label values P5CHJB_1 PYESNO;
   label values P5CHJB_2 PYESNO;
   label values P5CHREL PYESNO;
   label values P5CHSKIP PYESNO;
   label values P5CHSREL PYESNO;
   label values P5CMPINT PYESNO;
   label values P5COMMU2 PYESNO;
   label values P5COMMUN PYESNO;
   label values P5CONBEH PYESNO;
   label values P5CSCRT PYESNO;
   label values P5CSINF PYESNO;
   label values P5CSNOAG PYESNO;
   label values P5CSOTH PYESNO;
   label values P5CSPEN PYESNO;
   label values P5CSWRT PYESNO;
   label values P5CTRSCH PYESNO;
   label values P5CUR_1 PYESNO;
   label values P5CUR_10 PYESNO;
   label values P5CUR_11 PYESNO;
   label values P5CUR_12 PYESNO;
   label values P5CUR_13 PYESNO;
   label values P5CUR_14 PYESNO;
   label values P5CUR_15 PYESNO;
   label values P5CUR_16 PYESNO;
   label values P5CUR_17 PYESNO;
   label values P5CUR_18 PYESNO;
   label values P5CUR_19 PYESNO;
   label values P5CUR_2 PYESNO;
   label values P5CUR_3 PYESNO;
   label values P5CUR_4 PYESNO;
   label values P5CUR_5 PYESNO;
   label values P5CUR_6 PYESNO;
   label values P5CUR_7 PYESNO;
   label values P5CUR_8 PYESNO;
   label values P5CUR_9 PYESNO;
   label values P5CUTML PYESNO;
   label values P5CWEEK PYESNO;
   label values P5CWKEND PYESNO;
   label values P5DIAEMO PYESNO;
   label values P5DIAGNO PYESNO;
   label values P5DIFFH2 PYESNO;
   label values P5DIFFH3 PYESNO;
   label values P5DIFFHR PYESNO;
   label values P5DO1_1 PYESNO;
   label values P5DO1_2 PYESNO;
   label values P5DO2_1 PYESNO;
   label values P5DO2_2 PYESNO;
   label values P5DO3_1 PYESNO;
   label values P5DO3_2 PYESNO;
   label values P5DO4_1 PYESNO;
   label values P5DO4_2 PYESNO;
   label values P5DO5_1 PYESNO;
   label values P5DO5_2 PYESNO;
   label values P5DO6_1 PYESNO;
   label values P5DO6_2 PYESNO;
   label values P5DO7_1 PYESNO;
   label values P5DO7_2 PYESNO;
   label values P5EATLES PYESNO;
   label values P5ENR_1 PYESNO;
   label values P5ENR_2 PYESNO;
   label values P5ESNEW PYESNO;
   label values P5EVALUA PYESNO;
   label values P5EVBEH PYESNO;
   label values P5EVCUT2 PYESNO;
   label values P5EVEMO PYESNO;
   label values P5EVICT PYESNO;
   label values P5FAMPRB PYESNO;
   label values P5FRHRWK PYESNO;
   label values P5FRNUMH PYESNO;
   label values P5FUNDRS PYESNO;
   label values P5HAYTRT PYESNO;
   label values P5HELPM PYESNO;
   label values P5HELPMA PYESNO;
   label values P5HELPMF PYESNO;
   label values P5HELPMG PYESNO;
   label values P5HELPMM PYESNO;
   label values P5HELPMN PYESNO;
   label values P5HELPMO PYESNO;
   label values P5HELPMS PYESNO;
   label values P5HELPR PYESNO;
   label values P5HELPRA PYESNO;
   label values P5HELPRF PYESNO;
   label values P5HELPRG PYESNO;
   label values P5HELPRM PYESNO;
   label values P5HELPRN PYESNO;
   label values P5HELPRO PYESNO;
   label values P5HELPRS PYESNO;
   label values P5HSP_1 PYESNO;
   label values P5HSP_10 PYESNO;
   label values P5HSP_11 PYESNO;
   label values P5HSP_12 PYESNO;
   label values P5HSP_13 PYESNO;
   label values P5HSP_14 PYESNO;
   label values P5HSP_15 PYESNO;
   label values P5HSP_16 PYESNO;
   label values P5HSP_17 PYESNO;
   label values P5HSP_18 PYESNO;
   label values P5HSP_19 PYESNO;
   label values P5HSP_2 PYESNO;
   label values P5HSP_3 PYESNO;
   label values P5HSP_4 PYESNO;
   label values P5HSP_5 PYESNO;
   label values P5HSP_6 PYESNO;
   label values P5HSP_7 PYESNO;
   label values P5HSP_8 PYESNO;
   label values P5HSP_9 PYESNO;
   label values P5HUNGRY PYESNO;
   label values P5IMPAIR PYESNO;
   label values P5INTACC PYESNO;
   label values P5LANGOE PYESNO;
   label values P5LEGLN2 PYESNO;
   label values P5LESEXP PYESNO;
   label values P5LIMITW PYESNO;
   label values P5LKFS PYESNO;
   label values P5LKSA PYESNO;
   label values P5LOK_1 PYESNO;
   label values P5LOK_2 PYESNO;
   label values P5LOSEWT PYESNO;
   label values P5LUNCHS PYESNO;
   label values P5MEETN1 PYESNO;
   label values P5MEETN2 PYESNO;
   label values P5MEETN3 PYESNO;
   label values P5MEETN4 PYESNO;
   label values P5MEETTM PYESNO;
   label values P5MISSN1 PYESNO;
   label values P5MISSN2 PYESNO;
   label values P5MISSN3 PYESNO;
   label values P5MISSN4 PYESNO;
   label values P5MTEACH PYESNO;
   label values P5NAFTER PYESNO;
   label values P5NBEFOR PYESNO;
   label values P5NCEMP PYESNO;
   label values P5NCFEE PYESNO;
   label values P5NCREL PYESNO;
   label values P5NCWEL PYESNO;
   label values P5NDEG_1 PYESNO;
   label values P5NDEG_2 PYESNO;
   label values P5NICEHO PYESNO;
   label values P5NOCARE PYESNO;
   label values P5NOMONY PYESNO;
   label values P5NOTEAT PYESNO;
   label values P5NOTWEL PYESNO;
   label values P5NWEEK PYESNO;
   label values P5NWKEND PYESNO;
   label values P5OLDHOU PYESNO;
   label values P5OTHFS PYESNO;
   label values P5OTHSA PYESNO;
   label values P5PAR01 PYESNO;
   label values P5PAR02 PYESNO;
   label values P5PAR03 PYESNO;
   label values P5PAR04 PYESNO;
   label values P5PAR05 PYESNO;
   label values P5PAR06 PYESNO;
   label values P5PAR07 PYESNO;
   label values P5PAR08 PYESNO;
   label values P5PAR09 PYESNO;
   label values P5PAR10 PYESNO;
   label values P5PAR11 PYESNO;
   label values P5PAR12 PYESNO;
   label values P5PAR13 PYESNO;
   label values P5PAR14 PYESNO;
   label values P5PAR15 PYESNO;
   label values P5PAR16 PYESNO;
   label values P5PAR17 PYESNO;
   label values P5PARGRP PYESNO;
   label values P5PARTNR PYESNO;
   label values P5PAY_1 PYESNO;
   label values P5PAY_2 PYESNO;
   label values P5PAYREG PYESNO;
   label values P5PDJBFS PYESNO;
   label values P5PDJBSA PYESNO;
   label values P5PLCHW PYESNO;
   label values P5PROBLM PYESNO;
   label values P5RAFTER PYESNO;
   label values P5RBEFOR PYESNO;
   label values P5RC1_1 PYESNO;
   label values P5RC1_10 PYESNO;
   label values P5RC1_11 PYESNO;
   label values P5RC1_12 PYESNO;
   label values P5RC1_13 PYESNO;
   label values P5RC1_14 PYESNO;
   label values P5RC1_15 PYESNO;
   label values P5RC1_16 PYESNO;
   label values P5RC1_17 PYESNO;
   label values P5RC1_18 PYESNO;
   label values P5RC1_19 PYESNO;
   label values P5RC1_2 PYESNO;
   label values P5RC1_3 PYESNO;
   label values P5RC1_4 PYESNO;
   label values P5RC1_5 PYESNO;
   label values P5RC1_6 PYESNO;
   label values P5RC1_7 PYESNO;
   label values P5RC1_8 PYESNO;
   label values P5RC1_9 PYESNO;
   label values P5RC2_1 PYESNO;
   label values P5RC2_10 PYESNO;
   label values P5RC2_11 PYESNO;
   label values P5RC2_12 PYESNO;
   label values P5RC2_13 PYESNO;
   label values P5RC2_14 PYESNO;
   label values P5RC2_15 PYESNO;
   label values P5RC2_16 PYESNO;
   label values P5RC2_17 PYESNO;
   label values P5RC2_18 PYESNO;
   label values P5RC2_19 PYESNO;
   label values P5RC2_2 PYESNO;
   label values P5RC2_3 PYESNO;
   label values P5RC2_4 PYESNO;
   label values P5RC2_5 PYESNO;
   label values P5RC2_6 PYESNO;
   label values P5RC2_7 PYESNO;
   label values P5RC2_8 PYESNO;
   label values P5RC2_9 PYESNO;
   label values P5RC3_1 PYESNO;
   label values P5RC3_10 PYESNO;
   label values P5RC3_11 PYESNO;
   label values P5RC3_12 PYESNO;
   label values P5RC3_13 PYESNO;
   label values P5RC3_14 PYESNO;
   label values P5RC3_15 PYESNO;
   label values P5RC3_16 PYESNO;
   label values P5RC3_17 PYESNO;
   label values P5RC3_18 PYESNO;
   label values P5RC3_19 PYESNO;
   label values P5RC3_2 PYESNO;
   label values P5RC3_3 PYESNO;
   label values P5RC3_4 PYESNO;
   label values P5RC3_5 PYESNO;
   label values P5RC3_6 PYESNO;
   label values P5RC3_7 PYESNO;
   label values P5RC3_8 PYESNO;
   label values P5RC3_9 PYESNO;
   label values P5RC4_1 PYESNO;
   label values P5RC4_10 PYESNO;
   label values P5RC4_11 PYESNO;
   label values P5RC4_12 PYESNO;
   label values P5RC4_13 PYESNO;
   label values P5RC4_14 PYESNO;
   label values P5RC4_15 PYESNO;
   label values P5RC4_16 PYESNO;
   label values P5RC4_17 PYESNO;
   label values P5RC4_18 PYESNO;
   label values P5RC4_19 PYESNO;
   label values P5RC4_2 PYESNO;
   label values P5RC4_3 PYESNO;
   label values P5RC4_4 PYESNO;
   label values P5RC4_5 PYESNO;
   label values P5RC4_6 PYESNO;
   label values P5RC4_7 PYESNO;
   label values P5RC4_8 PYESNO;
   label values P5RC4_9 PYESNO;
   label values P5RC5_1 PYESNO;
   label values P5RC5_10 PYESNO;
   label values P5RC5_11 PYESNO;
   label values P5RC5_12 PYESNO;
   label values P5RC5_13 PYESNO;
   label values P5RC5_14 PYESNO;
   label values P5RC5_15 PYESNO;
   label values P5RC5_16 PYESNO;
   label values P5RC5_17 PYESNO;
   label values P5RC5_18 PYESNO;
   label values P5RC5_19 PYESNO;
   label values P5RC5_2 PYESNO;
   label values P5RC5_3 PYESNO;
   label values P5RC5_4 PYESNO;
   label values P5RC5_5 PYESNO;
   label values P5RC5_6 PYESNO;
   label values P5RC5_7 PYESNO;
   label values P5RC5_8 PYESNO;
   label values P5RC5_9 PYESNO;
   label values P5RC6_1 PYESNO;
   label values P5RC6_10 PYESNO;
   label values P5RC6_11 PYESNO;
   label values P5RC6_12 PYESNO;
   label values P5RC6_13 PYESNO;
   label values P5RC6_14 PYESNO;
   label values P5RC6_15 PYESNO;
   label values P5RC6_16 PYESNO;
   label values P5RC6_17 PYESNO;
   label values P5RC6_18 PYESNO;
   label values P5RC6_19 PYESNO;
   label values P5RC6_2 PYESNO;
   label values P5RC6_3 PYESNO;
   label values P5RC6_4 PYESNO;
   label values P5RC6_5 PYESNO;
   label values P5RC6_6 PYESNO;
   label values P5RC6_7 PYESNO;
   label values P5RC6_8 PYESNO;
   label values P5RC6_9 PYESNO;
   label values P5RC7_1 PYESNO;
   label values P5RC7_10 PYESNO;
   label values P5RC7_11 PYESNO;
   label values P5RC7_12 PYESNO;
   label values P5RC7_13 PYESNO;
   label values P5RC7_14 PYESNO;
   label values P5RC7_15 PYESNO;
   label values P5RC7_16 PYESNO;
   label values P5RC7_17 PYESNO;
   label values P5RC7_18 PYESNO;
   label values P5RC7_19 PYESNO;
   label values P5RC7_2 PYESNO;
   label values P5RC7_3 PYESNO;
   label values P5RC7_4 PYESNO;
   label values P5RC7_5 PYESNO;
   label values P5RC7_6 PYESNO;
   label values P5RC7_7 PYESNO;
   label values P5RC7_8 PYESNO;
   label values P5RC7_9 PYESNO;
   label values P5RCEMP PYESNO;
   label values P5RCFEE PYESNO;
   label values P5RCREL PYESNO;
   label values P5RCWEL PYESNO;
   label values P5RECPAY PYESNO;
   label values P5RELOCA PYESNO;
   label values P5REQFS PYESNO;
   label values P5REQSA PYESNO;
   label values P5RESPON PYESNO;
   label values P5RLUNCH PYESNO;
   label values P5RSVTSY PYESNO;
   label values P5RWEEK PYESNO;
   label values P5RWKEND PYESNO;
   label values P5SAFEA PYESNO;
   label values P5SAFEGO PYESNO;
   label values P5SAMTCH PYESNO;
   label values P5SCHFS PYESNO;
   label values P5SCHSA PYESNO;
   label values P5SINTRT PYESNO;
   label values P5STRCSV PYESNO;
   label values P5TAK_1 PYESNO;
   label values P5TAK_2 PYESNO;
   label values P5THINGS PYESNO;
   label values P5TRN_1 PYESNO;
   label values P5TRN_2 PYESNO;
   label values P5TUTLNG PYESNO;
   label values P5TUTMTH PYESNO;
   label values P5TUTOTH PYESNO;
   label values P5TUTRDG PYESNO;
   label values P5TUTSCI PYESNO;
   label values P5TUTSP PYESNO;
   label values P5TUTWS PYESNO;
   label values P5TVRUL2 PYESNO;
   label values P5TVRULE PYESNO;
   label values P5TWNCAR PYESNO;
   label values P5TYPAC1 PYESNO;
   label values P5TYPAC2 PYESNO;
   label values P5TYPAC3 PYESNO;
   label values P5TYPAC4 PYESNO;
   label values P5TYPAC5 PYESNO;
   label values P5TYPAC6 PYESNO;
   label values P5TYPAC7 PYESNO;
   label values P5TYPAC8 PYESNO;
   label values P5UNJBFS PYESNO;
   label values P5UNJBSA PYESNO;
   label values P5VAC_1 PYESNO;
   label values P5VAC_2 PYESNO;
   label values P5VISIO2 PYESNO;
   label values P5VISION PYESNO;
   label values P5VLIBLY PYESNO;
   label values P5VOL_N1 PYESNO;
   label values P5VOL_N2 PYESNO;
   label values P5VOL_N3 PYESNO;
   label values P5VOL_N4 PYESNO;
   label values P5VOLUNT PYESNO;
   label values P5WHEAT1 PYESNO;
   label values P5WHEAT2 PYESNO;
   label values P5WHEAT3 PYESNO;
   label values P5WHEAT4 PYESNO;
   label values P5WHEAT5 PYESNO;
   label values P5WHEAT6 PYESNO;
   label values P6ACTIV2 PYESNO;
   label values P6AGREE1 PYESNO;
   label values P6AGREE2 PYESNO;
   label values P6AGREE3 PYESNO;
   label values P6AGREE4 PYESNO;
   label values P6ASTTRT PYESNO;
   label values P6ATMNR1 PYESNO;
   label values P6ATMNR2 PYESNO;
   label values P6ATMNR3 PYESNO;
   label values P6ATMNR4 PYESNO;
   label values P6ATTNR1 PYESNO;
   label values P6ATTNR2 PYESNO;
   label values P6ATTNR3 PYESNO;
   label values P6ATTNR4 PYESNO;
   label values P6BELDGN PYESNO;
   label values P6BETSCH PYESNO;
   label values P6BOUHOU PYESNO;
   label values P6CBEFOR PYESNO;
   label values P6CCEMP PYESNO;
   label values P6CCFEE PYESNO;
   label values P6CCREL PYESNO;
   label values P6CCWEL PYESNO;
   label values P6CFTER PYESNO;
   label values P6CHI_N1 PYESNO;
   label values P6CHI_N2 PYESNO;
   label values P6CHI_N3 PYESNO;
   label values P6CHI_N4 PYESNO;
   label values P6CHIEAT PYESNO;
   label values P6CHIEVR PYESNO;
   label values P6CHJB_1 PYESNO;
   label values P6CHJB_2 PYESNO;
   label values P6CHOOSE PYESNO;
   label values P6CHREL PYESNO;
   label values P6CHSKIP PYESNO;
   label values P6CHSREL PYESNO;
   label values P6CMPINT PYESNO;
   label values P6COMMU2 PYESNO;
   label values P6COMMUN PYESNO;
   label values P6CONBEH PYESNO;
   label values P6CSCRT PYESNO;
   label values P6CSINF PYESNO;
   label values P6CSNOAG PYESNO;
   label values P6CSOTH PYESNO;
   label values P6CSPEN PYESNO;
   label values P6CSWRT PYESNO;
   label values P6CTRSCH PYESNO;
   label values P6CUTML PYESNO;
   label values P6CWEEK PYESNO;
   label values P6CWKEND PYESNO;
   label values P6DADCTZ PYESNO;
   label values P6DGBF02 PYESNO;
   label values P6DGBFEL PYESNO;
   label values P6DGHR02 PYESNO;
   label values P6DGN02 PYESNO;
   label values P6DGNELE PYESNO;
   label values P6DGNELS PYESNO;
   label values P6DGSESC PYESNO;
   label values P6DGSP02 PYESNO;
   label values P6DGSYR PYESNO;
   label values P6DIAEMO PYESNO;
   label values P6DIAG02 PYESNO;
   label values P6DIAGEL PYESNO;
   label values P6DIAGNO PYESNO;
   label values P6DIFFH2 PYESNO;
   label values P6DIFFH3 PYESNO;
   label values P6DIFFHR PYESNO;
   label values P6DNBF02 PYESNO;
   label values P6DO1_1 PYESNO;
   label values P6DO1_2 PYESNO;
   label values P6DO2_1 PYESNO;
   label values P6DO2_2 PYESNO;
   label values P6DO3_1 PYESNO;
   label values P6DO3_2 PYESNO;
   label values P6DO4_1 PYESNO;
   label values P6DO4_2 PYESNO;
   label values P6DO5_1 PYESNO;
   label values P6DO5_2 PYESNO;
   label values P6DO6_1 PYESNO;
   label values P6DO6_2 PYESNO;
   label values P6DO7_1 PYESNO;
   label values P6DO7_2 PYESNO;
   label values P6EATLES PYESNO;
   label values P6ELMDGN PYESNO;
   label values P6ENR_1 PYESNO;
   label values P6ENR_2 PYESNO;
   label values P6EVALUA PYESNO;
   label values P6EVBEH PYESNO;
   label values P6EVCUT2 PYESNO;
   label values P6EVEMO PYESNO;
   label values P6EVICT PYESNO;
   label values P6FAMPRB PYESNO;
   label values P6FAMTHR PYESNO;
   label values P6FRHRWK PYESNO;
   label values P6FRNUMH PYESNO;
   label values P6FTHCTZ PYESNO;
   label values P6HAYTRT PYESNO;
   label values P6HELPM PYESNO;
   label values P6HELPR PYESNO;
   label values P6HSD_1 PYESNO;
   label values P6HSD_2 PYESNO;
   label values P6HSP_1 PYESNO;
   label values P6HSP_10 PYESNO;
   label values P6HSP_11 PYESNO;
   label values P6HSP_12 PYESNO;
   label values P6HSP_13 PYESNO;
   label values P6HSP_14 PYESNO;
   label values P6HSP_15 PYESNO;
   label values P6HSP_2 PYESNO;
   label values P6HSP_3 PYESNO;
   label values P6HSP_4 PYESNO;
   label values P6HSP_5 PYESNO;
   label values P6HSP_6 PYESNO;
   label values P6HSP_7 PYESNO;
   label values P6HSP_8 PYESNO;
   label values P6HSP_9 PYESNO;
   label values P6HUNGRY PYESNO;
   label values P6INTACC PYESNO;
   label values P6LANGOE PYESNO;
   label values P6LESEXP PYESNO;
   label values P6LKFS PYESNO;
   label values P6LKSA PYESNO;
   label values P6LOK_1 PYESNO;
   label values P6LOK_2 PYESNO;
   label values P6LOSEWT PYESNO;
   label values P6LUNCHS PYESNO;
   label values P6MEDCNE PYESNO;
   label values P6MEETN1 PYESNO;
   label values P6MEETN2 PYESNO;
   label values P6MEETN3 PYESNO;
   label values P6MEETN4 PYESNO;
   label values P6MISSN1 PYESNO;
   label values P6MISSN2 PYESNO;
   label values P6MISSN3 PYESNO;
   label values P6MISSN4 PYESNO;
   label values P6MOMCTZ PYESNO;
   label values P6MTHCTZ PYESNO;
   label values P6NAFTER PYESNO;
   label values P6NBEFOR PYESNO;
   label values P6NCEMP PYESNO;
   label values P6NCFEE PYESNO;
   label values P6NCREL PYESNO;
   label values P6NCWEL PYESNO;
   label values P6NDEG_1 PYESNO;
   label values P6NDEG_2 PYESNO;
   label values P6NICEHO PYESNO;
   label values P6NOINSU PYESNO;
   label values P6NOMONY PYESNO;
   label values P6NOTEAT PYESNO;
   label values P6NWEEK PYESNO;
   label values P6NWKEND PYESNO;
   label values P6OLDHOU PYESNO;
   label values P6OTHFS PYESNO;
   label values P6OTHSA PYESNO;
   label values P6PAR01 PYESNO;
   label values P6PAR02 PYESNO;
   label values P6PAR03 PYESNO;
   label values P6PAR04 PYESNO;
   label values P6PAR05 PYESNO;
   label values P6PAR06 PYESNO;
   label values P6PAR07 PYESNO;
   label values P6PAR08 PYESNO;
   label values P6PAR09 PYESNO;
   label values P6PAR10 PYESNO;
   label values P6PAR11 PYESNO;
   label values P6PAR12 PYESNO;
   label values P6PAR13 PYESNO;
   label values P6PAR14 PYESNO;
   label values P6PAR15 PYESNO;
   label values P6PAR16 PYESNO;
   label values P6PAR17 PYESNO;
   label values P6PAY_1 PYESNO;
   label values P6PAY_2 PYESNO;
   label values P6PAYREG PYESNO;
   label values P6PDJBFS PYESNO;
   label values P6PDJBSA PYESNO;
   label values P6PLCHW PYESNO;
   label values P6RAFTER PYESNO;
   label values P6RBEFOR PYESNO;
   label values P6RC1_1 PYESNO;
   label values P6RC1_10 PYESNO;
   label values P6RC1_11 PYESNO;
   label values P6RC1_12 PYESNO;
   label values P6RC1_13 PYESNO;
   label values P6RC1_14 PYESNO;
   label values P6RC1_15 PYESNO;
   label values P6RC1_2 PYESNO;
   label values P6RC1_3 PYESNO;
   label values P6RC1_4 PYESNO;
   label values P6RC1_5 PYESNO;
   label values P6RC1_6 PYESNO;
   label values P6RC1_7 PYESNO;
   label values P6RC1_8 PYESNO;
   label values P6RC1_9 PYESNO;
   label values P6RC2_1 PYESNO;
   label values P6RC2_10 PYESNO;
   label values P6RC2_11 PYESNO;
   label values P6RC2_12 PYESNO;
   label values P6RC2_13 PYESNO;
   label values P6RC2_14 PYESNO;
   label values P6RC2_15 PYESNO;
   label values P6RC2_2 PYESNO;
   label values P6RC2_3 PYESNO;
   label values P6RC2_4 PYESNO;
   label values P6RC2_5 PYESNO;
   label values P6RC2_6 PYESNO;
   label values P6RC2_7 PYESNO;
   label values P6RC2_8 PYESNO;
   label values P6RC2_9 PYESNO;
   label values P6RC3_1 PYESNO;
   label values P6RC3_10 PYESNO;
   label values P6RC3_11 PYESNO;
   label values P6RC3_12 PYESNO;
   label values P6RC3_13 PYESNO;
   label values P6RC3_14 PYESNO;
   label values P6RC3_15 PYESNO;
   label values P6RC3_2 PYESNO;
   label values P6RC3_3 PYESNO;
   label values P6RC3_4 PYESNO;
   label values P6RC3_5 PYESNO;
   label values P6RC3_6 PYESNO;
   label values P6RC3_7 PYESNO;
   label values P6RC3_8 PYESNO;
   label values P6RC3_9 PYESNO;
   label values P6RC4_1 PYESNO;
   label values P6RC4_10 PYESNO;
   label values P6RC4_11 PYESNO;
   label values P6RC4_12 PYESNO;
   label values P6RC4_13 PYESNO;
   label values P6RC4_14 PYESNO;
   label values P6RC4_15 PYESNO;
   label values P6RC4_2 PYESNO;
   label values P6RC4_3 PYESNO;
   label values P6RC4_4 PYESNO;
   label values P6RC4_5 PYESNO;
   label values P6RC4_6 PYESNO;
   label values P6RC4_7 PYESNO;
   label values P6RC4_8 PYESNO;
   label values P6RC4_9 PYESNO;
   label values P6RC5_1 PYESNO;
   label values P6RC5_10 PYESNO;
   label values P6RC5_11 PYESNO;
   label values P6RC5_12 PYESNO;
   label values P6RC5_13 PYESNO;
   label values P6RC5_14 PYESNO;
   label values P6RC5_15 PYESNO;
   label values P6RC5_2 PYESNO;
   label values P6RC5_3 PYESNO;
   label values P6RC5_4 PYESNO;
   label values P6RC5_5 PYESNO;
   label values P6RC5_6 PYESNO;
   label values P6RC5_7 PYESNO;
   label values P6RC5_8 PYESNO;
   label values P6RC5_9 PYESNO;
   label values P6RC6_1 PYESNO;
   label values P6RC6_10 PYESNO;
   label values P6RC6_11 PYESNO;
   label values P6RC6_12 PYESNO;
   label values P6RC6_13 PYESNO;
   label values P6RC6_14 PYESNO;
   label values P6RC6_15 PYESNO;
   label values P6RC6_2 PYESNO;
   label values P6RC6_3 PYESNO;
   label values P6RC6_4 PYESNO;
   label values P6RC6_5 PYESNO;
   label values P6RC6_6 PYESNO;
   label values P6RC6_7 PYESNO;
   label values P6RC6_8 PYESNO;
   label values P6RC6_9 PYESNO;
   label values P6RC7_1 PYESNO;
   label values P6RC7_10 PYESNO;
   label values P6RC7_11 PYESNO;
   label values P6RC7_12 PYESNO;
   label values P6RC7_13 PYESNO;
   label values P6RC7_14 PYESNO;
   label values P6RC7_15 PYESNO;
   label values P6RC7_2 PYESNO;
   label values P6RC7_3 PYESNO;
   label values P6RC7_4 PYESNO;
   label values P6RC7_5 PYESNO;
   label values P6RC7_6 PYESNO;
   label values P6RC7_7 PYESNO;
   label values P6RC7_8 PYESNO;
   label values P6RC7_9 PYESNO;
   label values P6RCEMP PYESNO;
   label values P6RCFEE PYESNO;
   label values P6RCREL PYESNO;
   label values P6RCWEL PYESNO;
   label values P6RECPAY PYESNO;
   label values P6RELOCA PYESNO;
   label values P6REQFS PYESNO;
   label values P6REQSA PYESNO;
   label values P6RESPON PYESNO;
   label values P6RLUNCH PYESNO;
   label values P6RSVTSY PYESNO;
   label values P6RWEEK PYESNO;
   label values P6RWKEND PYESNO;
   label values P6SAFEA PYESNO;
   label values P6SAMTCH PYESNO;
   label values P6SCHFS PYESNO;
   label values P6SCHSA PYESNO;
   label values P6SEECSL PYESNO;
   label values P6SEEPSY PYESNO;
   label values P6SEESOC PYESNO;
   label values P6SEESOM PYESNO;
   label values P6SEPSYC PYESNO;
   label values P6SINTRT PYESNO;
   label values P6STRCSV PYESNO;
   label values P6SVELGB PYESNO;
   label values P6SVNEED PYESNO;
   label values P6SVNSCH PYESNO;
   label values P6SVREF PYESNO;
   label values P6SVSOME PYESNO;
   label values P6TAK_1 PYESNO;
   label values P6TAK_2 PYESNO;
   label values P6TKADDR PYESNO;
   label values P6TKCONC PYESNO;
   label values P6TKDXDN PYESNO;
   label values P6TKMTDT PYESNO;
   label values P6TKRTLN PYESNO;
   label values P6TKSOME PYESNO;
   label values P6TKSTRT PYESNO;
   label values P6TRN_2 PYESNO;
   label values P6TVRUL2 PYESNO;
   label values P6TVRULE PYESNO;
   label values P6TWNCAR PYESNO;
   label values P6TYPAC1 PYESNO;
   label values P6TYPAC2 PYESNO;
   label values P6TYPAC3 PYESNO;
   label values P6TYPAC4 PYESNO;
   label values P6TYPAC5 PYESNO;
   label values P6TYPAC6 PYESNO;
   label values P6TYPAC7 PYESNO;
   label values P6TYPAC8 PYESNO;
   label values P6UNJBFS PYESNO;
   label values P6UNJBSA PYESNO;
   label values P6VAC_1 PYESNO;
   label values P6VAC_2 PYESNO;
   label values P6VISIO2 PYESNO;
   label values P6VISION PYESNO;
   label values P6VLIBLY PYESNO;
   label values P6VOL_N1 PYESNO;
   label values P6VOL_N2 PYESNO;
   label values P6VOL_N3 PYESNO;
   label values P6VOL_N4 PYESNO;
   label values P7ACTIV2 PYESNO;
   label values P7AGREE1 PYESNO;
   label values P7AGREE2 PYESNO;
   label values P7AGREE3 PYESNO;
   label values P7AGREE4 PYESNO;
   label values P7ASTTRT PYESNO;
   label values P7ATMNR1 PYESNO;
   label values P7ATMNR2 PYESNO;
   label values P7ATMNR3 PYESNO;
   label values P7ATMNR4 PYESNO;
   label values P7ATTNR1 PYESNO;
   label values P7ATTNR2 PYESNO;
   label values P7ATTNR3 PYESNO;
   label values P7ATTNR4 PYESNO;
   label values P7BETSCH PYESNO;
   label values P7BOUHOU PYESNO;
   label values P7CHGINC PYESNO;
   label values P7CHGMAR PYESNO;
   label values P7CHGRES PYESNO;
   label values P7CHI_N1 PYESNO;
   label values P7CHI_N2 PYESNO;
   label values P7CHI_N3 PYESNO;
   label values P7CHI_N4 PYESNO;
   label values P7CHIEAT PYESNO;
   label values P7CHIEVR PYESNO;
   label values P7CHJB_1 PYESNO;
   label values P7CHJB_2 PYESNO;
   label values P7CHREL PYESNO;
   label values P7CHSKIP PYESNO;
   label values P7CHSREL PYESNO;
   label values P7COMMU2 PYESNO;
   label values P7COMMUN PYESNO;
   label values P7CONBEH PYESNO;
   label values P7COUNSL PYESNO;
   label values P7CSCRT PYESNO;
   label values P7CSINF PYESNO;
   label values P7CSNOAG PYESNO;
   label values P7CSOTH PYESNO;
   label values P7CSPEN PYESNO;
   label values P7CSWRT PYESNO;
   label values P7CUTML PYESNO;
   label values P7CUTOFF PYESNO;
   label values P7DIAGNO PYESNO;
   label values P7DIFFH2 PYESNO;
   label values P7DIFFHR PYESNO;
   label values P7DO1_1 PYESNO;
   label values P7DO1_2 PYESNO;
   label values P7DO2_1 PYESNO;
   label values P7DO2_2 PYESNO;
   label values P7DO3_1 PYESNO;
   label values P7DO3_2 PYESNO;
   label values P7DO4_1 PYESNO;
   label values P7DO4_2 PYESNO;
   label values P7DO5_1 PYESNO;
   label values P7DO5_2 PYESNO;
   label values P7DO6_1 PYESNO;
   label values P7DO6_2 PYESNO;
   label values P7DO7_1 PYESNO;
   label values P7DO7_2 PYESNO;
   label values P7EATLES PYESNO;
   label values P7EVALUA PYESNO;
   label values P7EVBEH PYESNO;
   label values P7EVCUT2 PYESNO;
   label values P7EVEMO PYESNO;
   label values P7EVICT PYESNO;
   label values P7FAMDTH PYESNO;
   label values P7FAMPRB PYESNO;
   label values P7FAMTHR PYESNO;
   label values P7FRHRWK PYESNO;
   label values P7FRNUMH PYESNO;
   label values P7GPARUL PYESNO;
   label values P7HAYTRT PYESNO;
   label values P7HELPM PYESNO;
   label values P7HELPR PYESNO;
   label values P7HOSPTL PYESNO;
   label values P7HSD_1 PYESNO;
   label values P7HSD_2 PYESNO;
   label values P7HSP_1 PYESNO;
   label values P7HSP_10 PYESNO;
   label values P7HSP_11 PYESNO;
   label values P7HSP_12 PYESNO;
   label values P7HSP_13 PYESNO;
   label values P7HSP_14 PYESNO;
   label values P7HSP_15 PYESNO;
   label values P7HSP_16 PYESNO;
   label values P7HSP_17 PYESNO;
   label values P7HSP_2 PYESNO;
   label values P7HSP_3 PYESNO;
   label values P7HSP_4 PYESNO;
   label values P7HSP_5 PYESNO;
   label values P7HSP_6 PYESNO;
   label values P7HSP_7 PYESNO;
   label values P7HSP_8 PYESNO;
   label values P7HSP_9 PYESNO;
   label values P7HUNGRY PYESNO;
   label values P7HWKRUL PYESNO;
   label values P7INDTHR PYESNO;
   label values P7LANGOE PYESNO;
   label values P7LESEXP PYESNO;
   label values P7LKFS PYESNO;
   label values P7LKSA PYESNO;
   label values P7LOK_1 PYESNO;
   label values P7LOK_2 PYESNO;
   label values P7LOSEWT PYESNO;
   label values P7LSTJOB PYESNO;
   label values P7LUNCHS PYESNO;
   label values P7MEDCNE PYESNO;
   label values P7MEETN1 PYESNO;
   label values P7MEETN2 PYESNO;
   label values P7MEETN3 PYESNO;
   label values P7MEETN4 PYESNO;
   label values P7MISSN1 PYESNO;
   label values P7MISSN2 PYESNO;
   label values P7MISSN3 PYESNO;
   label values P7MISSN4 PYESNO;
   label values P7MRTGAG PYESNO;
   label values P7MRTHIH PYESNO;
   label values P7MRTLOW PYESNO;
   label values P7MRTMID PYESNO;
   label values P7MUGGED PYESNO;
   label values P7NDEG_1 PYESNO;
   label values P7NDEG_2 PYESNO;
   label values P7NICEHO PYESNO;
   label values P7NOINSU PYESNO;
   label values P7NOMONY PYESNO;
   label values P7NOTEAT PYESNO;
   label values P7OLDHOU PYESNO;
   label values P7OTHFS PYESNO;
   label values P7OTHSA PYESNO;
   label values P7PAY_1 PYESNO;
   label values P7PAY_2 PYESNO;
   label values P7PAYREG PYESNO;
   label values P7PDJBFS PYESNO;
   label values P7PDJBSA PYESNO;
   label values P7PLCHW PYESNO;
   label values P7PSYCHI PYESNO;
   label values P7PSYCHO PYESNO;
   label values P7RC1_1 PYESNO;
   label values P7RC1_10 PYESNO;
   label values P7RC1_11 PYESNO;
   label values P7RC1_12 PYESNO;
   label values P7RC1_13 PYESNO;
   label values P7RC1_14 PYESNO;
   label values P7RC1_15 PYESNO;
   label values P7RC1_16 PYESNO;
   label values P7RC1_17 PYESNO;
   label values P7RC1_2 PYESNO;
   label values P7RC1_3 PYESNO;
   label values P7RC1_4 PYESNO;
   label values P7RC1_5 PYESNO;
   label values P7RC1_6 PYESNO;
   label values P7RC1_7 PYESNO;
   label values P7RC1_8 PYESNO;
   label values P7RC1_9 PYESNO;
   label values P7RC2_1 PYESNO;
   label values P7RC2_10 PYESNO;
   label values P7RC2_11 PYESNO;
   label values P7RC2_12 PYESNO;
   label values P7RC2_13 PYESNO;
   label values P7RC2_14 PYESNO;
   label values P7RC2_15 PYESNO;
   label values P7RC2_16 PYESNO;
   label values P7RC2_17 PYESNO;
   label values P7RC2_2 PYESNO;
   label values P7RC2_3 PYESNO;
   label values P7RC2_4 PYESNO;
   label values P7RC2_5 PYESNO;
   label values P7RC2_6 PYESNO;
   label values P7RC2_7 PYESNO;
   label values P7RC2_8 PYESNO;
   label values P7RC2_9 PYESNO;
   label values P7RC3_1 PYESNO;
   label values P7RC3_10 PYESNO;
   label values P7RC3_11 PYESNO;
   label values P7RC3_12 PYESNO;
   label values P7RC3_13 PYESNO;
   label values P7RC3_14 PYESNO;
   label values P7RC3_15 PYESNO;
   label values P7RC3_16 PYESNO;
   label values P7RC3_17 PYESNO;
   label values P7RC3_2 PYESNO;
   label values P7RC3_3 PYESNO;
   label values P7RC3_4 PYESNO;
   label values P7RC3_5 PYESNO;
   label values P7RC3_6 PYESNO;
   label values P7RC3_7 PYESNO;
   label values P7RC3_8 PYESNO;
   label values P7RC3_9 PYESNO;
   label values P7RC4_1 PYESNO;
   label values P7RC4_10 PYESNO;
   label values P7RC4_11 PYESNO;
   label values P7RC4_12 PYESNO;
   label values P7RC4_13 PYESNO;
   label values P7RC4_14 PYESNO;
   label values P7RC4_15 PYESNO;
   label values P7RC4_16 PYESNO;
   label values P7RC4_17 PYESNO;
   label values P7RC4_2 PYESNO;
   label values P7RC4_3 PYESNO;
   label values P7RC4_4 PYESNO;
   label values P7RC4_5 PYESNO;
   label values P7RC4_6 PYESNO;
   label values P7RC4_7 PYESNO;
   label values P7RC4_8 PYESNO;
   label values P7RC4_9 PYESNO;
   label values P7RC5_1 PYESNO;
   label values P7RC5_10 PYESNO;
   label values P7RC5_11 PYESNO;
   label values P7RC5_12 PYESNO;
   label values P7RC5_13 PYESNO;
   label values P7RC5_14 PYESNO;
   label values P7RC5_15 PYESNO;
   label values P7RC5_16 PYESNO;
   label values P7RC5_17 PYESNO;
   label values P7RC5_2 PYESNO;
   label values P7RC5_3 PYESNO;
   label values P7RC5_4 PYESNO;
   label values P7RC5_5 PYESNO;
   label values P7RC5_6 PYESNO;
   label values P7RC5_7 PYESNO;
   label values P7RC5_8 PYESNO;
   label values P7RC5_9 PYESNO;
   label values P7RC6_1 PYESNO;
   label values P7RC6_10 PYESNO;
   label values P7RC6_11 PYESNO;
   label values P7RC6_12 PYESNO;
   label values P7RC6_13 PYESNO;
   label values P7RC6_14 PYESNO;
   label values P7RC6_15 PYESNO;
   label values P7RC6_16 PYESNO;
   label values P7RC6_17 PYESNO;
   label values P7RC6_2 PYESNO;
   label values P7RC6_3 PYESNO;
   label values P7RC6_4 PYESNO;
   label values P7RC6_5 PYESNO;
   label values P7RC6_6 PYESNO;
   label values P7RC6_7 PYESNO;
   label values P7RC6_8 PYESNO;
   label values P7RC6_9 PYESNO;
   label values P7RC7_1 PYESNO;
   label values P7RC7_10 PYESNO;
   label values P7RC7_11 PYESNO;
   label values P7RC7_12 PYESNO;
   label values P7RC7_13 PYESNO;
   label values P7RC7_14 PYESNO;
   label values P7RC7_15 PYESNO;
   label values P7RC7_16 PYESNO;
   label values P7RC7_17 PYESNO;
   label values P7RC7_2 PYESNO;
   label values P7RC7_3 PYESNO;
   label values P7RC7_4 PYESNO;
   label values P7RC7_5 PYESNO;
   label values P7RC7_6 PYESNO;
   label values P7RC7_7 PYESNO;
   label values P7RC7_8 PYESNO;
   label values P7RC7_9 PYESNO;
   label values P7RECPAY PYESNO;
   label values P7RELOCA PYESNO;
   label values P7REQFS PYESNO;
   label values P7REQSA PYESNO;
   label values P7RESPON PYESNO;
   label values P7RLUNCH PYESNO;
   label values P7RSVTSY PYESNO;
   label values P7SAFEA PYESNO;
   label values P7SCHFS PYESNO;
   label values P7SCHSA PYESNO;
   label values P7SEECSL PYESNO;
   label values P7SEEOTH PYESNO;
   label values P7SEEPSY PYESNO;
   label values P7SEESOC PYESNO;
   label values P7SEESOM PYESNO;
   label values P7SEPSYC PYESNO;
   label values P7SINTRT PYESNO;
   label values P7SOCWRK PYESNO;
   label values P7STRCSV PYESNO;
   label values P7TAK_1 PYESNO;
   label values P7TAK_2 PYESNO;
   label values P7TRTDIA PYESNO;
   label values P7TVRUL2 PYESNO;
   label values P7TVRULE PYESNO;
   label values P7UNJBFS PYESNO;
   label values P7UNJBSA PYESNO;
   label values P7VAC_1 PYESNO;
   label values P7VAC_2 PYESNO;
   label values P7VALHIH PYESNO;
   label values P7VALLOW PYESNO;
   label values P7VALMID PYESNO;
   label values P7VIDHRS PYESNO;
   label values P7VISION PYESNO;
   label values P7VOL_N1 PYESNO;
   label values P7VOL_N2 PYESNO;
   label values P7VOL_N3 PYESNO;
   label values P7VOL_N4 PYESNO;
   label values P5AFDC PYESNO1F;
   label values P5AGOVPG PYESNO1F;
   label values P5ARTCRF PYESNO1F;
   label values P5ASTHMA PYESNO1F;
   label values P5ATHLET PYESNO1F;
   label values P5CHIP PYESNO1F;
   label values P5CHOOSE PYESNO1F;
   label values P5CHURCH PYESNO1F;
   label values P5CLBCRD PYESNO1F;
   label values P5CLUB PYESNO1F;
   label values P5CONCRT PYESNO1F;
   label values P5CONEMO PYESNO1F;
   label values P5CTRNOW PYESNO1F;
   label values P5CUBSCT PYESNO1F;
   label values P5DANCE PYESNO1F;
   label values P5FRMCLB PYESNO1F;
   label values P5FSTAMP PYESNO1F;
   label values P5HASCAL PYESNO1F;
   label values P5HASDIC PYESNO1F;
   label values P5HAYFVR PYESNO1F;
   label values P5HITAPO PYESNO1F;
   label values P5HITBCK PYESNO1F;
   label values P5HITCHO PYESNO1F;
   label values P5HITDIS PYESNO1F;
   label values P5HITFUN PYESNO1F;
   label values P5HITIGN PYESNO1F;
   label values P5HITOTH PYESNO1F;
   label values P5HITPRV PYESNO1F;
   label values P5HITSPK PYESNO1F;
   label values P5HITTO PYESNO1F;
   label values P5HITWAR PYESNO1F;
   label values P5HITYEL PYESNO1F;
   label values P5HLTHCL PYESNO1F;
   label values P5HOMECM PYESNO1F;
   label values P5LIBRAR PYESNO1F;
   label values P5MEDAID PYESNO1F;
   label values P5MILHEA PYESNO1F;
   label values P5MUSEUM PYESNO1F;
   label values P5MUSIC PYESNO1F;
   label values P5NOINSU PYESNO1F;
   label values P5NRNOW PYESNO1F;
   label values P5ORGANZ PYESNO1F;
   label values P5PARINT PYESNO1F;
   label values P5PRIINS PYESNO1F;
   label values P5PUBPRK PYESNO1F;
   label values P5RECMAG PYESNO1F;
   label values P5RECNEW PYESNO1F;
   label values P5RELNOW PYESNO1F;
   label values P5RLBCRD PYESNO1F;
   label values P5SCHLBK PYESNO1F;
   label values P5SCHLLU PYESNO1F;
   label values P5SELFCA PYESNO1F;
   label values P5SIGHT PYESNO1F;
   label values P5SINUS PYESNO1F;
   label values P5SPTEAM PYESNO1F;
   label values P5SPTEVT PYESNO1F;
   label values P5TUITIO PYESNO1F;
   label values P5TUTOR PYESNO1F;
   label values P5TVHOME PYESNO1F;
   label values P5YMCA PYESNO1F;
   label values P5ZOO PYESNO1F;
   label values P6AFDC PYESNO1F;
   label values P6AGOVPG PYESNO1F;
   label values P6ARTCRF PYESNO1F;
   label values P6ASTHMA PYESNO1F;
   label values P6ATHLET PYESNO1F;
   label values P6ATTENB PYESNO1F;
   label values P6ATTENP PYESNO1F;
   label values P6ATTENS PYESNO1F;
   label values P6CANTGT PYESNO1F;
   label values P6CHIP PYESNO1F;
   label values P6CHURCH PYESNO1F;
   label values P6CLBCRD PYESNO1F;
   label values P6CLUB PYESNO1F;
   label values P6CONEMO PYESNO1F;
   label values P6CTRNOW PYESNO1F;
   label values P6CUBSCT PYESNO1F;
   label values P6DANCE PYESNO1F;
   label values P6ESNEW PYESNO1F;
   label values P6FRMCLB PYESNO1F;
   label values P6FSTAMP PYESNO1F;
   label values P6FUNDRS PYESNO1F;
   label values P6HAYFVR PYESNO1F;
   label values P6HITAPO PYESNO1F;
   label values P6HITBCK PYESNO1F;
   label values P6HITCHO PYESNO1F;
   label values P6HITDIS PYESNO1F;
   label values P6HITFUN PYESNO1F;
   label values P6HITIGN PYESNO1F;
   label values P6HITOTH PYESNO1F;
   label values P6HITPRV PYESNO1F;
   label values P6HITSPK PYESNO1F;
   label values P6HITTO PYESNO1F;
   label values P6HITWAR PYESNO1F;
   label values P6HITYEL PYESNO1F;
   label values P6HLTHCL PYESNO1F;
   label values P6HOMECM PYESNO1F;
   label values P6LIBRAR PYESNO1F;
   label values P6MEDAID PYESNO1F;
   label values P6MEETTM PYESNO1F;
   label values P6MILHEA PYESNO1F;
   label values P6MTEACH PYESNO1F;
   label values P6MUSIC PYESNO1F;
   label values P6NOCARE PYESNO1F;
   label values P6NOTWEL PYESNO1F;
   label values P6NRNOW PYESNO1F;
   label values P6ORGANZ PYESNO1F;
   label values P6PARGRP PYESNO1F;
   label values P6PARINT PYESNO1F;
   label values P6PARTNR PYESNO1F;
   label values P6PRIINS PYESNO1F;
   label values P6PROBLM PYESNO1F;
   label values P6PUBPRK PYESNO1F;
   label values P6RELNOW PYESNO1F;
   label values P6SAFEGO PYESNO1F;
   label values P6SCHLBK PYESNO1F;
   label values P6SCHLLU PYESNO1F;
   label values P6SELFCA PYESNO1F;
   label values P6SIGHT PYESNO1F;
   label values P6SINUS PYESNO1F;
   label values P6SPTEAM PYESNO1F;
   label values P6THINGS PYESNO1F;
   label values P6TRN_1 PYESNO1F;
   label values P6TUITIO PYESNO1F;
   label values P6TVHOME PYESNO1F;
   label values P6VOLUNT PYESNO1F;
   label values P6YMCA PYESNO1F;
   label values P7AFDC PYESNO1F;
   label values P7AGOVPG PYESNO1F;
   label values P7ASTHMA PYESNO1F;
   label values P7CANTGT PYESNO1F;
   label values P7CHIP PYESNO1F;
   label values P7CONEMO PYESNO1F;
   label values P7ESNEW PYESNO1F;
   label values P7FSTAMP PYESNO1F;
   label values P7HAYFVR PYESNO1F;
   label values P7HITALW PYESNO1F;
   label values P7HITAPO PYESNO1F;
   label values P7HITCHO PYESNO1F;
   label values P7HITDIS PYESNO1F;
   label values P7HITFUN PYESNO1F;
   label values P7HITGRD PYESNO1F;
   label values P7HITIGN PYESNO1F;
   label values P7HITOTH PYESNO1F;
   label values P7HITPRV PYESNO1F;
   label values P7HITSLP PYESNO1F;
   label values P7HITWAR PYESNO1F;
   label values P7HITYEL PYESNO1F;
   label values P7MEDAID PYESNO1F;
   label values P7MEETTM PYESNO1F;
   label values P7MILHEA PYESNO1F;
   label values P7MONEDC PYESNO1F;
   label values P7NOCARE PYESNO1F;
   label values P7NOTWEL PYESNO1F;
   label values P7PARINT PYESNO1F;
   label values P7PARTNR PYESNO1F;
   label values P7PRIINS PYESNO1F;
   label values P7PROBLM PYESNO1F;
   label values P7SAFEGO PYESNO1F;
   label values P7SCHLBK PYESNO1F;
   label values P7SCHLLU PYESNO1F;
   label values P7SIGHT PYESNO1F;
   label values P7SINUS PYESNO1F;
   label values P7THINGS PYESNO1F;
   label values P7TUITIO PYESNO1F;
   label values C6MILK QUEST10F;
   label values C7MILK QUEST10F;
   label values C6MLKIND QUEST11F;
   label values C7MLKIND QUEST11F;
   label values C6JUICE QUEST12F;
   label values C7JUICE QUEST12F;
   label values C6SDAJUC QUEST13F;
   label values C7SDAJUC QUEST13F;
   label values C6SALAD QUEST14F;
   label values C7SALAD QUEST14F;
   label values C6POTATO QUEST15F;
   label values C7POTATO QUEST15F;
   label values C6CARROT QUEST16F;
   label values C7CARROT QUEST16F;
   label values C6OTHVEG QUEST17F;
   label values C7OTHVEG QUEST17F;
   label values C6FRUITS QUEST18F;
   label values C7FRUITS QUEST18F;
   label values C6FSFOOD QUEST19F;
   label values C7FSFOOD QUEST19F;
   label values C6DRKSBY QUEST2F;
   label values C6SNACBY QUEST2F;
   label values C6SWTSBY QUEST2F;
   label values C7DRKSBY QUEST2F;
   label values C7SNACBY QUEST2F;
   label values C7SWTSBY QUEST2F;
   label values C6DRKLOC QUEST3F;
   label values C6SNCLOC QUEST3F;
   label values C6SWTLOC QUEST3F;
   label values C7DRKLOC QUEST3F;
   label values C7SNCLOC QUEST3F;
   label values C7SWTLOC QUEST3F;
   label values P1PER_10 R10356F;
   label values P1PER_11 R10356F;
   label values P1PER_12 R10356F;
   label values P1PER_13 R10356F;
   label values P1PER_14 R10356F;
   label values P1PER_15 R10356F;
   label values P1PER_16 R10356F;
   label values P1PER_17 R10356F;
   label values P1PER_3 R10356F;
   label values P1PER_4 R10356F;
   label values P1PER_5 R10356F;
   label values P1PER_6 R10356F;
   label values P1PER_7 R10356F;
   label values P1PER_8 R10356F;
   label values P1PER_9 R10356F;
   label values P1HSP_1 R10500F;
   label values P1HSP_10 R10500F;
   label values P1HSP_11 R10500F;
   label values P1HSP_12 R10500F;
   label values P1HSP_13 R10500F;
   label values P1HSP_14 R10500F;
   label values P1HSP_3 R10500F;
   label values P1HSP_4 R10500F;
   label values P1HSP_5 R10500F;
   label values P1HSP_6 R10500F;
   label values P1HSP_7 R10500F;
   label values P1HSP_8 R10500F;
   label values P1HSP_9 R10500F;
   label values P1SEX_10 R10501F;
   label values P1SEX_11 R10501F;
   label values P1SEX_12 R10501F;
   label values P1SEX_13 R10501F;
   label values P1SEX_14 R10501F;
   label values P1SEX_15 R10501F;
   label values P1SEX_16 R10501F;
   label values P1SEX_17 R10501F;
   label values P1SEX_2 R10501F;
   label values P1SEX_3 R10501F;
   label values P1SEX_4 R10501F;
   label values P1SEX_5 R10501F;
   label values P1SEX_6 R10501F;
   label values P1SEX_7 R10501F;
   label values P1SEX_8 R10501F;
   label values P1SEX_9 R10501F;
   label values P1REL_10 R10530F;
   label values P1REL_11 R10530F;
   label values P1REL_12 R10530F;
   label values P1REL_13 R10530F;
   label values P1REL_14 R10530F;
   label values P1REL_15 R10530F;
   label values P1REL_16 R10530F;
   label values P1REL_17 R10530F;
   label values P1REL_2 R10530F;
   label values P1REL_3 R10530F;
   label values P1REL_4 R10530F;
   label values P1REL_5 R10530F;
   label values P1REL_6 R10530F;
   label values P1REL_7 R10530F;
   label values P1REL_8 R10530F;
   label values P1REL_9 R10530F;
   label values P1MOM_1 R10531F;
   label values P1MOM_10 R10531F;
   label values P1MOM_11 R10531F;
   label values P1MOM_12 R10531F;
   label values P1MOM_13 R10531F;
   label values P1MOM_14 R10531F;
   label values P1MOM_15 R10531F;
   label values P1MOM_16 R10531F;
   label values P1MOM_17 R10531F;
   label values P1MOM_2 R10531F;
   label values P1MOM_3 R10531F;
   label values P1MOM_4 R10531F;
   label values P1MOM_5 R10531F;
   label values P1MOM_6 R10531F;
   label values P1MOM_7 R10531F;
   label values P1MOM_8 R10531F;
   label values P1MOM_9 R10531F;
   label values P1DAD_1 R10532F;
   label values P1DAD_10 R10532F;
   label values P1DAD_11 R10532F;
   label values P1DAD_12 R10532F;
   label values P1DAD_13 R10532F;
   label values P1DAD_14 R10532F;
   label values P1DAD_15 R10532F;
   label values P1DAD_16 R10532F;
   label values P1DAD_17 R10532F;
   label values P1DAD_2 R10532F;
   label values P1DAD_3 R10532F;
   label values P1DAD_4 R10532F;
   label values P1DAD_5 R10532F;
   label values P1DAD_6 R10532F;
   label values P1DAD_7 R10532F;
   label values P1DAD_8 R10532F;
   label values P1DAD_9 R10532F;
   label values P1SIS_1 R10533F;
   label values P1SIS_10 R10533F;
   label values P1SIS_11 R10533F;
   label values P1SIS_12 R10533F;
   label values P1SIS_13 R10533F;
   label values P1SIS_14 R10533F;
   label values P1SIS_15 R10533F;
   label values P1SIS_16 R10533F;
   label values P1SIS_17 R10533F;
   label values P1SIS_2 R10533F;
   label values P1SIS_3 R10533F;
   label values P1SIS_4 R10533F;
   label values P1SIS_5 R10533F;
   label values P1SIS_6 R10533F;
   label values P1SIS_7 R10533F;
   label values P1SIS_8 R10533F;
   label values P1SIS_9 R10533F;
   label values P1BRO_1 R10534F;
   label values P1BRO_10 R10534F;
   label values P1BRO_11 R10534F;
   label values P1BRO_12 R10534F;
   label values P1BRO_13 R10534F;
   label values P1BRO_14 R10534F;
   label values P1BRO_15 R10534F;
   label values P1BRO_16 R10534F;
   label values P1BRO_17 R10534F;
   label values P1BRO_2 R10534F;
   label values P1BRO_3 R10534F;
   label values P1BRO_4 R10534F;
   label values P1BRO_5 R10534F;
   label values P1BRO_6 R10534F;
   label values P1BRO_7 R10534F;
   label values P1BRO_8 R10534F;
   label values P1BRO_9 R10534F;
   label values P1UNR_1 R10535F;
   label values P1UNR_10 R10535F;
   label values P1UNR_11 R10535F;
   label values P1UNR_12 R10535F;
   label values P1UNR_13 R10535F;
   label values P1UNR_14 R10535F;
   label values P1UNR_15 R10535F;
   label values P1UNR_16 R10535F;
   label values P1UNR_17 R10535F;
   label values P1UNR_2 R10535F;
   label values P1UNR_3 R10535F;
   label values P1UNR_4 R10535F;
   label values P1UNR_5 R10535F;
   label values P1UNR_6 R10535F;
   label values P1UNR_7 R10535F;
   label values P1UNR_8 R10535F;
   label values P1UNR_9 R10535F;
   label values P1RC1_10 R10536F;
   label values P1RC1_11 R10536F;
   label values P1RC1_12 R10536F;
   label values P1RC1_13 R10536F;
   label values P1RC1_14 R10536F;
   label values P1RC1_3 R10536F;
   label values P1RC1_4 R10536F;
   label values P1RC1_5 R10536F;
   label values P1RC1_6 R10536F;
   label values P1RC1_7 R10536F;
   label values P1RC1_8 R10536F;
   label values P1RC1_9 R10536F;
   label values P1RC2_10 R10536F;
   label values P1RC2_11 R10536F;
   label values P1RC2_12 R10536F;
   label values P1RC2_13 R10536F;
   label values P1RC2_14 R10536F;
   label values P1RC2_3 R10536F;
   label values P1RC2_4 R10536F;
   label values P1RC2_5 R10536F;
   label values P1RC2_6 R10536F;
   label values P1RC2_7 R10536F;
   label values P1RC2_8 R10536F;
   label values P1RC2_9 R10536F;
   label values P1RC3_10 R10536F;
   label values P1RC3_11 R10536F;
   label values P1RC3_12 R10536F;
   label values P1RC3_13 R10536F;
   label values P1RC3_14 R10536F;
   label values P1RC3_3 R10536F;
   label values P1RC3_4 R10536F;
   label values P1RC3_5 R10536F;
   label values P1RC3_6 R10536F;
   label values P1RC3_7 R10536F;
   label values P1RC3_8 R10536F;
   label values P1RC3_9 R10536F;
   label values P1RC4_10 R10536F;
   label values P1RC4_11 R10536F;
   label values P1RC4_12 R10536F;
   label values P1RC4_13 R10536F;
   label values P1RC4_14 R10536F;
   label values P1RC4_3 R10536F;
   label values P1RC4_4 R10536F;
   label values P1RC4_5 R10536F;
   label values P1RC4_6 R10536F;
   label values P1RC4_7 R10536F;
   label values P1RC4_8 R10536F;
   label values P1RC4_9 R10536F;
   label values P1RC5_10 R10536F;
   label values P1RC5_11 R10536F;
   label values P1RC5_12 R10536F;
   label values P1RC5_13 R10536F;
   label values P1RC5_14 R10536F;
   label values P1RC5_3 R10536F;
   label values P1RC5_4 R10536F;
   label values P1RC5_5 R10536F;
   label values P1RC5_6 R10536F;
   label values P1RC5_7 R10536F;
   label values P1RC5_8 R10536F;
   label values P1RC5_9 R10536F;
   label values P1RC6_10 R10536F;
   label values P1RC6_11 R10536F;
   label values P1RC6_12 R10536F;
   label values P1RC6_13 R10536F;
   label values P1RC6_14 R10536F;
   label values P1RC6_3 R10536F;
   label values P1RC6_4 R10536F;
   label values P1RC6_5 R10536F;
   label values P1RC6_6 R10536F;
   label values P1RC6_7 R10536F;
   label values P1RC6_8 R10536F;
   label values P1RC6_9 R10536F;
   label values P1PER_1 R10637F;
   label values P1PER_2 R10637F;
   label values P1HSP_2 R10640F;
   label values P1MISSED R10640F;
   label values P1PARTNR R10640F;
   label values P2PARTNR R10640F;
   label values P3PARTNR R10640F;
   label values P4PARTNR R10640F;
   label values P1SEX_1 R10641F;
   label values P1REL_1 R10643F;
   label values P1RC1_1 R10644F;
   label values P1RC2_1 R10644F;
   label values P1RC3_1 R10644F;
   label values P1RC4_1 R10644F;
   label values P1RC5_1 R10644F;
   label values P1RC6_1 R10644F;
   label values P1RC1_2 R10649F;
   label values P1RC2_2 R10649F;
   label values P1RC3_2 R10649F;
   label values P1RC4_2 R10649F;
   label values P1RC5_2 R10649F;
   label values P1RC6_2 R10649F;
   label values R2ELIG R2ELIG;
   label values R3R2SCHG R3R2TYCH;
   label values R3URBAN R4URBAN;
   label values R4URBAN R4URBAN;
   label values R5AGE R5AGE;
   label values R6AGE R6AGE;
   label values R6ELIG R6ELIG;
   label values R6R5SCHG R6R5SCHG;
   label values R6REGION R6REGION;
   label values R6URBAN R6URBAN;
   label values R7AGE R7AGE;
   label values R7ELIG R7ELIG;
   label values R7R6SCHG R7R6SCHG;
   label values R7REGION R7REGION;
   label values R7URBAN R7URBAN;
   label values RACE RACE;
   label values P6HDRACE RACE19F;
   label values P6HMRACE RACE19F;
   label values P7HDRACE RACE19F;
   label values P7HMRACE RACE19F;
   label values W5RACETH RACE19F;
   label values W8RACETH RACE19F;
   label values R3REGION REGION;
   label values R4REGION REGION;
   label values R5REGION REGION;
   label values RNDFLG RNDFLG;
   label values S2BNUMCH S2004F;
   label values S2CNUMCH S2005F;
   label values S211TH S2006F;
   label values S212TH S2006F;
   label values S27TH S2006F;
   label values S28TH S2006F;
   label values S2ACADRC S2006F;
   label values S2ADDTST S2006F;
   label values S2ADMISS S2006F;
   label values S2ADMN S2006F;
   label values S2APTIT S2006F;
   label values S2ASSESO S2006F;
   label values S2BRDMEM S2006F;
   label values S2CATHOL S2006F;
   label values S2CDRSTU S2006F;
   label values S2CHCESK S2006F;
   label values S2CUTOFF S2006F;
   label values S2DELAY S2006F;
   label values S2DIOCES S2006F;
   label values S2DSTROF S2006F;
   label values S2EARLCH S2006F;
   label values S2FIFTH S2006F;
   label values S2FOCUS S2006F;
   label values S2FOURTH S2006F;
   label values S2GRADE1 S2006F;
   label values S2HOMVST S2006F;
   label values S2INDVDL S2006F;
   label values S2KINDER S2006F;
   label values S2LANSTU S2006F;
   label values S2LOTTER S2006F;
   label values S2MAGSKL S2006F;
   label values S2MEETSP S2006F;
   label values S2MMSDDS S2006F;
   label values S2NEEDS S2006F;
   label values S2NETSTU S2006F;
   label values S2NINTH S2006F;
   label values S2OTHGRP S2006F;
   label values S2OTHPRI S2006F;
   label values S2OTHREL S2006F;
   label values S2OTHTRA S2006F;
   label values S2OUTRCH S2006F;
   label values S2PARISH S2006F;
   label values S2PERINT S2006F;
   label values S2PLACE S2006F;
   label values S2PRE1 S2006F;
   label values S2PRKNDR S2006F;
   label values S2PVTEAR S2006F;
   label values S2RECOME S2006F;
   label values S2REGSKL S2006F;
   label values S2RELIG S2006F;
   label values S2RPCOMM S2006F;
   label values S2SECOND S2006F;
   label values S2SIXTH S2006F;
   label values S2SPLNDS S2006F;
   label values S2STNDTE S2006F;
   label values S2TCHERS S2006F;
   label values S2TENTH S2006F;
   label values S2THIRD S2006F;
   label values S2TRANS S2006F;
   label values S2TRANSL S2006F;
   label values S2TRNWRT S2006F;
   label values S2TT1ED S2006F;
   label values S2TT1EXT S2006F;
   label values S2TT1FLS S2006F;
   label values S2TT1INC S2006F;
   label values S2TT1OTH S2006F;
   label values S2TT1PD S2006F;
   label values S2TT1PO S2006F;
   label values S2TT1SW S2006F;
   label values S2UNGRAD S2006F;
   label values S2ADLTLT S2007F;
   label values S2AFTSCH S2007F;
   label values S2AFUND S2007F;
   label values S2ATTACK S2007F;
   label values S2B4SCH S2007F;
   label values S2BFUND S2007F;
   label values S2CDRSCH S2007F;
   label values S2CFUND S2007F;
   label values S2CHCARE S2007F;
   label values S2CHGOTH S2007F;
   label values S2CHKLST S2007F;
   label values S2DETECT S2007F;
   label values S2DFUND S2007F;
   label values S2EFUND S2007F;
   label values S2FFUND S2007F;
   label values S2FMILIT S2007F;
   label values S2FOLIO S2007F;
   label values S2FORCE S2007F;
   label values S2FUNDLV S2007F;
   label values S2GFT1ST S2007F;
   label values S2GFT2ND S2007F;
   label values S2GFT3RD S2007F;
   label values S2GFT4TH S2007F;
   label values S2GFT5TH S2007F;
   label values S2GFTK S2007F;
   label values S2GFTP S2007F;
   label values S2GFTR S2007F;
   label values S2GFUND S2007F;
   label values S2HDSTRT S2007F;
   label values S2HFUND S2007F;
   label values S2HLFDAY S2007F;
   label values S2HLLPSS S2007F;
   label values S2HLLWAY S2007F;
   label values S2HRVIS S2007F;
   label values S2IEP504 S2007F;
   label values S2IFUND S2007F;
   label values S2INCROL S2007F;
   label values S2INFANT S2007F;
   label values S2JFUND S2007F;
   label values S2KFUND S2007F;
   label values S2LANSCH S2007F;
   label values S2LIMENG S2007F;
   label values S2LOCKDR S2007F;
   label values S2LSSINC S2007F;
   label values S2MGTCMM S2007F;
   label values S2MIGRSM S2007F;
   label values S2MIGRSY S2007F;
   label values S2MOBILE S2007F;
   label values S2NETSCH S2007F;
   label values S2NOGFT S2007F;
   label values S2NOTEST S2007F;
   label values S2ON504 S2007F;
   label values S2ONIEP S2007F;
   label values S2ORIENT S2007F;
   label values S2ORIGIN S2007F;
   label values S2PREKIN S2007F;
   label values S2PRGRPT S2007F;
   label values S2PRNTNG S2007F;
   label values S2PUBLIC S2007F;
   label values S2RDITST S2007F;
   label values S2RESTRM S2007F;
   label values S2SCISRV S2007F;
   label values S2SECURT S2007F;
   label values S2SIGNIN S2007F;
   label values S2SRPCRD S2007F;
   label values S2SRVOTH S2007F;
   label values S2STDSCO S2007F;
   label values S2SUMMER S2007F;
   label values S2TEST1 S2007F;
   label values S2TEST10 S2007F;
   label values S2TEST11 S2007F;
   label values S2TEST12 S2007F;
   label values S2TEST2 S2007F;
   label values S2TEST3 S2007F;
   label values S2TEST4 S2007F;
   label values S2TEST5 S2007F;
   label values S2TEST6 S2007F;
   label values S2TEST7 S2007F;
   label values S2TEST8 S2007F;
   label values S2TEST9 S2007F;
   label values S2TESTK S2007F;
   label values S2TESTP1 S2007F;
   label values S2TESTPK S2007F;
   label values S2TESTR S2007F;
   label values S2TSHORT S2007F;
   label values S2TT1 S2007F;
   label values S2TTEAM S2007F;
   label values S2UNIFRM S2007F;
   label values S2WEAPON S2007F;
   label values S2PCTHSP S2008F;
   label values S2BLKPCT S2009F;
   label values S2CHSRVD S2010F;
   label values S2MMFIVE S2023F;
   label values S2ARTOK S2028F;
   label values S2AUDTOK S2028F;
   label values S2CAFEOK S2028F;
   label values S2CLSSOK S2028F;
   label values S2COMPOK S2028F;
   label values S2GYMOK S2028F;
   label values S2LBRYOK S2028F;
   label values S2MULTOK S2028F;
   label values S2MUSCOK S2028F;
   label values S2PLAYOK S2028F;
   label values S2CMNITY S2038F;
   label values S2CRIME S2039F;
   label values S2DRUGS S2039F;
   label values S2GANGS S2039F;
   label values S2LITTER S2039F;
   label values S2TNSION S2039F;
   label values S2TRFFIC S2039F;
   label values S2VCANCY S2039F;
   label values S2VLENCE S2039F;
   label values S2ANYGRD S2042F;
   label values S2ACADEM S2043F;
   label values S2DSBLED S2043F;
   label values S2EACHGR S2043F;
   label values S2ELMENT S2043F;
   label values S2IMMATU S2043F;
   label values S2KNDRGT S2043F;
   label values S2NOPERM S2043F;
   label values S2POLICY S2043F;
   label values S2PRNTS S2043F;
   label values S2ACTOTH S2045F;
   label values S2CLASPR S2045F;
   label values S2FUNDRS S2045F;
   label values S2HVISIT S2045F;
   label values S2INVITE S2045F;
   label values S2NWSHME S2045F;
   label values S2PTAMT S2045F;
   label values S2PTCONF S2045F;
   label values S2RPRTCD S2045F;
   label values S2WRKSHP S2045F;
   label values S2ARTMSC S2046F;
   label values S2GOPCNF S2046F;
   label values S2GOPTA S2046F;
   label values S2OPENHS S2046F;
   label values S2PLYFAI S2046F;
   label values S2RGHELP S2046F;
   label values S2RSFUND S2046F;
   label values S2DISSRV S2059F;
   label values S2EVLIEP S2060F;
   label values S2REGCUR S2060F;
   label values S2REGMLA S2060F;
   label values S2TSTIEP S2060F;
   label values S2LOSLRY S2082F;
   label values S2HISLRY S2083F;
   label values S2ABSENT S2092F;
   label values S2ACTSTF S2092F;
   label values S2ADEQTE S2092F;
   label values S2CHLDOU S2092F;
   label values S2CNSNSS S2092F;
   label values S2INCENT S2092F;
   label values S2INVOLV S2092F;
   label values S2ORDR S2092F;
   label values S2OVRCRD S2092F;
   label values S2PRODEV S2092F;
   label values S2REQSTS S2092F;
   label values S2RSSIGN S2092F;
   label values S2SBMGD S2092F;
   label values S2SPPRT S2092F;
   label values S2TOGTHR S2092F;
   label values S2TRNOVR S2092F;
   label values S2WLCOME S2092F;
   label values S2GOAL1 S2093F;
   label values S2GOAL10 S2093F;
   label values S2GOAL11 S2093F;
   label values S2GOAL2 S2093F;
   label values S2GOAL3 S2093F;
   label values S2GOAL4 S2093F;
   label values S2GOAL5 S2093F;
   label values S2GOAL6 S2093F;
   label values S2GOAL7 S2093F;
   label values S2GOAL8 S2093F;
   label values S2GOAL9 S2093F;
   label values S2SUCC1 S2094F;
   label values S2SUCC10 S2094F;
   label values S2SUCC11 S2094F;
   label values S2SUCC2 S2094F;
   label values S2SUCC3 S2094F;
   label values S2SUCC4 S2094F;
   label values S2SUCC5 S2094F;
   label values S2SUCC6 S2094F;
   label values S2SUCC7 S2094F;
   label values S2SUCC8 S2094F;
   label values S2SUCC9 S2094F;
   label values S267A1B1 S2095F;
   label values S267A1B2 S2095F;
   label values S267A1B3 S2095F;
   label values S267A1B4 S2095F;
   label values S267A1B5 S2095F;
   label values S267A1B6 S2095F;
   label values S267A2B1 S2095F;
   label values S267A2B2 S2095F;
   label values S267A2B3 S2095F;
   label values S267A2B4 S2095F;
   label values S267A2B5 S2095F;
   label values S267A2B6 S2095F;
   label values S267A3B1 S2095F;
   label values S267A3B2 S2095F;
   label values S267A3B3 S2095F;
   label values S267A3B4 S2095F;
   label values S267A3B5 S2095F;
   label values S267A3B6 S2095F;
   label values S267A4B1 S2095F;
   label values S267A4B2 S2095F;
   label values S267A4B3 S2095F;
   label values S267A4B4 S2095F;
   label values S267A4B5 S2095F;
   label values S267A4B6 S2095F;
   label values S267A5B1 S2095F;
   label values S267A5B2 S2095F;
   label values S267A5B3 S2095F;
   label values S267A5B4 S2095F;
   label values S267A5B5 S2095F;
   label values S267A5B6 S2095F;
   label values S267A6B1 S2095F;
   label values S267A6B2 S2095F;
   label values S267A6B3 S2095F;
   label values S267A6B4 S2095F;
   label values S267A6B5 S2095F;
   label values S267A6B6 S2095F;
   label values S2ATENDN S2096F;
   label values S2DVELOP S2096F;
   label values S2INVLME S2096F;
   label values S2OTHINF S2096F;
   label values S2PRFLVL S2096F;
   label values S2SAFETY S2096F;
   label values S2SCORES S2096F;
   label values S2STFSPP S2096F;
   label values S2SUPORT S2096F;
   label values S2GNDER S2097F;
   label values S2PRACE S2099F;
   label values S2EDLVL S2122F;
   label values S2KNWNME S2131F;
   label values S2MMCOMP S2132F;
   label values S2KENRLS S2KENRLS;
   label values S2KMINOR S2KMINOR;
   label values S2KPUPRI S2KPUPRI;
   label values S2KSCLVL S2KSCLVL;
   label values S2KSCTYP S2KSCTYP;
   label values S3PUPRI S3PUPRI;
   label values S3SCTYP S3SCTYP;
   label values S4ADAFLG S4003F;
   label values S4AINDFL S4003F;
   label values S4ASINFL S4003F;
   label values S4ASNFLG S4003F;
   label values S4BLAKFL S4003F;
   label values S4BLKFLG S4003F;
   label values S4HISPFL S4003F;
   label values S4HSPFLG S4003F;
   label values S4INDFLG S4003F;
   label values S4OTHFLG S4003F;
   label values S4TOTHFL S4003F;
   label values S4WHTEFL S4003F;
   label values S4WHTFLG S4003F;
   label values S41STYR S4007F;
   label values S47TH S4007F;
   label values S48TH S4007F;
   label values S4FIFTH S4007F;
   label values S4FOCUS S4007F;
   label values S4FOURTH S4007F;
   label values S4KINDER S4007F;
   label values S4PRKNDR S4007F;
   label values S4PUBLIC S4007F;
   label values S4SIXTH S4007F;
   label values S4SPLNDS S4007F;
   label values S4THIRD S4007F;
   label values S4CATHOL S4008F;
   label values S4CHCESK S4008F;
   label values S4DIOCES S4008F;
   label values S4EARLCH S4008F;
   label values S4OTHPRI S4008F;
   label values S4OTHREL S4008F;
   label values S4PARISH S4008F;
   label values S4PVTEAR S4008F;
   label values S4REGSKL S4008F;
   label values S4HSPPCT S4009F;
   label values S4BLKPCT S4010F;
   label values S4TT1 S4012F;
   label values S4ADMN S4013F;
   label values S4BRDMEM S4013F;
   label values S4CDRSTU S4013F;
   label values S4DSTROF S4013F;
   label values S4GFT1ST S4013F;
   label values S4GFT2ND S4013F;
   label values S4GFT3RD S4013F;
   label values S4GFT4TH S4013F;
   label values S4GFT5TH S4013F;
   label values S4GFTK S4013F;
   label values S4GFTP S4013F;
   label values S4GFTR S4013F;
   label values S4HOMVST S4013F;
   label values S4LANSTU S4013F;
   label values S4MEETSP S4013F;
   label values S4MMSDDS S4013F;
   label values S4NETSTU S4013F;
   label values S4OTHGRP S4013F;
   label values S4OTHTRA S4013F;
   label values S4OUTRCH S4013F;
   label values S4RPCOMM S4013F;
   label values S4TCHERS S4013F;
   label values S4TEST1 S4013F;
   label values S4TEST10 S4013F;
   label values S4TEST11 S4013F;
   label values S4TEST12 S4013F;
   label values S4TEST2 S4013F;
   label values S4TEST3 S4013F;
   label values S4TEST4 S4013F;
   label values S4TEST5 S4013F;
   label values S4TEST6 S4013F;
   label values S4TEST7 S4013F;
   label values S4TEST8 S4013F;
   label values S4TEST9 S4013F;
   label values S4TESTK S4013F;
   label values S4TESTP1 S4013F;
   label values S4TESTPK S4013F;
   label values S4TESTR S4013F;
   label values S4TRANSL S4013F;
   label values S4TRNWRT S4013F;
   label values S4TT1ED S4013F;
   label values S4TT1EXT S4013F;
   label values S4TT1FLS S4013F;
   label values S4TT1INC S4013F;
   label values S4TT1PD S4013F;
   label values S4TT1PO S4013F;
   label values S4TT1SW S4013F;
   label values S4CHSRVD S4014F;
   label values S4ADLTLT S4015F;
   label values S4AFTSCH S4015F;
   label values S4AFUND S4015F;
   label values S4ATTACK S4015F;
   label values S4B4SCH S4015F;
   label values S4BFUND S4015F;
   label values S4CDRSCH S4015F;
   label values S4CFUND S4015F;
   label values S4CHCARE S4015F;
   label values S4CHKLST S4015F;
   label values S4DETECT S4015F;
   label values S4DFUND S4015F;
   label values S4EFUND S4015F;
   label values S4FFUND S4015F;
   label values S4FMILIT S4015F;
   label values S4FOLIO S4015F;
   label values S4FORCE S4015F;
   label values S4GFUND S4015F;
   label values S4HFUND S4015F;
   label values S4HLLPSS S4015F;
   label values S4HLLWAY S4015F;
   label values S4HRVIS S4015F;
   label values S4IEP504 S4015F;
   label values S4IFUND S4015F;
   label values S4JFUND S4015F;
   label values S4KFUND S4015F;
   label values S4LANSCH S4015F;
   label values S4LIMENG S4015F;
   label values S4LOCKDR S4015F;
   label values S4MIGRSY S4015F;
   label values S4NETSCH S4015F;
   label values S4NOGFT S4015F;
   label values S4ON504 S4015F;
   label values S4ONIEP S4015F;
   label values S4ORIENT S4015F;
   label values S4PRGRPT S4015F;
   label values S4PRNTNG S4015F;
   label values S4RESTRM S4015F;
   label values S4SCISRV S4015F;
   label values S4SECURT S4015F;
   label values S4SIGNIN S4015F;
   label values S4SRPCRD S4015F;
   label values S4STDSCO S4015F;
   label values S4SUMMER S4015F;
   label values S4UNIFRM S4015F;
   label values S4WEAPON S4015F;
   label values S4CHLDNM S4016F;
   label values S4ARTOK S4017F;
   label values S4AUDTOK S4017F;
   label values S4CAFEOK S4017F;
   label values S4CLSSOK S4017F;
   label values S4COMPOK S4017F;
   label values S4GYMOK S4017F;
   label values S4LBRYOK S4017F;
   label values S4MULTOK S4017F;
   label values S4MUSCOK S4017F;
   label values S4PLAYOK S4017F;
   label values S4INSTCM S4018F;
   label values S4CMNITY S4022F;
   label values S4CRIME S4023F;
   label values S4DRUGS S4023F;
   label values S4GANGS S4023F;
   label values S4LITTER S4023F;
   label values S4TNSION S4023F;
   label values S4TRFFIC S4023F;
   label values S4VCANCY S4023F;
   label values S4VLENCE S4023F;
   label values S4NOTEST S4024F;
   label values S4ACADEM S4027F;
   label values S4ANYGRD S4027F;
   label values S4DSBLED S4027F;
   label values S4EACHGR S4027F;
   label values S4ELMENT S4027F;
   label values S4IMMATU S4027F;
   label values S4KNDRGT S4027F;
   label values S4NOPERM S4027F;
   label values S4POLICY S4027F;
   label values S4PRNTS S4027F;
   label values S4CLASPR S4029F;
   label values S4FUNDRS S4029F;
   label values S4HVISIT S4029F;
   label values S4INVITE S4029F;
   label values S4NWSHME S4029F;
   label values S4PTAMT S4029F;
   label values S4PTCONF S4029F;
   label values S4RPRTCD S4029F;
   label values S4WRKSHP S4029F;
   label values S4MGTCMM S4030F;
   label values S4DISSRV S4043F;
   label values S4EVLIEP S4044F;
   label values S4REGCUR S4044F;
   label values S4REGMLA S4044F;
   label values S4TSTIEP S4044F;
   label values S4LOSLRY S4061F;
   label values S4HISLRY S4062F;
   label values S4ETHNIC S4063F;
   label values S4TEABLK S4064F;
   label values S4OBSVNT S4068F;
   label values S4OBSVTT S4068F;
   label values S4GOAL1 S4069F;
   label values S4GOAL10 S4069F;
   label values S4GOAL11 S4069F;
   label values S4GOAL2 S4069F;
   label values S4GOAL3 S4069F;
   label values S4GOAL4 S4069F;
   label values S4GOAL5 S4069F;
   label values S4GOAL6 S4069F;
   label values S4GOAL7 S4069F;
   label values S4GOAL8 S4069F;
   label values S4GOAL9 S4069F;
   label values S4SUCC1 S4070F;
   label values S4SUCC10 S4070F;
   label values S4SUCC11 S4070F;
   label values S4SUCC2 S4070F;
   label values S4SUCC3 S4070F;
   label values S4SUCC4 S4070F;
   label values S4SUCC5 S4070F;
   label values S4SUCC6 S4070F;
   label values S4SUCC7 S4070F;
   label values S4SUCC8 S4070F;
   label values S4SUCC9 S4070F;
   label values S4ABSENT S4071F;
   label values S4ACTSTF S4071F;
   label values S4ADEQTE S4071F;
   label values S4CHLDOU S4071F;
   label values S4CNSNSS S4071F;
   label values S4INCENT S4071F;
   label values S4INVOLV S4071F;
   label values S4ORDR S4071F;
   label values S4OVRCRD S4071F;
   label values S4PRODEV S4071F;
   label values S4REQSTS S4071F;
   label values S4RSSIGN S4071F;
   label values S4SBMGD S4071F;
   label values S4SPPRT S4071F;
   label values S4TOGTHR S4071F;
   label values S4TRNOVR S4071F;
   label values S4WLCOME S4071F;
   label values S4ATENDN S4072F;
   label values S4DVELOP S4072F;
   label values S4INVLME S4072F;
   label values S4OTHINF S4072F;
   label values S4PRFLVL S4072F;
   label values S4SAFETY S4072F;
   label values S4SCORES S4072F;
   label values S4STFSPP S4072F;
   label values S4SUPORT S4072F;
   label values S4GNDER S4073F;
   label values S4CRSADM S4088F;
   label values S4CRSCDV S4088F;
   label values S4CRSECE S4088F;
   label values S4CRSELE S4088F;
   label values S4CRSESL S4088F;
   label values S4CRSMTM S4088F;
   label values S4CRSMTR S4088F;
   label values S4CRSSCI S4088F;
   label values S4CRSSPE S4088F;
   label values S4EDLVL S4089F;
   label values S4KNWNME S4098F;
   label values S4MMCOMP S4099F;
   label values S4YYCOMP S4101F;
   label values S4ENRLF S4ENRLF;
   label values S4ENRLK S4ENRLK;
   label values S4ENRLS S4ENRLS;
   label values S4MINOR S4MINOR;
   label values S4PUPRI S4PUPRI;
   label values S4RETNEW S4RETNEW;
   label values S4SCLVL S4SCLVL;
   label values S4SCTYP S4SCTYP;
   label values S5ENRLS S504F;
   label values S5MINOR S505F;
   label values S5RLNCH S508F;
   label values S5PUPRI S509F;
   label values S5SCTYP S510F;
   label values S5SCLVL S511F;
   label values S5ADA S5ADA;
   label values S5ADMNCM S5ADMNCM;
   label values S5ABSENT S5AGREE;
   label values S5CHLDOU S5AGREE;
   label values S5CNSNSS S5AGREE;
   label values S5INVOLV S5AGREE;
   label values S5ORDR S5AGREE;
   label values S5OVRCRD S5AGREE;
   label values S5SPPRT S5AGREE;
   label values S5TRNOVR S5AGREE;
   label values S5WLCOME S5AGREE;
   label values S5AMBUSF S5AMBUSF;
   label values S5AMBUSL S5AMBUSL;
   label values S5BLKPCT S5BLKPCT;
   label values S5BNUMCH S5BNUMCH;
   label values S5PRINBX S5BOXCHK;
   label values S5BRKCLR S5BRKCLR;
   label values S5BRKEND S5BRKEND;
   label values S5BRKSTR S5BRKSTR;
   label values S5BRKLOC S5BRKTYP;
   label values S5CHLDNM S5CHLDNM;
   label values S5DISSRV S5DISSRV;
   label values S5EDLVL S5EDLVL;
   label values S5ENRLT S5ENRLT;
   label values S5ETHNIC S5ETHNIC;
   label values S5ARTOK S5FACOK;
   label values S5AUDTOK S5FACOK;
   label values S5CAFEOK S5FACOK;
   label values S5CLSSOK S5FACOK;
   label values S5COMPOK S5FACOK;
   label values S5GYMOK S5FACOK;
   label values S5MULTOK S5FACOK;
   label values S5MUSCOK S5FACOK;
   label values S5GNDER S5GNDER;
   label values S5GOAL10 S5GOAL;
   label values S5GOAL11 S5GOAL;
   label values S5GOAL12 S5GOAL;
   label values S5GOAL13 S5GOAL;
   label values S5GOAL14 S5GOAL;
   label values S5GOAL5 S5GOAL;
   label values S5GOAL6 S5GOAL;
   label values S5GOAL8 S5GOAL;
   label values S5GOAL9 S5GOAL;
   label values S5HSPPCT S5HSPPCT;
   label values S5INSTCM S5INSTCM;
   label values S5LEPSCH S5LEPSCH;
   label values S5LEPTHR S5LEPTHR;
   label values S5MAJOR S5MAJOR;
   label values S5MMCOMP S5MMCOMP;
   label values S5CLASPR S5OFTACT;
   label values S5HVISIT S5OFTACT;
   label values S5INVITE S5OFTACT;
   label values S5NWSHME S5OFTACT;
   label values S5PTAMT S5OFTACT;
   label values S5PTCONF S5OFTACT;
   label values S5RPRTCD S5OFTACT;
   label values S5STDSHM S5OFTACT;
   label values S5OTHPCT S5OTHPCT;
   label values S5CRIME S5PROBLM;
   label values S5DRUGS S5PROBLM;
   label values S5GANGS S5PROBLM;
   label values S5LITTER S5PROBLM;
   label values S5TNSION S5PROBLM;
   label values S5TRFFIC S5PROBLM;
   label values S5VCANCY S5PROBLM;
   label values S5VLENCE S5PROBLM;
   label values S5SCINC S5SCINC;
   label values S5STRTAM S5STRTAM;
   label values S5TEABLK S5TEABLK;
   label values S5TEAWHT S5TEAWHT;
   label values S5TT1 S5TT1F;
   label values S5TT1TA S5TT1SW;
   label values S5YYCOMP S5YYCOMP;
   label values S67TH S67TH;
   label values S68TH S68TH;
   label values S6ABSENT S6ABSENT;
   label values S6ADA S6ADA;
   label values S6ADAFLG S6ADAFLG;
   label values S6AFTSCH S6AFTSCH;
   label values S6ALCOHO S6ALCOHO;
   label values S6AMBUSF S6AMBUSF;
   label values S6AMBUSL S6AMBUSL;
   label values S6ARTOK S6ARTOK;
   label values S6ASNFLG S6ASNFLG;
   label values S6ATTACK S6ATTACK;
   label values S6AUDTOK S6AUDTOK;
   label values S6B4SCH S6B4SCH;
   label values S6BLKFLG S6BLKFLG;
   label values S6BLKPCT S6BLKPCT;
   label values S6BNUMCH S6BNUMCH;
   label values S6BRKCLR S6BRKCLR;
   label values S6BRKEND S6BRKEND;
   label values S6BRKLOC S6BRKLOC;
   label values S6BRKSTR S6BRKSTR;
   label values S6CAFEOK S6CAFEOK;
   label values S6CARTE S6CARTE;
   label values S6CATHOL S6CATHOL;
   label values S6CHCESK S6CHCESK;
   label values S6CHLDOU S6CHLDOU;
   label values S6CLSSOK S6CLSSOK;
   label values S6CNSNSS S6CNSNSS;
   label values S6COMPOK S6COMPOK;
   label values S6COSTLY S6COSTLY;
   label values S6CRIME S6CRIME;
   label values S6DETECT S6DETECT;
   label values S6DIOCES S6DIOCES;
   label values S6DRUGS S6DRUGS;
   label values S6EARLCH S6EARLCH;
   label values S6EDLVL S6EDLVL;
   label values S6ENRL5 S6ENRL5F;
   label values S6ENRLS S6ENRLS;
   label values S6ESCORT S6ESCORT;
   label values S6FEWSTD S6FEWSTD;
   label values S6FIFTH S6FIFTH;
   label values S6FORCE S6FORCE;
   label values S6GANGS S6GANGS;
   label values S6GFTPRG S6GFTPRG;
   label values S6GNDER S6GNDER;
   label values S6GOAL10 S6GOA10F;
   label values S6GOAL11 S6GOA11F;
   label values S6GOAL12 S6GOA12F;
   label values S6GOAL13 S6GOA13F;
   label values S6GOAL14 S6GOA14F;
   label values S6GOAL5 S6GOAL5F;
   label values S6GOAL6 S6GOAL6F;
   label values S6GOAL8 S6GOAL8F;
   label values S6GOAL9 S6GOAL9F;
   label values S6GYMOK S6GYMOK;
   label values S6HLLPSS S6HLLPSS;
   label values S6HLLWAY S6HLLWAY;
   label values S6HOWFUL S6HOWFUL;
   label values S6HSPFLG S6HSPFLG;
   label values S6HSPPCT S6HSPPCT;
   label values S6ILDRUG S6ILDRUG;
   label values S6INDFLG S6INDFLG;
   label values S6INTCOM S6INTCOM;
   label values S6INVOLV S6INVOLV;
   label values S6LATEST S6LATEST;
   label values S6LEPFIF S6LEPFIF;
   label values S6LEPSCH S6LEPSCH;
   label values S6LITTER S6LITTER;
   label values S6LOCKDR S6LOCKDR;
   label values S6MAJOR S6MAJOR;
   label values S6MINOR S6MINOR;
   label values S6MMCOMP S6MMCOMP;
   label values S6MULTOK S6MULTOK;
   label values S6MUSCOK S6MUSCOK;
   label values S6NOFACL S6NOFACL;
   label values S6NOSTAF S6NOSTAF;
   label values S6ORDR S6ORDR;
   label values S6OTHER S6OTHER;
   label values S6OTHFLG S6OTHFLG;
   label values S6OTHPCT S6OTHPCT;
   label values S6OTHREL S6OTHREL;
   label values S6OVRCRD S6OVRCRD;
   label values S6PARISH S6PARISH;
   label values S6PRINBX S6PRINBX;
   label values S6PRKNDR S6PRKNDR;
   label values S6PUBLIC S6PUBLIC;
   label values S6PUPRI S6PUPRI;
   label values S6PURBK S6PURBK;
   label values S6PURBRD S6PURBRD;
   label values S6PURCHO S6PURCHO;
   label values S6PURICE S6PURICE;
   label values S6PURJUC S6PURJUC;
   label values S6PURLBK S6PURLBK;
   label values S6PURLSL S6PURLSL;
   label values S6PURMLK S6PURMLK;
   label values S6PURNJC S6PURNJC;
   label values S6PUROTH S6PUROTH;
   label values S6PURSKM S6PURSKM;
   label values S6PURSLT S6PURSLT;
   label values S6PURVEG S6PURVEG;
   label values S6PURVJC S6PURVJC;
   label values S6PURWTR S6PURWTR;
   label values S6PURYGT S6PURYGT;
   label values S6PURYOG S6PURYOG;
   label values S6PVTEAR S6PVTEAR;
   label values S6RESTRM S6RESTRM;
   label values S5RLCH_I S6RLCH_I;
   label values S6RLCH_I S6RLCH_I;
   label values S6SCHEYY S6SCHEYY;
   label values S6SCLVL S6SCLVL;
   label values S6SCTYP S6SCTYP;
   label values S6SECURT S6SECURT;
   label values S6SIGNIN S6SIGNIN;
   label values S6SIXTH S6SIXTH;
   label values S6SPLNDS S6SPLNDS;
   label values S6SPPRT S6SPPRT;
   label values S6STABNT S6STABNT;
   label values S6STORE S6STORE;
   label values S6STRTAM S6STRTAM;
   label values S6TARDY S6TARDY;
   label values S6TEST3 S6TEST3F;
   label values S6TEST4 S6TEST4F;
   label values S6TEST5 S6TEST5F;
   label values S6TEST6 S6TEST6F;
   label values S6TEST7 S6TEST7F;
   label values S6TEST8 S6TEST8F;
   label values S6TNSION S6TNSION;
   label values S6TRFFIC S6TRFFIC;
   label values S6TRNOVR S6TRNOVR;
   label values S6TT1CLA S6TT1CLA;
   label values S6TT1ED S6TT1ED;
   label values S6TT1EXT S6TT1EXT;
   label values S6TT1 S6TT1F;
   label values S6TT1FLS S6TT1FLS;
   label values S6TT1INC S6TT1INC;
   label values S6TT1PD S6TT1PD;
   label values S6TT1PO S6TT1PO;
   label values S6TT1TA S6TT1TA;
   label values S6TTLSUM S6TTLSUM;
   label values S6USDABR S6USDABR;
   label values S6VANDAL S6VANDAL;
   label values S6VCANCY S6VCANCY;
   label values S6VENDIN S6VENDIN;
   label values S6VLENCE S6VLENCE;
   label values S6WEAPON S6WEAPON;
   label values S6WHTFLG S6WHTFLG;
   label values S6WLCOME S6WLCOME;
   label values S6YYCOMP S6YYCOMP;
   label values S7ADA S7ADA;
   label values S7ADAFLG S7ADAFLG;
   label values S7ADANUM S7ADANUM;
   label values S7AFTNO S7AFTNO;
   label values S7AFTPCT S7AFTPCT;
   label values S7ALCOHL S7ALCOHL;
   label values S7APPRCH S7APPRCH;
   label values S7ARTOK S7ARTOK;
   label values S7ASNFLG S7ASNFLG;
   label values S7AUDTOK S7AUDTOK;
   label values S7BILNO S7BILNO;
   label values S7BILPCT S7BILPCT;
   label values S7BLKFLG S7BLKFLG;
   label values S7BLKPCT S7BLKPCT;
   label values S7BRKCLR S7BRKCLR;
   label values S7BRKEND S7BRKEND;
   label values S7BRKLOC S7BRKLOC;
   label values S7BRKSTR S7BRKSTR;
   label values S7BULLY S7BULLY;
   label values S7CAFEOK S7CAFEOK;
   label values S7CARTE S7CARTE;
   label values S7CATHOL S7CATHOL;
   label values S7CHCESK S7CHCESK;
   label values S7CLSCUT S7CLSCUT;
   label values S7CLSSOK S7CLSSOK;
   label values S7COMPOK S7COMPOK;
   label values S7CONFLC S7CONFLC;
   label values S7COSTLY S7COSTLY;
   label values S7CRIME S7CRIME;
   label values S7DISORD S7DISORD;
   label values S7DRGFRQ S7DRGFRQ;
   label values S7DRUGS S7DRUGS;
   label values S7ENRL8 S7ENRL8F;
   label values S7ENRLS S7ENRLS;
   label values S7ESLNO S7ESLNO;
   label values S7ESLPCT S7ESLPCT;
   label values S7FEWSTD S7FEWSTD;
   label values S7GANGS S7GANGS;
   label values S7GIFNO S7GIFNO;
   label values S7GIFPCT S7GIFPCT;
   label values S7GNDER S7GNDER;
   label values S7GNGACT S7GNGACT;
   label values S7GOAL11 S7GOA11F;
   label values S7GOAL12 S7GOA12F;
   label values S7GOAL13 S7GOA13F;
   label values S7GOAL14 S7GOA14F;
   label values S7GYMOK S7GYMOK;
   label values S7HIGGRD S7HIGGRD;
   label values S7HIGHED S7HIGHED;
   label values S7HOWFUL S7HOWFUL;
   label values S7HSPFLG S7HSPFLG;
   label values S7HSPPCT S7HSPPCT;
   label values S7INDFLG S7INDFLG;
   label values S7INSCH S7INSCH;
   label values S7INVOLV S7INVOLV;
   label values S7LATEST S7LATEST;
   label values S7LBRYOK S7LBRYOK;
   label values S7LEPETH S7LEPETH;
   label values S7LEPSCH S7LEPSCH;
   label values S7LOWGRD S7LOWGRD;
   label values S7MINOR S7MINOR;
   label values S7MMCOMP S7MMCOMP;
   label values S7MTINO S7MTINO;
   label values S7MTIPCT S7MTIPCT;
   label values S7MULTOK S7MULTOK;
   label values S7MUSCOK S7MUSCOK;
   label values S7NOFACL S7NOFACL;
   label values S7NOSTAF S7NOSTAF;
   label values S7OTHER S7OTHER;
   label values S7OTHFLG S7OTHFLG;
   label values S7OTHPCT S7OTHPCT;
   label values S7OTHREL S7OTHREL;
   label values S7OUTSCH S7OUTSCH;
   label values S7OVRCRD S7OVRCRD;
   label values S7PLAYOK S7PLAYOK;
   label values S7PUPRI S7PUPRI;
   label values S7PURBK S7PURBK;
   label values S7PURBRD S7PURBRD;
   label values S7PURCHO S7PURCHO;
   label values S7PURICE S7PURICE;
   label values S7PURJUC S7PURJUC;
   label values S7PURLBK S7PURLBK;
   label values S7PURLSL S7PURLSL;
   label values S7PURMLK S7PURMLK;
   label values S7PURNJC S7PURNJC;
   label values S7PUROTH S7PUROTH;
   label values S7PURSKM S7PURSKM;
   label values S7PURSLT S7PURSLT;
   label values S7PURVEG S7PURVEG;
   label values S7PURVJC S7PURVJC;
   label values S7PURWTR S7PURWTR;
   label values S7PURYGT S7PURYGT;
   label values S7PURYOG S7PURYOG;
   label values S7RACTEN S7RACTEN;
   label values S7RDINO S7RDINO;
   label values S7RDIPCT S7RDIPCT;
   label values S7REGSKL S7REGSKL;
   label values S7REQUIR S7REQUIR;
   label values S7RLCH_I S7RLCH_I;
   label values S7SCTYP S7SCTYP;
   label values S7SPDNO S7SPDNO;
   label values S7SPDPCT S7SPDPCT;
   label values S7STNDRD S7STNDRD;
   label values S7STORE S7STORE;
   label values S7THEFT S7THEFT;
   label values S7TNSION S7TNSION;
   label values S7TRNOVR S7TRNOVR;
   label values S7USDABR S7USDABR;
   label values S7VANDAL S7VANDAL;
   label values S7VCANCY S7VCANCY;
   label values S7VENDIN S7VENDIN;
   label values S7WHTFLG S7WHTFLG;
   label values S7YYCOMP S7YYCOMP;
   label values R4R2SCHG SCHG;
   label values R4R3SCHG SCHG;
   label values R5R4SCHG SCHG;
   label values F2SPECS SPECS;
   label values F4SPECS SPECS;
   label values F5SPECS SPECS;
   label values A12YRK1 SUPPRESS;
   label values A12YRK2 SUPPRESS;
   label values A1MULGR SUPPRESS;
   label values A1PR1ST SUPPRESS;
   label values A1REGK SUPPRESS;
   label values A1T1ST SUPPRESS;
   label values A1T2ND SUPPRESS;
   label values A1T3RD SUPPRESS;
   label values A1TCHNS SUPPRESS;
   label values A1TFLPN SUPPRESS;
   label values A1TJPNS SUPPRESS;
   label values A1TKRN SUPPRESS;
   label values A1TOTAS SUPPRESS;
   label values A1TOTLG SUPPRESS;
   label values A1TPRE1 SUPPRESS;
   label values A1TPREK SUPPRESS;
   label values A1TREGK SUPPRESS;
   label values A1TRNK SUPPRESS;
   label values A1TTRNK SUPPRESS;
   label values A1TVTNM SUPPRESS;
   label values A1UNGR SUPPRESS;
   label values A2AUTSM SUPPRESS;
   label values A2CCHNS SUPPRESS;
   label values A2CFLPN SUPPRESS;
   label values A2CJPNS SUPPRESS;
   label values A2CKRN SUPPRESS;
   label values A2CVTNM SUPPRESS;
   label values A2DEAF SUPPRESS;
   label values A2LNGOS SUPPRESS;
   label values A2MULTI SUPPRESS;
   label values A2OTASN SUPPRESS;
   label values A2OTLNG SUPPRESS;
   label values A4AUTSM SUPPRESS;
   label values A4CCHNS SUPPRESS;
   label values A4CFLPN SUPPRESS;
   label values A4CJPNS SUPPRESS;
   label values A4CKRN SUPPRESS;
   label values A4CVTNM SUPPRESS;
   label values A4DEAF SUPPRESS;
   label values A4ICHNS SUPPRESS;
   label values A4IFLPN SUPPRESS;
   label values A4IJPNS SUPPRESS;
   label values A4IKRN SUPPRESS;
   label values A4IOTAS SUPPRESS;
   label values A4IOTLN SUPPRESS;
   label values A4ISPNH SUPPRESS;
   label values A4IVTNM SUPPRESS;
   label values A4K2YR1 SUPPRESS;
   label values A4K2YR2 SUPPRESS;
   label values A4KAONLY SUPPRESS;
   label values A4KAUTS SUPPRESS;
   label values A4KCCHN SUPPRESS;
   label values A4KCFLP SUPPRESS;
   label values A4KCJPN SUPPRESS;
   label values A4KCKRN SUPPRESS;
   label values A4KCVTN SUPPRESS;
   label values A4KDEAF SUPPRESS;
   label values A4KESLO SUPPRESS;
   label values A4KESLR SUPPRESS;
   label values A4KGRD1T SUPPRESS;
   label values A4KGRD2T SUPPRESS;
   label values A4KGRD3T SUPPRESS;
   label values A4KGRD4T SUPPRESS;
   label values A4KGRD5T SUPPRESS;
   label values A4KIJPN SUPPRESS;
   label values A4KISPN SUPPRESS;
   label values A4KLANO SUPPRESS;
   label values A4KLEPO SUPPRESS;
   label values A4KLNGO SUPPRESS;
   label values A4KMULG SUPPRESS;
   label values A4KMULT SUPPRESS;
   label values A4KNOES SUPPRESS;
   label values A4KNONE SUPPRESS;
   label values A4KNUML SUPPRESS;
   label values A4KOTAS SUPPRESS;
   label values A4KOTDI SUPPRESS;
   label values A4KOTLN SUPPRESS;
   label values A4KPONLY SUPPRESS;
   label values A4KPR1S SUPPRESS;
   label values A4KREGK SUPPRESS;
   label values A4KRETA SUPPRESS;
   label values A4KT1ST SUPPRESS;
   label values A4KT2ND SUPPRESS;
   label values A4KT3RD SUPPRESS;
   label values A4KTCHN SUPPRESS;
   label values A4KTFLP SUPPRESS;
   label values A4KTJPN SUPPRESS;
   label values A4KTKRN SUPPRESS;
   label values A4KTNOO SUPPRESS;
   label values A4KTOTA SUPPRESS;
   label values A4KTOTL SUPPRESS;
   label values A4KTPR1 SUPPRESS;
   label values A4KTPRE SUPPRESS;
   label values A4KTRAU SUPPRESS;
   label values A4KTREG SUPPRESS;
   label values A4KTRNK SUPPRESS;
   label values A4KTSPN SUPPRESS;
   label values A4KTTRN SUPPRESS;
   label values A4KTVTN SUPPRESS;
   label values A4KUNGR SUPPRESS;
   label values A4LANOS SUPPRESS;
   label values A4LEPOS SUPPRESS;
   label values A4LNGOS SUPPRESS;
   label values A4MULTI SUPPRESS;
   label values A4OTASN SUPPRESS;
   label values A4OTDIS SUPPRESS;
   label values A4OTLNG SUPPRESS;
   label values A4RETAR SUPPRESS;
   label values A4T1ST SUPPRESS;
   label values A4T2ND SUPPRESS;
   label values A4T3RD SUPPRESS;
   label values A4T4TH SUPPRESS;
   label values A4T5TH SUPPRESS;
   label values A4TCHNS SUPPRESS;
   label values A4TFLPN SUPPRESS;
   label values A4TJPNS SUPPRESS;
   label values A4TMULG SUPPRESS;
   label values A4TOTAS SUPPRESS;
   label values A4TOTLG SUPPRESS;
   label values A4TPRE1 SUPPRESS;
   label values A4TPREK SUPPRESS;
   label values A4TREGK SUPPRESS;
   label values A4TTRNK SUPPRESS;
   label values A4TVTNM SUPPRESS;
   label values A5AUTSM SUPPRESS;
   label values A5CASN SUPPRESS;
   label values A5DEAF SUPPRESS;
   label values A5IASN SUPPRESS;
   label values A5IENG SUPPRESS;
   label values A5IOTLN SUPPRESS;
   label values A5ISPNH SUPPRESS;
   label values A5LANOS SUPPRESS;
   label values A5LEPOS SUPPRESS;
   label values A5LNGOS SUPPRESS;
   label values A5MULTI SUPPRESS;
   label values A5NCDIS SUPPRESS;
   label values A5OTDIS SUPPRESS;
   label values A5OTLNG SUPPRESS;
   label values A5RETAR SUPPRESS;
   label values A5T1ST SUPPRESS;
   label values A5T2ND SUPPRESS;
   label values A5T3RD SUPPRESS;
   label values A5T4TH SUPPRESS;
   label values A5T5TH SUPPRESS;
   label values A5TASN SUPPRESS;
   label values A5TENG SUPPRESS;
   label values A5TOTLG SUPPRESS;
   label values A5UNGRAD SUPPRESS;
   label values B1RACE4 SUPPRESS;
   label values B2RACE4 SUPPRESS;
   label values B4KHISP SUPPRESS;
   label values B4KRACE1 SUPPRESS;
   label values B4KRACE2 SUPPRESS;
   label values B4KRACE4 SUPPRESS;
   label values B4KTGEND SUPPRESS;
   label values B4RACE1 SUPPRESS;
   label values B4RACE2 SUPPRESS;
   label values B4RACE4 SUPPRESS;
   label values B4TGEND SUPPRESS;
   label values B5HISP SUPPRESS;
   label values B5RACE1 SUPPRESS;
   label values B5RACE2 SUPPRESS;
   label values B5RACE3 SUPPRESS;
   label values B5RACE4 SUPPRESS;
   label values B5TGEND SUPPRESS;
   label values C5SPECAC SUPPRESS;
   label values C5THIRD SUPPRESS;
   label values C6FIFTH SUPPRESS;
   label values C6SPECAC SUPPRESS;
   label values D2BILED SUPPRESS;
   label values D2BLIND SUPPRESS;
   label values D2COMDIS SUPPRESS;
   label values D2CRPOS SUPPRESS;
   label values D2DEAF SUPPRESS;
   label values D2DISSPE SUPPRESS;
   label values D2EARLY SUPPRESS;
   label values D2ELEM SUPPRESS;
   label values D2EMRGN SUPPRESS;
   label values D2EMTNL SUPPRESS;
   label values D2ERLSPE SUPPRESS;
   label values D2ESL SUPPRESS;
   label values D2GENDER SUPPRESS;
   label values D2GENED SUPPRESS;
   label values D2GNED SUPPRESS;
   label values D2HGHSTD SUPPRESS;
   label values D2HISP SUPPRESS;
   label values D2INFNT SUPPRESS;
   label values D2LRNDIS SUPPRESS;
   label values D2MNTL SUPPRESS;
   label values D2NCLSS SUPPRESS;
   label values D2NOCRED SUPPRESS;
   label values D2NODIR SUPPRESS;
   label values D2NOSTDN SUPPRESS;
   label values D2OCCPT SUPPRESS;
   label values D2OCCTH SUPPRESS;
   label values D2ORTHPD SUPPRESS;
   label values D2OTHPRF SUPPRESS;
   label values D2OTHRM SUPPRESS;
   label values D2PHYST SUPPRESS;
   label values D2PHYSTH SUPPRESS;
   label values D2PRVSN SUPPRESS;
   label values D2RACE1 SUPPRESS;
   label values D2RACE2 SUPPRESS;
   label values D2RACE3 SUPPRESS;
   label values D2RACE4 SUPPRESS;
   label values D2RACE5 SUPPRESS;
   label values D2SCHLYR SUPPRESS;
   label values D2SCHPSY SUPPRESS;
   label values D2SECED SUPPRESS;
   label values D2SETQA SUPPRESS;
   label values D2SPCH SUPPRESS;
   label values D2SPECED SUPPRESS;
   label values D2SPED SUPPRESS;
   label values D2SPEDRM SUPPRESS;
   label values D2SPLYRS SUPPRESS;
   label values D2YRBORN SUPPRESS;
   label values D4BILED SUPPRESS;
   label values D4BLIND SUPPRESS;
   label values D4COMDIS SUPPRESS;
   label values D4CRPOS SUPPRESS;
   label values D4DDCOM SUPPRESS;
   label values D4DEAF SUPPRESS;
   label values D4DISSPE SUPPRESS;
   label values D4EARLY SUPPRESS;
   label values D4ELEM SUPPRESS;
   label values D4EMRGN SUPPRESS;
   label values D4EMTNL SUPPRESS;
   label values D4ERLSPE SUPPRESS;
   label values D4ESL SUPPRESS;
   label values D4GENDER SUPPRESS;
   label values D4GENED SUPPRESS;
   label values D4GNED SUPPRESS;
   label values D4HGHSTD SUPPRESS;
   label values D4HISP SUPPRESS;
   label values D4INFNT SUPPRESS;
   label values D4LRNDIS SUPPRESS;
   label values D4MMCOM SUPPRESS;
   label values D4MNTL SUPPRESS;
   label values D4NCLSS SUPPRESS;
   label values D4NOCRED SUPPRESS;
   label values D4NODIR SUPPRESS;
   label values D4NOSTDN SUPPRESS;
   label values D4OCCPT SUPPRESS;
   label values D4OCCTH SUPPRESS;
   label values D4ORTHPD SUPPRESS;
   label values D4OTHPRF SUPPRESS;
   label values D4OTHRM SUPPRESS;
   label values D4PHYST SUPPRESS;
   label values D4PHYSTH SUPPRESS;
   label values D4PRVSN SUPPRESS;
   label values D4RACE1 SUPPRESS;
   label values D4RACE2 SUPPRESS;
   label values D4RACE3 SUPPRESS;
   label values D4RACE4 SUPPRESS;
   label values D4RACE5 SUPPRESS;
   label values D4SCHLYR SUPPRESS;
   label values D4SCHPSY SUPPRESS;
   label values D4SECED SUPPRESS;
   label values D4SETQA SUPPRESS;
   label values D4SPCH SUPPRESS;
   label values D4SPECED SUPPRESS;
   label values D4SPED SUPPRESS;
   label values D4SPEDRM SUPPRESS;
   label values D4SPLYRS SUPPRESS;
   label values D4YRBORN SUPPRESS;
   label values D4YYCOM SUPPRESS;
   label values D5ASSIGN SUPPRESS;
   label values D5BILED SUPPRESS;
   label values D5BLIND SUPPRESS;
   label values D5CLMGMT SUPPRESS;
   label values D5COMDIS SUPPRESS;
   label values D5CRPOS2 SUPPRESS;
   label values D5CTCLIN SUPPRESS;
   label values D5DDCOM SUPPRESS;
   label values D5DEAF SUPPRESS;
   label values D5DISSPE SUPPRESS;
   label values D5EARLY SUPPRESS;
   label values D5ELEM SUPPRESS;
   label values D5EMRGN SUPPRESS;
   label values D5EMTNL SUPPRESS;
   label values D5ERLSPE SUPPRESS;
   label values D5ESL SUPPRESS;
   label values D5GENDER SUPPRESS;
   label values D5GENED SUPPRESS;
   label values D5GNED SUPPRESS;
   label values D5HGHSTD SUPPRESS;
   label values D5HISP SUPPRESS;
   label values D5INFNT SUPPRESS;
   label values D5LRNDIS SUPPRESS;
   label values D5MMCOM SUPPRESS;
   label values D5MNTL SUPPRESS;
   label values D5NCLSS SUPPRESS;
   label values D5NOCRED SUPPRESS;
   label values D5NODIR SUPPRESS;
   label values D5NOSTDN SUPPRESS;
   label values D5OCCPT SUPPRESS;
   label values D5OCCTH SUPPRESS;
   label values D5ORTHPD SUPPRESS;
   label values D5OTHPRF SUPPRESS;
   label values D5OTHRM SUPPRESS;
   label values D5PHYST SUPPRESS;
   label values D5PHYSTH SUPPRESS;
   label values D5PRVSN SUPPRESS;
   label values D5RACE1 SUPPRESS;
   label values D5RACE2 SUPPRESS;
   label values D5RACE3 SUPPRESS;
   label values D5RACE4 SUPPRESS;
   label values D5RACE5 SUPPRESS;
   label values D5SCHLYR SUPPRESS;
   label values D5SCHPSY SUPPRESS;
   label values D5SECED SUPPRESS;
   label values D5SETQA SUPPRESS;
   label values D5SPCH SUPPRESS;
   label values D5SPECED SUPPRESS;
   label values D5SPED SUPPRESS;
   label values D5SPEDRM SUPPRESS;
   label values D5SPLYRS SUPPRESS;
   label values D5YRBORN SUPPRESS;
   label values D5YRSTCH SUPPRESS;
   label values D5YYCOM SUPPRESS;
   label values D6ASSIGN SUPPRESS;
   label values D6BILED SUPPRESS;
   label values D6BLIND SUPPRESS;
   label values D6CLMGMT SUPPRESS;
   label values D6COMDIS SUPPRESS;
   label values D6CRPOS2 SUPPRESS;
   label values D6CTCLIN SUPPRESS;
   label values D6DDCOM SUPPRESS;
   label values D6DEAF SUPPRESS;
   label values D6DISSPE SUPPRESS;
   label values D6EARLY SUPPRESS;
   label values D6ELEM SUPPRESS;
   label values D6EMRGN SUPPRESS;
   label values D6EMTNL SUPPRESS;
   label values D6ERLSPE SUPPRESS;
   label values D6ESL SUPPRESS;
   label values D6GENDER SUPPRESS;
   label values D6GENED SUPPRESS;
   label values D6GNED SUPPRESS;
   label values D6HGHSTD SUPPRESS;
   label values D6HISP SUPPRESS;
   label values D6INFNT SUPPRESS;
   label values D6LRNDIS SUPPRESS;
   label values D6MMCOM SUPPRESS;
   label values D6MNTL SUPPRESS;
   label values D6NCLSS SUPPRESS;
   label values D6NOCRED SUPPRESS;
   label values D6NODIR SUPPRESS;
   label values D6NOSTDN SUPPRESS;
   label values D6OCCPT SUPPRESS;
   label values D6OCCTH SUPPRESS;
   label values D6ORTHPD SUPPRESS;
   label values D6OTHPRF SUPPRESS;
   label values D6OTHRM SUPPRESS;
   label values D6PHYST SUPPRESS;
   label values D6PHYSTH SUPPRESS;
   label values D6PRVSN SUPPRESS;
   label values D6RACE1 SUPPRESS;
   label values D6RACE2 SUPPRESS;
   label values D6RACE3 SUPPRESS;
   label values D6RACE4 SUPPRESS;
   label values D6RACE5 SUPPRESS;
   label values D6SCHLYR SUPPRESS;
   label values D6SCHPSY SUPPRESS;
   label values D6SECED SUPPRESS;
   label values D6SETQA SUPPRESS;
   label values D6SPCH SUPPRESS;
   label values D6SPECED SUPPRESS;
   label values D6SPED SUPPRESS;
   label values D6SPEDRM SUPPRESS;
   label values D6SPLYRS SUPPRESS;
   label values D6YRBORN SUPPRESS;
   label values D6YRSTCH SUPPRESS;
   label values D6YYCOM SUPPRESS;
   label values D7ASSIGN SUPPRESS;
   label values D7BILED SUPPRESS;
   label values D7BLIND SUPPRESS;
   label values D7CLMGMT SUPPRESS;
   label values D7CLSZO SUPPRESS;
   label values D7COMDIS SUPPRESS;
   label values D7CRPOS2 SUPPRESS;
   label values D7CTCLIN SUPPRESS;
   label values D7DDCOM SUPPRESS;
   label values D7DEAF SUPPRESS;
   label values D7DISSPE SUPPRESS;
   label values D7EARLY SUPPRESS;
   label values D7ELEM SUPPRESS;
   label values D7EMRGN SUPPRESS;
   label values D7EMTNL SUPPRESS;
   label values D7ENJOY SUPPRESS;
   label values D7ERLSPE SUPPRESS;
   label values D7ESL SUPPRESS;
   label values D7EXAM SUPPRESS;
   label values D7GENDER SUPPRESS;
   label values D7GENED SUPPRESS;
   label values D7GNED SUPPRESS;
   label values D7HGHPAR SUPPRESS;
   label values D7HGHSTD SUPPRESS;
   label values D7HISP SUPPRESS;
   label values D7INFNT SUPPRESS;
   label values D7JOBTS SUPPRESS;
   label values D7LRNDIS SUPPRESS;
   label values D7MKDIF SUPPRESS;
   label values D7MMCOM SUPPRESS;
   label values D7MNTL SUPPRESS;
   label values D7NCLSS SUPPRESS;
   label values D7NOCRED SUPPRESS;
   label values D7NODIR SUPPRESS;
   label values D7NOSTDN SUPPRESS;
   label values D7OCCPT SUPPRESS;
   label values D7OCCTH SUPPRESS;
   label values D7ORTHPD SUPPRESS;
   label values D7OTHPRF SUPPRESS;
   label values D7OTHRM SUPPRESS;
   label values D7PHYST SUPPRESS;
   label values D7PHYSTH SUPPRESS;
   label values D7PRVSN SUPPRESS;
   label values D7RACE1 SUPPRESS;
   label values D7RACE2 SUPPRESS;
   label values D7RACE3 SUPPRESS;
   label values D7RACE4 SUPPRESS;
   label values D7RACE5 SUPPRESS;
   label values D7SCHLYR SUPPRESS;
   label values D7SCHPSY SUPPRESS;
   label values D7SECED SUPPRESS;
   label values D7SETQA SUPPRESS;
   label values D7SPCH SUPPRESS;
   label values D7SPECED SUPPRESS;
   label values D7SPED SUPPRESS;
   label values D7SPEDRM SUPPRESS;
   label values D7SPLYRS SUPPRESS;
   label values D7TEACH SUPPRESS;
   label values D7YRBORN SUPPRESS;
   label values D7YRSTCH SUPPRESS;
   label values D7YYCOM SUPPRESS;
   label values E2ACCMD SUPPRESS;
   label values E2ACHLVL SUPPRESS;
   label values E2ADLGY SUPPRESS;
   label values E2ADPIND SUPPRESS;
   label values E2ADPOTH SUPPRESS;
   label values E2ADPPE SUPPRESS;
   label values E2ADPSHR SUPPRESS;
   label values E2AUTISM SUPPRESS;
   label values E2BLNVSL SUPPRESS;
   label values E2BMNGT SUPPRESS;
   label values E2BRAILE SUPPRESS;
   label values E2BRAIN SUPPRESS;
   label values E2CALC SUPPRESS;
   label values E2CCTV SUPPRESS;
   label values E2CLSAD SUPPRESS;
   label values E2CMPIND SUPPRESS;
   label values E2CMPMTH SUPPRESS;
   label values E2CMPRDG SUPPRESS;
   label values E2CMPSHR SUPPRESS;
   label values E2CMPTR SUPPRESS;
   label values E2CMPWRT SUPPRESS;
   label values E2CNSSER SUPPRESS;
   label values E2COGSTR SUPPRESS;
   label values E2COPLRN SUPPRESS;
   label values E2CPTN SUPPRESS;
   label values E2CUEDSP SUPPRESS;
   label values E2DDCOM SUPPRESS;
   label values E2DEAFHH SUPPRESS;
   label values E2DEVDLY SUPPRESS;
   label values E2DFBLND SUPPRESS;
   label values E2DIRINS SUPPRESS;
   label values E2DKMTHD SUPPRESS;
   label values E2ELCSPL SUPPRESS;
   label values E2ELCTRN SUPPRESS;
   label values E2ELGSPE SUPPRESS;
   label values E2EMTPRB SUPPRESS;
   label values E2EVLHR SUPPRESS;
   label values E2EVLLD SUPPRESS;
   label values E2EVLMS SUPPRESS;
   label values E2EVLOTH SUPPRESS;
   label values E2EVLPSY SUPPRESS;
   label values E2EVLSPC SUPPRESS;
   label values E2EVLVSN SUPPRESS;
   label values E2FMLOOP SUPPRESS;
   label values E2GENEDC SUPPRESS;
   label values E2GOAL SUPPRESS;
   label values E2GRDASM SUPPRESS;
   label values E2HAIDS SUPPRESS;
   label values E2HLTHIM SUPPRESS;
   label values E2HRSSPE SUPPRESS;
   label values E2IEPADP SUPPRESS;
   label values E2IEPADT SUPPRESS;
   label values E2IEPFMS SUPPRESS;
   label values E2IEPGMS SUPPRESS;
   label values E2IEPK SUPPRESS;
   label values E2IEPLNG SUPPRESS;
   label values E2IEPLST SUPPRESS;
   label values E2IEPMOB SUPPRESS;
   label values E2IEPMTH SUPPRESS;
   label values E2IEPORL SUPPRESS;
   label values E2IEPOTH SUPPRESS;
   label values E2IEPRDG SUPPRESS;
   label values E2IEPSOC SUPPRESS;
   label values E2IMPLNT SUPPRESS;
   label values E2INTRPR SUPPRESS;
   label values E2LNGTHM SUPPRESS;
   label values E2LNGTHR SUPPRESS;
   label values E2LRGGRP SUPPRESS;
   label values E2LRNDIS SUPPRESS;
   label values E2MGNFY SUPPRESS;
   label values E2MINSPE SUPPRESS;
   label values E2MLTIM SUPPRESS;
   label values E2MMCOM SUPPRESS;
   label values E2MNLENG SUPPRESS;
   label values E2MNTRTR SUPPRESS;
   label values E2NOELC SUPPRESS;
   label values E2NOINS SUPPRESS;
   label values E2NOTEC SUPPRESS;
   label values E2OCCTHR SUPPRESS;
   label values E2OFTGTC SUPPRESS;
   label values E2OFTPAR SUPPRESS;
   label values E2ONEON1 SUPPRESS;
   label values E2OTHSER SUPPRESS;
   label values E2PEERTR SUPPRESS;
   label values E2PHYSIM SUPPRESS;
   label values E2PHYTHR SUPPRESS;
   label values E2PLNTRN SUPPRESS;
   label values E2PRESCH SUPPRESS;
   label values E2PRMDIS SUPPRESS;
   label values E2PRMPLC SUPPRESS;
   label values E2PSYTHR SUPPRESS;
   label values E2RVWREC SUPPRESS;
   label values E2SCHHLT SUPPRESS;
   label values E2SETQB SUPPRESS;
   label values E2SGNLNG SUPPRESS;
   label values E2SMLGRP SUPPRESS;
   label values E2SMNGT SUPPRESS;
   label values E2SOCWRK SUPPRESS;
   label values E2SPCHLN SUPPRESS;
   label values E2SPEDC SUPPRESS;
   label values E2SPEDOT SUPPRESS;
   label values E2TAPERC SUPPRESS;
   label values E2TRNSPR SUPPRESS;
   label values E2TTYS SUPPRESS;
   label values E2VANS SUPPRESS;
   label values E2WHLCHR SUPPRESS;
   label values E2WHTCN SUPPRESS;
   label values E2YYCOM SUPPRESS;
   label values E4ACCMD SUPPRESS;
   label values E4ACHLVL SUPPRESS;
   label values E4ADLGY SUPPRESS;
   label values E4ADPIND SUPPRESS;
   label values E4ADPOTH SUPPRESS;
   label values E4ADPPE SUPPRESS;
   label values E4ADPSHR SUPPRESS;
   label values E4AUTISM SUPPRESS;
   label values E4BLNVSL SUPPRESS;
   label values E4BMNGT SUPPRESS;
   label values E4BRAILE SUPPRESS;
   label values E4BRAIN SUPPRESS;
   label values E4CALC SUPPRESS;
   label values E4CCTV SUPPRESS;
   label values E4CLSAD SUPPRESS;
   label values E4CMPIND SUPPRESS;
   label values E4CMPMTH SUPPRESS;
   label values E4CMPRDG SUPPRESS;
   label values E4CMPSHR SUPPRESS;
   label values E4CMPTR SUPPRESS;
   label values E4CMPWRT SUPPRESS;
   label values E4CNSSER SUPPRESS;
   label values E4COGSTR SUPPRESS;
   label values E4COPLRN SUPPRESS;
   label values E4CPTN SUPPRESS;
   label values E4CUEDSP SUPPRESS;
   label values E4DDCOM SUPPRESS;
   label values E4DEAFHH SUPPRESS;
   label values E4DEVDLY SUPPRESS;
   label values E4DFBLND SUPPRESS;
   label values E4DIRINS SUPPRESS;
   label values E4DKMTHD SUPPRESS;
   label values E4ELCSPL SUPPRESS;
   label values E4ELCTRN SUPPRESS;
   label values E4ELGSPE SUPPRESS;
   label values E4EMTPRB SUPPRESS;
   label values E4EVLHR SUPPRESS;
   label values E4EVLLD SUPPRESS;
   label values E4EVLMS SUPPRESS;
   label values E4EVLOTH SUPPRESS;
   label values E4EVLPSY SUPPRESS;
   label values E4EVLSPC SUPPRESS;
   label values E4EVLVSN SUPPRESS;
   label values E4FMLOOP SUPPRESS;
   label values E4GENEDC SUPPRESS;
   label values E4GOAL SUPPRESS;
   label values E4GRADE SUPPRESS;
   label values E4GRDASM SUPPRESS;
   label values E4HAIDS SUPPRESS;
   label values E4HLTHIM SUPPRESS;
   label values E4HRSSPE SUPPRESS;
   label values E4IEPADP SUPPRESS;
   label values E4IEPADT SUPPRESS;
   label values E4IEPART SUPPRESS;
   label values E4IEPFMS SUPPRESS;
   label values E4IEPGMS SUPPRESS;
   label values E4IEPLNG SUPPRESS;
   label values E4IEPLST SUPPRESS;
   label values E4IEPMOB SUPPRESS;
   label values E4IEPMTH SUPPRESS;
   label values E4IEPORL SUPPRESS;
   label values E4IEPOTH SUPPRESS;
   label values E4IEPRDG SUPPRESS;
   label values E4IEPSOC SUPPRESS;
   label values E4IMPLNT SUPPRESS;
   label values E4INTRPR SUPPRESS;
   label values E4KNDSTF SUPPRESS;
   label values E4KTO1ST SUPPRESS;
   label values E4LNGTHM SUPPRESS;
   label values E4LNGTHR SUPPRESS;
   label values E4LRGGRP SUPPRESS;
   label values E4LRNDIS SUPPRESS;
   label values E4MGNFY SUPPRESS;
   label values E4MINSPE SUPPRESS;
   label values E4MLTIM SUPPRESS;
   label values E4MMCOM SUPPRESS;
   label values E4MNLENG SUPPRESS;
   label values E4MNTRTR SUPPRESS;
   label values E4NOELC SUPPRESS;
   label values E4NOINS SUPPRESS;
   label values E4NOTEC SUPPRESS;
   label values E4OCCTHR SUPPRESS;
   label values E4OFTGTC SUPPRESS;
   label values E4OFTPAR SUPPRESS;
   label values E4ONEON1 SUPPRESS;
   label values E4OTHSER SUPPRESS;
   label values E4PEERTR SUPPRESS;
   label values E4PHYSIM SUPPRESS;
   label values E4PHYTHR SUPPRESS;
   label values E4PRMDIS SUPPRESS;
   label values E4PRMPLC SUPPRESS;
   label values E4PSYTHR SUPPRESS;
   label values E4RECB1G SUPPRESS;
   label values E4SCHHLT SUPPRESS;
   label values E4SETQB SUPPRESS;
   label values E4SGNLNG SUPPRESS;
   label values E4SMLGRP SUPPRESS;
   label values E4SMNGT SUPPRESS;
   label values E4SOCWRK SUPPRESS;
   label values E4SPCHLN SUPPRESS;
   label values E4SPEDC SUPPRESS;
   label values E4SPEDOT SUPPRESS;
   label values E4TAPERC SUPPRESS;
   label values E4TRNSPR SUPPRESS;
   label values E4TTYS SUPPRESS;
   label values E4VANS SUPPRESS;
   label values E4WHLCHR SUPPRESS;
   label values E4WHTCN SUPPRESS;
   label values E4YYCOM SUPPRESS;
   label values E5ACHLVL SUPPRESS;
   label values E5ADLGY SUPPRESS;
   label values E5ADPOTH SUPPRESS;
   label values E5ADPPE SUPPRESS;
   label values E5AUTISM SUPPRESS;
   label values E5BLNVSL SUPPRESS;
   label values E5BMNGT SUPPRESS;
   label values E5BRAILE SUPPRESS;
   label values E5BRAIN SUPPRESS;
   label values E5CALC SUPPRESS;
   label values E5CCTV SUPPRESS;
   label values E5CLSAD SUPPRESS;
   label values E5CMPIND SUPPRESS;
   label values E5CMPMTH SUPPRESS;
   label values E5CMPRDG SUPPRESS;
   label values E5CMPSHR SUPPRESS;
   label values E5CMPTR SUPPRESS;
   label values E5CMPWRT SUPPRESS;
   label values E5CNSSER SUPPRESS;
   label values E5COGSTR SUPPRESS;
   label values E5COMPUT SUPPRESS;
   label values E5COPLRN SUPPRESS;
   label values E5CPTN SUPPRESS;
   label values E5CUEDSP SUPPRESS;
   label values E5DDCOM SUPPRESS;
   label values E5DEAFHH SUPPRESS;
   label values E5DEVDLY SUPPRESS;
   label values E5DFBLND SUPPRESS;
   label values E5DIRINS SUPPRESS;
   label values E5DKMTHD SUPPRESS;
   label values E5ELCSPL SUPPRESS;
   label values E5ELCTRN SUPPRESS;
   label values E5EMTPRB SUPPRESS;
   label values E5EVLHR SUPPRESS;
   label values E5EVLLD SUPPRESS;
   label values E5EVLMS SUPPRESS;
   label values E5EVLOTH SUPPRESS;
   label values E5EVLPSY SUPPRESS;
   label values E5EVLSPC SUPPRESS;
   label values E5EVLVSN SUPPRESS;
   label values E5FMLOOP SUPPRESS;
   label values E5FSTIEP SUPPRESS;
   label values E5GENEDC SUPPRESS;
   label values E5GOAL SUPPRESS;
   label values E5GRADE SUPPRESS;
   label values E5HAIDS SUPPRESS;
   label values E5HLTHIM SUPPRESS;
   label values E5HRSSPE SUPPRESS;
   label values E5IEPADP SUPPRESS;
   label values E5IEPADT SUPPRESS;
   label values E5IEPFMS SUPPRESS;
   label values E5IEPGMS SUPPRESS;
   label values E5IEPLNG SUPPRESS;
   label values E5IEPLP SUPPRESS;
   label values E5IEPLST SUPPRESS;
   label values E5IEPMOB SUPPRESS;
   label values E5IEPMTH SUPPRESS;
   label values E5IEPNXY SUPPRESS;
   label values E5IEPORL SUPPRESS;
   label values E5IEPOTH SUPPRESS;
   label values E5IEPRDG SUPPRESS;
   label values E5IEPSOC SUPPRESS;
   label values E5IEPVOC SUPPRESS;
   label values E5IMPLNT SUPPRESS;
   label values E5INTRPR SUPPRESS;
   label values E5LNGTHM SUPPRESS;
   label values E5LNGTHR SUPPRESS;
   label values E5LRGGRP SUPPRESS;
   label values E5LRNDIS SUPPRESS;
   label values E5MGNFY SUPPRESS;
   label values E5MINSPE SUPPRESS;
   label values E5MLTIM SUPPRESS;
   label values E5MMCOM SUPPRESS;
   label values E5MNLENG SUPPRESS;
   label values E5MNTRTR SUPPRESS;
   label values E5NOELC SUPPRESS;
   label values E5NOINS SUPPRESS;
   label values E5NOTEC SUPPRESS;
   label values E5OCCTHR SUPPRESS;
   label values E5OFTGTC SUPPRESS;
   label values E5OFTPAR SUPPRESS;
   label values E5ONEON1 SUPPRESS;
   label values E5OTHSER SUPPRESS;
   label values E5PEERTR SUPPRESS;
   label values E5PHYSIM SUPPRESS;
   label values E5PHYTHR SUPPRESS;
   label values E5PRMDIS SUPPRESS;
   label values E5PRMPLC SUPPRESS;
   label values E5PSYTHR SUPPRESS;
   label values E5RVRCRD SUPPRESS;
   label values E5SCHHLT SUPPRESS;
   label values E5SETQB SUPPRESS;
   label values E5SGNLNG SUPPRESS;
   label values E5SMLGRP SUPPRESS;
   label values E5SMNGT SUPPRESS;
   label values E5SOCWRK SUPPRESS;
   label values E5SPCHLN SUPPRESS;
   label values E5SPEDC SUPPRESS;
   label values E5SPEDOT SUPPRESS;
   label values E5SPEIEP SUPPRESS;
   label values E5TAPERC SUPPRESS;
   label values E5TRNSPR SUPPRESS;
   label values E5TTYS SUPPRESS;
   label values E5VANS SUPPRESS;
   label values E5WHLCHR SUPPRESS;
   label values E5WHTCN SUPPRESS;
   label values E5YYCOM SUPPRESS;
   label values E6ACHLVL SUPPRESS;
   label values E6ADLGY SUPPRESS;
   label values E6ADPOTH SUPPRESS;
   label values E6ADPPE SUPPRESS;
   label values E6AUTISM SUPPRESS;
   label values E6BLNVSL SUPPRESS;
   label values E6BMNGT SUPPRESS;
   label values E6BRAILE SUPPRESS;
   label values E6BRAIN SUPPRESS;
   label values E6BRATXT SUPPRESS;
   label values E6CALC SUPPRESS;
   label values E6CCTV SUPPRESS;
   label values E6CLSAD SUPPRESS;
   label values E6CMPIND SUPPRESS;
   label values E6CMPMTH SUPPRESS;
   label values E6CMPRDG SUPPRESS;
   label values E6CMPSHR SUPPRESS;
   label values E6CMPTR SUPPRESS;
   label values E6CMPWRT SUPPRESS;
   label values E6CNSSER SUPPRESS;
   label values E6COGSTR SUPPRESS;
   label values E6COMPUT SUPPRESS;
   label values E6COPLRN SUPPRESS;
   label values E6CPTN SUPPRESS;
   label values E6CUEDSP SUPPRESS;
   label values E6DDCOM SUPPRESS;
   label values E6DEAFHH SUPPRESS;
   label values E6DEVDLY SUPPRESS;
   label values E6DFBLND SUPPRESS;
   label values E6DIGTXT SUPPRESS;
   label values E6DIRINS SUPPRESS;
   label values E6DKMTHD SUPPRESS;
   label values E6ELCBRA SUPPRESS;
   label values E6ELCSPL SUPPRESS;
   label values E6ELCTRN SUPPRESS;
   label values E6EMTPRB SUPPRESS;
   label values E6ENRGR SUPPRESS;
   label values E6EVLAC SUPPRESS;
   label values E6EVLHR SUPPRESS;
   label values E6EVLLD SUPPRESS;
   label values E6EVLMS SUPPRESS;
   label values E6EVLOTH SUPPRESS;
   label values E6EVLPSY SUPPRESS;
   label values E6EVLSPC SUPPRESS;
   label values E6EVLVSN SUPPRESS;
   label values E6FIRIEP SUPPRESS;
   label values E6FMLOOP SUPPRESS;
   label values E6GENEDC SUPPRESS;
   label values E6GOAL SUPPRESS;
   label values E6HAIDS SUPPRESS;
   label values E6HLTHIM SUPPRESS;
   label values E6HRSSPE SUPPRESS;
   label values E6IEPADP SUPPRESS;
   label values E6IEPADT SUPPRESS;
   label values E6IEPFMS SUPPRESS;
   label values E6IEPGMS SUPPRESS;
   label values E6IEPLNG SUPPRESS;
   label values E6IEPLP SUPPRESS;
   label values E6IEPLST SUPPRESS;
   label values E6IEPMOB SUPPRESS;
   label values E6IEPMTH SUPPRESS;
   label values E6IEPNXY SUPPRESS;
   label values E6IEPORL SUPPRESS;
   label values E6IEPOTH SUPPRESS;
   label values E6IEPRDG SUPPRESS;
   label values E6IEPSCI SUPPRESS;
   label values E6IEPSOC SUPPRESS;
   label values E6IEPVOC SUPPRESS;
   label values E6IMPLNT SUPPRESS;
   label values E6INTRPR SUPPRESS;
   label values E6LNGTHM SUPPRESS;
   label values E6LNGTHR SUPPRESS;
   label values E6LRGGRP SUPPRESS;
   label values E6LRNDIS SUPPRESS;
   label values E6MGNFY SUPPRESS;
   label values E6MIBILT SUPPRESS;
   label values E6MLTIM SUPPRESS;
   label values E6MMCOM SUPPRESS;
   label values E6MNLENG SUPPRESS;
   label values E6MNTRTR SUPPRESS;
   label values E6MOBILT SUPPRESS;
   label values E6NOELC SUPPRESS;
   label values E6NOINS SUPPRESS;
   label values E6NOTEC SUPPRESS;
   label values E6OCCTHR SUPPRESS;
   label values E6OFTGTC SUPPRESS;
   label values E6OFTPAR SUPPRESS;
   label values E6ONEON1 SUPPRESS;
   label values E6OTHSER SUPPRESS;
   label values E6PEERTR SUPPRESS;
   label values E6PHYSIM SUPPRESS;
   label values E6PHYTHR SUPPRESS;
   label values E6PRMDIS SUPPRESS;
   label values E6PRMPLC SUPPRESS;
   label values E6PSYTHR SUPPRESS;
   label values E6REHAB SUPPRESS;
   label values E6RVRCRD SUPPRESS;
   label values E6SCHHLT SUPPRESS;
   label values E6SETQB SUPPRESS;
   label values E6SGNINT SUPPRESS;
   label values E6SGNLNG SUPPRESS;
   label values E6SMLGRP SUPPRESS;
   label values E6SMNGT SUPPRESS;
   label values E6SOCWRK SUPPRESS;
   label values E6SPCHLN SUPPRESS;
   label values E6SPED SUPPRESS;
   label values E6SPEDC SUPPRESS;
   label values E6SPEDOT SUPPRESS;
   label values E6SPEIEP SUPPRESS;
   label values E6TAPERC SUPPRESS;
   label values E6TRNSPR SUPPRESS;
   label values E6TTYS SUPPRESS;
   label values E6USEBRA SUPPRESS;
   label values E6USECSP SUPPRESS;
   label values E6USECUE SUPPRESS;
   label values E6USESGN SUPPRESS;
   label values E6VANS SUPPRESS;
   label values E6WHLCHR SUPPRESS;
   label values E6WHTCN SUPPRESS;
   label values E6YYCOM SUPPRESS;
   label values E7ACHLVL SUPPRESS;
   label values E7ADLGY SUPPRESS;
   label values E7ADPOTH SUPPRESS;
   label values E7ADPPE SUPPRESS;
   label values E7AUTISM SUPPRESS;
   label values E7BLNVSL SUPPRESS;
   label values E7BMNGT SUPPRESS;
   label values E7BRAILE SUPPRESS;
   label values E7BRAIN SUPPRESS;
   label values E7BRATXT SUPPRESS;
   label values E7CALC SUPPRESS;
   label values E7CCTV SUPPRESS;
   label values E7CLSAD SUPPRESS;
   label values E7CMPGEN SUPPRESS;
   label values E7CMPIND SUPPRESS;
   label values E7CMPMTH SUPPRESS;
   label values E7CMPRDG SUPPRESS;
   label values E7CMPSHR SUPPRESS;
   label values E7CMPTR SUPPRESS;
   label values E7CMPWRT SUPPRESS;
   label values E7CNSSER SUPPRESS;
   label values E7COGSTR SUPPRESS;
   label values E7COMPUT SUPPRESS;
   label values E7COPLRN SUPPRESS;
   label values E7CPTN SUPPRESS;
   label values E7CUEDSP SUPPRESS;
   label values E7DDCOM SUPPRESS;
   label values E7DEAFHH SUPPRESS;
   label values E7DEVDLY SUPPRESS;
   label values E7DFBLND SUPPRESS;
   label values E7DIGTXT SUPPRESS;
   label values E7DIRINS SUPPRESS;
   label values E7DKMTHD SUPPRESS;
   label values E7ELCBRA SUPPRESS;
   label values E7ELCSPL SUPPRESS;
   label values E7ELCTRN SUPPRESS;
   label values E7EMTPRB SUPPRESS;
   label values E7ENROL SUPPRESS;
   label values E7EVLAC SUPPRESS;
   label values E7EVLHR SUPPRESS;
   label values E7EVLLD SUPPRESS;
   label values E7EVLMS SUPPRESS;
   label values E7EVLOTH SUPPRESS;
   label values E7EVLPSY SUPPRESS;
   label values E7EVLSPC SUPPRESS;
   label values E7EVLVSN SUPPRESS;
   label values E7FMLOOP SUPPRESS;
   label values E7FSTIEP SUPPRESS;
   label values E7GENRL SUPPRESS;
   label values E7GOAL SUPPRESS;
   label values E7HAIDS SUPPRESS;
   label values E7HLTHIM SUPPRESS;
   label values E7HRSSPE SUPPRESS;
   label values E7IEPADP SUPPRESS;
   label values E7IEPADT SUPPRESS;
   label values E7IEPFMS SUPPRESS;
   label values E7IEPGMS SUPPRESS;
   label values E7IEPLNG SUPPRESS;
   label values E7IEPLP SUPPRESS;
   label values E7IEPLST SUPPRESS;
   label values E7IEPMOB SUPPRESS;
   label values E7IEPMTH SUPPRESS;
   label values E7IEPNXY SUPPRESS;
   label values E7IEPORL SUPPRESS;
   label values E7IEPOTH SUPPRESS;
   label values E7IEPRDG SUPPRESS;
   label values E7IEPSCI SUPPRESS;
   label values E7IEPSOC SUPPRESS;
   label values E7IEPTRN SUPPRESS;
   label values E7IEPVOC SUPPRESS;
   label values E7IMPLNT SUPPRESS;
   label values E7INTRPR SUPPRESS;
   label values E7LNGTHM SUPPRESS;
   label values E7LNGTHR SUPPRESS;
   label values E7LRGGRP SUPPRESS;
   label values E7LRNDIS SUPPRESS;
   label values E7MGNFY SUPPRESS;
   label values E7MIBILT SUPPRESS;
   label values E7MLTIM SUPPRESS;
   label values E7MMCOM SUPPRESS;
   label values E7MNLENG SUPPRESS;
   label values E7MNTRTR SUPPRESS;
   label values E7MOBILT SUPPRESS;
   label values E7NOELC SUPPRESS;
   label values E7NOINS SUPPRESS;
   label values E7NOTEC SUPPRESS;
   label values E7OCCTHR SUPPRESS;
   label values E7OFTGTC SUPPRESS;
   label values E7OFTPAR SUPPRESS;
   label values E7ONEON1 SUPPRESS;
   label values E7OTHSER SUPPRESS;
   label values E7PEERTR SUPPRESS;
   label values E7PHYSIM SUPPRESS;
   label values E7PHYTHR SUPPRESS;
   label values E7PRMDIS SUPPRESS;
   label values E7PRMPLC SUPPRESS;
   label values E7PSYTHR SUPPRESS;
   label values E7REHAB SUPPRESS;
   label values E7RVRCRD SUPPRESS;
   label values E7SCHHLT SUPPRESS;
   label values E7SETQB SUPPRESS;
   label values E7SGNINT SUPPRESS;
   label values E7SGNLNG SUPPRESS;
   label values E7SMLGRP SUPPRESS;
   label values E7SMNGT SUPPRESS;
   label values E7SOCWRK SUPPRESS;
   label values E7SPCHLN SUPPRESS;
   label values E7SPECL SUPPRESS;
   label values E7SPED SUPPRESS;
   label values E7SPEDOT SUPPRESS;
   label values E7SPEIEP SUPPRESS;
   label values E7STUTST SUPPRESS;
   label values E7TAPERC SUPPRESS;
   label values E7TRNSPR SUPPRESS;
   label values E7TTYS SUPPRESS;
   label values E7USEBRA SUPPRESS;
   label values E7USECSP SUPPRESS;
   label values E7USECUE SUPPRESS;
   label values E7USESGN SUPPRESS;
   label values E7VANS SUPPRESS;
   label values E7WHLCHR SUPPRESS;
   label values E7WHTCN SUPPRESS;
   label values E7YYCOM SUPPRESS;
   label values F7RIEP SUPPRESS;
   label values G6ACCOM SUPPRESS;
   label values G6GFTRD SUPPRESS;
   label values G6GRENRL SUPPRESS;
   label values G6IASN SUPPRESS;
   label values G6IENG SUPPRESS;
   label values G6INCESL SUPPRESS;
   label values G6IOTLN SUPPRESS;
   label values G6ISPNH SUPPRESS;
   label values G6LNGOS SUPPRESS;
   label values G6LNGTM SUPPRESS;
   label values G6MENTOR SUPPRESS;
   label values G6PLLESL SUPPRESS;
   label values G6PROMOT SUPPRESS;
   label values G6TT1CMB SUPPRESS;
   label values G6TT1ENG SUPPRESS;
   label values G6TT1ES SUPPRESS;
   label values G6TT1SP SUPPRESS;
   label values J61HISP SUPPRESS;
   label values J61RACE1 SUPPRESS;
   label values J61RACE2 SUPPRESS;
   label values J61RACE3 SUPPRESS;
   label values J61RACE4 SUPPRESS;
   label values J61TGEND SUPPRESS;
   label values J62HISP SUPPRESS;
   label values J62RACE1 SUPPRESS;
   label values J62RACE2 SUPPRESS;
   label values J62RACE3 SUPPRESS;
   label values J62RACE4 SUPPRESS;
   label values J62TGEND SUPPRESS;
   label values J71HISP SUPPRESS;
   label values J71RACE1 SUPPRESS;
   label values J71RACE2 SUPPRESS;
   label values J71RACE3 SUPPRESS;
   label values J71RACE4 SUPPRESS;
   label values J71TGEND SUPPRESS;
   label values J72HISP SUPPRESS;
   label values J72RACE1 SUPPRESS;
   label values J72RACE2 SUPPRESS;
   label values J72RACE3 SUPPRESS;
   label values J72RACE4 SUPPRESS;
   label values J72TGEND SUPPRESS;
   label values K5ALARMO SUPPRESS;
   label values K5ALARMS SUPPRESS;
   label values K5BARSS SUPPRESS;
   label values K5FENCES SUPPRESS;
   label values K5FREXTO SUPPRESS;
   label values K5GUARDO SUPPRESS;
   label values K5GUARDS SUPPRESS;
   label values K5INTCMO SUPPRESS;
   label values K5METDTO SUPPRESS;
   label values K5METDTS SUPPRESS;
   label values K5SCAMS SUPPRESS;
   label values K6ALARMO SUPPRESS;
   label values K6ALARMS SUPPRESS;
   label values K6BARSS SUPPRESS;
   label values K6FENCES SUPPRESS;
   label values K6FREXTO SUPPRESS;
   label values K6GUARDO SUPPRESS;
   label values K6GUARDS SUPPRESS;
   label values K6INTCMO SUPPRESS;
   label values K6METDTO SUPPRESS;
   label values K6METDTS SUPPRESS;
   label values K6SCAMS SUPPRESS;
   label values L511TH SUPPRESS;
   label values L512TH SUPPRESS;
   label values L5ATNREC SUPPRESS;
   label values L5BIASKL SUPPRESS;
   label values L5FOURTH SUPPRESS;
   label values L5GRADE1 SUPPRESS;
   label values L5KINDER SUPPRESS;
   label values L5MAGSKL SUPPRESS;
   label values L5MM02 SUPPRESS;
   label values L5NAISKL SUPPRESS;
   label values L5NINTH SUPPRESS;
   label values L5OTHPRI SUPPRESS;
   label values L5PRIVRD SUPPRESS;
   label values L5PVTSPD SUPPRESS;
   label values L5REGSKL SUPPRESS;
   label values L5SCHBDD SUPPRESS;
   label values L5SCHBMM SUPPRESS;
   label values L5SCHBYY SUPPRESS;
   label values L5SCHEDD SUPPRESS;
   label values L5SCHEMM SUPPRESS;
   label values L5SECOND SUPPRESS;
   label values L5SPEDSK SUPPRESS;
   label values L5SYREDD SUPPRESS;
   label values L5SYREMM SUPPRESS;
   label values L5SYRSDD SUPPRESS;
   label values L5SYRSMM SUPPRESS;
   label values L5SYRSYY SUPPRESS;
   label values L5TENTH SUPPRESS;
   label values L5THIRD SUPPRESS;
   label values L5UNGRAD SUPPRESS;
   label values M6GFTMTH SUPPRESS;
   label values M6GRMTH SUPPRESS;
   label values M6IASN SUPPRESS;
   label values M6IENG SUPPRESS;
   label values M6IOTLN SUPPRESS;
   label values M6ISPNH SUPPRESS;
   label values M6LNGOS SUPPRESS;
   label values M6LNGTM SUPPRESS;
   label values N6GRDSCI SUPPRESS;
   label values N6IASN SUPPRESS;
   label values N6IENG SUPPRESS;
   label values N6IOTLN SUPPRESS;
   label values N6ISPNH SUPPRESS;
   label values N6LNGOS SUPPRESS;
   label values N6LNGTM SUPPRESS;
   label values P1BESTEY SUPPRESS;
   label values P1COCHLE SUPPRESS;
   label values P1CORREC SUPPRESS;
   label values P1DIA6MM SUPPRESS;
   label values P1DIA6YY SUPPRESS;
   label values P1HEARAI SUPPRESS;
   label values P1HEARS SUPPRESS;
   label values P1HEARS2 SUPPRESS;
   label values P1HOWOL2 SUPPRESS;
   label values P1HOWOL3 SUPPRESS;
   label values P1HOWOL4 SUPPRESS;
   label values P1HOWOL5 SUPPRESS;
   label values P1HOWOL6 SUPPRESS;
   label values P1HOWOLD SUPPRESS;
   label values P1LANG1 SUPPRESS;
   label values P1LANG10 SUPPRESS;
   label values P1LANG11 SUPPRESS;
   label values P1LANG12 SUPPRESS;
   label values P1LANG13 SUPPRESS;
   label values P1LANG14 SUPPRESS;
   label values P1LANG15 SUPPRESS;
   label values P1LANG16 SUPPRESS;
   label values P1LANG17 SUPPRESS;
   label values P1LANG18 SUPPRESS;
   label values P1LANG19 SUPPRESS;
   label values P1LANG2 SUPPRESS;
   label values P1LANG20 SUPPRESS;
   label values P1LANG21 SUPPRESS;
   label values P1LANG22 SUPPRESS;
   label values P1LANG23 SUPPRESS;
   label values P1LANG3 SUPPRESS;
   label values P1LANG4 SUPPRESS;
   label values P1LANG5 SUPPRESS;
   label values P1LANG6 SUPPRESS;
   label values P1LANG7 SUPPRESS;
   label values P1LANG8 SUPPRESS;
   label values P1LANG9 SUPPRESS;
   label values P1LASTMM SUPPRESS;
   label values P1LASTYY SUPPRESS;
   label values P1MMDIA2 SUPPRESS;
   label values P1MMDIA3 SUPPRESS;
   label values P1MMDIA4 SUPPRESS;
   label values P1MMDIA5 SUPPRESS;
   label values P1MMDIAG SUPPRESS;
   label values P1OLDUN2 SUPPRESS;
   label values P1OLDUN3 SUPPRESS;
   label values P1OLDUN4 SUPPRESS;
   label values P1OLDUN5 SUPPRESS;
   label values P1OLDUN6 SUPPRESS;
   label values P1OLDUNT SUPPRESS;
   label values P1PROFFD SUPPRESS;
   label values P1SPECIL SUPPRESS;
   label values P1THER14 SUPPRESS;
   label values P1THER15 SUPPRESS;
   label values P1THER16 SUPPRESS;
   label values P1THER17 SUPPRESS;
   label values P1WHATD3 SUPPRESS;
   label values P1WHATDI SUPPRESS;
   label values P1YYDIA2 SUPPRESS;
   label values P1YYDIA3 SUPPRESS;
   label values P1YYDIA4 SUPPRESS;
   label values P1YYDIA5 SUPPRESS;
   label values P1YYDIAG SUPPRESS;
   label values P2CNTRYB SUPPRESS;
   label values P4BESTEY SUPPRESS;
   label values P4CHPLAC SUPPRESS;
   label values P4CITIZN SUPPRESS;
   label values P4COCHLE SUPPRESS;
   label values P4CORREC SUPPRESS;
   label values P4DGNACT SUPPRESS;
   label values P4DGNATT SUPPRESS;
   label values P4DIA6YY SUPPRESS;
   label values P4HEARAI SUPPRESS;
   label values P4HEARS SUPPRESS;
   label values P4HEARS2 SUPPRESS;
   label values P4PROFFD SUPPRESS;
   label values P4SPECIL SUPPRESS;
   label values P4THER12 SUPPRESS;
   label values P4THER13 SUPPRESS;
   label values P4THER16 SUPPRESS;
   label values P4THER17 SUPPRESS;
   label values P4YRCOME SUPPRESS;
   label values P4YYDIA2 SUPPRESS;
   label values P4YYDIA4 SUPPRESS;
   label values P4YYDIA5 SUPPRESS;
   label values P4YYDIAG SUPPRESS;
   label values P5BESTEY SUPPRESS;
   label values P5COCHLE SUPPRESS;
   label values P5CORREC SUPPRESS;
   label values P5DGBEYY SUPPRESS;
   label values P5DGNACT SUPPRESS;
   label values P5DGNATT SUPPRESS;
   label values P5DGNBEH SUPPRESS;
   label values P5DIA6YY SUPPRESS;
   label values P5DIABEH SUPPRESS;
   label values P5DIVSEP SUPPRESS;
   label values P5FRERED SUPPRESS;
   label values P5HEARAI SUPPRESS;
   label values P5HEARS SUPPRESS;
   label values P5HEARS2 SUPPRESS;
   label values P5HOMELS SUPPRESS;
   label values P5HOSINJ SUPPRESS;
   label values P5MARREM SUPPRESS;
   label values P5PARDIE SUPPRESS;
   label values P5PROFFD SUPPRESS;
   label values P5RECFRE SUPPRESS;
   label values P5SPECIL SUPPRESS;
   label values P5SPECND SUPPRESS;
   label values P5YYDIA2 SUPPRESS;
   label values P5YYDIA4 SUPPRESS;
   label values P5YYDIA5 SUPPRESS;
   label values P5YYDIAG SUPPRESS;
   label values P6BESTEY SUPPRESS;
   label values P6CLRUSE SUPPRESS;
   label values P6COCHLE SUPPRESS;
   label values P6CORREC SUPPRESS;
   label values P6DGBEYY SUPPRESS;
   label values P6DGNACT SUPPRESS;
   label values P6DGNATT SUPPRESS;
   label values P6DGNBEH SUPPRESS;
   label values P6DIA6YY SUPPRESS;
   label values P6DIABEH SUPPRESS;
   label values P6FMTHRS SUPPRESS;
   label values P6FRERED SUPPRESS;
   label values P6HEARAI SUPPRESS;
   label values P6HEARS SUPPRESS;
   label values P6HEARS2 SUPPRESS;
   label values P6IMPELM SUPPRESS;
   label values P6IMPLNT SUPPRESS;
   label values P6IMPT02 SUPPRESS;
   label values P6PROFFD SUPPRESS;
   label values P6RECFRE SUPPRESS;
   label values P6SERVRV SUPPRESS;
   label values P6SPECIL SUPPRESS;
   label values P6SPECND SUPPRESS;
   label values P6SRVRCV SUPPRESS;
   label values P6YYDIA2 SUPPRESS;
   label values P6YYDIA4 SUPPRESS;
   label values P6YYDIA5 SUPPRESS;
   label values P6YYDIAG SUPPRESS;
   label values P702DGN SUPPRESS;
   label values P702DIAG SUPPRESS;
   label values P7ANOREX SUPPRESS;
   label values P7APRNCE SUPPRESS;
   label values P7BESTEY SUPPRESS;
   label values P7BINGE SUPPRESS;
   label values P7BULIMI SUPPRESS;
   label values P7CHDMED SUPPRESS;
   label values P7CLRUSE SUPPRESS;
   label values P7COCHLE SUPPRESS;
   label values P7CORREC SUPPRESS;
   label values P7DGBEYY SUPPRESS;
   label values P7DGBF02 SUPPRESS;
   label values P7DGEMYY SUPPRESS;
   label values P7DGN02 SUPPRESS;
   label values P7DGNACT SUPPRESS;
   label values P7DGNATT SUPPRESS;
   label values P7DGNBEH SUPPRESS;
   label values P7DGNEMO SUPPRESS;
   label values P7DGSYR SUPPRESS;
   label values P7DIA6YY SUPPRESS;
   label values P7DIABEH SUPPRESS;
   label values P7DIAEMO SUPPRESS;
   label values P7DIAG02 SUPPRESS;
   label values P7DIFFH3 SUPPRESS;
   label values P7DNBF02 SUPPRESS;
   label values P7FMTHRS SUPPRESS;
   label values P7FRERED SUPPRESS;
   label values P7HEARAI SUPPRESS;
   label values P7HEARS SUPPRESS;
   label values P7HEARS2 SUPPRESS;
   label values P7IMPLNT SUPPRESS;
   label values P7IMPT02 SUPPRESS;
   label values P7LRSRVY SUPPRESS;
   label values P7OTHWGT SUPPRESS;
   label values P7PHYPRB SUPPRESS;
   label values P7PRDIET SUPPRESS;
   label values P7PROFFD SUPPRESS;
   label values P7RECFRE SUPPRESS;
   label values P7SERVRV SUPPRESS;
   label values P7SPECIL SUPPRESS;
   label values P7SPECND SUPPRESS;
   label values P7SRVRCV SUPPRESS;
   label values P7SVELGB SUPPRESS;
   label values P7SVNEED SUPPRESS;
   label values P7SVNSCH SUPPRESS;
   label values P7SVREF SUPPRESS;
   label values P7SVSOME SUPPRESS;
   label values P7VISIO2 SUPPRESS;
   label values P7WHYTHR SUPPRESS;
   label values P7YYDIA2 SUPPRESS;
   label values P7YYDIA4 SUPPRESS;
   label values P7YYDIA5 SUPPRESS;
   label values P7YYDIAG SUPPRESS;
   label values R3LOCALE SUPPRESS;
   label values R4LOCALE SUPPRESS;
   label values R5LOCALE SUPPRESS;
   label values R6LOCALE SUPPRESS;
   label values R7LOCALE SUPPRESS;
   label values R7SCLAT SUPPRESS;
   label values R7SCLNG SUPPRESS;
   label values S2ASNPCT SUPPRESS;
   label values S2ATE8TH SUPPRESS;
   label values S2BIASKL SUPPRESS;
   label values S2BILING SUPPRESS;
   label values S2ELEV11 SUPPRESS;
   label values S2ELIBRK SUPPRESS;
   label values S2ELILNC SUPPRESS;
   label values S2ELIRED SUPPRESS;
   label values S2EMPHAS SUPPRESS;
   label values S2ESLBIL SUPPRESS;
   label values S2ESLONL SUPPRESS;
   label values S2FDDAYS SUPPRESS;
   label values S2FIF5TH SUPPRESS;
   label values S2FIR1ST SUPPRESS;
   label values S2FOR4TH SUPPRESS;
   label values S2GFTNBR SUPPRESS;
   label values S2HDDAYS SUPPRESS;
   label values S2INDPCT SUPPRESS;
   label values S2KCCLS SUPPRESS;
   label values S2KCDAYS SUPPRESS;
   label values S2KINGAR SUPPRESS;
   label values S2NAISKL SUPPRESS;
   label values S2NIN9TH SUPPRESS;
   label values S2NOCUTO SUPPRESS;
   label values S2OTHFTE SUPPRESS;
   label values S2PARBRK SUPPRESS;
   label values S2PARLNC SUPPRESS;
   label values S2PARRED SUPPRESS;
   label values S2PCFPCT SUPPRESS;
   label values S2PRE1ST SUPPRESS;
   label values S2PREK SUPPRESS;
   label values S2PRIVRD SUPPRESS;
   label values S2PVTSPD SUPPRESS;
   label values S2Q62HAW SUPPRESS;
   label values S2RACE1 SUPPRESS;
   label values S2RACE2 SUPPRESS;
   label values S2RACE3 SUPPRESS;
   label values S2RACE4 SUPPRESS;
   label values S2RACE5 SUPPRESS;
   label values S2REAFTE SUPPRESS;
   label values S2REDDYN SUPPRESS;
   label values S2SEC2ND SUPPRESS;
   label values S2SEV7TH SUPPRESS;
   label values S2SIX6TH SUPPRESS;
   label values S2SPEDSK SUPPRESS;
   label values S2SPENR SUPPRESS;
   label values S2T1CLS SUPPRESS;
   label values S2T1DAYS SUPPRESS;
   label values S2TEN10 SUPPRESS;
   label values S2THI3RD SUPPRESS;
   label values S2TKCLS SUPPRESS;
   label values S2TKDAYS SUPPRESS;
   label values S2TWEL12 SUPPRESS;
   label values S2WHTPCT SUPPRESS;
   label values S411TH SUPPRESS;
   label values S412TH SUPPRESS;
   label values S4ASNPCT SUPPRESS;
   label values S4ATE8TH SUPPRESS;
   label values S4BIASKL SUPPRESS;
   label values S4BILING SUPPRESS;
   label values S4ELEV11 SUPPRESS;
   label values S4ELIBRK SUPPRESS;
   label values S4ELILNC SUPPRESS;
   label values S4ELIRED SUPPRESS;
   label values S4EMPHAS SUPPRESS;
   label values S4ESLBIL SUPPRESS;
   label values S4ESLONL SUPPRESS;
   label values S4FIF5TH SUPPRESS;
   label values S4FIR1ST SUPPRESS;
   label values S4FOR4TH SUPPRESS;
   label values S4GFTNBR SUPPRESS;
   label values S4GRADE1 SUPPRESS;
   label values S4INDPCT SUPPRESS;
   label values S4KINGAR SUPPRESS;
   label values S4MAGSKL SUPPRESS;
   label values S4MIGRSM SUPPRESS;
   label values S4NAISKL SUPPRESS;
   label values S4NIN9TH SUPPRESS;
   label values S4NINTH SUPPRESS;
   label values S4ORIGIN SUPPRESS;
   label values S4PARBRK SUPPRESS;
   label values S4PARLNC SUPPRESS;
   label values S4PARRED SUPPRESS;
   label values S4PRE1 SUPPRESS;
   label values S4PRE1ST SUPPRESS;
   label values S4PREK SUPPRESS;
   label values S4PRIVRD SUPPRESS;
   label values S4PVTSPD SUPPRESS;
   label values S4RACE1 SUPPRESS;
   label values S4RACE2 SUPPRESS;
   label values S4RACE3 SUPPRESS;
   label values S4RACE4 SUPPRESS;
   label values S4RACE5 SUPPRESS;
   label values S4REDDYN SUPPRESS;
   label values S4SEC2ND SUPPRESS;
   label values S4SECOND SUPPRESS;
   label values S4SEV7TH SUPPRESS;
   label values S4SIX6TH SUPPRESS;
   label values S4SPEDSK SUPPRESS;
   label values S4TEAASN SUPPRESS;
   label values S4TEAIND SUPPRESS;
   label values S4TEN10 SUPPRESS;
   label values S4TENTH SUPPRESS;
   label values S4THI3RD SUPPRESS;
   label values S4TRANS SUPPRESS;
   label values S4TWEL12 SUPPRESS;
   label values S4UNGRAD SUPPRESS;
   label values S4WHTPCT SUPPRESS;
   label values S5ACADEM SUPPRESS;
   label values S5ASNPCT SUPPRESS;
   label values S5BILING SUPPRESS;
   label values S5CDRSCH SUPPRESS;
   label values S5CDRSTU SUPPRESS;
   label values S5ELIBRK SUPPRESS;
   label values S5ELILNC SUPPRESS;
   label values S5ELIRED SUPPRESS;
   label values S5ELRPBK SUPPRESS;
   label values S5ESLBIL SUPPRESS;
   label values S5ESLONL SUPPRESS;
   label values S5INDPCT SUPPRESS;
   label values S5LBRYOK SUPPRESS;
   label values S5NETSCH SUPPRESS;
   label values S5NETSTU SUPPRESS;
   label values S5NOTEST SUPPRESS;
   label values S5ORIGIN SUPPRESS;
   label values S5PAALUN SUPPRESS;
   label values S5PARBRK SUPPRESS;
   label values S5PARLNC SUPPRESS;
   label values S5PARPBK SUPPRESS;
   label values S5PARRED SUPPRESS;
   label values S5PLAYOK SUPPRESS;
   label values S5PRABRK SUPPRESS;
   label values S5RACE1 SUPPRESS;
   label values S5RACE2 SUPPRESS;
   label values S5RACE3 SUPPRESS;
   label values S5RACE4 SUPPRESS;
   label values S5RACE5 SUPPRESS;
   label values S5RETAIN SUPPRESS;
   label values S5TEAASN SUPPRESS;
   label values S5TEAIND SUPPRESS;
   label values S5TEAOTH SUPPRESS;
   label values S5WHTPCT SUPPRESS;
   label values S611TH SUPPRESS;
   label values S612TH SUPPRESS;
   label values S6ASNPCT SUPPRESS;
   label values S6BIASKL SUPPRESS;
   label values S6ELIBRK SUPPRESS;
   label values S6ELILNC SUPPRESS;
   label values S6ELIRED SUPPRESS;
   label values S6ELRPBK SUPPRESS;
   label values S6FOURTH SUPPRESS;
   label values S6GRADE1 SUPPRESS;
   label values S6INDPCT SUPPRESS;
   label values S6KINDER SUPPRESS;
   label values S6LBRYOK SUPPRESS;
   label values S6MAGSKL SUPPRESS;
   label values S6NAISKL SUPPRESS;
   label values S6NINTH SUPPRESS;
   label values S6NOTEST SUPPRESS;
   label values S6ORIGIN SUPPRESS;
   label values S6OTHPRI SUPPRESS;
   label values S6PAALUN SUPPRESS;
   label values S6PARBRK SUPPRESS;
   label values S6PARLNC SUPPRESS;
   label values S6PARPBK SUPPRESS;
   label values S6PARRED SUPPRESS;
   label values S6PLAYOK SUPPRESS;
   label values S6PRABRK SUPPRESS;
   label values S6PRIVRD SUPPRESS;
   label values S6PVTSPD SUPPRESS;
   label values S6RACE1 SUPPRESS;
   label values S6RACE2 SUPPRESS;
   label values S6RACE3 SUPPRESS;
   label values S6RACE4 SUPPRESS;
   label values S6RACE5 SUPPRESS;
   label values S6REGSKL SUPPRESS;
   label values S6SCHBDD SUPPRESS;
   label values S6SCHBMM SUPPRESS;
   label values S6SCHBYY SUPPRESS;
   label values S6SCHEDD SUPPRESS;
   label values S6SCHEMM SUPPRESS;
   label values S6SECOND SUPPRESS;
   label values S6SPEDSK SUPPRESS;
   label values S6SYREDD SUPPRESS;
   label values S6SYREMM SUPPRESS;
   label values S6SYRSDD SUPPRESS;
   label values S6SYRSMM SUPPRESS;
   label values S6TENTH SUPPRESS;
   label values S6THIRD SUPPRESS;
   label values S6UNGRAD SUPPRESS;
   label values S6WHTPCT SUPPRESS;
   label values S7ALTERN SUPPRESS;
   label values S7ASNPCT SUPPRESS;
   label values S7BOARD SUPPRESS;
   label values S7CHRTER SUPPRESS;
   label values S7COEDSC SUPPRESS;
   label values S7ELIBRK SUPPRESS;
   label values S7ELILNC SUPPRESS;
   label values S7ELIRED SUPPRESS;
   label values S7ELRPBK SUPPRESS;
   label values S7FULLVT SUPPRESS;
   label values S7INDPCT SUPPRESS;
   label values S7INDRES SUPPRESS;
   label values S7MAGSKL SUPPRESS;
   label values S7MILACD SUPPRESS;
   label values S7ORIGIN SUPPRESS;
   label values S7OTHPRI SUPPRESS;
   label values S7OTHRVT SUPPRESS;
   label values S7PAALUN SUPPRESS;
   label values S7PARBRK SUPPRESS;
   label values S7PARLNC SUPPRESS;
   label values S7PARPBK SUPPRESS;
   label values S7PARRED SUPPRESS;
   label values S7PARTVT SUPPRESS;
   label values S7PRABRK SUPPRESS;
   label values S7RACE1 SUPPRESS;
   label values S7RACE2 SUPPRESS;
   label values S7RACE3 SUPPRESS;
   label values S7RACE4 SUPPRESS;
   label values S7RACE5 SUPPRESS;
   label values S7SCHBDD SUPPRESS;
   label values S7SCHBMM SUPPRESS;
   label values S7SCHBYY SUPPRESS;
   label values S7SCHEDD SUPPRESS;
   label values S7SCHEMM SUPPRESS;
   label values S7SCHEYY SUPPRESS;
   label values S7SPDSCH SUPPRESS;
   label values S7SYREDD SUPPRESS;
   label values S7SYREMM SUPPRESS;
   label values S7SYREYY SUPPRESS;
   label values S7SYRSDD SUPPRESS;
   label values S7SYRSMM SUPPRESS;
   label values S7SYRSYY SUPPRESS;
   label values S7TUITIN SUPPRESS;
   label values S7WHTPCT SUPPRESS;
   label values S7YROUND SUPPRESS;
   label values T4BEHPRB SUPPRESS;
   label values T4FLBHND SUPPRESS;
   label values T4GFTMTH SUPPRESS;
   label values T4GFTRD SUPPRESS;
   label values T4GRADE SUPPRESS;
   label values T4INCESL SUPPRESS;
   label values T4KBEHPR SUPPRESS;
   label values T4KFLBHN SUPPRESS;
   label values T4KGFTTA SUPPRESS;
   label values T4KGRADE SUPPRESS;
   label values T4KINCES SUPPRESS;
   label values T4KLNGTM SUPPRESS;
   label values T4KPLLES SUPPRESS;
   label values T4KTT1CM SUPPRESS;
   label values T4KTT1EN SUPPRESS;
   label values T4KTT1ES SUPPRESS;
   label values T4KTT1SP SUPPRESS;
   label values T4KTYPCL SUPPRESS;
   label values T4LNGTM SUPPRESS;
   label values T4PLLESL SUPPRESS;
   label values T4TT1CMB SUPPRESS;
   label values T4TT1ENG SUPPRESS;
   label values T4TT1ES SUPPRESS;
   label values T4TT1SP SUPPRESS;
   label values T5ACCOM SUPPRESS;
   label values T5BEFORE SUPPRESS;
   label values T5FLBHND SUPPRESS;
   label values T5GFTMTH SUPPRESS;
   label values T5GFTRD SUPPRESS;
   label values T5GRADE SUPPRESS;
   label values T5INCESL SUPPRESS;
   label values T5LNGTM SUPPRESS;
   label values T5MATCH SUPPRESS;
   label values T5MENTOR SUPPRESS;
   label values T5PLLESL SUPPRESS;
   label values T5PROMOT SUPPRESS;
   label values T5RLATCH SUPPRESS;
   label values T5SSTCH SUPPRESS;
   label values T5SUMPRG SUPPRESS;
   label values T5TT1CMB SUPPRESS;
   label values T5TT1ENG SUPPRESS;
   label values T5TT1ES SUPPRESS;
   label values T5TT1SP SUPPRESS;
   label values T5WKEND SUPPRESS;
   label values U21STLNG SUPPRESS;
   label values U2ABSEX1 SUPPRESS;
   label values U2ABSEX2 SUPPRESS;
   label values U2ABSEX3 SUPPRESS;
   label values U2ABSEX4 SUPPRESS;
   label values U2ABSTO1 SUPPRESS;
   label values U2ABSTO2 SUPPRESS;
   label values U2ABSTO3 SUPPRESS;
   label values U2ABSTO4 SUPPRESS;
   label values U2ABSUN1 SUPPRESS;
   label values U2ABSUN2 SUPPRESS;
   label values U2ABSUN3 SUPPRESS;
   label values U2ABSUN4 SUPPRESS;
   label values U2ATNREC SUPPRESS;
   label values U2AUTISM SUPPRESS;
   label values U2BLND SUPPRESS;
   label values U2BLNDF SUPPRESS;
   label values U2BRAIN SUPPRESS;
   label values U2CPYIEP SUPPRESS;
   label values U2DDENTR SUPPRESS;
   label values U2DDETR1 SUPPRESS;
   label values U2DDETR2 SUPPRESS;
   label values U2DDETR3 SUPPRESS;
   label values U2DDETR4 SUPPRESS;
   label values U2DDLEFT SUPPRESS;
   label values U2DDSTR1 SUPPRESS;
   label values U2DDSTR2 SUPPRESS;
   label values U2DDSTR3 SUPPRESS;
   label values U2DDSTR4 SUPPRESS;
   label values U2DDTER1 SUPPRESS;
   label values U2DDTER2 SUPPRESS;
   label values U2DDTER3 SUPPRESS;
   label values U2DDTER4 SUPPRESS;
   label values U2DEAF SUPPRESS;
   label values U2DEVDLY SUPPRESS;
   label values U2EMTNL SUPPRESS;
   label values U2FRQLNG SUPPRESS;
   label values U2HDSTRT SUPPRESS;
   label values U2HLTH SUPPRESS;
   label values U2HMLNG SUPPRESS;
   label values U2IEP SUPPRESS;
   label values U2IEP91 SUPPRESS;
   label values U2IEP92 SUPPRESS;
   label values U2IEP93 SUPPRESS;
   label values U2IEP94 SUPPRESS;
   label values U2IEP95 SUPPRESS;
   label values U2IEP96 SUPPRESS;
   label values U2IEP97 SUPPRESS;
   label values U2IEP98 SUPPRESS;
   label values U2LEPSHM SUPPRESS;
   label values U2LEPSOT SUPPRESS;
   label values U2LRNNG SUPPRESS;
   label values U2MLTIMP SUPPRESS;
   label values U2MM91 SUPPRESS;
   label values U2MM92 SUPPRESS;
   label values U2MM93 SUPPRESS;
   label values U2MM94 SUPPRESS;
   label values U2MM95 SUPPRESS;
   label values U2MM96 SUPPRESS;
   label values U2MM97 SUPPRESS;
   label values U2MM98 SUPPRESS;
   label values U2MMENTR SUPPRESS;
   label values U2MMETR1 SUPPRESS;
   label values U2MMETR2 SUPPRESS;
   label values U2MMETR3 SUPPRESS;
   label values U2MMETR4 SUPPRESS;
   label values U2MMLEFT SUPPRESS;
   label values U2MMSTR1 SUPPRESS;
   label values U2MMSTR2 SUPPRESS;
   label values U2MMSTR3 SUPPRESS;
   label values U2MMSTR4 SUPPRESS;
   label values U2MNTL SUPPRESS;
   label values U2NOLEPS SUPPRESS;
   label values U2OTHDIS SUPPRESS;
   label values U2PHYSCL SUPPRESS;
   label values U2PLCMNT SUPPRESS;
   label values U2REPEAT SUPPRESS;
   label values U2RPRTCD SUPPRESS;
   label values U2SCHBDD SUPPRESS;
   label values U2SCHBMM SUPPRESS;
   label values U2SCHBYY SUPPRESS;
   label values U2SCHEDD SUPPRESS;
   label values U2SCHEMM SUPPRESS;
   label values U2SCHEYY SUPPRESS;
   label values U2SPCH SUPPRESS;
   label values U2SRABS SUPPRESS;
   label values U2TRDYE1 SUPPRESS;
   label values U2TRDYE2 SUPPRESS;
   label values U2TRDYE3 SUPPRESS;
   label values U2TRDYE4 SUPPRESS;
   label values U2TRDYT1 SUPPRESS;
   label values U2TRDYT2 SUPPRESS;
   label values U2TRDYT3 SUPPRESS;
   label values U2TRDYT4 SUPPRESS;
   label values U2TRDYU1 SUPPRESS;
   label values U2TRDYU2 SUPPRESS;
   label values U2TRDYU3 SUPPRESS;
   label values U2TRDYU4 SUPPRESS;
   label values U2TRMTYP SUPPRESS;
   label values U2WHYLFT SUPPRESS;
   label values U2YY91 SUPPRESS;
   label values U2YY92 SUPPRESS;
   label values U2YY93 SUPPRESS;
   label values U2YY94 SUPPRESS;
   label values U2YY95 SUPPRESS;
   label values U2YY96 SUPPRESS;
   label values U2YY97 SUPPRESS;
   label values U2YY98 SUPPRESS;
   label values U2YYENTR SUPPRESS;
   label values U2YYETR1 SUPPRESS;
   label values U2YYETR2 SUPPRESS;
   label values U2YYETR3 SUPPRESS;
   label values U2YYETR4 SUPPRESS;
   label values U2YYLEFT SUPPRESS;
   label values U2YYSTR1 SUPPRESS;
   label values U2YYSTR2 SUPPRESS;
   label values U2YYSTR3 SUPPRESS;
   label values U2YYSTR4 SUPPRESS;
   label values U41STLNG SUPPRESS;
   label values U4ABSEX1 SUPPRESS;
   label values U4ABSEX2 SUPPRESS;
   label values U4ABSEX3 SUPPRESS;
   label values U4ABSEX4 SUPPRESS;
   label values U4ABSTO1 SUPPRESS;
   label values U4ABSTO2 SUPPRESS;
   label values U4ABSTO3 SUPPRESS;
   label values U4ABSTO4 SUPPRESS;
   label values U4ABSUN1 SUPPRESS;
   label values U4ABSUN2 SUPPRESS;
   label values U4ABSUN3 SUPPRESS;
   label values U4ABSUN4 SUPPRESS;
   label values U4ATNREC SUPPRESS;
   label values U4AUTISM SUPPRESS;
   label values U4BLND SUPPRESS;
   label values U4BLNDF SUPPRESS;
   label values U4BRAIN SUPPRESS;
   label values U4CPYIEP SUPPRESS;
   label values U4CRGRD SUPPRESS;
   label values U4DDENTR SUPPRESS;
   label values U4DDETR1 SUPPRESS;
   label values U4DDETR2 SUPPRESS;
   label values U4DDETR3 SUPPRESS;
   label values U4DDETR4 SUPPRESS;
   label values U4DDLEFT SUPPRESS;
   label values U4DDSTR1 SUPPRESS;
   label values U4DDSTR2 SUPPRESS;
   label values U4DDSTR3 SUPPRESS;
   label values U4DDSTR4 SUPPRESS;
   label values U4DDTER1 SUPPRESS;
   label values U4DDTER2 SUPPRESS;
   label values U4DDTER3 SUPPRESS;
   label values U4DDTER4 SUPPRESS;
   label values U4DEAF SUPPRESS;
   label values U4DEVDLY SUPPRESS;
   label values U4EMTNL SUPPRESS;
   label values U4FRQLNG SUPPRESS;
   label values U4HLTH SUPPRESS;
   label values U4HMLNG SUPPRESS;
   label values U4IEP SUPPRESS;
   label values U4IEP91 SUPPRESS;
   label values U4IEP92 SUPPRESS;
   label values U4IEP93 SUPPRESS;
   label values U4IEP94 SUPPRESS;
   label values U4IEP95 SUPPRESS;
   label values U4IEP96 SUPPRESS;
   label values U4IEP97 SUPPRESS;
   label values U4IEP98 SUPPRESS;
   label values U4IEP99 SUPPRESS;
   label values U4LEPSCR SUPPRESS;
   label values U4LRNNG SUPPRESS;
   label values U4LSTYR SUPPRESS;
   label values U4MLTIMP SUPPRESS;
   label values U4MM91 SUPPRESS;
   label values U4MM92 SUPPRESS;
   label values U4MM93 SUPPRESS;
   label values U4MM94 SUPPRESS;
   label values U4MM95 SUPPRESS;
   label values U4MM96 SUPPRESS;
   label values U4MM97 SUPPRESS;
   label values U4MM98 SUPPRESS;
   label values U4MM99 SUPPRESS;
   label values U4MMENTR SUPPRESS;
   label values U4MMETR1 SUPPRESS;
   label values U4MMETR2 SUPPRESS;
   label values U4MMETR3 SUPPRESS;
   label values U4MMETR4 SUPPRESS;
   label values U4MMLEFT SUPPRESS;
   label values U4MMSTR1 SUPPRESS;
   label values U4MMSTR2 SUPPRESS;
   label values U4MMSTR3 SUPPRESS;
   label values U4MMSTR4 SUPPRESS;
   label values U4MNTL SUPPRESS;
   label values U4OTHDIS SUPPRESS;
   label values U4PHYSCL SUPPRESS;
   label values U4PLCMNT SUPPRESS;
   label values U4RPRTCD SUPPRESS;
   label values U4SPCH SUPPRESS;
   label values U4SRABS SUPPRESS;
   label values U4TRDYE1 SUPPRESS;
   label values U4TRDYE2 SUPPRESS;
   label values U4TRDYE3 SUPPRESS;
   label values U4TRDYE4 SUPPRESS;
   label values U4TRDYT1 SUPPRESS;
   label values U4TRDYT2 SUPPRESS;
   label values U4TRDYT3 SUPPRESS;
   label values U4TRDYT4 SUPPRESS;
   label values U4TRDYU1 SUPPRESS;
   label values U4TRDYU2 SUPPRESS;
   label values U4TRDYU3 SUPPRESS;
   label values U4TRDYU4 SUPPRESS;
   label values U4TRMTYP SUPPRESS;
   label values U4WHYLFT SUPPRESS;
   label values U4YY91 SUPPRESS;
   label values U4YY92 SUPPRESS;
   label values U4YY93 SUPPRESS;
   label values U4YY94 SUPPRESS;
   label values U4YY95 SUPPRESS;
   label values U4YY96 SUPPRESS;
   label values U4YY97 SUPPRESS;
   label values U4YY98 SUPPRESS;
   label values U4YY99 SUPPRESS;
   label values U4YYENTR SUPPRESS;
   label values U4YYETR1 SUPPRESS;
   label values U4YYETR2 SUPPRESS;
   label values U4YYETR3 SUPPRESS;
   label values U4YYETR4 SUPPRESS;
   label values U4YYLEFT SUPPRESS;
   label values U4YYSTR1 SUPPRESS;
   label values U4YYSTR2 SUPPRESS;
   label values U4YYSTR3 SUPPRESS;
   label values U4YYSTR4 SUPPRESS;
   label values U5ABSTOT SUPPRESS;
   label values U5ALLYR SUPPRESS;
   label values U5ATNREC SUPPRESS;
   label values U5AUTISM SUPPRESS;
   label values U5AUXABS SUPPRESS;
   label values U5AXABS SUPPRESS;
   label values U5BLND SUPPRESS;
   label values U5BLNDF SUPPRESS;
   label values U5BRAIN SUPPRESS;
   label values U5BTARD SUPPRESS;
   label values U5BUXTAR SUPPRESS;
   label values U5BXTARD SUPPRESS;
   label values U5DDCOM SUPPRESS;
   label values U5DDENTR SUPPRESS;
   label values U5DDLEFT SUPPRESS;
   label values U5DEAF SUPPRESS;
   label values U5DEVDLY SUPPRESS;
   label values U5EMTNL SUPPRESS;
   label values U5HLTH SUPPRESS;
   label values U5IEP SUPPRESS;
   label values U5IEP00 SUPPRESS;
   label values U5IEP01 SUPPRESS;
   label values U5LRNNG SUPPRESS;
   label values U5MLTIMP SUPPRESS;
   label values U5MM00 SUPPRESS;
   label values U5MM01 SUPPRESS;
   label values U5MMCOM SUPPRESS;
   label values U5MMENTR SUPPRESS;
   label values U5MMLEFT SUPPRESS;
   label values U5MNTL SUPPRESS;
   label values U5OTHDIS SUPPRESS;
   label values U5PHYSCL SUPPRESS;
   label values U5PLCMNT SUPPRESS;
   label values U5RPRTCD SUPPRESS;
   label values U5SPCH SUPPRESS;
   label values U5SRABS SUPPRESS;
   label values U5WHYLFT SUPPRESS;
   label values U5YY00 SUPPRESS;
   label values U5YY01 SUPPRESS;
   label values U5YYCOM SUPPRESS;
   label values U5YYENTR SUPPRESS;
   label values U5YYLEFT SUPPRESS;
   label values U6ALLYR SUPPRESS;
   label values U6ATNREC SUPPRESS;
   label values U6AUTISM SUPPRESS;
   label values U6BLND SUPPRESS;
   label values U6BLNDF SUPPRESS;
   label values U6BRAIN SUPPRESS;
   label values U6DDCOM SUPPRESS;
   label values U6DDENTR SUPPRESS;
   label values U6DDLEFT SUPPRESS;
   label values U6DEAF SUPPRESS;
   label values U6DEVDLY SUPPRESS;
   label values U6EMTNL SUPPRESS;
   label values U6HLTH SUPPRESS;
   label values U6IEP SUPPRESS;
   label values U6IEP01 SUPPRESS;
   label values U6IEP02 SUPPRESS;
   label values U6IEP03 SUPPRESS;
   label values U6LRNNG SUPPRESS;
   label values U6MLTIMP SUPPRESS;
   label values U6MM01 SUPPRESS;
   label values U6MM02 SUPPRESS;
   label values U6MM03 SUPPRESS;
   label values U6MMCOM SUPPRESS;
   label values U6MMENTR SUPPRESS;
   label values U6MMLEFT SUPPRESS;
   label values U6MNTL SUPPRESS;
   label values U6OTHDIS SUPPRESS;
   label values U6PHYSCL SUPPRESS;
   label values U6PLCMNT SUPPRESS;
   label values U6SPCH SUPPRESS;
   label values U6SRABS SUPPRESS;
   label values U6WHYLFT SUPPRESS;
   label values U6YY01 SUPPRESS;
   label values U6YY02 SUPPRESS;
   label values U6YY03 SUPPRESS;
   label values U6YYCOM SUPPRESS;
   label values U6YYENTR SUPPRESS;
   label values U6YYLEFT SUPPRESS;
   label values T1CLSSFY T1001F;
   label values T1CMPSEN T1001F;
   label values T1COMPTR T1001F;
   label values T1DIFJOB T1001F;
   label values T1DIFLIV T1001F;
   label values T1EXPLN T1001F;
   label values T1GRAPH T1001F;
   label values T1LETTER T1001F;
   label values T1MEASU T1001F;
   label values T1OBSRV T1001F;
   label values T1ORDER T1001F;
   label values T1PRDCT T1001F;
   label values T1PRINT T1001F;
   label values T1READS T1001F;
   label values T1RELAT T1001F;
   label values T1RHYME T1001F;
   label values T1SOLVE T1001F;
   label values T1SORTS T1001F;
   label values T1STORY T1001F;
   label values T1STRAT T1001F;
   label values T1WRITE T1001F;
   label values T1RSCOMM T1002F;
   label values T1RSCOYY T1004F;
   label values T2CLSSFY T2001F;
   label values T2CMPSEN T2001F;
   label values T2CMPSTR T2001F;
   label values T2COMPTR T2001F;
   label values T2DIFLIV T2001F;
   label values T2EXPLN T2001F;
   label values T2GRAPH T2001F;
   label values T2LETTER T2001F;
   label values T2MEASU T2001F;
   label values T2OBSRV T2001F;
   label values T2ORDER T2001F;
   label values T2PRINT T2001F;
   label values T2READS T2001F;
   label values T2RECWYS T2001F;
   label values T2RELAT T2001F;
   label values T2RHYME T2001F;
   label values T2SOLVE T2001F;
   label values T2SORTS T2001F;
   label values T2STORY T2001F;
   label values T2STRAT T2001F;
   label values T2USESTR T2001F;
   label values T2BEHPRB T2002F;
   label values T2FLBHND T2002F;
   label values T2GFTTAL T2002F;
   label values T2INCESL T2002F;
   label values T2PLLESL T2002F;
   label values T2SGMTH T2002F;
   label values T2SGRDG T2002F;
   label values T2TTRMTH T2002F;
   label values T2TTRRD T2002F;
   label values T2TT1CMB T2003F;
   label values T2TT1ENG T2003F;
   label values T2TT1MTH T2003F;
   label values T2TT1OTH T2003F;
   label values T2TT1RD T2003F;
   label values T2TT1OTG T2004F;
   label values T2STRPLY T2005F;
   label values T2UNPLAY T2005F;
   label values T2RTLANG T2006F;
   label values T2RTMTH T2006F;
   label values T2RTSCI T2006F;
   label values T2ABIL T2007F;
   label values T2NORDGP T2008F;
   label values T2GPMOBL T2010F;
   label values T2INFMTS T2011F;
   label values T2REGCON T2011F;
   label values T2RETCLS T2011F;
   label values T2VOLUNT T2011F;
   label values T2TCHCNF T2012F;
   label values T2PURP T2013F;
   label values T2RSCOMM T2014F;
   label values T2RSCOYY T2016F;
   label values T4CLSSFY T4001F;
   label values T4CMPSES T4001F;
   label values T4COINS T4001F;
   label values T4COMPTR T4001F;
   label values T4ESTQNT T4001F;
   label values T4EXPLN T4001F;
   label values T4GRAPH T4001F;
   label values T4IRGVWL T4001F;
   label values T4KCLSSF T4001F;
   label values T4KCMPSE T4001F;
   label values T4KCMPST T4001F;
   label values T4KCOMPT T4001F;
   label values T4KDIFLI T4001F;
   label values T4KEXPLN T4001F;
   label values T4KGRAPH T4001F;
   label values T4KLETTE T4001F;
   label values T4KMEASU T4001F;
   label values T4KOBSRV T4001F;
   label values T4KORDER T4001F;
   label values T4KPRINT T4001F;
   label values T4KREADS T4001F;
   label values T4KRECWY T4001F;
   label values T4KRELAT T4001F;
   label values T4KRHYME T4001F;
   label values T4KSOLVE T4001F;
   label values T4KSORTS T4001F;
   label values T4KSTORY T4001F;
   label values T4KSTRAT T4001F;
   label values T4KUSEST T4001F;
   label values T4MAPS T4001F;
   label values T4MEASU T4001F;
   label values T4PLCVL T4001F;
   label values T4PRINT T4001F;
   label values T4RD1FLN T4001F;
   label values T4RD1IND T4001F;
   label values T4RECWYS T4001F;
   label values T4REGVWL T4001F;
   label values T4RLVINF T4001F;
   label values T4SCIPRD T4001F;
   label values T4SIMDIF T4001F;
   label values T4STORY T4001F;
   label values T4STRAT T4001F;
   label values T4WHNUM T4001F;
   label values T4KSGMTH T4002F;
   label values T4KSGRDG T4002F;
   label values T4KTCHCN T4002F;
   label values T4KTTRMT T4002F;
   label values T4KTTRRD T4002F;
   label values T4SGMTH T4002F;
   label values T4SGRDG T4002F;
   label values T4TCHCNF T4002F;
   label values T4TCMTH T4002F;
   label values T4TCRD T4002F;
   label values T4TCSCI T4002F;
   label values T4TCSS T4002F;
   label values T4TTRMTH T4002F;
   label values T4TTRRD T4002F;
   label values T4KTT1MT T4003F;
   label values T4KTT1RD T4003F;
   label values T4TT1MTH T4003F;
   label values T4TT1RD T4003F;
   label values T4KSTRPL T4004F;
   label values T4KUNPLA T4004F;
   label values T4STRPLY T4004F;
   label values T4UNPLAY T4004F;
   label values T4KRTLAN T4005F;
   label values T4KRTMTH T4005F;
   label values T4KRTSCI T4005F;
   label values T4RTLANG T4005F;
   label values T4RTMTH T4005F;
   label values T4RTSCI T4005F;
   label values T4ABIL T4006F;
   label values T4KABIL T4006F;
   label values T4KNORDG T4007F;
   label values T4NORDGP T4007F;
   label values T4GPMOBL T4009F;
   label values T4KGPMOB T4009F;
   label values T4KMTSTF T4010F;
   label values T4MTSTF T4010F;
   label values T4INFMTS T4011F;
   label values T4KINFMT T4011F;
   label values T4KREGCO T4011F;
   label values T4KRETCL T4011F;
   label values T4KVOLUN T4011F;
   label values T4REGCON T4011F;
   label values T4RETCLS T4011F;
   label values T4VOLUNT T4011F;
   label values T4KPURP T4012F;
   label values T4PURP T4012F;
   label values T4KQXCOM T4013F;
   label values T4KQXCOY T4015F;
   label values T4QXCOY T4015F;
   label values T4CHRDGP T4016F;
   label values T4QXCOM T4017F;
   label values T4GLVL T4GLVL;
   label values T5GLVL T501F;
   label values T5ABIL T5ABIL;
   label values T54ESTIM T5ARS;
   label values T5CLSSFY T5ARS;
   label values T5COMPTR T5ARS;
   label values T5COMSC T5ARS;
   label values T5DIV3X1 T5ARS;
   label values T5ECONMC T5ARS;
   label values T5ENVIR T5ARS;
   label values T5ERSPSC T5ARS;
   label values T5EXPLN T5ARS;
   label values T5EXPOST T5ARS;
   label values T5FRACTN T5ARS;
   label values T5GOVT T5ARS;
   label values T5GRAPH T5ARS;
   label values T5INFO T5ARS;
   label values T5LIFSCI T5ARS;
   label values T5MAPGLO T5ARS;
   label values T5MEASTL T5ARS;
   label values T5MECHAN T5ARS;
   label values T5MLTSTR T5ARS;
   label values T5PAST T5ARS;
   label values T5PATTRN T5ARS;
   label values T5PHYSCI T5ARS;
   label values T5PLCVL T5ARS;
   label values T5RD3FLN T5ARS;
   label values T5RD3IND T5ARS;
   label values T5REFLWR T5ARS;
   label values T5SCIPRD T5ARS;
   label values T5SHAPE T5ARS;
   label values T5SIMDIF T5ARS;
   label values T5SPEAK T5ARS;
   label values T5STRAT T5ARS;
   label values T5ASSMT T5ASTEST;
   label values T5CHRDGP T5CHRDGP;
   label values T5GPMOBL T5GPMOBL;
   label values T5MTSTF T5MTSTF;
   label values T5NORDGP T5NORDGP;
   label values T5MACNS T5PERSON;
   label values T5RLACNS T5PERSON;
   label values T5SCCNS T5PERSON;
   label values T5SSCNS T5PERSON;
   label values T5PURP T5PURP;
   label values T5QXCOM T5QXCOM;
   label values T5QXCOY T5QXCOY;
   label values T5RTLANG T5RT;
   label values T5RTMTH T5RT;
   label values T5RTSCI T5RT;
   label values T5STRPLY T5STRPLY;
   label values T5UNPLAY T5UNPLAY;
   label values T5INFMTS T5YNNANO;
   label values T5PARCON T5YNNANO;
   label values T5REGCON T5YNNANO;
   label values T5RETCLS T5YNNANO;
   label values T5VOLUNT T5YNNANO;
   label values T5TT1MTH T5YNNO;
   label values T5TT1RD T5YNNO;
   label values T5AFTER T5YNPNP;
   label values T5COUNSL T5YNPNP;
   label values T5LRXENG T5YNPNP;
   label values T5SGMTH T5YNPNP;
   label values T5SGRDG T5YNPNP;
   label values T5SPEDRE T5YNPNP;
   label values T5SUMMER T5YNPNP;
   label values T5TTRMTH T5YNPNP;
   label values T5TTRRD T5YNPNP;
   label values T6GLVL T6GLVL;
   label values T7GLVL T7GLVL;
   label values A1TQUEX TF;
   label values A2TQUEX TF;
   label values A4TQUEX TF;
   label values A5TQUEX TF;
   label values B1TQUEX TF;
   label values B2TQUEX TF;
   label values B4TQUEX TF;
   label values B5TQUEX TF;
   label values C1COGDAT TF;
   label values C1GKFLG TF;
   label values C1MTHFLG TF;
   label values C1RDGFLG TF;
   label values C2COGDAT TF;
   label values C2GKFLG TF;
   label values C2MTHFLG TF;
   label values C2RDGFLG TF;
   label values C3COGDAT TF;
   label values C3GKFLG TF;
   label values C3MTHFLG TF;
   label values C3RDGFLG TF;
   label values C4COGDAT TF;
   label values C4GKFLG TF;
   label values C4MTHFLG TF;
   label values C4RDGFLG TF;
   label values C5COGDAT TF;
   label values C5MTHFLG TF;
   label values C5RDGFLG TF;
   label values C5SCIFLG TF;
   label values C5SDQFLG TF;
   label values C6COGDAT TF;
   label values C6FCQDAT TF;
   label values C6MTHFLG TF;
   label values C6RDGFLG TF;
   label values C6SCIFLG TF;
   label values C6SDQFLG TF;
   label values C7ENGFLG TF;
   label values C7MTHFLG TF;
   label values C7SCIFLG TF;
   label values C7STUDAT TF;
   label values F5NOTEND TF;
   label values G6TQUEX TF;
   label values G7TQUEX TF;
   label values IF_D_ED TF;
   label values IF_D_OCS TF;
   label values IF_INC_R TF;
   label values IF_M_ED TF;
   label values IF_M_OCS TF;
   label values IF1_D_ED TF;
   label values IF1_D_OC TF;
   label values IF1_ICAT TF;
   label values IF1_INC TF;
   label values IF1_M_ED TF;
   label values IF1_M_OC TF;
   label values IF3_D_ED TF;
   label values IF3_D_OC TF;
   label values IF3_ICAT TF;
   label values IF3_M_ED TF;
   label values IF3_M_OC TF;
   label values IF5_D_ED TF;
   label values IF5_D_OC TF;
   label values IF5_ICAT TF;
   label values IF5_M_ED TF;
   label values IF5_M_OC TF;
   label values IF8_D_ED TF;
   label values IF8_D_OC TF;
   label values IF8_ICAT TF;
   label values IF8_M_ED TF;
   label values IF8_M_OC TF;
   label values J61TQUEX TF;
   label values J62TQUEX TF;
   label values J71TQUEX TF;
   label values J72TQUEX TF;
   label values K2INFAC TF;
   label values K4INFAC TF;
   label values K5INFAC TF;
   label values K6INFAC TF;
   label values L5INSFS TF;
   label values M6TQUEX TF;
   label values M7TQUEX TF;
   label values N6TQUEX TF;
   label values N7TQUEX TF;
   label values P1EDITF1 TF;
   label values P1EDITF2 TF;
   label values P1EDITF3 TF;
   label values P1EDITF4 TF;
   label values P1EDITF5 TF;
   label values P1EDITF6 TF;
   label values P1EDITF7 TF;
   label values P1EDITF8 TF;
   label values P1PARDAT TF;
   label values P1SRSDAT TF;
   label values P1TWIN TF;
   label values P2EDIT TF;
   label values P2ERRFLG TF;
   label values P2KSHCHG TF;
   label values P2PARDAT TF;
   label values P2SPQDAT TF;
   label values P2SRSDAT TF;
   label values P2TWIN TF;
   label values P3EDIT TF;
   label values P3ERRFLG TF;
   label values P3PARDAT TF;
   label values P3SHCHG TF;
   label values P3SPQDAT TF;
   label values P3TWIN TF;
   label values P4EDIT TF;
   label values P4ERRFLG TF;
   label values P4PARDAT TF;
   label values P4SHCHG TF;
   label values P4SPQDAT TF;
   label values P4SRSDAT TF;
   label values P4TWIN TF;
   label values P5EDIT TF;
   label values P5ERRFLG TF;
   label values P5PARDAT TF;
   label values P5SHCHG TF;
   label values P5TWIN TF;
   label values P6EDIT TF;
   label values P6ERRFLG TF;
   label values P6PARDAT TF;
   label values P6SHCHG TF;
   label values P6TWIN TF;
   label values P7EDIT TF;
   label values P7ERRFLG TF;
   label values P7PARDAT TF;
   label values P7SHCHG TF;
   label values P7TWIN TF;
   label values R3DEST TF;
   label values R3SAMPLE TF;
   label values R4DEST TF;
   label values R4FRSHEN TF;
   label values S2INSAQ TF;
   label values S4INSAQ TF;
   label values S5INSAQ TF;
   label values S6INSAQ TF;
   label values S7INSAQ TF;
   label values T1TQCDAT TF;
   label values T2TQCDAT TF;
   label values T4TQCDAT TF;
   label values T5TQCDAT TF;
   label values T6SAMTCH TF;
   label values T7SAMTCH TF;
   label values S5ANYGRD TF1789F;
   label values S5DSBLED TF1789F;
   label values S5EACHGR TF1789F;
   label values S5ELMENT TF1789F;
   label values S5FAILEX TF1789F;
   label values S5IMMATU TF1789F;
   label values S5NOPERM TF1789F;
   label values S5POLICY TF1789F;
   label values S5PRNTS TF1789F;
   label values S5SOCPRM TF1789F;
   label values FKCHGSCH TF19F;
   label values FKCHGTCH TF19F;
   label values R4R2TCHG TF19F;
   label values R5DEST TF19F;
   label values R6DEST TF19F;
   label values IFS2FLCH TF20F;
   label values IFS2RLCH TF20F;
   label values IFS4FLCH TF20F;
   label values IFS4RLCH TF20F;
   label values IFS5FLCH TF20F;
   label values IFS5RLCH TF20F;
   label values IFS6FLCH TF20F;
   label values IFS6RLCH TF20F;
   label values IFS7FLCH TF20F;
   label values IFS7RLCH TF20F;
   label values U2RIEP U4RIEP;
   label values U4RIEP U4RIEP;
   label values U4SCHBMM U4SCHBMM;
   label values U4SCHEMM U4SCHBMM;
   label values U4SCHBYY U4SCHBYY;
   label values U4SCHEYY U4SCHEYY;
   label values U5RIEP U506F;
   label values U6ABSTOT U6ABSTOT;
   label values U6AUXABS U6AUXABS;
   label values U6AXABS U6AXABS;
   label values U6BTARD U6BTARD;
   label values U6BUXTAR U6BUXTAR;
   label values U6BXTARD U6BXTARD;
   label values U6RIEP U6RIEP;
   label values R5URBAN URBAN;
   label values W1INCCAT W1INCCAT;
   label values W1LANGST W1LANGST;
   label values W1POVRTY W1POVRTY;
   label values WKPOV_R W1POVRTY;
   label values W1RACETH W1RACETH;
   label values W1SESQ5 W1SESQ;
   label values W3INCCAT W3INCCAT;
   label values W3POVRTY W3POVRTY;
   label values W3RACETH W3RACETH;
   label values W3SESQ5 W3SESQ;
   label values W5INCCAT W5INCCAT;
   label values W5PARED W5PARED;
   label values W5DADED W5PED;
   label values W5MOMED W5PED;
   label values W5POVRTY W5POVRTY;
   label values W5SESQ5 W5SESQ5F;
   label values W8INCCAT W8INCCAT;
   label values W8PARED W8PARED;
   label values W8DADED W8PED;
   label values W8MOMED W8PED;
   label values W8POVRTY W8POVRTY;
   label values W8SESQ5 W8SESQ8F;
   label values C6DISRUP YN;
   label values C6INTRUP YN;
   label values C6OBSERV YN;
   label values C6PRESNT YN;
   label values C6WHERE YN;
   label values F5PREFCV YN;
   label values F6PREFCV YN;
   label values F7PREFCV YN;
   label values A5BASAL YN1789F;
   label values A5BASTRD YN1789F;
   label values A5CSPNH YN1789F;
   label values A5LEP YN1789F;
   label values A5OTHRD YN1789F;
   label values A5TRADE YN1789F;
   label values A5TSPNH YN1789F;
   label values A5TSTSCO YN1789F;
   label values B5GRDECE YN1789F;
   label values B5GRDEE YN1789F;
   label values B5GRDNEM YN1789F;
   label values B5GRDOEM YN1789F;
   label values B5GRDSE YN1789F;
   label values B5UNDECE YN1789F;
   label values B5UNDEE YN1789F;
   label values B5UNDNEM YN1789F;
   label values B5UNDOEM YN1789F;
   label values B5UNDSE YN1789F;
   label values L5CATHOL YN1789F;
   label values L5CHCESK YN1789F;
   label values L5DIFABS YN1789F;
   label values L5DIFTAR YN1789F;
   label values L5DIOCES YN1789F;
   label values L5EARLCH YN1789F;
   label values L5OTHREL YN1789F;
   label values L5PARISH YN1789F;
   label values L5PVTEAR YN1789F;
   label values P4DADCTZ YN1789F;
   label values P4MOMCTZ YN1789F;
   label values P5DADCTZ YN1789F;
   label values P5MOMCTZ YN1789F;
   label values S5COSTLY YN1789F;
   label values S5FEWSTD YN1789F;
   label values S5GFT1ST YN1789F;
   label values S5GFT2ND YN1789F;
   label values S5GFT3RD YN1789F;
   label values S5GFT4TH YN1789F;
   label values S5GFT5TH YN1789F;
   label values S5GFTK YN1789F;
   label values S5HOMVST YN1789F;
   label values S5LANSTU YN1789F;
   label values S5LATEST YN1789F;
   label values S5MANSUM YN1789F;
   label values S5MEETSP YN1789F;
   label values S5NOFACL YN1789F;
   label values S5NOSTAF YN1789F;
   label values S5OPTSUM YN1789F;
   label values S5OTHER YN1789F;
   label values S5OTHTRA YN1789F;
   label values S5OUTRCH YN1789F;
   label values S5SUPSCH YN1789F;
   label values S5SUPXSC YN1789F;
   label values S5TEST1 YN1789F;
   label values S5TEST10 YN1789F;
   label values S5TEST11 YN1789F;
   label values S5TEST12 YN1789F;
   label values S5TEST2 YN1789F;
   label values S5TEST3 YN1789F;
   label values S5TEST4 YN1789F;
   label values S5TEST5 YN1789F;
   label values S5TEST6 YN1789F;
   label values S5TEST7 YN1789F;
   label values S5TEST8 YN1789F;
   label values S5TEST9 YN1789F;
   label values S5TESTK YN1789F;
   label values S5TRANSL YN1789F;
   label values S5TRNWRT YN1789F;
   label values S5TT1CLA YN1789F;
   label values S5TT1ED YN1789F;
   label values S5TT1EXT YN1789F;
   label values S5TT1FLS YN1789F;
   label values S5TT1INC YN1789F;
   label values S5TT1PD YN1789F;
   label values S5TT1PO YN1789F;
   label values S5TTLSUM YN1789F;
   label values T5RETGRA YN1789F;
   label values P1BDASN YN19F;
   label values P1BDBLCK YN19F;
   label values P1BDHISP YN19F;
   label values P1BDIND YN19F;
   label values P1BDMT1R YN19F;
   label values P1BDPACI YN19F;
   label values P1BDWHT YN19F;
   label values P1BMASN YN19F;
   label values P1BMBLCK YN19F;
   label values P1BMHISP YN19F;
   label values P1BMIND YN19F;
   label values P1BMMT1R YN19F;
   label values P1BMPACI YN19F;
   label values P1BMWHT YN19F;
   label values P1CARNOW YN19F;
   label values P1CENTER YN19F;
   label values P1DISABL YN19F;
   label values P1HDASN YN19F;
   label values P1HDBLCK YN19F;
   label values P1HDHISP YN19F;
   label values P1HDIND YN19F;
   label values P1HDMT1R YN19F;
   label values P1HDPACI YN19F;
   label values P1HDWHT YN19F;
   label values P1HMASN YN19F;
   label values P1HMBLCK YN19F;
   label values P1HMHISP YN19F;
   label values P1HMIND YN19F;
   label values P1HMMT1R YN19F;
   label values P1HMPACI YN19F;
   label values P1HMWHT YN19F;
   label values P2HDASN YN19F;
   label values P2HDBLCK YN19F;
   label values P2HDHISP YN19F;
   label values P2HDIND YN19F;
   label values P2HDMT1R YN19F;
   label values P2HDPACI YN19F;
   label values P2HDWHT YN19F;
   label values P2HMASN YN19F;
   label values P2HMBLCK YN19F;
   label values P2HMHISP YN19F;
   label values P2HMIND YN19F;
   label values P2HMMT1R YN19F;
   label values P2HMPACI YN19F;
   label values P2HMWHT YN19F;
   label values P3CARNOW YN19F;
   label values P4CARNOW YN19F;
   label values P4DISABL YN19F;
   label values P4HDASN YN19F;
   label values P4HDBLCK YN19F;
   label values P4HDHISP YN19F;
   label values P4HDIND YN19F;
   label values P4HDMT1R YN19F;
   label values P4HDPACI YN19F;
   label values P4HDWHT YN19F;
   label values P4HMASN YN19F;
   label values P4HMBLCK YN19F;
   label values P4HMHISP YN19F;
   label values P4HMIND YN19F;
   label values P4HMMT1R YN19F;
   label values P4HMPACI YN19F;
   label values P4HMWHT YN19F;
   label values P5CARNOW YN19F;
   label values P5DISABL YN19F;
   label values P6CARNOW YN19F;
   label values P6DISABL YN19F;
   label values P7DISABL YN19F;
   label values W1AMERIN YN19F;
   label values W1ASIAN YN19F;
   label values W1BLACK YN19F;
   label values W1HEARLY YN19F;
   label values W1HISP YN19F;
   label values W1MOMAR YN19F;
   label values W1MT1RAC YN19F;
   label values W1PACISL YN19F;
   label values W1WHITE YN19F;
   label values W3AMERIN YN19F;
   label values W3ASIAN YN19F;
   label values W3BLACK YN19F;
   label values W3HISP YN19F;
   label values W3MT1RAC YN19F;
   label values W3PACISL YN19F;
   label values W3WHITE YN19F;
   label values W5AMERIN YN19F;
   label values W5ASIAN YN19F;
   label values W5BLACK YN19F;
   label values W5HISP YN19F;
   label values W5MT1RAC YN19F;
   label values W5PACISL YN19F;
   label values W5WHITE YN19F;
   label values W8AMERIN YN19F;
   label values W8ASIAN YN19F;
   label values W8BLACK YN19F;
   label values W8HISP YN19F;
   label values W8MT1RAC YN19F;
   label values W8PACISL YN19F;
   label values W8WHITE YN19F;
   label values WKAMERIN YN19F;
   label values WKASIAN YN19F;
   label values WKBLACK YN19F;
   label values WKCAREPK YN19F;
   label values WKHEARLY YN19F;
   label values WKHISP YN19F;
   label values WKMT1RAC YN19F;
   label values WKPACISL YN19F;
   label values WKWHITE YN19F;
   label values C6BRKFNL YN1F;
   label values A5ARTARE YN789F;
   label values A5COMPAR YN789F;
   label values A5DRAMAR YN789F;
   label values A5LISTNC YN789F;
   label values A5MATHAR YN789F;
   label values A5OTLA YN789F;
   label values A5READAR YN789F;
   label values A5SCIAR YN789F;
   label values A5WRTCNT YN789F;
   label values B5ELEMCT YN789F;
   label values B5ERLYCT YN789F;
   label values B5ESLCT YN789F;
   label values B5RACE5 YN789F;
   label values B5SCNDCT YN789F;
   label values B5SPEDCT YN789F;
   label values B5SUBJCT YN789F;
   label values C6DRINKS YN789F;
   label values C6SNACKS YN789F;
   label values C6SWEETS YN789F;
   label values C7DRINKS YN789F;
   label values C7SNACKS YN789F;
   label values C7SWEETS YN789F;
   label values L57TH YN789F;
   label values L58TH YN789F;
   label values L5FIFTH YN789F;
   label values L5PRKNDR YN789F;
   label values L5PUBLIC YN789F;
   label values L5SIXTH YN789F;
   label values L5SPLNDS YN789F;
   label values P5CFDIED YN789F;
   label values P5CRDIED YN789F;
   label values S5AFTSCH YN789F;
   label values S5ATTACK YN789F;
   label values S5B4SCH YN789F;
   label values S5DETECT YN789F;
   label values S5ESCORT YN789F;
   label values S5FORCE YN789F;
   label values S5GFTPRG YN789F;
   label values S5HLLPSS YN789F;
   label values S5HLLWAY YN789F;
   label values S5INTCOM YN789F;
   label values S5LANSCH YN789F;
   label values S5LIMENG YN789F;
   label values S5LOCKDR YN789F;
   label values S5RESTRM YN789F;
   label values S5SECURT YN789F;
   label values S5SIGNIN YN789F;
   label values S5UNIFRM YN789F;
   label values S5USDABR YN789F;
   label values S5WEAPON YN789F;
   label values T5SCTCH YN789F;
   label values T5TCHCNF YN789F;
   label values P1FIRKDG YN89F;
   label values F4YRRND YRRND;
   label values F5YRRND YRRND;

save "`derived_dir'/eclsk_1999_master.dta", replace;
