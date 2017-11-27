set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

* The path raw_data_dir MUST be changed in dictionary_2011.dct
local raw_data_dir = "${GoogleDrive}/raw_data/eclsk/ChildK2p"
local derived_dir  = "${GoogleDrive}/derived/eclsk/2011"

set maxvar 30000
clear
infile using "dictionary_2011.dct"
#delimit ;
keep if  (X1PUBPRI == 1 | 
       X1PUBPRI == 2 | 
       X1PUBPRI == -1 | 
       X1PUBPRI == -9 | 
       X1PUBPRI == .); 
   keep if (X2PUBPRI == 1 | 
       X2PUBPRI == 2 | 
       X2PUBPRI == -1 | 
       X2PUBPRI == -9); 
   keep if (X3PUBPRI == 1 | 
       X3PUBPRI == 2 | 
       X3PUBPRI == -1 | 
       X3PUBPRI == -9 | 
       X3PUBPRI == .); 
   keep if (X4PUBPRI == 1 | 
       X4PUBPRI == 2 | 
       X4PUBPRI == -1 | 
       X4PUBPRI == -9 | 
       X4PUBPRI == .); 
   keep if (X5PUBPRI == 1 | 
       X5PUBPRI == 2 | 
       X5PUBPRI == -1 | 
       X5PUBPRI == -9 | 
       X5PUBPRI == .); 
   keep if (X6PUBPRI == 1 | 
       X6PUBPRI == 2 | 
       X6PUBPRI == -1 | 
       X6PUBPRI == -9 | 
       X6PUBPRI == .); 
   keep if (X1KSCTYP == 1 | 
       X1KSCTYP == 2 | 
       X1KSCTYP == 3 | 
       X1KSCTYP == 4 | 
       X1KSCTYP == -1 | 
       X1KSCTYP == -9 | 
       X1KSCTYP == .); 
   keep if (X2KSCTYP == 1 | 
       X2KSCTYP == 2 | 
       X2KSCTYP == 3 | 
       X2KSCTYP == 4 | 
       X2KSCTYP == -1 | 
       X2KSCTYP == -9); 
   keep if (X4SCTYP == 1 | 
       X4SCTYP == 2 | 
       X4SCTYP == 3 | 
       X4SCTYP == 4 | 
       X4SCTYP == -1 | 
       X4SCTYP == -9 | 
       X4SCTYP == .); 
   keep if (X6SCTYP == 1 | 
       X6SCTYP == 2 | 
       X6SCTYP == 3 | 
       X6SCTYP == 4 | 
       X6SCTYP == -1 | 
       X6SCTYP == -9 | 
       X6SCTYP == .);
   label define _09F
      0  "0: NO AFFIRMATIVE RESPONSES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _1789F
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _19F
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _219F
      -1  "-1: NOT APPLICABLE"  
      -3  "-3: NO ELL STUDENTS ASSESSED FOR ENGL PROF"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _319F
      -1  "-1: NOT APPLICABLE"  
      -3  "-3: NOT APPLICABLE-NO DISTRICT TITLE 1"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _4COMPYY
      2012  "2012"  
;
   label define _59F
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _69F
      -6  "-6: ZERO FOOD SECURITY RAW SCORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _789F
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _891789F
      89  "89: CHILD HAS LIVED WITH RESPONDENT HIS/HER ENTIRE LIFE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _9F
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1AADDSB
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ABEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ACNT2A
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ALETT
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ALGINS
      1  "1: ENGLISH AS A SECOND LANGUAGE (ESL)"  
      2  "2: BILINGUAL EDUCATION"  
      3  "3: DUAL-LANGUAGE PROGRAM"  
      4  "4: NO SPECIALIZED LANGUAGE INSTRUCTION PROVIDED"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ALPHBF
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ALPHBT
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ANONCN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ANONIN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ANONMT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ANONOT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ANONRD
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ARECNM
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ASNTNC
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ATNDPR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1AWORD
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1BKSIGN
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1CHCLDS
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1CLSSIZ
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1CNT2A
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1CNTRLC
      1  "1: NO CONTROL"  
      2  "2: SLIGHT CONTROL"  
      3  "3: SOME CONTROL"  
      4  "4: MODERATE CONTROL"  
      5  "5: A GREAT DEAL OF CONTROL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1COMM
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1COMPYY
      2010  "2010"  
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DADDSB
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DBEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DCNT2A
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DLETT
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DLGINS
      1  "1: ENGLISH AS A SECOND LANGUAGE (ESL)"  
      2  "2: BILINGUAL EDUCATION"  
      3  "3: DUAL-LANGUAGE PROGRAM"  
      4  "4: NO SPECIALIZED LANGUAGE INSTRUCTION PROVIDED"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DNONCN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DNONIN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DNONMT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DNONOT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DNONRD
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DRECNM
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DSNTNC
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DSPKTM
      1  "1: 1-15 MINUTES A DAY"  
      2  "2: 16-30 MINUTES A DAY"  
      3  "3: 31-60 MINUTES A DAY"  
      4  "4: MORE THAN 60 MINUTES A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1DWORD
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ENGLAN
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1ENJOY
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1FNSHT
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1FOLWDR
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1FRMLIN
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1HGHPAR
      1  "1: DID NOT COMPLETE HIGH SCHOOL"  
      2  "2: HIGH SCHOOL DIPLOMA OR EQUIVALENT/GED"  
      3  "3: SOME COLLEGE OR TECHNICAL OR VOCATIONAL SCHOOL"  
      4  "4: ASSOCIATE'S DEGREE"  
      5  "5: BACHELOR'S DEGREE"  
      6  "6: MASTER'S DEGREE"  
      7  "7: AN ADVANCED PROFESSIONAL DEGREE BEYOND A MASTER'S DEGREE"  
      8  "8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1HIGHQL
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1HMWRK
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1IDCOLO
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1INDVDL
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1LRNREA
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1MKDIFF
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1NOTDSR
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PADDSB
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PBEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PCNT2A
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PENCIL
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PLETT
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PNONCN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PNONIN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PNONMT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PNONOT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PNONRD
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PRBLMS
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PRCTWR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PRECNM
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PSNTNC
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1PWORD
      1  "1: LESS THAN 1/4 OF THE CHILDREN"  
      2  "2: ABOUT 1/4 OF THE CHILDREN"  
      3  "3: ABOUT 1/2 OF THE CHILDREN"  
      4  "4: ABOUT 3/4 OF THE CHILDREN"  
      5  "5: MORE THAN 3/4 OF THE CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1READAT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1SENSTI
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1SHARE
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1SITSTI
      1  "1: NOT IMPORTANT"  
      2  "2: NOT VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: VERY IMPORTANT"  
      5  "5: ESSENTIAL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1SMLGRP
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1STATCT
      1  "1: REGULAR OR STANDARD STATE CERTIFICATE OR ADVANCED PROF CERT"  
      2  "2: CERTIFICATE WITHOUT COMPLETION OF PROBATIONARY PERIOD"  
      3  "3: CERTIFICATE REQUIRING ADDITIONAL WORK TEACHING OR EXAM"  
      4  "4: CERTIFICATE ISSUED TO PERSONS NEEDING CERTIFICATION PROGRAM"  
      5  "5: I DO NOT HOLD ANY OF THE ABOVE CERTIFICATIONS IN THIS STATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1TCHPRN
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1TEACH
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1TIMDIS
      1  "1: LESS THAN 1/2 HOUR A DAY"  
      2  "2: 1/2 HOUR TO LESS THAN 1 HOUR A DAY"  
      3  "3: 1 TO LESS THAN 1 1/2 HOURS A DAY"  
      4  "4: 1 1/2 TO LESS THAN 2 HOURS A DAY"  
      5  "5: 2 TO LESS THAN 2 1/2 HOURS A DAY"  
      6  "6: 2 1/2 TO LESS THAN 3 HOURS A DAY"  
      7  "7: 3 HOURS OR MORE A DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A1WHLCLS
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A21TO1A
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A22S5S1A
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A23DGT
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ABEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ACCPTD
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ACCURA
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ADTRND
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2AIDTUT
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: THREE OR FOUR TIMES A WEEK"  
      5  "5: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ALPBTZ
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ANONCN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ANONEN
      1  "1: 1-15 MINUTES A DAY"  
      2  "2: 16-30 MINUTES A DAY"  
      3  "3: 31-60 MINUTES A DAY"  
      4  "4: MORE THAN 60 MINUTES A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ANONIN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ANONMT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ANONOT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ANONRD
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ART
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ARTMAT
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ATTART
      1  "1: NONE"  
      2  "2: 1-25 PERCENT"  
      3  "3: 26-50 PERCENT"  
      4  "4: 51-75 PERCENT"  
      5  "5: 76 PERCENT OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ATTND
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ATTOPN
      1  "1: NONE"  
      2  "2: 1-25 PERCENT"  
      3  "3: 26-50 PERCENT"  
      4  "4: 51-75 PERCENT"  
      5  "5: 76 PERCENT OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2AUDIOV
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2AVDDIS
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BASAL
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BASBK
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BEHAVR
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BLNDWD
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BODY
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BORROW
      1  "1: NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2BYD10O
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CALCUL
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CALEND
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CHCLDS
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CHGAP
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CHLKBD
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CHSBK
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CLASPA
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CLSSPC
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CMNITY
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CMRCLT
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CNTNLR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COMPEQ
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COMPOS
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COMPSE
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COMPYY
      2011  "2011"  
      2012  "2012"  
;
   label define A2COMSRV
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CONVNT
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CONVOC
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COOK
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COPIER
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COPRTV
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COPSTF
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2COSTUM
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CRTIVE
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CULTUR
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CURRDV
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2CURVNT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DATACO
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DBEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DFMTH
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DICTAT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DINOSR
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DISMAT
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DIVMTH
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DIVRD
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DNONCN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DNONEN
      1  "1: 1-15 MINUTES A DAY"  
      2  "2: 16-30 MINUTES A DAY"  
      3  "3: 31-60 MINUTES A DAY"  
      4  "4: MORE THAN 60 MINUTES A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DNONIN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DNONMT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DNONOT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DNONRD
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DOPROJ
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DRCTNS
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2DVDVCR
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ECOLOG
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EFFO
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ELLASE
      1  "1: ONCE A MONTH OR LESS"  
      2  "2: 2 - 3 TIMES A MONTH"  
      3  "3: 1 - 2 TIMES A WEEK"  
      4  "4: 3 - 4 TIMES A WEEK"  
      5  "5: DAILY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ELLINC
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ELLMAT
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ELLSMG
      1  "1: ONCE A MONTH OR LESS"  
      2  "2: 2 - 3 TIMES A MONTH"  
      3  "3: 1 - 2 TIMES A WEEK"  
      4  "4: 3 - 4 TIMES A WEEK"  
      5  "5: DAILY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ELLTRN
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EMLANS
      1  "1: NEVER"  
      2  "2: ONE TO TWO TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EMLUPD
      1  "1: NEVER"  
      2  "2: ONE TO TWO TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ENCOUR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ENJOY
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EQTN
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EQUIPM
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ESTQNT
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EVAL
      1  "1: SAME STANDARDS FOR MOST - EXCEPTIONS FOR SPECIAL NEEDS"  
      2  "2: DIFFERENT STANDARDS DEPENDING ON CAPABILITIES"  
      3  "3: SAME STANDARDS FOR EVERYONE IN MY CLASS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EXASIS
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: THREE OR FOUR TIMES A WEEK"  
      5  "5: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2EXPMTH
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2FCTOR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2FLLWDR
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2FRCTNS
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2GEOMET
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2GEORPH
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2GOTOLI
      1  "1: NO LIBRARY OR MEDIA CENTER IN THIS SCHOOL"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2GRAPHS
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2GTTHR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2HABIT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2HANDON
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2HEATAC
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2HISTOR
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2HYGIEN
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2IDEASC
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2IDQNTY
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2IGRPRJ
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2IMPRVM
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2INCLUS
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2INCRET
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2INDVDL
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2INSTRM
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2INVENT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2JRNL
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2LABSKL
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2LAWS
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2LESPLN
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2LIGHT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2LTLDO
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2LUNCH
      1  "1: NO TIME"  
      2  "2: 1-15 MINUTES"  
      3  "3: 16-30 MINUTES"  
      4  "4: 31-45 MINUTES"  
      5  "5: LONGER THAN 45 MINUTES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MAGNET
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MAINID
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MANIPS
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MANIPU
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MANSYL
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MAPRD
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MATCH
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MINMTH
      1  "1: 1-15 MINUTES/DAY"  
      2  "2: 16-30 MINUTES/DAY"  
      3  "3: 31-60 MINUTES/DAY"  
      4  "4: MORE THAN 60 MINUTES/DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MINRD
      1  "1: 1-15 MINUTES/DAY"  
      2  "2: 16-30 MINUTES/DAY"  
      3  "3: 31-60 MINUTES/DAY"  
      4  "4: MORE THAN 60 MINUTES/DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MISBHV
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MISSIO
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MKDIFF
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MKLES
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MONELL
      1  "1: ONCE A MONTH OR LESS"  
      2  "2: 2 - 3 TIMES A MONTH"  
      3  "3: 1 - 2 TIMES A WEEK"  
      4  "4: 3 - 4 TIMES A WEEK"  
      5  "5: DAILY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MOTORS
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MTHGME
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MTHMAT
      1  "1: I GET ALL THE RESOURCES I NEED"  
      2  "2: I GET MOST OF THE RESOURCES I NEED"  
      3  "3: I GET SOME OF THE RESOURCES I NEED"  
      4  "4: I DON’T GET ANY OF THE RESOURCES I NEED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MTHSHT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MTHTXT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MUSIC
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MUSMTH
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MXDGRP
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2MXMATH
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2NEWVOC
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2NOPRNT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2NOTCAP
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2NUMBLN
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2NUMCNF
      1  "1: NO CONFERENCES"  
      2  "2: ONE CONFERENCE"  
      3  "3: TWO CONFERENCES"  
      4  "4: THREE OR MORE CONFERENCES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OBSOBJ
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTART
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTDAN
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTFOR
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTHTR
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTMTH
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTMUS
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTPE
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTRDL
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTSCI
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OFTSOC
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ORALID
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2ORDINL
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2OUTLOU
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PAPER
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PAPRWR
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PATTXT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PBEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PEER
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PEERGP
      1  "1: ONCE A MONTH OR LESS"  
      2  "2: 2 - 3 TIMES A MONTH"  
      3  "3: 1 - 2 TIMES A WEEK"  
      4  "4: 3 - 4 TIMES A WEEK"  
      5  "5: DAILY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PHONIC
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PHOTXT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PLACE
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PLANT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PLAYER
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNCTUA
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNONCN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNONEN
      1  "1: 1-15 MINUTES A DAY"  
      2  "2: 16-30 MINUTES A DAY"  
      3  "3: 31-60 MINUTES A DAY"  
      4  "4: MORE THAN 60 MINUTES A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNONIN
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNONMT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNONOT
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PNONRD
      1  "1: NEVER"  
      2  "2: LESS THAN HALF THE TIME"  
      3  "3: ABOUT HALF THE TIME"  
      4  "4: MORE THAN HALF THE TIME"  
      5  "5: ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PRACLT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PRBBTY
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PREDIC
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PREPOS
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PRTNRS
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PRTUTR
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PSUPP
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PTTRNS
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2PULLOU
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: THREE OR FOUR TIMES A WEEK"  
      5  "5: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2QUANTI
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RCGNZE
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RDFLNT
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RDLMAT
      1  "1: I GET ALL THE RESOURCES I NEED"  
      2  "2: I GET MOST OF THE RESOURCES I NEED"  
      3  "3: I GET SOME OF THE RESOURCES I NEED"  
      4  "4: I DON'T GET ANY OF THE RESOURCES I NEED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2READLD
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2REALLI
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RECJOB
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RECRDS
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2REGHLP
      1  "1: NONE"  
      2  "2: 1-25 PERCENT"  
      3  "3: 26-50 PERCENT"  
      4  "4: 51-75 PERCENT"  
      5  "5: 76 PERCENT OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2REGZCN
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RELFAM
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RETELL
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2REVSCI
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RHYMNG
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2RULERS
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SCIMAT
      1  "1: I GET ALL THE RESOURCES I NEED"  
      2  "2: I GET MOST OF THE RESOURCES I NEED"  
      3  "3: I GET SOME OF THE RESOURCES I NEED"  
      4  "4: I DON’T GET ANY OF THE RESOURCES I NEED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SCMTHD
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SEEPRI
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SETPRI
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SHAPES
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SHARED
      1  "1: NEVER"  
      2  "2: ONE TO TWO TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SILENT
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SKITS
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SMLGRP
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SNGDGT
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SNTHME
      1  "1: NEVER"  
      2  "2: ONE TO TWO TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SOCPRO
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SOFTWA
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SOLAR
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SOUND
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SPECTU
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: THREE OR FOUR TIMES A WEEK"  
      5  "5: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SPELL
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2STNDLO
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2STNDRD
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SUBGRP
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SUBSDG
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SYLLAB
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2SZORDR
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TCHRMD
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TEACH
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TELLTI
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TEMP
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TEXTCU
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TIMEMT
      1  "1: I NEVER ASSIGN HOMEWORK"  
      2  "2: 1 TO 10 MINUTES"  
      3  "3: 11 TO 20 MINUTES"  
      4  "4: 21 TO 30 MINUTES"  
      5  "5: MORE THAN 30 MINUTES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TIMERD
      1  "1: I NEVER ASSIGN HOMEWORK"  
      2  "2: 1 TO 10 MINUTES"  
      3  "3: 11 TO 20 MINUTES"  
      4  "4: 21 TO 30 MINUTES"  
      5  "5: MORE THAN 30 MINUTES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TLKPAR
      1  "1: NEVER"  
      2  "2: ONE TO TWO TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TOCLAS
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TOOLS
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TOSTND
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TPCONF
      1  "1: NONE"  
      2  "2: 1-25 PERCENT"  
      3  "3: 26-50 PERCENT"  
      4  "4: 51-75 PERCENT"  
      5  "5: 76 PERCENT OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TPLOUT
      1  "1: NO TIME"  
      2  "2: 1-15 MINUTES"  
      3  "3: 16-30 MINUTES"  
      4  "4: 31-45 MINUTES"  
      5  "5: LONGER THAN 45 MINUTES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TPLYIN
      1  "1: NO TIME"  
      2  "2: 1-15 MINUTES"  
      3  "3: 16-30 MINUTES"  
      4  "4: 31-45 MINUTES"  
      5  "5: LONGER THAN 45 MINUTES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TRADBK
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TVWTCH
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TWODGT
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXART
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXDAN
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXFOR
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXMTH
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXMUS
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXPE
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXRCE
      1  "1: ONCE"  
      2  "2: TWICE"  
      3  "3: THREE OR MORE TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXRDLA
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXSCI
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXSOC
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXTBK
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXTBKT
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2TXTHTR
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2USEBAS
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2USECMP
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2USEKIT
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2USEMAG
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2USEOTH
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2USETRD
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2VIDEO
      1  "1: I DO NOT USE THESE AT THIS GRADE LEVEL"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2W1210A
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WATER
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WHLCLS
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WRKBK
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WRKSHT
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WRKSMP
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES A YEAR"  
      3  "3: ONE OR TWO TIMES A MONTH"  
      4  "4: ONE OR TWO TIMES A WEEK"  
      5  "5: THREE OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WRTNME
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WRTSTO
      1  "1: TAUGHT AT A HIGHER GRADE LEVEL"  
      2  "2: CHILDREN SHOULD ALREADY KNOW"  
      3  "3: ONCE A MONTH OR LESS"  
      4  "4: TWO OR THREE TIMES A MONTH"  
      5  "5: ONCE OR TWICE A WEEK"  
      6  "6: THREE OR FOUR TIMES A WEEK"  
      7  "7: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WRTWRD
      1  "1: NEVER"  
      2  "2: ONCE A MONTH OR LESS"  
      3  "3: TWO OR THREE TIMES A MONTH"  
      4  "4: ONCE OR TWICE A WEEK"  
      5  "5: THREE OR FOUR TIMES A WEEK"  
      6  "6: DAILY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WSTTM
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A2WTHER
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ACTSTF
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ADDTO100F
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ANCLS
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ANSGRPH
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ARR3OBJ
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ATTEND
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ATTRSHP
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4BEHVR
      1  "1: GROUP MISBEHAVES VERY FREQUENTLY"  
      2  "2: GROUP MISBEHAVES FREQUENTLY"  
      3  "3: GROUP MISBEHAVES OCCASIONALLY"  
      4  "4: GROUP BEHAVES WELL"  
      5  "5: GROUP BEHAVES EXCEPTIONALLY WELL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4BSCPLT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CDUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CHARPLOT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CLSBHV
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CLSPAR
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CLSPROP
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CMPUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CMPXINF
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CMPXPRO
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CMSRV
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CNCLEVD
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CNSNSS
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CNT120F
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CNT20QTY
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4COLLCR
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4COMMSCI
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4COMNTY
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CONFER
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CONSLT
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4COOPRT
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CREVNT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CTADSUB
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4CULTRS
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DESCHAR
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DGTCUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DIMCOMP
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DINFOS
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DPWHMWK
      0  "0: 0 DAYS"  
      1  "1: 1 DAY"  
      2  "2: 2 DAYS"  
      3  "3: 3 DAYS"  
      4  "4: 4 DAYS"  
      5  "5: 5 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DRWGRPH
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DSCPTIM
      1  "1: LESS THAN 15 MIN A DAY"  
      2  "2: 15 MIN TO LESS THAN 30 MIN A DAY"  
      3  "3: 30 MIN TO LESS THAN 45 MIN A DAY"  
      4  "4: 45 MIN TO LESS THAN 1 HOUR A DAY"  
      5  "5: 1 HOUR TO LESS THAN 2 HOURS A DAY"  
      6  "6: 2 HOURS OR MORE A DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4DVDUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4EFFRT
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ELLPRO
      1  "1: ONCE A MONTH OR LESS"  
      2  "2: 2 - 3 TIMES A MONTH"  
      3  "3: 1 - 2 TIMES A WEEK"  
      4  "4: 3 - 4 TIMES A WEEK"  
      5  "5: DAILY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4EQLSIGN
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4ESTLNG
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4FICNONF
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4FIND10F
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4FLLDIR
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4GENCSP
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4GRPCHRT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4HGHPAR
      1  "1: DID NOT COMPLETE HIGH SCHOOL"  
      2  "2: HIGH SCHOOL DIPLOMA OR EQUIVALENT/GED"  
      3  "3: SOME COLLEGE OR TECHNICAL OR VOCATIONAL SCHOOL"  
      4  "4: ASSOCIATE'S DEGREE"  
      5  "5: BACHELOR'S DEGREE"  
      6  "6: MASTER'S DEGREE"  
      7  "7: AN ADVANCED PROFESSIONAL DEGREE BEYOND A MASTER'S DEGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4HISTORY
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4IMPPRG
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4INFPIEC
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4IRREGWD
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4LAWGVT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4LNG2BY3F
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4LNGMULT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MAINID
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MAINTEXT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MANPHO
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MAPSKL
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MBLWBMK
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MCLRINT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MCLRNINT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MCLRSK
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MCORCUR
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MDEFICT
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MEATOOL
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MPLCMNT
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4MPROGRS
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4NARRTV
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4NATRSC
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4NMRL120F
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4NUMQTY
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4NUTHLTH
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4OBOBJS
      1  "1: NEVER"  
      2  "2: 1 OR 2 TIMES A YEAR"  
      3  "3: 3 TO 8 TIMES A YEAR"  
      4  "4: 1 OR 2 TIMES A MONTH"  
      5  "5: 1 OR 2 TIMES A WEEK"  
      6  "6: 3 OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4OBSBPEER
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: MORE THAN 4 TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4OFTFLN
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4OPINION
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PACEINT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PARTEQL
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PDARFM
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PDARFR
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PDMCUR
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PDMINS
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PDRCUR
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PDRINS
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PJCTUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PORTION
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PREDCT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PREDICT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PRODEV
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4PROJCT
      1  "1: NEVER"  
      2  "2: 1 OR 2 TIMES A YEAR"  
      3  "3: 3 TO 8 TIMES A YEAR"  
      4  "4: 1 OR 2 TIMES A MONTH"  
      5  "5: 1 OR 2 TIMES A WEEK"  
      6  "6: 3 OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RBLWBMK
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RCLRINT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RCLRNINT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RCLRSK
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RCORCUR
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RDACCR
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RDEFICT
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4REASSUP
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RELQTY
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RELSYM
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RESDIS
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RESELL
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RETELL
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RPLCMNT
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4RPROGRS
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TIMES A YEAR"  
      4  "4: 3 TO 4 TIMES A YEAR"  
      5  "5: 5 TO 8 TIMES A YEAR"  
      6  "6: 1 TO 2 TIMES A MONTH"  
      7  "7: 1 TO 2 TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SEGWORD
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SENCTXT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SENSES
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SENSOBS
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SHDLGT
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SIDEQUA
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SIMDIFF
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SKIPCNT
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SLVADD3F
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SLVADSB
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SLVCOIN
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SLVUKNM
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SNDWRD
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4SOLSPC
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STFBEHV
      1  "1: YES, SUPPORT RECEIVED"  
      2  "2: NO, SUPPORT NOT RECEIVED BUT AVAILABLE"  
      3  "3: RESOURCE NOT AVAILABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STFGDE
      1  "1: YES, SUPPORT RECEIVED"  
      2  "2: NO, SUPPORT NOT RECEIVED BUT AVAILABLE"  
      3  "3: RESOURCE NOT AVAILABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STFMATH
      1  "1: YES, SUPPORT RECEIVED"  
      2  "2: NO, SUPPORT NOT RECEIVED BUT AVAILABLE"  
      3  "3: RESOURCE NOT AVAILABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STFORG
      1  "1: YES, SUPPORT RECEIVED"  
      2  "2: NO, SUPPORT NOT RECEIVED BUT AVAILABLE"  
      3  "3: RESOURCE NOT AVAILABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STFREAD
      1  "1: YES, SUPPORT RECEIVED"  
      2  "2: NO, SUPPORT NOT RECEIVED BUT AVAILABLE"  
      3  "3: RESOURCE NOT AVAILABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STNTST
      1  "1: NEVER"  
      2  "2: 1 OR 2 TIMES A YEAR"  
      3  "3: 3 TO 8 TIMES A YEAR"  
      4  "4: 1 OR 2 TIMES A MONTH"  
      5  "5: 1 OR 2 TIMES A WEEK"  
      6  "6: 3 OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4STTMTR
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TECHWK
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TELLTIME
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TENONES
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TOCLSS
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TOOLINF
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-5 DAYS"  
      3  "3: ON 6-10 DAYS"  
      4  "4: ON 11-15 DAYS"  
      5  "5: ON 16-20 DAYS"  
      6  "6: ON MORE THAN 20 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TOSTDR
      1  "1: NOT IMPORTANT"  
      2  "2: SOMEWHAT IMPORTANT"  
      3  "3: VERY IMPORTANT"  
      4  "4: EXTREMELY IMPORTANT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TRIQUAD
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TSTQZ
      1  "1: NEVER"  
      2  "2: 1 OR 2 TIMES A YEAR"  
      3  "3: 3 TO 8 TIMES A YEAR"  
      4  "4: 1 OR 2 TIMES A MONTH"  
      5  "5: 1 OR 2 TIMES A WEEK"  
      6  "6: 3 OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TVUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4TXFLN
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 TO LESS THAN 2 1/2 HOURS"  
      7  "7: 2 1/2 TO LESS THAN 3 HOURS"  
      8  "8: 3 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEANTH
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEAUBK
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEBGBK
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEBSL
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEDECB
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEGLOS
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USELEV
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USEMAN
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4USENEW
      1  "1: NEVER OR HARDLY EVER"  
      2  "2: ONCE OR TWICE A MONTH"  
      3  "3: ONCE OR TWICE A WEEK"  
      4  "4: ALMOST EVERY DAY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WEBDEV
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WETHER
      1  "1: TAUGHT IN MY CLASS OR CLASSES"  
      2  "2: NOT TAUGHT IN MY CLASS OR CLASSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WHOTELL
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WKINDP
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WKINDV
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WKLGRP
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WKPEER
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WKSGRP
      1  "1: NO TIME"  
      2  "2: HALF HOUR OR LESS"  
      3  "3: ABOUT ONE HOUR"  
      4  "4: ABOUT TWO HOURS"  
      5  "5: ABOUT THREE HOURS"  
      6  "6: FOUR HOURS OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WORKSH
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 TIMES"  
      4  "4: 3 TO 4 TIMES"  
      5  "5: MORE THAN 4 TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WRDSND
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WRKSAM
      1  "1: NEVER"  
      2  "2: 1 OR 2 TIMES A YEAR"  
      3  "3: 3 TO 8 TIMES A YEAR"  
      4  "4: 1 OR 2 TIMES A MONTH"  
      5  "5: 1 OR 2 TIMES A WEEK"  
      6  "6: 3 OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WRKSTS
      1  "1: NEVER"  
      2  "2: 1 OR 2 TIMES A YEAR"  
      3  "3: 3 TO 8 TIMES A YEAR"  
      4  "4: 1 OR 2 TIMES A MONTH"  
      5  "5: 1 OR 2 TIMES A WEEK"  
      6  "6: 3 OR MORE TIMES A WEEK"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WRTTIME
      1  "1: NOT TAUGHT"  
      2  "2: ON 1-10 DAYS"  
      3  "3: ON 11-20 DAYS"  
      4  "4: ON 21-40 DAYS"  
      5  "5: ON 41-80 DAYS"  
      6  "6: ON MORE THAN 80 DAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A4WTBUSE
      1  "1: NOT AVAILABLE"  
      2  "2: NEVER"  
      3  "3: RARELY"  
      4  "4: SOMETIMES"  
      5  "5: OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define B2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define B2COMPYY
      2011  "2011"  
;
   label define B2HGHPAR
      1  "1: DID NOT COMPLETE HIGH SCHOOL"  
      2  "2: HIGH SCHOOL DIPLOMA OR EQUIVALENT/GED"  
      3  "3: SOME COLLEGE OR TECHNICAL OR VOCATIONAL SCHOOL"  
      4  "4: ASSOCIATE'S DEGREE"  
      5  "5: BACHELOR'S DEGREE"  
      6  "6: MASTER'S DEGREE"  
      7  "7: AN ADVANCED PROFESSIONAL DEGREE BEYOND A MASTER'S DEGREE"  
      8  "8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define B2HIGHQL
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define B2STATCT
      1  "1: REGULAR OR STANDARD STATE CERTIFICATE OR ADVANCED PROF CERT"  
      2  "2: CERTIFICATE WITHOUT COMPLETION OF PROBATIONARY PERIOD"  
      3  "3: CERTIFICATE REQUIRING ADDITIONAL WORK TEACHING OR EXAM"  
      4  "4: CERTIFICATE ISSUED TO PERSONS NEEDING CERTIFICATION PROGRAM"  
      5  "5: I DO NOT HOLD ANY OF THE ABOVE CERTIFICATIONS IN THIS STATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1ATTLVL
      1  "1: UNABLE TO ATTEND"  
      2  "2: DIFFICULTY ATTENDING"  
      3  "3: ATTENTIVE"  
      4  "4: VERY ATTENTIVE"  
      5  "5: COMPLETE AND FULL ATTENTION"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1COOPER
      1  "1: VERY UNCOOPERATIVE"  
      2  "2: UNCOOPERATIVE"  
      3  "3: MATTER OF FACT"  
      4  "4: COOPERATIVE"  
      5  "5: VERY COOPERATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1MOTIVA
      1  "1: VERY LOW"  
      2  "2: LOW"  
      3  "3: AVERAGE"  
      4  "4: HIGH"  
      5  "5: VERY HIGH"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1NENGHM
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1SPHOME
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1WHATDI
      1  "1: NOISE"  
      2  "2: ANOTHER STUDENT/PERSON"  
      3  "3: ANNOUNCEMENT/INTERCOM/PA"  
      4  "4: CHILD TIRED"  
      5  "5: CHILD ACTIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1WHATIN
      1  "1: FIRE DRILL"  
      2  "2: BOMB THREAT"  
      3  "3: CLASS"  
      4  "4: LUNCH PERIOD"  
      5  "5: RECESS"  
      6  "6: WATER/BATHROOM BREAK"  
      7  "7: ANOTHER PERSON"  
      8  "8: RAN OUT OF TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C1WHOPRE
      1  "1: SCHOOL STAFF"  
      2  "2: PARENT"  
      3  "3: WESTAT STAFF"  
      4  "4: OTHER OBSERVER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2ATTLVL
      1  "1: UNABLE TO ATTEND"  
      2  "2: DIFFICULTY ATTENDING"  
      3  "3: ATTENTIVE"  
      4  "4: VERY ATTENTIVE"  
      5  "5: COMPLETE AND FULL ATTENTION"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2COOPER
      1  "1: VERY UNCOOPERATIVE"  
      2  "2: UNCOOPERATIVE"  
      3  "3: MATTER OF FACT"  
      4  "4: COOPERATIVE"  
      5  "5: VERY COOPERATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2MOTIVA
      1  "1: VERY LOW"  
      2  "2: LOW"  
      3  "3: AVERAGE"  
      4  "4: HIGH"  
      5  "5: VERY HIGH"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2NENGHM
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2SPHOME
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2WHATDI
      1  "1: NOISE"  
      2  "2: ANOTHER STUDENT/PERSON"  
      3  "3: ANNOUNCEMENT/INTERCOM/PA"  
      4  "4: CHILD TIRED"  
      5  "5: CHILD ACTIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2WHATIN
      1  "1: FIRE DRILL"  
      2  "2: BOMB THREAT"  
      3  "3: CLASS"  
      4  "4: LUNCH PERIOD"  
      5  "5: RECESS"  
      6  "6: WATER/BATHROOM BREAK"  
      7  "7: ANOTHER PERSON"  
      8  "8: RAN OUT OF TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C2WHOPRE
      1  "1: SCHOOL STAFF"  
      2  "2: PARENT"  
      3  "3: WESTAT STAFF"  
      4  "4: OTHER OBSERVER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C3ATTLVL
      1  "1: UNABLE TO ATTEND"  
      2  "2: DIFFICULTY ATTENDING"  
      3  "3: ATTENTIVE"  
      4  "4: VERY ATTENTIVE"  
      5  "5: COMPLETE AND FULL ATTENTION"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C3COOPER
      1  "1: VERY UNCOOPERATIVE"  
      2  "2: UNCOOPERATIVE"  
      3  "3: MATTER OF FACT"  
      4  "4: COOPERATIVE"  
      5  "5: VERY COOPERATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C3MOTIVA
      1  "1: VERY LOW"  
      2  "2: LOW"  
      3  "3: AVERAGE"  
      4  "4: HIGH"  
      5  "5: VERY HIGH"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C3SPHOME
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C3WHOPRE
      1  "1: SCHOOL STAFF"  
      2  "2: PARENT"  
      3  "3: WESTAT STAFF"  
      4  "4: OTHER OBSERVER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C4ATTLVL
      1  "1: UNABLE TO ATTEND"  
      2  "2: DIFFICULTY ATTENDING"  
      3  "3: ATTENTIVE"  
      4  "4: VERY ATTENTIVE"  
      5  "5: COMPLETE AND FULL ATTENTION"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C4COOPER
      1  "1: VERY UNCOOPERATIVE"  
      2  "2: UNCOOPERATIVE"  
      3  "3: MATTER OF FACT"  
      4  "4: COOPERATIVE"  
      5  "5: VERY COOPERATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C4MOTIVA
      1  "1: VERY LOW"  
      2  "2: LOW"  
      3  "3: AVERAGE"  
      4  "4: HIGH"  
      5  "5: VERY HIGH"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C4SPHOME
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C4WHOPRE
      1  "1: SCHOOL STAFF"  
      2  "2: PARENT"  
      3  "3: WESTAT STAFF"  
      4  "4: OTHER OBSERVER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F1ASMTMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F1ASMTYY
      2010  "2010"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F1CLASS
      1  "1: FULL-DAY PROGRAM (AD)"  
      2  "2: MORNING PART-DAY PROGRAM (AM)"  
      3  "3: AFTERNOON PART-DAY PROGRAM (PM)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F1INTVMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F1INTVYY
      2010  "2010"  
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F2ASMTMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F2ASMTYY
      2011  "2011"  
      2012  "2012"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F2INTVMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F2INTVYY
      2011  "2011"  
      2012  "2012"  
      2013  "2013"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F3ASMTYY
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define F3INTVYY
      2010  "2010"  
      2011  "2011"  
      2012  "2012"  
      2013  "2013"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define IFP4DO1_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO1_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO2_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO2_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO3_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO3_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO4_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO4_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO5_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4DO5_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4EMPCHG_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4EMPCHG_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HIG_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HIG_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HILOW
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HIS_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HIS_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HRS_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4HRS_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4INCHIG
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4INCLOW
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4LOK_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4LOK_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4PAY_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4PAY_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4TINCTH
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4VAC_1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFP4VAC_2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFX4PAR1OCC
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFX4PAR1SCR
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFX4PAR2OCC
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IFX4PAR2SCR
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define IMPUTE
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED"  
;
   label define NUMREV
      1  "1: CORRECT"  
      2  "2: INCORRECT"  
      3  "3: NOT ADMINISTERED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define NUMREVF
      1  "1: CORRECT"  
      2  "2: INCORRECT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BKOTHL
      1  "1: ENGLISH"  
      2  "2: PRIMARY LANGUAGE/LANGUAGE OTHER THAN ENGLISH"  
      3  "3: SAME NUMBER IN ENGLISH AND PRIMARY LANGUAGE/LANGUAGE OTHER THAN ENGLISH"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO10F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO11F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO12F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO13F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO14F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO15F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO16F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO17F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO18F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO19F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO1F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO20F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO21F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO22F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO23F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO24F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO25F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BRO2F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO3F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO4F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO5F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO6F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO7F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO8F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRO9F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1BRTWGT
      1  "1: POUNDS (WITH OR WITHOUT OUNCES)"  
      2  "2: GRAMS"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1BUILD
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CAMTUC
      1  "1: PER HOUR"  
      2  "2: PER DAY"  
      3  "3: PER WEEK"  
      4  "4: PER MONTH"  
      5  "5: PER YEAR"  
      6  "6: EVERY TWO WEEKS"  
      91  "91: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CHDOBM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CHL1F
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CHL2F
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CHORES
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CHREAD
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CHSEX
      1  "1: MALE"  
      2  "2: FEMALE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CLSGRN
      0  "0: NONE"  
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: MORE THAN FOUR"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CMOPK
      1  "1: ONE TO TWO MONTHS"  
      2  "2: THREE TO FIVE MONTHS"  
      3  "3: SIX TO EIGHT MONTHS"  
      4  "4: NINE TO TWELVE MONTHS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1COMPLN
      1  "1: MORE THAN ONCE A WEEK"  
      2  "2: ONCE A WEEK OR LESS"  
      3  "3: NOT AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CONCEN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1COUNT
      1  "1: ESSENTIAL"  
      2  "2: VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: NOT VERY IMPORTANT"  
      5  "5: NOT IMPORTANT"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CREATV
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1CTRNUM
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: FIVE OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD10F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD11F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD12F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD13F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD14F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD15F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD16F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD17F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD18F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD19F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD1F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD20F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD21F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD22F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD23F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD24F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD25F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1DAD2F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD3F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD4F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD5F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD6F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD7F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD8F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1DAD9F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1EAGER
      1  "1: MORE THAN ONCE A WEEK"  
      2  "2: ONCE A WEEK OR LESS"  
      3  "3: NOT AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1EXPECT
      1  "1: TO RECEIVE LESS THAN HIGH SCHOOL DIPLOMA"  
      2  "2: TO GRADUATE FROM HIGH SCHOOL"  
      3  "3: TO ATTEND A VOCATIONAL OR TECHNICAL SCHOOL AFTER HIGH SCHOOL"  
      4  "4: TO ATTEND TWO OR MORE YEARS OF COLLEGE"  
      5  "5: TO FINISH A FOUR-OR FIVE-YEAR COLLEGE DEGREE"  
      6  "6: TO EARN A MASTER'S DEGREE OR EQUIVALENT"  
      7  "7: TO FINISH A PH.D., MD, OR OTHER ADVANCED DEGREE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1FKSICK
      1  "1: MORE THAN ONCE A WEEK"  
      2  "2: ONCE A WEEK OR LESS"  
      3  "3: NOT AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1FPTOA
      1  "1: FULL-TIME"  
      2  "2: PART-TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1FPTOB
      1  "1: FULL-TIME"  
      2  "2: PART-TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1GAMES
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1GOOD
      1  "1: MORE THAN ONCE A WEEK"  
      2  "2: ONCE A WEEK OR LESS"  
      3  "3: NOT AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1HIS1F
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENCY (GED)"  
      3  "3: NO HS DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1HIS2F
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENCY (GED)"  
      3  "3: NO HS DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1HLPART
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1INDIAN
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1LEARN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1LETTER
      1  "1: ESSENTIAL"  
      2  "2: VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: NOT VERY IMPORTANT"  
      5  "5: NOT IMPORTANT"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1LKTCHR
      1  "1: MORE THAN ONCE A WEEK"  
      2  "2: ONCE A WEEK OR LESS"  
      3  "3: NOT AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1LVGRAN
      0  "0: NONE"  
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: MORE THAN FOUR"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MODE
      1  "1: TELEPHONE"  
      2  "2: IN-PERSON"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM10F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM11F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM12F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM13F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM14F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM15F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM16F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM17F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM18F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM19F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM1F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM20F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM21F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM22F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM23F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM24F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM25F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1MOM2F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM3F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM4F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM5F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM6F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM7F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM8F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOM9F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1MOSPK
      1  "1: ONE TO TWO MONTHS"  
      2  "2: THREE TO FIVE MONTHS"  
      3  "3: SIX TO EIGHT MONTHS"  
      4  "4: NINE TO TWELVE MONTHS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NAMTUN
      1  "1: PER HOUR"  
      2  "2: PER DAY"  
      3  "3: PER WEEK"  
      4  "4: PER MONTH"  
      5  "5: PER YEAR"  
      6  "6: EVERY TWO WEEKS"  
      91  "91: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NATURE
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NMOPK
      1  "1: ONE TO TWO MONTHS"  
      2  "2: THREE TO FIVE MONTHS"  
      3  "3: SIX TO EIGHT MONTHS"  
      4  "4: NINE TO TWELVE MONTHS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NOENG
      1  "1: ALWAYS"  
      2  "2: MOST OF THE TIME"  
      3  "3: SOMETIMES"  
      4  "4: NEVER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NPLACE
      1  "1: OWN HOME"  
      2  "2: OTHER HOME"  
      3  "3: BOTH/VARIES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NPLCPK
      1  "1: OWN HOME"  
      2  "2: OTHER HOME"  
      3  "3: BOTH/VARIES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1NUMBRS
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1PAYATT
      1  "1: ESSENTIAL"  
      2  "2: VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: NOT VERY IMPORTANT"  
      5  "5: NOT IMPORTANT"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1PENCIL
      1  "1: ESSENTIAL"  
      2  "2: VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: NOT VERY IMPORTANT"  
      5  "5: NOT IMPORTANT"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1PER10F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER11F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER12F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER13F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER14F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER15F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER16F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER17F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER18F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER19F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER1F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
;
   label define P1PER20F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER21F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER22F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER23F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER24F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER25F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER2F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
;
   label define P1PER3F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER4F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER5F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER6F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER7F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER8F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PER9F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1PICBKS
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RAMTCH
      1  "1: CHILD ONLY"  
      2  "2: CHILD + 1 MORE (2 TOTAL)"  
      3  "3: CHILD + 2 MORE (3 TOTAL)"  
      4  "4: CHILD + 3 OR MORE (4 OR MORE TOTAL)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RAMTUN
      1  "1: PER HOUR"  
      2  "2: PER DAY"  
      3  "3: PER WEEK"  
      4  "4: PER MONTH"  
      5  "5: PER YEAR"  
      6  "6: EVERY TWO WEEKS"  
      91  "91: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RDOTHL
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1READ1F
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1READ2F
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1READBK
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL10F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL11F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL12F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL13F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL14F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL15F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL16F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL17F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL18F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL19F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL1F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL20F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL21F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL22F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL23F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL24F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL25F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL2F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
;
   label define P1REL3F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL4F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL5F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL6F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL7F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL8F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1REL9F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RES1F
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RES2F
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RPLACE
      1  "1: OWN HOME"  
      2  "2: OTHER HOME"  
      3  "3: BOTH/VARIES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1RPLCPK
      1  "1: OWN HOME"  
      2  "2: OTHER HOME"  
      3  "3: BOTH/VARIES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SAYND
      1  "1: ESSENTIAL"  
      2  "2: VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: NOT VERY IMPORTANT"  
      5  "5: NOT IMPORTANT"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SCHN1F
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENCY (GED)"  
      3  "3: NO HS DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SCHN3F
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENCY (GED)"  
      3  "3: NO HS DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SCHORE
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX10F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX11F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX12F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX13F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX14F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX15F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX16F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX17F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX18F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX19F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX1F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX20F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX21F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX22F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX23F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX24F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX25F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SEX2F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX3F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX4F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX5F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX6F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX7F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX8F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SEX9F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SHARE
      1  "1: ESSENTIAL"  
      2  "2: VERY IMPORTANT"  
      3  "3: SOMEWHAT IMPORTANT"  
      4  "4: NOT VERY IMPORTANT"  
      5  "5: NOT IMPORTANT"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SHWINT
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SINGSO
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS10F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS11F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS12F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS13F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS14F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS15F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS16F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS17F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS18F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS19F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS1F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS20F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS21F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS22F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS23F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS24F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS25F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SIS2F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS3F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS4F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS5F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS6F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS7F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS8F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SIS9F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
;
   label define P1SPKOA
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SPKOB
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1SPORT
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1TELLST
      1  "1: NOT AT ALL"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERYDAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNDROA
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNDROB
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR10F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR11F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR12F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR13F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR14F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR15F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR16F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR17F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR18F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR19F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR1F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR20F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR21F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR22F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR23F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR24F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR25F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR2F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR3F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR4F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR5F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR6F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR7F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR8F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNR9F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UNSEFD
      1  "1: MONTH"  
      2  "2: YEAR"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1UPSET
      1  "1: MORE THAN ONCE A WEEK"  
      2  "2: ONCE A WEEK OR LESS"  
      3  "3: NOT AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WHENEN
      1  "1: WHEN OLD ENOUGH"  
      2  "2: WAITED"  
      3  "3: ENTERED EARLY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WHRITV
      1  "1: CHILD'S HOME"  
      2  "2: CHILD'S SCHOOL"  
      3  "3: SOMEWHERE ELSE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WRKFIN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WRKO1F
      1  "1: A REGULAR EVENING SHIFT - BETWEEN 2:00 P.M. AND MIDNIGHT"  
      2  "2: A REGULAR NIGHT SHIFT - BETWEEN 9:00 P.M. AND 8:00 A.M."  
      3  "3: A VARIABLE SHIFT - RESPONDENT CHOOSES HOURS"  
      4  "4: A VARIABLE SHIFT - EMPLOYER SETS HOURS"  
      5  "5: WORKS WHEN WORK IS AVAILABLE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WRKO2F
      1  "1: A REGULAR EVENING SHIFT - BETWEEN 2:00 P.M. AND MIDNIGHT"  
      2  "2: A REGULAR NIGHT SHIFT - BETWEEN 9:00 P.M. AND 8:00 A.M."  
      3  "3: A VARIABLE SHIFT - RESPONDENT CHOOSES HOURS"  
      4  "4: A VARIABLE SHIFT - EMPLOYER SETS HOURS"  
      5  "5: WORKS WHEN WORK IS AVAILABLE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WRTOA
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P1WRTOB
      1  "1: VERY WELL"  
      2  "2: PRETTY WELL"  
      3  "3: NOT VERY WELL"  
      4  "4: NOT WELL AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2ACTIVE
      1  "1: LESS ACTIVE THAN OTHER CHILDREN OF HIS/HER AGE"  
      2  "2: ABOUT AS ACTIVE"  
      3  "3: SLIGHTLY MORE ACTIVE"  
      4  "4: A LOT MORE ACTIVE THAN OTHER CHILDREN OF HIS/HER AGE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2AGHC2F
      1  "1: MONTHS"  
      2  "2: YEARS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2AGHC8F
      1  "1: MONTHS"  
      2  "2: YEARS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2AGSVUG
      1  "1: MONTHS"  
      2  "2: YEARS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2AGVIUG
      1  "1: MONTHS"  
      2  "2: YEARS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2APPETI
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2ARTICL
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BDLVST
      1  "1: SAME STATE"  
      2  "2: DIFFERENT STATE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BDTMAP
      1  "1: A.M."  
      2  "2: P.M."  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BDTMLT
      1  "1: A.M."  
      2  "2: P.M."  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BLMEAL
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BLUE
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BMLVST
      1  "1: SAME STATE"  
      2  "2: DIFFERENT STATE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BOTHER
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO10F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO11F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO12F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO13F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO14F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO15F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO16F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO17F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO18F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO19F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO1F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO20F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO21F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO22F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO23F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO24F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO25F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO2F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO3F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO4F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO5F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO6F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO7F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO8F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BRO9F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2BURGLR
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CANTAF
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHANCV
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHDBTH
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHDOBM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHILDR
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHLIKE
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHLPIC
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 - 6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHORES
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHREAD
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 - 6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CHSEX
      1  "1: MALE"  
      2  "2: FEMALE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CMPRD
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2COMMUN
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CONCEN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2COORD
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2CREATV
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD10F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD11F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD12F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD13F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD14F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD15F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD16F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD17F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD18F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD19F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD1F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD20F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD21F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD22F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD23F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD24F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD25F
      1  "1: BIOLOGICAL OR BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER OR MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD2F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD3F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD4F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD5F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD6F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD7F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD8F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DAD9F
      1  "1: BIRTH FATHER"  
      2  "2: ADOPTIVE FATHER"  
      3  "3: STEP FATHER"  
      4  "4: FOSTER FATHER/MALE GUARDIAN"  
      5  "5: OTHER MALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DADHOM
      0  "0: NO TIME"  
      1  "1: LESS THAN 5 MINUTES"  
      2  "2: 5 - 9 MINUTES"  
      3  "3: 10 - 15 MINUTES"  
      4  "4: 16 - 30 MINUTES"  
      5  "5: 31 - 45 MINUTES"  
      6  "6: 46 MINUTES - ONE HOUR"  
      7  "7: MORE THAN 1 HOUR - LESS THAN 2 HOURS"  
      8  "8: 2 HOURS - LESS THAN 3 HOURS"  
      9  "9: 3 HOURS OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DADMF
      0  "0: NO TIME"  
      1  "1: LESS THAN 5 MINUTES"  
      2  "2: 5 - 9 MINUTES"  
      3  "3: 10 - 15 MINUTES"  
      4  "4: 16 - 30 MINUTES"  
      5  "5: 31 - 45 MINUTES"  
      6  "6: 46 MINUTES - ONE HOUR"  
      7  "7: MORE THAN 1 HOUR - LESS THAN 2 HOURS"  
      8  "8: 2 HOURS - LESS THAN 3 HOURS"  
      9  "9: 3 HOURS OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DEPRES
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DISTHM
      1  "1: LESS THAN 1/8TH MILE"  
      2  "2: 1/8TH MILE - 1/4 MILE"  
      3  "3: MORE THAN 1/4 MILE TO < 1/2 MILE"  
      4  "4: 1/2 MILE TO < 1 MILE"  
      5  "5: 1 MILE TO 2.5 MILES"  
      6  "6: 2.6 MILES TO 5 MILES"  
      7  "7: 5.1 MILES TO 7.5 MILES"  
      8  "8: 7.6 MILES TO 10 MILES"  
      9  "9: 10.1 MILES OR MORE"  
      91  "91: OTHER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2DRUG
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2EFFORT
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2ETHNIC
      1  "1: NEVER"  
      2  "2: ALMOST NEVER"  
      3  "3: SEVERAL TIMES A YEAR"  
      4  "4: SEVERAL TIMES A MONTH"  
      5  "5: SEVERAL TIMES A WEEK OR MORE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2EVCUT
      1  "1: ALMOST EVERY MONTH"  
      2  "2: SOME MONTHS BUT NOT EVERY MONTH"  
      3  "3: IN ONLY ONE OR TWO MONTHS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2EXPRES
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2FDLAST
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2FEARFL
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2FLANGR
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2FREERD
      1  "1: FREE LUNCH"  
      2  "2: REDUCED PRICE LUNCH"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2FRERED
      1  "1: FREE"  
      2  "2: REDUCED PRICE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2GOTOBD
      1  "1: HAS USUAL BEDTIME"  
      2  "2: BEDTIME VARIES"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HEALTH
      1  "1: EXCELLENT"  
      2  "2: VERY GOOD"  
      3  "3: GOOD"  
      4  "4: FAIR"  
      5  "5: POOR"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HILOW
      1  "1: $25,000 OR LESS"  
      2  "2: $25,001 OR MORE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HIS1F
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENT (GED)"  
      3  "3: NO HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HIS2F
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENT (GED)"  
      3  "3: NO HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HLPLRN
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HOWCHD
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HSP1F
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2HSP2F
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2INCHIG
      6  "6: $25,001 TO $30,000"  
      7  "7: $30,001 TO $35,000"  
      8  "8: $35,001 TO $40,000"  
      9  "9: $40,001 TO $45,000"  
      10  "10: $45,001 TO $50,000"  
      11  "11: $50,001 TO $55,000"  
      12  "12: $55,001 TO $60,000"  
      13  "13: $60,001 TO $65,000"  
      14  "14: $65,001 TO $70,000"  
      15  "15: $70,001 TO $75,000"  
      16  "16: $75,001 TO $100,000"  
      17  "17: $100,001 TO $200,000"  
      18  "18: $200,001 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2INCLOW
      1  "1: $5,000 OR LESS"  
      2  "2: $5,001 TO $10,000"  
      3  "3: $10,001 TO $15,000"  
      4  "4: $15,001 TO $20,000"  
      5  "5: $20,001 TO $25,000"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2INDPNT
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI10F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI11F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI12F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI13F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI14F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI15F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI16F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI17F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI18F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI19F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI1F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI20F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI21F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI22F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI23F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI24F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI25F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI2F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI3F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI4F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI5F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI6F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI7F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI8F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2JOI9F
      1  "1: JOINED ROUND 1"  
      2  "2: JOINED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2KPMIND
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2LEARN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2LENHLP
      1  "1: SEE THINGS UP CLOSE"  
      2  "2: SEE THINGS IN THE DISTANCE"  
      3  "3: BOTH"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2LOCMED
      1  "1: AT SCHOOL"  
      2  "2: AT HOME"  
      3  "3: BOTH AT SCHOOL AND AT HOME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2LONELY
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2LOWCST
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MAGPRB
      1  "1: MILD PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: SEVERE PROBLEM"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MODE
      1  "1: TELEPHONE"  
      2  "2: IN PERSON"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM10F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM11F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM12F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM13F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM14F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM15F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM16F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM17F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM18F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM19F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM1F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM20F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM21F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM22F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM23F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM24F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM25F
      1  "1: BIOLOGICAL OR BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM2F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM3F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM4F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM5F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM6F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM7F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM8F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2MOM9F
      1  "1: BIRTH MOTHER"  
      2  "2: ADOPTIVE MOTHER"  
      3  "3: STEP MOTHER"  
      4  "4: FOSTER MOTHER OR FEMALE GUARDIAN"  
      5  "5: OTHER FEMALE PARENT OR GUARDIAN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2NOBAL
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2NOTE2F
      1  "1: ALMOST EVERY MONTH"  
      2  "2: SOME MONTHS BUT NOT EVERY MONTH"  
      3  "3: IN ONLY ONE OR TWO MONTHS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2NOTGO
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2OFTCUT
      1  "1: ALMOST EVERY MONTH"  
      2  "2: SOME MONTHS BUT NOT EVERY MONTH"  
      3  "3: IN ONLY ONE OR TWO MONTHS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PAYATT
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER10F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER11F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER12F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER13F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER14F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER15F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER16F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER17F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER18F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER19F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER1F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER20F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER21F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER22F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER23F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER24F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER25F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER2F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER3F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER4F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER5F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER6F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER7F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER8F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PER9F
      1  "1: RESPONDENT"  
      2  "2: FOCAL CHILD"  
      3  "3: SPOUSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2PTHARD
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP10F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP11F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP12F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP13F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP14F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP15F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP16F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP17F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP18F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP19F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP1F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP20F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP21F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP22F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP23F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP24F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP25F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP2F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP3F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP4F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP5F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP6F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP7F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP8F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RDP9F
      2  "2: DEPARTED ROUND 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL10F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL11F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL12F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL13F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL14F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL15F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL16F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL17F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL18F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL19F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL1F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL20F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL21F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL22F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL23F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL24F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL25F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND OR FEMALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      6  "6: BOYFRIEND OR MALE PARTNER OF PCHILD PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL2F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL3F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL4F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL5F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL6F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL7F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL8F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2REL9F
      1  "1: MOTHER/FEMALE GUARDIAN"  
      2  "2: FATHER/MALE GUARDIAN"  
      3  "3: SISTER"  
      4  "4: BROTHER"  
      5  "5: GIRLFRIEND/PARTNER OF PARENT/GUARDIAN"  
      6  "6: BOYFRIEND/PARTNER OF PARENT/GUARDIAN"  
      7  "7: GRANDMOTHER"  
      8  "8: GRANDFATHER"  
      9  "9: AUNT"  
      10  "10: UNCLE"  
      11  "11: COUSIN"  
      12  "12: OTHER RELATIVE"  
      13  "13: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RELADT
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RELCHD
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RELIG
      1  "1: NEVER"  
      2  "2: ALMOST NEVER"  
      3  "3: SEVERAL TIMES A YEAR"  
      4  "4: SEVERAL TIMES A MONTH"  
      5  "5: SEVERAL TIMES A WEEK OR MORE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RELSHP
      1  "1: VERY HAPPY"  
      2  "2: FAIRLY HAPPY"  
      3  "3: NOT TOO HAPPY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2RESTLS
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SACRFC
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SAD
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SAFEPL
      1  "1: NOT AT ALL SAFE"  
      2  "2: SOMEWHAT SAFE"  
      3  "3: VERY SAFE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SATPSS
      1  "1: COMPLETELY SATISFIED"  
      2  "2: VERY SATISFIED"  
      3  "3: FAIRLY SATISFIED"  
      4  "4: SOMEWHAT DISSATISFIED"  
      5  "5: VERY DISSATISFIED"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SATSCL
      1  "1: VERY SATISFIED"  
      2  "2: SOMEWHAT SATISFIED"  
      3  "3: SOMEWHAT DISSATISFIED"  
      4  "4: VERY DISSATISFIED"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX10F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX11F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX12F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX13F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX14F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX15F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX16F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX17F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX18F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX19F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX1F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX20F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX21F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX22F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX23F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX24F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX25F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX2F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX3F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX4F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX5F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX6F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX7F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX8F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SEX9F
      1  "1: MALE"  
      2  "2: FEMALE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SHOWLV
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SHWINT
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS10F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS11F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS12F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS13F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS14F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS15F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS16F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS17F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS18F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS19F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS1F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS20F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS21F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS22F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS23F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS24F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS25F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS2F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS3F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS4F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS5F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS6F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS7F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS8F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SIS9F
      1  "1: FULL SISTER"  
      2  "2: HALF SISTER"  
      3  "3: STEP SISTER"  
      4  "4: ADOPTIVE SISTER"  
      5  "5: FOSTER SISTER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SITE2F
      1  "1: SEEING THINGS UP CLOSE"  
      2  "2: SEEING THINGS IN THE DISTANCE"  
      3  "3: BOTH"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2SPK
      95  "95: NEVER SPANKED"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2TALKLS
      1  "1: NEVER"  
      2  "2: SOME OF THE TIME"  
      3  "3: A MODERATE AMOUNT OF THE TIME"  
      4  "4: MOST OF THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2THINK
      1  "1: BETTER THAN OTHER CHILDREN HIS/HER AGE"  
      2  "2: AS WELL AS OTHER CHILDREN"  
      3  "3: SLIGHTLY LESS WELL THAN OTHER CHILDREN"  
      4  "4: MUCH LESS WELL THAN OTHER CHILDREN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2TMBFCL
      1  "1: LESS THAN 10 MINUTES"  
      2  "2: 10-20 MINUTES"  
      3  "3: MORE THAN 20 MINUTES"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2TMTSCH
      1  "1: LESS THAN 15 MINUTES"  
      2  "2: 15-30 MINUTES"  
      3  "3: MORE THAN 30 MINUTES"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2TRIDEA
      1  "1: NEVER"  
      2  "2: ONE OR TWO TIMES"  
      3  "3: THREE OR MORE TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2TV
      77  "77: FAMILY DOES NOT HAVE TELEVISION"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR10F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR11F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR12F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR13F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR14F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR15F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR16F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR17F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR18F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR19F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR1F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR20F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR21F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR22F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR23F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR24F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR25F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR2F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR3F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR4F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR5F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR6F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR7F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR8F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2UNR9F
      1  "1: GIRLFRIEND OR FEMALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      2  "2: BOYFRIEND OR MALE PARTNER OF CHILD'S PARENT/GUARDIAN"  
      3  "3: FEMALE GUARDIAN"  
      4  "4: MALE GUARDIAN"  
      5  "5: DAUGHTER/SON OF CHILD'S PARENT'S PARTNER"  
      6  "6: OTHER RELATIVE OF CHILD'S PARENT'S PARTNER"  
      7  "7: ROSTER ERROR"  
      91  "91: OTHER NONRELATIVE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2USECMP
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 - 6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2WARMCL
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2WEIGHU
      1  "1: POUNDS (WITH OR WITHOUT OUNCES)"  
      2  "2: GRAMS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2WHRITV
      1  "1: CHILDS HOME"  
      2  "2: CHILDS SCHOOL"  
      3  "3: SOMEWHERE ELSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2WORRFD
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P2WRKFIN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3CARNMHF
      77  "77: CHILD DID NOT GO TO CHILD CARE AT LEAST ONCE EACH WEEK"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3CHDOBM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3CHSEX
      1  "1: MALE"  
      2  "2: FEMALE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3COMEDU
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3DOMATH
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      5  "5: CHILD AWAY WHOLE SUMMER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3DOWRIT
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      5  "5: CHILD AWAY WHOLE SUMMER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3HWLGRD
      1  "1: 5 MINUTES OR LESS"  
      2  "2: 6 TO 29 MINUTES"  
      3  "3: 30 TO 45 MINUTES"  
      4  "4: 46 MINUTES OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3MODE
      1  "1: TELEPHONE"  
      2  "2: IN-PERSON"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3OUTACT
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3RDALON
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3RDBKTC
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3-6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      5  "5: CHILD AWAY WHOLE SUMMER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3SMREQ
      1  "1: REQUIRED BY THE SCHOOL"  
      2  "2: SUGGESTED BY THE SCHOOL"  
      3  "3: PARENT DECIDED TO SEND CHILD TO PRGRM"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P3WHRITV
      1  "1: CHILD'S HOME"  
      2  "2: CHILD'S SCHOOL"  
      3  "3: SOMEWHERE ELSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4ADVICE
      1  "1: NEVER TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: ALWAYS TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4AMCNTC
      1  "1: LESS THAN ONE MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT SINCE BIRTH"  
      5  "5: PARENT IS DECEASED"  
      6  "6: NO CONTACT SINCE ADOPTION"  
      7  "7: NO ADOPTIVE (MOTHER/FATHER)"  
      8  "8: PARENT UNKNOWN - WAS ONLY A DONOR"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4AMTHWK
      1  "1: THE AMOUNT IS ABOUT RIGHT"  
      2  "2: IT'S TOO MUCH"  
      3  "3: IT'S TOO LITTLE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4ATNDSERV
      1  "1: NEVER OR ALMOST NEVER"  
      2  "2: SEVERAL TIMES A YEAR"  
      3  "3: SEVERAL TIMES A MONTH"  
      4  "4: ONCE A WEEK"  
      5  "5: SEVERAL TIMES A WEEK"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BEDTMAP
      1  "1: A.M."  
      2  "2: P.M."  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BKOTHL
      1  "1: ENGLISH"  
      2  "2: PRIMARY LANGUAGE/LANGUAGE OTHER THAN ENGLISH"  
      3  "3: SAME NUMBER IN ENGLISH AND PRIMARY LANGUAGE/LANGUAGE OTHER THAN ENGLISH"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO10F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO11F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO12F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO13F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO14F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO15F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO16F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO17F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO18F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO19F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO1F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO20F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO21F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO22F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO23F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO24F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO25F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO2F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO3F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO4F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO5F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO6F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO7F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO8F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4BRO9F
      1  "1: FULL BROTHER"  
      2  "2: HALF BROTHER"  
      3  "3: STEP BROTHER"  
      4  "4: ADOPTIVE BROTHER"  
      5  "5: FOSTER BROTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CAMTUC
      1  "1: PER HOUR"  
      2  "2: PER DAY"  
      3  "3: PER WEEK"  
      4  "4: PER MONTH"  
      5  "5: PER YEAR"  
      6  "6: EVERY TWO WEEKS"  
      91  "91: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CANTAF
      1  "1: OFTEN TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: NEVER TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CASH
      1  "1: NEVER TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: ALWAYS TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHANCV
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHDBTH
      1  "1: COMPLETELY TRUE"  
      2  "2: MOSTLY TRUE"  
      3  "3: SOMEWHAT TRUE"  
      4  "4: NOT AT ALL TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHDOBM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHILDR
      1  "1: DOES THIS VERY WELL"  
      2  "2: JUST OK"  
      3  "3: DOES NOT DO THIS AT ALL"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHL1F
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHL2F
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHOSE
      1  "1: A PRIMARY FACTOR IN CHOOSING WHERE TO LIVE"  
      2  "2: ONE OF SEVERAL FACTORS OF WHERE TO LIVE"  
      3  "3: NOT A FACTOR IN CHOOSING WHERE TO LIVE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4CHPRSC
      1  "1: NEVER TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: ALWAYS TRUE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4DOW_1F
      1  "1: KEEPING HOUSE OR CARING FOR CHILDREN OR OTHER FAMILY MEMBERS"  
      2  "2: GOING TO SCHOOL"  
      3  "3: RETIRED"  
      4  "4: UNABLE TO WORK"  
      91  "91: SOMETHING ELSE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4EARLYPNSH
      1  "1: NEVER"  
      2  "2: ALMOST NEVER"  
      3  "3: SOMETIMES"  
      4  "4: OFTEN"  
      5  "5: ALWAYS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4HILOW_I
      1  "1: $25,000 OR LESS"  
      2  "2: $25,001 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4HIS_1_I
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENT (GED)"  
      3  "3: NO HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4HIS_2_I
      1  "1: HIGH SCHOOL DIPLOMA"  
      2  "2: HIGH SCHOOL EQUIVALENT (GED)"  
      3  "3: NO HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4HLPHWK
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 TO 2 TIMES A WEEK"  
      4  "4: 3 TO 4 TIMES A WEEK"  
      5  "5: 5 OR MORE TIMES A WEEK"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4HMWORK
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 TO 2 TIMES A WEEK"  
      4  "4: 3 TO 4 TIMES A WEEK"  
      5  "5: 5 OR MORE TIMES A WEEK"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4INCHIG_I
      6  "6: $25,001 TO $30,000"  
      7  "7: $30,001 TO $35,000"  
      8  "8: $35,001 TO $40,000"  
      9  "9: $40,001 TO $45,000"  
      10  "10: $45,001 TO $50,000"  
      11  "11: $50,001 TO $55,000"  
      12  "12: $55,001 TO $60,000"  
      13  "13: $60,001 TO $65,000"  
      14  "14: $65,001 TO $70,000"  
      15  "15: $70,001 TO $75,000"  
      16  "16: $75,001 TO $100,000"  
      17  "17: $100,001 TO $200,000"  
      18  "18: $200,001 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4INCLOW_I
      1  "1: $5,000 OR LESS"  
      2  "2: $5,001 TO $10,000"  
      3  "3: $10,001 TO $15,000"  
      4  "4: $15,001 TO $20,000"  
      5  "5: $20,001 TO $25,000"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4NOPUNISH
      1  "1: NEVER"  
      2  "2: ALMOST NEVER"  
      3  "3: SOMETIMES"  
      4  "4: OFTEN"  
      5  "5: ALWAYS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P4TALKOUTPNSH
      1  "1: NEVER"  
      2  "2: ALMOST NEVER"  
      3  "3: SOMETIMES"  
      4  "4: OFTEN"  
      5  "5: ALWAYS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PROBSIZE
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      4  "4: DON'T KNOW"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF100F
      1  "1: 0 TO 11"  
      2  "2: 12 TO 27"  
      3  "3: 28 TO 52"  
      4  "4: 53+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF101F
      1  "1: BEFORE 1950"  
      2  "2: 1950 TO 1959"  
      3  "3: 1960 TO 1969"  
      4  "4: 1970 OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF102F
      1  "1: 0 TO 249"  
      2  "2: 250 to 399"  
      3  "3: 400 TO 499"  
      4  "4: 500 TO 599"  
      5  "5: 600 TO 749"  
      6  "6: 750+"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF103F
      1  "1: 0 TO 9"  
      2  "2: 10 TO 21"  
      3  "3: 22 TO 44"  
      4  "4: 45+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF104F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF105F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26 TO 99"  
      4  "4: 100"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF106F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26 TO 99"  
      4  "4: 100"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF107F
      1  "1: UNDER $1.00"  
      2  "2: $1.00 TO $1.24"  
      3  "3: $1.25 TO $1.49"  
      4  "4: $1.50 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF108F
      1  "1: UNDER $1.50"  
      2  "2: $1.50 TO $1.99"  
      3  "3: $2.00 TO $2.49"  
      4  "4: $2.50 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF109F
      1  "1: 0 TO 545"  
      2  "2: 546 TO 1425"  
      3  "3: 1426 TO 3300"  
      4  "4: 3301+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF10F
      0  "0: ZERO"  
      1  "1: GREATER THAN ZERO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF110F
      1  "1: 0"  
      2  "2: 1 TO 9"  
      3  "3: 10 TO 19"  
      4  "4: 20+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF111F
      1  "1: 0 TO 49"  
      2  "2: 50 TO 99"  
      3  "3: 100 TO 149"  
      4  "4: 150 TO 199"  
      5  "5: 200 TO 249"  
      6  "6: 250 TO 299"  
      7  "7: 300 TO 349"  
      8  "8: 350 TO 399"  
      9  "9: 400 TO 499"  
      10  "10: 500 TO 599"  
      11  "11: 600 TO 749"  
      12  "12: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF112F
      1  "1: 0 TO 10"  
      2  "2: 11 TO 30"  
      3  "3: 31 TO 50"  
      4  "4: 51+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF113F
      1  "1: ZERO"  
      2  "2: 1 TO 9"  
      3  "3: 10 TO 19"  
      4  "4: 20 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF114F
      1  "1: 0 TO 35"  
      2  "2: 36 TO 260"  
      3  "3: 261 TO 600"  
      4  "4: 601+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF115F
      1  "1: 0"  
      2  "2: 1 OR 2"  
      3  "3: 3 TO 9"  
      4  "4: 10+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF116F
      1  "1: 0"  
      2  "2: 1 TO 49"  
      3  "3: 50 TO 99"  
      4  "4: 100"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF117F
      1  "1: 0 TO 20"  
      2  "2: 21 TO 135"  
      3  "3: 136 TO 320"  
      4  "4: 321+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF118F
      1  "1: 0"  
      2  "2: 1 TO 9"  
      3  "3: 10 TO 14"  
      4  "4: 15 TO 19"  
      5  "5: 20+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF119F
      1  "1: FREE"  
      2  "2: $0.01 TO $0.29"  
      3  "3: $0.30"  
      4  "4: $0.31 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF11F
      0  "0: ZERO"  
      1  "1: GREATER THAN ZERO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF120F
      1  "1: NONE"  
      2  "2: UNDER $0.40"  
      3  "3: $0.40"  
      4  "4: $0.41 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF121F
      1  "1: 0 TO 700"  
      2  "2: 701 TO 2300"  
      3  "3: 2301 TO 5300"  
      4  "4: 5301+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF122F
      1  "1: 0 TO 665"  
      2  "2: 666 TO 1750"  
      3  "3: 1751 TO 3200"  
      4  "4: 3201+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF123F
      1  "1: 0 TO 145"  
      2  "2: 146 TO 450"  
      3  "3: 451 TO 820"  
      4  "4: 821+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF124F
      1  "1: 0 TO 249"  
      2  "2: 250 to 399"  
      3  "3: 400 TO 499"  
      4  "4: 500 TO 599"  
      5  "5: 600 TO 749"  
      6  "6: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF125F
      1  "1: 0 TO 3"  
      2  "2: 4 TO 6"  
      3  "3: 7 TO 9"  
      4  "4: 10 TO 14"  
      5  "5: 15+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF126F
      1  "1: 0 TO 5"  
      2  "2: 6 TO 9"  
      3  "3: 10 TO 14"  
      4  "4: 15 TO 19"  
      5  "5: 20+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF127F
      1  "1: YES (1)"  
      2  "2: NO OR CHILD DOES NOT PARTICIPATE (2, 4)"  
      3  "3: DON'T KNOW (3)"  
      4  "4: NO TESTING AT THE GRADE LEVEL (5)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF128F
      1  "1: BEFORE 1950"  
      2  "2: 1950 TO 1959"  
      3  "3: 1960 TO 1969"  
      4  "4: 1970 TO 1979"  
      5  "5: 1980 TO 1984"  
      6  "6: 1985 OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF129F
      1  "1: 2003/2004"  
      2  "2: 2005/2006"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF12F
      0  "0: ZERO"  
      1  "1: GREATER THAN ZERO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF130F
      1  "1: CITY(11, 12, 13)"  
      2  "2: SUBURB (21, 22, 23)"  
      3  "3: TOWN (31, 32, 33)"  
      4  "4: RURAL (41, 42, 43)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF131F
      1  "1: PRE-K OR KINDERGARTEN (1, 2)"  
      2  "2: FIRST GRADE (3)"  
      3  "3: SECOND GRADE (4)"  
      4  "4: THIRD GRADE (5)"  
      5  "5: FOURTH GRADE (6)"  
      6  "6: FIFTH GRADE (7)"  
      7  "7: SIXTH GRADE (8)"  
      8  "8: SEVENTH OR EIGHTH GRADE (9, 10)"  
      9  "9: 9 TO 12TH GRADE, UNGRADED (11, 12, 13, 14, 15)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF132F
      1  "1: CITY(11, 12, 13)"  
      2  "2: SUBURB (21, 22, 23)"  
      3  "3: TOWN (31, 32, 33)"  
      4  "4: RURAL (41, 42, 43)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF133F
      1  "1: PRE-K (1)"  
      2  "2: KINDERGARTEN (2)"  
      3  "3: 1st grade or higher, Ungraded (3 thru 15)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF134F
      1  "1: CITY(11, 12, 13)"  
      2  "2: SUBURB (21, 22, 23)"  
      3  "3: TOWN (31, 32, 33)"  
      4  "4: RURAL (41, 42, 43)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF135F
      1  "1: 0"  
      2  "2: 1 TO 64"  
      3  "3: 65 TO 120"  
      4  "4: 121+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF136F
      1  "1: PRE-K OR KINDERGARTEN (1, 2)"  
      2  "2: FIRST GRADE (3)"  
      3  "3: SECOND GRADE (4)"  
      4  "4: THIRD GRADE (5)"  
      5  "5: FOURTH GRADE (6)"  
      6  "6: FIFTH GRADE (7)"  
      7  "7: SIXTH GRADE (8)"  
      8  "8: SEVENTH OR EIGHTH GRADE (9, 10)"  
      9  "9: 9 TO 12TH GRADE, UNGRADED (11, 12, 13, 14, 15)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF137F
      1  "1: CITY (11, 12, 13)"  
      2  "2: SUBURB (21, 22, 23)"  
      3  "3: TOWN (31, 32, 33)"  
      4  "4: RURAL (41, 42, 43)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF138F
      1  "1: PRE-K (1)"  
      2  "2: KINDERGARTEN (2)"  
      3  "3: 1st grade or higher, Ungraded (3 thru 15)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF139F
      0  "0: 0"  
      1  "1: 1"  
      2  "2: 2"  
      3  "3: 3"  
      4  "4: 4 TO 6"  
      5  "5: 7+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF13F
      0  "0: ZERO"  
      1  "1: GREATER THAN ZERO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF140F
      0  "0: 0"  
      1  "1: 1"  
      2  "2: 2"  
      3  "3: 3"  
      4  "4: 4 TO 6"  
      5  "5: 7+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF141F
      1  "1: CHURCH/SYNAGOGUE OR OTHER PLACE OF WORSHIP (4)"  
      2  "2: PUBLIC SCHOOL (5)"  
      3  "3: PRIVATE SCHOOL (6)"  
      4  "4: OWN BUILDING (10)"  
      5  "5: OTHER (1-3, 7-13)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF142F
      1  "1: 0 TO 5"  
      2  "2: 6 TO 10"  
      3  "3: 11 TO 20"  
      4  "4: 21+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF143F
      1  "1: ZERO"  
      2  "2: 1 TO 10"  
      3  "3: 11 TO 20"  
      4  "4: 21 TO 40"  
      5  "5: 41 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF144F
      1  "1: ZERO"  
      2  "2: 1 TO 10"  
      3  "3: 11 TO 20"  
      4  "4: 21 TO 40"  
      5  "5: 41 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF145F
      1  "1: ZERO"  
      2  "2: 1 TO 10"  
      3  "3: 11 TO 20"  
      4  "4: 21 TO 40"  
      5  "5: 41 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF146F
      -2  "-2: DATA SUPPRESSED"  
;
   label define PUF147F
      -4  "-4: DATA SUPPRESSED FOR ADMINISTRATION ERROR"  
;
   label define PUF148F
      1  "1: 1-15 MINUTES A DAY"  
      2  "2: MORE THAN 15 MINUTES A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF149F
      4  "4: ASSOCIATE'S DEGREE OR LESS"  
      5  "5: BACHELOR'S DEGREE"  
      6  "6: MASTER'S DEGREE"  
      7  "7: AN ADVANCED PROFESSIONAL DEGREE BEYOND A MASTER'S DEGREE"  
      8  "8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF14F
      1  "1: 1 TO 4"  
      2  "2: 5"  
      3  "3: MORE THAN 5"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF150F
      1  "1: NOT TAKEN"  
      2  "2: TAKEN AND PASSED"  
      3  "3: TAKEN, HAVE NOT YET PASSED OR AWAITING TEST RESULTS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF151F
      1  "1: 1-15 MINUTES A DAY"  
      2  "2: MORE THAN 15 MINUTES A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF152F
      5  "5: BACHELOR'S DEGREE OR LESS"  
      6  "6: MASTER'S DEGREE"  
      7  "7: AN ADVANCED PROFESSIONAL DEGREE BEYOND A MASTER'S DEGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF159F
      1  "1: NO TIME"  
      2  "2: 1-15 MINUTES"  
      3  "3: 16-30 MINUTES"  
      4  "4: LONGER THAN 30 MINUTES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF160F
      1  "1: NOT TAKEN"  
      2  "2: TAKEN AND PASSED"  
      3  "3: TAKEN, HAVE NOT YET PASSED OR AWAITING TEST RESULTS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF161F
      2  "2: TWO OR FEWER TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF162F
      2  "2: TWO OR FEWER TIMES"  
      3  "3: THREE TO FIVE TIMES"  
      4  "4: SIX TO TEN TIMES"  
      5  "5: 11-14 TIMES"  
      6  "6: 15 OR MORE TIMES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF163F
      1  "1: NO TIME"  
      2  "2: 1-15 MINUTES"  
      3  "3: 16-30 MINUTES"  
      4  "4: LONGER THAN 30 MINUTES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF164F
      5  "5: BACHELOR'S DEGREE OR LESS"  
      6  "6: MASTER'S DEGREE"  
      7  "7: AN ADVANCED PROFESSIONAL DEGREE BEYOND A MASTER'S DEGREE"  
      8  "8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF165F
      1  "1: NOT TAKEN"  
      2  "2: TAKEN AND PASSED"  
      3  "3: TAKEN, HAVE NOT YET PASSED OR AWAITING TEST RESULTS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF166F
      1  "1: LESS THAN A MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF167F
      1  "1: LESS THAN A MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF168F
      1  "1: CHILD ONLY"  
      2  "2: CHILD + OTHER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF169F
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF170F
      1  "1: KEEPING HOUSE OR CARING FOR CHILDREN OR OTHER FAMILY MEMBERS"  
      2  "2: GOING TO SCHOOL"  
      3  "3: RETIRED/UNABLE TO WORK/OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF171F
      1  "1: 1ST GRADE"  
      2  "2: 2ND GRADE"  
      3  "3: 3RD GRADE"  
      4  "4: 4TH GRADE"  
      5  "5: 5TH GRADE"  
      6  "6: 6TH GRADE"  
      7  "7: 7TH GRADE"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROG AFTER HIGH SCHOOL NO DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE OR HIGHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF172F
      1  "1: 1ST GRADE"  
      2  "2: 2ND GRADE"  
      3  "3: 3RD GRADE"  
      4  "4: 4TH GRADE"  
      5  "5: 5TH GRADE"  
      6  "6: 6TH GRADE"  
      7  "7: 7TH GRADE"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROG AFTER HIGH SCHOOL NO DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE OR HIGHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF173F
      7  "7: 7TH GRADE OR LESS"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROG AFTER HIGH SCHOOL NO DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE/PROFESSIONAL SCHOOL - NO DEGREE"  
      21  "21: MASTER'S DEGREE (MA, MS)"  
      22  "22: DOCTORATE DEGREE (PH.D., ED.D.)"  
      23  "23: PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE (MD/DDS/LAW/JD/LLB)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF174F
      7  "7: 7TH GRADE OR LESS"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROG AFTER HIGH SCHOOL NO DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE/PROFESSIONAL SCHOOL - NO DEGREE"  
      21  "21: MASTER'S DEGREE (MA, MS)"  
      22  "22: DOCTORATE DEGREE (PH.D., ED.D.)"  
      23  "23: PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE (MD/DDS/LAW/JD/LLB)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF175F
      1  "1: EXCELLENT"  
      2  "2: VERY GOOD"  
      3  "3: GOOD"  
      4  "4: FAIR OR POOR"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF176F
      1  "1: ENGLISH"  
      2  "2: SPANISH"  
      3  "3: OTHER LANGUAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF177F
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF178F
      1  "1: CHILD ONLY"  
      2  "2: CHILD + 1 OTHER CHILD"  
      3  "3: CHILD + 2 OR MORE OTHER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF179F
      1  "1: ONE"  
      2  "2: TWO OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF180F
      1  "1: ONE"  
      2  "2: TWO OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF181F
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF182F
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: 2 OR MORE TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF183F
      1  "1: CHILD ONLY"  
      2  "2: CHILD + 1 MORE (2 TOTAL)"  
      3  "3: CHILD + 2 MORE (3 TOTAL)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF184F
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF185F
      1  "1: NEVER"  
      2  "2: ONCE"  
      3  "3: TWICE"  
      4  "4: 3 OR MORE TIMES"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF186F
      1  "1: FIRST"  
      2  "2: SECOND OR MORE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF187F
      1  "1: BEFORE 6 MONTHS"  
      2  "2: 6 TO 9 MONTHS"  
      3  "3: 10 TO 12 MONTHS"  
      4  "4: 13 TO 15 MONTHS"  
      5  "5: 16 TO 18 MONTHS"  
      6  "6: 19+ MONTHS OR CHILD DOES NOT WALK"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF188F
      1  "1: BEFORE 6 MONTHS"  
      2  "2: 6 TO 9 MONTHS"  
      3  "3: 10 TO 12 MONTHS"  
      4  "4: 13 TO 15 MONTHS"  
      5  "5: 16 TO 18 MONTHS"  
      6  "6: 19 TO 24 MONTHS"  
      7  "7: AFTER 24 MONTHS OR CHILD DOES NOT SPEAK"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF189F
      1  "1: LESS THAN A MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF190F
      1  "1: LESS THAN A MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF191F
      1  "1: EXCELLENT HEARING"  
      2  "2: GOOD HEARING"  
      3  "3: TROUBLE HEARING OR CHILD IS DEAF"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF192F
      1  "1: NEVER"  
      2  "2: LESS THAN 6 MONTHS"  
      3  "3: 6 MONTHS TO <1 YEAR"  
      4  "4: 1 OR MORE YEARS"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF193F
      7  "7: 7TH GRADE OR LESS"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL EQUIVALENT/GED"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROGRAM AFTER HIGH SCHOOL BUT NO VOC/TECH DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL DIPLOMA"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      21  "21: MASTER'S (MA MS)"  
      22  "22: DOCTORATE DEGREE (PHD EDD)"  
      23  "23: PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE (MD/DDS/LAW/JD/LLB)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF194F
      7  "7: 7TH GRADE OR LESS"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL EQUIVALENT/GED"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROGRAM AFTER HIGH SCHOOL BUT NO VOC/TECH DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL DIPLOMA"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      21  "21: MASTER'S (MA MS)"  
      22  "22: DOCTORATE DEGREE (PHD EDD)"  
      23  "23: PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE (MD/DDS/LAW/JD/LLB)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF195F
      1  "1: EXCELLENT"  
      2  "2: VERY GOOD"  
      3  "3: GOOD"  
      4  "4: FAIR OR POOR"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF196F
      1  "1: ENGLISH"  
      2  "2: SPANISH"  
      3  "3: OTHER LANGUAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF197F
      1  "1: ALL OF THE TIME"  
      2  "2: MOST OF THE TIME"  
      3  "3: SOMETIMES"  
      4  "4: CHILD RARELY OR NEVER WEARS GLASSES OR CONTACTS"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF198F
      1  "1: ENGLISH"  
      2  "2: OTHER LANGUAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF199F
      1  "1: LESS THAN ONE MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF19F
      1  "1: BEFORE 1945"  
      2  "2: 1945 TO 1949"  
      3  "3: 1950 TO 1954"  
      4  "4: 1955 TO 1959"  
      5  "5: 1960 TO 1964"  
      6  "6: 1965 TO 1969"  
      7  "7: 1970 TO 1974"  
      8  "8: 1975 TO 1979"  
      9  "9: 1980 TO 1984"  
      10  "10: 1985+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF1F
      1  "1: FIVE"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF200F
      1  "1: LESS THAN ONE MONTH"  
      2  "2: MORE THAN A MONTH BUT LESS THAN A YEAR"  
      3  "3: MORE THAN A YEAR"  
      4  "4: NO CONTACT"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF201F
      1  "1: CHILD ONLY"  
      2  "2: CHILD + 1 OTHER CHILD"  
      3  "3: CHILD + 2 OR MORE OTHER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF202F
      1  "1: EXCELLENT HEARING"  
      2  "2: GOOD HEARING"  
      3  "3: TROUBLE HEARING OR CHILD IS DEAF"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF203F
      1  "1: NEVER"  
      2  "2: LESS THAN 6 MONTHS"  
      3  "3: 6 MONTHS TO <1 YEAR"  
      4  "4: 1 OR MORE YEARS"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF204F
      1  "1: KEEPING HOUSE OR CARING FOR CHILDREN OR OTHER FAMILY MEMBERS"  
      2  "2: GOING TO SCHOOL"  
      3  "3: RETIRED/UNABLE TO WORK/OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF205F
      7  "7: 7TH GRADE OR LESS"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL EQUIVALENT/GED"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROGRAM AFTER HIGH SCHOOL BUT NO VOC/TECH DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL DIPLOMA"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      21  "21: MASTER'S (MA MS)"  
      22  "22: DOCTORATE DEGREE (PHD EDD)"  
      23  "23: PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE (MD/DDS/LAW/JD/LLB)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF206F
      7  "7: 7TH GRADE OR LESS"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL EQUIVALENT/GED"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROGRAM AFTER HIGH SCHOOL BUT NO VOC/TECH DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL DIPLOMA"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      21  "21: MASTER'S (MA MS)"  
      22  "22: DOCTORATE DEGREE (PHD EDD)"  
      23  "23: PROFESSIONAL DEGREE AFTER BACHELOR'S DEGREE (MD/DDS/LAW/JD/LLB)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF207F
      1  "1: EXCELLENT"  
      2  "2: VERY GOOD"  
      3  "3: GOOD"  
      4  "4: FAIR OR POOR"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF208F
      1  "1: ENGLISH"  
      2  "2: SPANISH"  
      3  "3: OTHER LANGUAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF209F
      1  "1: CHILD ONLY"  
      2  "2: CHILD + 1 MORE (2 TOTAL)"  
      3  "3: CHILD + 2 OR MORE OTHER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF20F
      1  "1: BEFORE 1945"  
      2  "2: 1945 TO 1949"  
      3  "3: 1950 TO 1954"  
      4  "4: 1955 TO 1959"  
      5  "5: 1960 TO 1964"  
      6  "6: 1965 TO 1969"  
      7  "7: 1970 TO 1974"  
      8  "8: 1975 TO 1979"  
      9  "9: 1980 TO 1984"  
      10  "10: 1985+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF210F
      1  "1: ONE"  
      2  "2: TWO OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF211F
      1  "1: ALL OF THE TIME"  
      2  "2: MOST OF THE TIME"  
      3  "3: SOMETIMES"  
      4  "4: RARELY OR NEVER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF212F
      1  "1: ONE"  
      2  "2: TWO OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF213F
      1  "1: NO FORMAL SCHOOLING"  
      2  "2: 1ST GRADE"  
      3  "3: 2ND GRADE"  
      4  "4: 3RD GRADE"  
      5  "5: 4TH GRADE"  
      6  "6: 5TH GRADE"  
      7  "7: 6TH GRADE"  
      8  "8: 7TH GRADE"  
      9  "9: 8TH GRADE"  
      10  "10: 9TH GRADE"  
      11  "11: 10TH GRADE"  
      12  "12: 11TH GRADE"  
      13  "13: 12TH GRADE BUT NO DIPLOMA"  
      14  "14: HIGH SCHOOL EQUIVALENT/GED"  
      15  "15: HIGH SCHOOL DIPLOMA"  
      16  "16: VOCATIONAL/TECH PROGRAM AFTER HIGH SCHOOL NO DIPLOMA"  
      17  "17: VOCATIONAL/TECH PROGRAM AFTER HIGH SCHOOL W/ DIPLOMA"  
      18  "18: SOME COLLEGE NO DEGREE"  
      19  "19: ASSOCIATE'S DEGREE"  
      20  "20: BACHELOR'S DEGREE"  
      21  "21: GRADUATE/PROFESSIONAL SCHOOL OR HIGHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF214F
      1  "1: CAFETERIA"  
      2  "2: CLASSROOM"  
      3  "3: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF215F
      4  "4: 1 YR COURSEWORK BEYOND BACHELOR'S OR LESS"  
      5  "5: MASTER'S DEGREE"  
      6  "6: EDUCATION SPECIALIST OR PROFESSIONAL DIPLOMA"  
      7  "7: DOCTORATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF216F
      3  "3: 2 OR FEWER TIMES A YEAR OR NEVER"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF217F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF218F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF21F
      1  "1: 2003/2004"  
      2  "2: 2005/2006"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF221F
      1  "1: CAFETERIA"  
      2  "2: CLASSROOM"  
      3  "3: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF222F
      3  "3: BACHELOR'S DEGREE OR LESS"  
      4  "4: AT LEAST 1 YR COURSEWORK BEYOND BACHELOR'S BUT NO DEGREE"  
      5  "5: MASTER'S DEGREE"  
      6  "6: EDUCATION SPECIALIST OR PROFESSIONAL DIPLOMA"  
      7  "7: DOCTORATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF223F
      2  "2: ONCE PER YEAR OR NEVER"  
      3  "3: 2 TO 3 TIMES PER YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF224F
      2  "2: ONCE PER YEAR OR NEVER"  
      3  "3: 2 TO 3 TIMES PER YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF225F
      3  "3: 2 OR FEWER TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF226F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF227F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF228F
      1  "1: YES"  
      2  "2: NO OR NA-CHILD IN CLASS LESS THAN 2 WEEKS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF229F
      1  "1: KINDERGARTEN (FULL-DAY PROGRAM)"  
      2  "2: KINDERGARTEN (PART-DAY PROGRAM)"  
      3  "3: FIRST GRADE OR UNGRADED CLASSROOM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF22F
      1  "1: ITS OWN BUILDING (1)"  
      2  "2: PUBLIC SCHOOL (2)"  
      3  "3: PRIVATE SCHOOL (3)"  
      4  "4: PLACE OF WORSHIP (5)"  
      5  "5: RESPONDENTS/ANOTHER HOME (6, 7)"  
      6  "6: COMMUNITY CENTER/LIBRARY (8, 9)"  
      7  "7: OTHER (4, 10, 11, 12)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF230F
      1  "1: ENTIRE SCHOOL YEAR"  
      2  "2: MORE THAN ONE SEMESTER BUT LESS THAN THE ENTIRE SCHOOL YEAR"  
      3  "3: MORE THAN ONE QUARTER OF THE SCHOOL YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF231F
      1  "1: ENGLISH AS A SECOND LANGUAGE (ESL)"  
      2  "2: BILINGUAL EDUCATION"  
      3  "3: DUAL-LANGUAGE EDUCATION"  
      4  "4: ELL/LANGUAGE ISSUES OR OTHER TYPE OF INSTRUCTION"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF232F
      1  "1: YES"  
      2  "2: NO OR NA-CHILD IN CLASS LESS THAN 2 WEEKS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF235F
      1  "1: ENTIRE SCHOOL YEAR"  
      2  "2: MORE THAN ONE SEMESTER BUT LESS THAN THE ENTIRE SCHOOL YEAR"  
      3  "3: MORE THAN ONE QUARTER OF THE SCHOOL YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF236F
      1  "1: NO FORMAL SCHOOLING"  
      2  "2: 1ST GRADE"  
      3  "3: 2ND GRADE"  
      4  "4: 3RD GRADE"  
      5  "5: 4TH GRADE"  
      6  "6: 5TH GRADE"  
      7  "7: 6TH GRADE"  
      8  "8: 7TH GRADE"  
      9  "9: 8TH GRADE"  
      10  "10: 9TH GRADE"  
      11  "11: 10TH GRADE"  
      12  "12: 11TH GRADE"  
      13  "13: 12TH GRADE BUT NO DIPLOMA"  
      14  "14: HIGH SCHOOL EQUIVALENT/GED"  
      15  "15: HIGH SCHOOL DIPLOMA"  
      16  "16: VOCATIONAL/TECH PROGRAM AFTER HIGH SCHOOL NO DIPLOMA"  
      17  "17: VOCATIONAL/TECH PROGRAM AFTER HIGH SCHOOL W/ DIPLOMA"  
      18  "18: SOME COLLEGE NO DEGREE"  
      19  "19: ASSOCIATE'S DEGREE"  
      20  "20: BACHELOR'S DEGREE"  
      21  "21: GRADUATE/PROFESSIONAL SCHOOL NO DEGREE"  
      22  "22: MASTER'S DEGREE OR HIGHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF237F
      0  "0: NONE"  
      1  "1: 8TH GRADE OR BELOW"  
      2  "2: 9TH - 12TH GRADE"  
      3  "3: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "4: VOC/TECH PROGRAM"  
      5  "5: SOME COLLEGE"  
      6  "6: BACHELOR'S DEGREE"  
      7  "7: GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "8: MASTER'S DEGREE (MA, MS) OR HIGHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF238F
      0  "0: NONE"  
      1  "1: 8TH GRADE OR BELOW"  
      2  "2: 9TH - 12TH GRADE"  
      3  "3: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "4: VOC/TECH PROGRAM"  
      5  "5: SOME COLLEGE"  
      6  "6: BACHELOR'S DEGREE"  
      7  "7: GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "8: MASTER'S DEGREE (MA, MS) OR HIGHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF239F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER OR LATER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF23F
      1  "1: MARRIED (1)"  
      2  "2: SEPARATED (2)"  
      3  "3: DIVORCED OR WIDOWED (3, 4)"  
      4  "4: NEVER MARRIED (5)"  
      5  "5: CIVIL UNION/DOMESTIC PARTNERSHIP (6)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF240F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE OR LATER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF241F
      1  "1: ASSESSED"  
      2  "2: EXCLUDED DUE TO DISABILITY OR NO ASSESSMENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF242F
      1  "1: ASSESSED"  
      2  "2: EXCLUDED DUE TO DISABILITY OR NO ASSESSMENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF243F
      1  "1: 8TH GRADE OR LESS"  
      2  "2: 9TH - 12TH GRADE"  
      3  "3: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "4: VOC/TECH PROGRAM"  
      5  "5: SOME COLLEGE"  
      6  "6: BACHELOR'S DEGREE"  
      7  "7: GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "8: MASTER'S DEGREE (MA, MS)"  
      9  "9: DOCTORATE OR PROFESSIONAL DEGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF244F
      1  "1: 8TH GRADE OR LESS"  
      2  "2: 9TH - 12TH GRADE"  
      3  "3: HIGH SCHOOL DIPLOMA/EQUIVALENT"  
      4  "4: VOC/TECH PROGRAM"  
      5  "5: SOME COLLEGE"  
      6  "6: BACHELOR'S DEGREE"  
      7  "7: GRADUATE/PROFESSIONAL SCHOOL-NO DEGREE"  
      8  "8: MASTER'S DEGREE (MA, MS)"  
      9  "9: DOCTORATE OR PROFESSIONAL DEGREE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF245F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER OR LATER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF246F
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE OR LATER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF247F
      1  "1: YES"  
      2  "2: NO OR NA-(ALL STAFF MUST HAVE MORE THAN 2 YEAR DEGREE)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF24F
      1  "1: BEFORE 1995"  
      2  "2: 1995 OR 1996"  
      3  "3: 1997 OR 1998"  
      4  "4: 1999 OR 2000"  
      5  "5: 2001 OR 2002"  
      6  "6: 2003 OR 2004"  
      7  "7: 2005 OR LATER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF250F
      1  "1: KEEPING HOUSE OR CARING FOR CHILDREN OR OTHER FAMILY MEMBERS"  
      2  "2: GOING TO SCHOOL"  
      3  "3: RETIRED/UNABLE TO WORK/OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF251F
      1  "1: NO"  
      2  "2: OTHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF252F
      1  "1: YES"  
      2  "2: NO/DON'T KNOW"  
;
   label define PUF253F
      2  "2: 0 TO 4 ABSENCES"  
      3  "3: 5 TO 7 ABSENCES"  
      4  "4: 8 OR MORE ABSENCES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF25F
      1  "1: NO, SINGLE BIRTH (1)"  
      2  "2: YES, MULTIPLE BIRTH (2, 3, 4)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF26F
      1  "1: ENGLISH (0)"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF27F
      1  "1: ENGLISH (0)"  
      2  "2: SPANISH (12)"  
      3  "3: ASIAN (2, 3, 8, 9, 13, 15)"  
      4  "4: OTHER (1, 4, 5, 6, 7, 10, 11, 14, 16+)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF28F
      1  "1: ENGLISH (0)"  
      2  "2: SPANISH (12)"  
      3  "3: ASIAN (2, 3, 8, 9, 13, 15)"  
      4  "4: OTHER (1, 4, 5, 6, 7, 10, 11, 14, 16+)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF29F
      1  "1: ENGLISH (0)"  
      2  "2: SPANISH (12)"  
      3  "3: ASIAN (2, 3, 8, 9, 13, 15)"  
      4  "4: OTHER (1, 4, 5, 6, 7, 10, 11, 14, 16+)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF2F
      1  "1: 2.5 OR LESS"  
      2  "2: 2.6 TO 3.0"  
      3  "3: 3.1 TO 3.5"  
      4  "4: 3.6 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF30F
      1  "1: ENGLISH (0)"  
      2  "2: SPANISH (12)"  
      3  "3: ASIAN (2, 3, 8, 9, 13, 15)"  
      4  "4: OTHER (1, 4, 5, 6, 7, 10, 11, 14, 16+)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF31F
      1  "1: GRANDPARENT (1)"  
      2  "2: AUNT/UNCLE (2, 3)"  
      3  "3: BROTHER/SISTER (4, 5)"  
      4  "4: ANOTHER RELATIVE (6)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF32F
      1  "1: ASSIGNED (1)"  
      2  "2: CHOSEN/HOME SCHOOLED (2, 4)"  
      3  "3: SCHOOL OF CHOICE (3)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF33F
      1  "1: ENGLISH (0)"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF34F
      1  "1: 0 TO 4"  
      2  "2: 5 TO 9"  
      3  "3: 10 TO 29"  
      4  "4: 30+"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF35F
      1  "1: 0 TO 4"  
      2  "2: 5 TO 9"  
      3  "3: 10 TO 19"  
      4  "4: 20+"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF36F
      1  "1: 0"  
      2  "2: 1 TO 7"  
      3  "3: 8 TO 14"  
      4  "4: 15 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF37F
      1  "1: 10 MINUTES OR LESS (1)"  
      2  "2: 11 TO 30 MINUTES (2)"  
      3  "3: 31 MINUTES TO 2 HOURS(3, 4)"  
      4  "4: MORE THAN 2 HOURS (5)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF38F
      1  "1: 1"  
      2  "2: 2 TO 4"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF39F
      1  "1: 0"  
      2  "2: 1 TO 7"  
      3  "3: 8 TO 14"  
      4  "4: 15 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF3F
      1  "1: NO SPECIALIZED LANGUAGE INSTRUCTION (4)"  
      2  "2: OTHER (1, 2, 3)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF40F
      1  "1: 10 MINUTES OR LESS (1)"  
      2  "2: 11 TO 30 MINUTES (2)"  
      3  "3: 31 MINUTES TO 2 HOURS(3, 4)"  
      4  "4: MORE THAN 2 HOURS (5)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF41F
      1  "1: 1"  
      2  "2: 2 TO 4"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF42F
      1  "1: 2003/2004"  
      2  "2: 2005/2006"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF43F
      1  "1: MARRIED (1)"  
      2  "2: SEPARATED (2)"  
      3  "3: DIVORCED OR WIDOWED (3, 4)"  
      4  "4: NEVER MARRIED (5)"  
      5  "5: CIVIL UNION/DOMESTIC PARTNERSHIP (6)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF44F
      1  "1: LESS THAN 6 MONTHS (2)"  
      2  "2: 6 MONTHS TO LESS THAN 1 YEAR (3)"  
      3  "3: 1 YEAR TO LESS THAN 2 YEARS (4)"  
      4  "4: MORE THAN 2 YEARS/NEVER (1, 5)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF45F
      1  "1: SCHOOL BUS (1)"  
      2  "2: PARENT DRIVES (2)"  
      3  "3: CARPOOL (3)"  
      4  "4: WALK (4)"  
      5  "5: OTHER (5, 6, 7)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF46F
      1  "1: NO, SINGLE BIRTH (1)"  
      2  "2: YES, MULTIPLE BIRTH (2, 3, 4)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF47F
      1  "1: ENGLISH (0)"  
      2  "2: SPANISH (12)"  
      3  "3: ASIAN (2, 3, 8, 9, 13, 15)"  
      4  "4: OTHER (1, 4, 5, 6, 7, 10, 11, 14, 16+)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF48F
      1  "1: RELATIVE"  
      2  "2: NON-RELATIVE"  
      3  "3: DAY CARE OR EXTENDED CARE"  
      4  "4: OTHER (4, 5, 6, 7)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF49F
      1  "1: 2003/2004"  
      2  "2: 2005/2006"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF4F
      1  "1: LESS THAN FIVE"  
      2  "2: FIVE OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF50F
      1  "1: 2003/2004"  
      2  "2: 2005/2006"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF51F
      1  "1: MARRIED (1)"  
      2  "2: SEPARATED (2)"  
      3  "3: DIVORCED OR WIDOWED (3, 4)"  
      4  "4: NEVER MARRIED (5)"  
      5  "5: CIVIL UNION/DOMESTIC PARTNERSHIP (6)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF52F
      1  "1: LESS THAN 6 MONTHS (2)"  
      2  "2: 6 MONTHS TO LESS THAN 1 YEAR (3)"  
      3  "3: 1 YEAR TO LESS THAN 2 YEARS (4)"  
      4  "4: MORE THAN 2 YEARS/NEVER (1, 5)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF53F
      1  "1: OWN (1)"  
      2  "2: RENT (2)"  
      3  "3: OTHER"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF54F
      1  "1: USA (1)"  
      2  "2: MEXICO (145)"  
      3  "3: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF55F
      1  "1: USA (1)"  
      2  "2: MEXICO (145)"  
      3  "3: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF56F
      1  "1: ENGLISH (0)"  
      2  "2: SPANISH (12)"  
      3  "3: ASIAN (2, 3, 8, 9, 13, 15)"  
      4  "4: OTHER (1, 4, 5, 6, 7, 10, 11, 14, 16+)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF57F
      1  "1: GRANDPARENT (1)"  
      2  "2: AUNT/UNCLE (2, 3)"  
      3  "3: BROTHER/SISTER (4, 5)"  
      4  "4: ANOTHER RELATIVE (6)"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF58F
      1  "1: ASSIGNED (1)"  
      2  "2: CHOSEN/HOME SCHOOLED (2, 4)"  
      3  "3: SCHOOL OF CHOICE (3)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF59F
      1  "1: 0 TO 4"  
      2  "2: 5 TO 9"  
      3  "3: 10 TO 19"  
      4  "4: 20+"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF5F
      1  "1: 5.5 OR LESS"  
      2  "2: 5.6 TO 6.0"  
      3  "3: 6.1 TO 6.5"  
      4  "4: 6.6 TO 7.0"  
      5  "5: 7.1 TO 7.5"  
      6  "6: 7.6 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF60F
      1  "1: 0 TO 4"  
      2  "2: 5 TO 9"  
      3  "3: 10 TO 19"  
      4  "4: 20+"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF61F
      1  "1: BEFORE 1940"  
      2  "2: 1940 TO 1949"  
      3  "3: 1950 TO 1959"  
      4  "4: 1960 TO 1969"  
      5  "5: 1970 TO 1979"  
      6  "6: 1980 OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF62F
      1  "1: LESS THAN 5"  
      2  "2: 5 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF63F
      1  "1: LESS THAN 5"  
      2  "2: 5 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF64F
      1  "1: LESS THAN 5"  
      2  "2: 5 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF65F
      1  "1: ENGLISH (1)"  
      2  "2: OTHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF66F
      1  "1: 0 TO 249"  
      2  "2: 250 TO 399"  
      3  "3: 400 TO 499"  
      4  "4: 500 TO 599"  
      5  "5: 600 TO 749"  
      6  "6: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF67F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF68F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF69F
      1  "1: 0 TO 10"  
      2  "2: 11 TO 23"  
      3  "3: 24 TO 46"  
      4  "4: 47+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF6F
      1  "1: FIVE"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF70F
      1  "1: BEFORE 1950"  
      2  "2: 1950 TO 1959"  
      3  "3: 1960 TO 1969"  
      4  "4: 1970 OR LATER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF71F
      1  "1: 0"  
      2  "2: 1+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF72F
      1  "1: 0 TO 249"  
      2  "2: 250 to 399"  
      3  "3: 400 TO 499"  
      4  "4: 500 TO 599"  
      5  "5: 600 TO 749"  
      6  "6: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF73F
      1  "1: 0 TO 8"  
      2  "2: 9 TO 20"  
      3  "3: 21 TO 41"  
      4  "4: 42+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF74F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF75F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF76F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26 TO 99"  
      4  "4: 100"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF77F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26 TO 99"  
      4  "4: 100"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF78F
      1  "1: UNDER $1:00"  
      2  "2: $1:00 TO $1:24"  
      3  "3: $1:25 TO $1:49"  
      4  "4: $1:50 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF79F
      1  "1: UNDER $1:50"  
      2  "2: $1:50 TO $1:99"  
      3  "3: $2:00 TO $2:49"  
      4  "4: $2:50 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF7F
      1  "1: 2.5 OR LESS"  
      2  "2: 2.6 TO 3.0"  
      3  "3: 3.1 TO 3.5"  
      4  "4: 3.6 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF80F
      1  "1: 0 TO 490"  
      2  "2: 491 TO 1290"  
      3  "3: 1291 TO 2685"  
      4  "4: 2686+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF81F
      1  "1: 0 TO 40"  
      2  "2: 41 TO 60"  
      3  "3: 61 TO 80"  
      4  "4: 81 TO 100"  
      5  "5: 101 TO 140"  
      6  "6: 141+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF82F
      1  "1: YES OR NA"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF83F
      1  "1: 0 TO 49"  
      2  "2: 50 TO 99"  
      3  "3: 100 TO 149"  
      4  "4: 150 TO 199"  
      5  "5: 200 TO 249"  
      6  "6: 250 TO 299"  
      7  "7: 300 TO 349"  
      8  "8: 350 TO 399"  
      9  "9: 400 TO 499"  
      10  "10: 500 TO 599"  
      11  "11: 600 TO 749"  
      12  "12: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF84F
      1  "1: 0 TO 10"  
      2  "2: 11 TO 30"  
      3  "3: 31 TO 50"  
      4  "4: 51+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF85F
      1  "1: 0"  
      2  "2: 1 TO 9"  
      3  "3: 10 TO 19"  
      4  "4: 20 OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF86F
      1  "1: 0 TO 45"  
      2  "2: 46 TO 255"  
      3  "3: 256 TO 605"  
      4  "4: 606+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF87F
      1  "1: 0"  
      2  "2: 1 TO 49"  
      3  "3: 50 TO 99"  
      4  "4: 100"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF88F
      1  "1: 0 TO 25"  
      2  "2: 26 TO 130"  
      3  "3: 131 TO 330"  
      4  "4: 331+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF89F
      1  "1: FREE"  
      2  "2: UNDER $0.30"  
      3  "3: $0.30"  
      4  "4: $0.30 OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF8F
      1  "1: NO SPECIALIZED LANGUAGE INSTRUCTION (4)"  
      2  "2: OTHER (1, 2, 3)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF90F
      1  "1: FREE"  
      2  "2: UNDER $0.40"  
      3  "3: $0.40"  
      4  "4: MORE THAN $0.40"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF91F
      1  "1: 0 TO 690"  
      2  "2: 691 TO 2165"  
      3  "3: 2166 TO 4215"  
      4  "4: 4216+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF92F
      1  "1: 0 TO 565"  
      2  "2: 566 TO 1595"  
      3  "3: 1596 TO 3195"  
      4  "4: 3196+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF93F
      1  "1: 0 TO 115"  
      2  "2, 116 TO 385"  
      3  "3: 386 TO 720"  
      4  "4: 721+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF94F
      1  "1: 0 TO 249"  
      2  "2: 250 to 399"  
      3  "3: 400 TO 499"  
      4  "4: 500 TO 599"  
      5  "5: 600 TO 749"  
      6  "6: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF95F
      1  "1: 0 TO 3"  
      2  "2: 4 TO 6"  
      3  "3: 7 TO 9"  
      4  "4: 10 TO 14"  
      5  "5: 15+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF96F
      1  "1: 0 TO 5"  
      2  "2: 6 TO 9"  
      3  "3: 10 TO 14"  
      4  "4: 15 TO 19"  
      5  "5: 20+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF97F
      1  "1: 0 TO 249"  
      2  "2: 250 to 399"  
      3  "3: 400 TO 499"  
      4  "4: 500 TO 599"  
      5  "5: 600 TO 749"  
      6  "6: 750+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF98F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF99F
      1  "1: 0"  
      2  "2: 1 TO 25"  
      3  "3: 26+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF9F
      1  "1: BEFORE 1945"  
      2  "2: 1945 TO 1949"  
      3  "3: 1950 TO 1954"  
      4  "4: 1955 TO 1959"  
      5  "5: 1960 TO 1964"  
      6  "6: 1965 TO 1969"  
      7  "7: 1970 TO 1974"  
      8  "8: 1975 TO 1979"  
      9  "9: 1980 TO 1984"  
      10  "10: 1985+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2ANGRY
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2COMPYY
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2DOBMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2ENJOY
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2GENDER
      1  "1: MALE"  
      2  "2: FEMALE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2LICREQ
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2MISBEH
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2MKDIFF
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2NOENRG
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2PFEEUN
      1  "1: A DAY"  
      2  "2: A WEEK"  
      3  "3: A MONTH"  
      4  "4: A YEAR"  
      5  "5: OTHER"  
      6  "6: NO FEE"  
      7  "7: AN HOUR - SPECIFED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2PRGLIC
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2PURPOS
      1  "1: PROVIDE ADULT SUPERVISION AND SAFE ENVIRONMENT"  
      2  "2: PROVIDE RECREATIONAL ACTIVITIES"  
      3  "3: IMPROVE ACADEMIC SKILLS OF ALL CHILDREN"  
      4  "4: PROVIDE CULTURAL AND/OR ENRICHMENT ACTIVITIES"  
      5  "5: PROVIDE REMEDIAL HELP"  
      6  "6: PROVIDE FLEXIBLE RELAXED HOME-LIKE ENVIRONMENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2RELAXD
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2RULES
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2TEACH
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define R2YNGHRS
      1  "1: YES"  
      2  "2: NO"  
      3  "3: I DO NOT WATCH AFTER OLDER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ABSENT
      1  "1: SERIOUS PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: MINOR PROBLEM"  
      4  "4: NOT A PROBLEM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ACADEM
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ADAFLG
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2AGGBEH
      1  "1: SERIOUS PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: MINOR PROBLEM"  
      4  "4: NOT A PROBLEM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2AIAF2F
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2AIANFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ALCOHL
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ARTOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ASIAFF
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2ASIAFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2AUDTOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2BLACFF
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2BLACFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2BULLY
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2CAFEOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2CLASPR
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TO 3 TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2CLSSOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2CNSNSS
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2COMPOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2COMPYY
      2011  "2011"  
;
   label define S2CONFLC
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2CRIME
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2DISORD
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2DRGFRQ
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2DRUGS
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2DSBLED
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2GANGS
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2GRRETK
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2GYMOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2HAWPFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2HAWPFZ
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2HISPFF
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2HISPFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2HVISIT
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TO 3 TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2IMMATU
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2INVITE
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TO 3 TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2INVOLV
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2KNDRGT
      1  "1: TRUE"  
      2  "2: FALSE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2KNWNME
      1  "1: NEARLY EVERY CHILD"  
      2  "2: 76% OR MORE"  
      3  "3: 51% TO 75%"  
      4  "4: 26% TO 50%"  
      5  "5: 25% OR LESS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2LBRYOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2MULTFF
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2MULTFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2MULTOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2MUSCOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2NOPERM
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2OVRCRD
      1  "1: SERIOUS PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: MINOR PROBLEM"  
      4  "4: NOT A PROBLEM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2PLAYOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2POLICY
      1  "1: TRUE"  
      2  "2: FALSE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2PRNTS
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2PTAMT
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TO 3 TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2PTCONF
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TO 3 TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2SDTEST
      1  "1: TRUE"  
      2  "2: FALSE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2SOCPRO
      1  "1: TRUE"  
      2  "2: FALSE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2SPPRT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2SRVIEP
      1  "1: NOT SERVED IN THIS SCHOOL"  
      2  "2: SPEND MOST OF THE DAY IN SEPARATE CLASSES"  
      3  "3: SPEND MOST OF THE DAY IN REGULAR CLASSROOM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2STABNT
      1  "1: SERIOUS PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: MINOR PROBLEM"  
      4  "4: NOT A PROBLEM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2STTEST
      1  "1: NEVER"  
      2  "2: ONCE A YEAR"  
      3  "3: 2 TO 3 TIMES A YEAR"  
      4  "4: 4 TO 6 TIMES A YEAR"  
      5  "5: 7 OR MORE TIMES A YEAR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2SYREYY
      2011  "2011"  
      2012  "2012"  
;
   label define S2SYRSYY
      2010  "2010"  
;
   label define S2T1PREK
      1  "1: YES"  
      2  "2: NO"  
      3  "3: RESPONDENT REPORTED NOT APPLICABLE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2T3PREK
      1  "1: YES"  
      2  "2: NO"  
      3  "3: RESPONDENT REPORTED NOT APPLICABLE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2TARDY
      1  "1: SERIOUS PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: MINOR PROBLEM"  
      4  "4: NOT A PROBLEM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2THEFT
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2TNSION
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2TRNOVR
      1  "1: SERIOUS PROBLEM"  
      2  "2: MODERATE PROBLEM"  
      3  "3: MINOR PROBLEM"  
      4  "4: NOT A PROBLEM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2TT1TA
      1  "1: TARGETED ASSISTANCE PROGRAM"  
      2  "2: SCHOOLWIDE PROGRAM"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2VANDAL
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2VCANCY
      1  "1: BIG PROBLEM"  
      2  "2: SOMEWHAT OF A PROBLEM"  
      3  "3: NO PROBLEM"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2WEAPON
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2WHITFL
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2WHTF2F
      1  "1: PERCENT"  
      2  "2: NUMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S2WLCOME
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4504NO
      0  "0: RECEIVING ACCOMMODATIONS THROUGH 504 PLAN IS OFFERED IN FIRST GRADE"  
      1  "1: RECEIVING ACCOMMODATIONS THROUGH 504 PLAN NOT OFFERED IN FIRST GRADE"  
;
   label define S4504NOG
      0  "0: RECEIVING ACCOMMODATIONS THROUGH 504 PLAN IS OFFERED IN SOME/ALL GRADE(S)"  
      1  "1: RECEIVING ACCOMMODATIONS THROUGH 504 PLAN NOT OFFERED IN ANY GRADE"  
;
   label define S4CCLSDE
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4CCLSIN
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4CESLIN
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4CFREEL
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4CSALDE
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4CSALIN
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4CUTCLS
      1  "1: HAPPENS DAILY"  
      2  "2: HAPPENS AT LEAST ONCE A WEEK"  
      3  "3: HAPPENS AT LEAST ONCE A MONTH"  
      4  "4: HAPPENS ON OCCASION"  
      5  "5: NEVER HAPPENS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4FACSOK
      1  "1: DO NOT HAVE"  
      2  "2: NEVER ADEQUATE"  
      3  "3: OFTEN NOT ADEQUATE"  
      4  "4: SOMETIMES NOT ADEQUATE"  
      5  "5: ALWAYS ADEQUATE"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4FUNDDC
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4GIFNO
      0  "0: A GIFTED AND TALENTED PROGRAM IS OFFERED IN FIRST GRADE"  
      1  "1: A GIFTED AND TALENTED PROGRAM NOT OFFERED IN FIRST GRADE"  
;
   label define S4GIFNOG
      0  "0: A GIFTED AND TALENTED PROGRAM IS OFFERED IN SOME/ALL GRADE(S)"  
      1  "1: A GIFTED AND TALENTED PROGRAM  NOT OFFERED IN ANY GRADE"  
;
   label define S4IENRLDC
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4IENRLIN
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MKEAYP
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT APPLICABLE-DISTRICT DOES NOT RECEIVE TITLE 1 FUNDING"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MOBINC
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MTHNED
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MTHTGT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MTINO
      0  "0: MATH INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL IS OFFERED IN FIRST GRADE"  
      1  "1: MATH INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL NOT OFFERED IN FIRST GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MTINOG
      0  "0: MATH INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL IS OFFERED IN SOME/ALL GRADE(S)"  
      1  "1: MATH INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL NOT OFFERED IN ANY GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4MTYAYPF
      -1  "-1: NOT APPLICABLE"  
      -3  "-3: NOT APPLICABLE-NO DISTRICT TITLE 1"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4NOCUTO
      0  "0: IS A CUTOFF DATE FOR CHILD TO TURN FIVE TO ENTER KINDERGARTEN"  
      1  "1: NO CUTOFF DATE FOR CHILD TO TURN FIVE TO ENTER KINDERGARTEN"  
;
   label define S4OPADTM
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4OPDVLP
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4OPTDST
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4OTNEEDDK
      0  "0: CHECK BOX LEFT UNCHECKED"  
      1  "1: DON'T KNOW % STUDENTS ATTENDING TO RECEIVE SPECIAL NEEDS PROGRAM OR SERVICES"  
      -1  "-1: NOT APPLICABLE"  
;
   label define S4PRVSCH
      0  "0: NOT A PRIVATE SCHOOL"  
      1  "1: IS A PRIVATE SCHOOL"  
;
   label define S4PTRAYPDK
      0  "0: CHECK BOX LEFT UNCHECKED"  
      1  "1: DON'T KNOW % STUDENTS ATTENDING BECAUSE PREV SCH DID NOT MAKE ADEQUATE YEARLY PROGRESS"  
      -1  "-1: NOT APPLICABLE"  
;
   label define S4PUBCHODK
      0  "0: CHECK BOX LEFT UNCHECKED"  
      1  "1: DON'T KNOW % STUDENTS ATTENDING UNDER PUBLIC SCHL CHOICE (OTHER THAN ASSIGNED SCHOOL DID NOT MAKE AYP)"  
      -1  "-1: NOT APPLICABLE"  
;
   label define S4RDINO
      0  "0: READING INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL IS OFFERED IN FIRST GRADE"  
      1  "1: READING INSTRUCTION FOR STUDENTS PERFORMING BELOW GRADE LEVEL NOT OFFERED IN FIRST GRADE"  
;
   label define S4RDRAYPF
      -1  "-1: NOT APPLICABLE"  
      -3  "-3: NOT APPLICABLE-NO DISTRICT TITLE 1"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4REDNED
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4REDTGT
      1  "1: STRONGLY DISAGREE"  
      2  "2: DISAGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: AGREE"  
      5  "5: STRONGLY AGREE"  
      6  "6: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4RTLMTH
      1  "1: YES, FULLY IMPLEMENTED IN 1ST GRADE"  
      2  "2: YES, PARTIALLY IMPLEMENTED IN 1ST GRADE"  
      3  "3: NO, NOT IMPLEMENTED IN 1ST GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4RTLRED
      1  "1: YES, FULLY IMPLEMENTED IN 1ST GRADE"  
      2  "2: YES, PARTIALLY IMPLEMENTED IN 1ST GRADE"  
      3  "3: NO, NOT IMPLEMENTED IN 1ST GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4RTLRIT
      1  "1: YES, FULLY IMPLEMENTED IN 1ST GRADE"  
      2  "2: YES, PARTIALLY IMPLEMENTED IN 1ST GRADE"  
      3  "3: NO, NOT IMPLEMENTED IN 1ST GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4RTLSOC
      1  "1: YES, FULLY IMPLEMENTED IN 1ST GRADE"  
      2  "2: YES, PARTIALLY IMPLEMENTED IN 1ST GRADE"  
      3  "3: NO, NOT IMPLEMENTED IN 1ST GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4RTLTME
      1  "1: LESS THAN 1 YEAR AGO"  
      2  "2: 1 TO 2 YEARS AGO"  
      3  "3: MORE THAN 2 YEARS AGO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4SCHPMC
      0  "0: NOT PRIVATE, MAGNET OR CHARTER SCHOOL"  
      1  "1: IS PRIVATE, MAGNET OR CHARTER SCHOOL"  
;
   label define S4SCIPCTF
      -1  "-1: NOT APPLICABLE"  
      -3  "-3: GRADE 3 STUDENTS NOT ASSESSED IN SCIENCE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4SOL2NO
      0  "0: SPEAK A LANGUAGE OTHER THAN ENGLISH W/EITHER STUDENTS OR FAMILIES"  
      1  "1: DO NOT SPEAK A LANGUAGE OTHER THAN ENGLISH W/EITHER STUDENTS OR FAMILIES"  
;
   label define S4SPDNO
      0  "0: SPECIAL EDUCATION WITH IEP IS OFFERED IN FIRST GRADE"  
      1  "1: SPECIAL EDUCATION WITH IEP NOT OFFERED IN FIRST GRADE"  
;
   label define S4SPDNOG
      0  "0: SPECIAL EDUCATION WITH IEP IS OFFERED IN SOME/ALL GRADE(S)"  
      1  "1: SPECIAL EDUCATION WITH IEP NOT OFFERED IN ANY GRADE"  
;
   label define S4SYRSYY
      2011  "2011"  
;
   label define S4TCHRED
      1  "1: NOT AT ALL"  
      2  "2: SMALL EXTENT"  
      3  "3: MODERATE EXTENT"  
      4  "4: LARGE EXTENT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S4WHRIEP
      1  "1: CHILDREN W/IEP NOT SERVED IN THIS SCHOOL"  
      2  "2: CHILDREN W/IEP SPEND MOST TIME IN SEPARATE CLASSES"  
      3  "3: CHILDREN W/IEP SPEND MOST TIME IN REGULAR CLASSROOM"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1ADAPTS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1ATTEN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1CLASS
      1  "1: FULL-DAY PROGRAM (AD)"  
      2  "2: MORNING PART-DAY PROGRAM (AM)"  
      3  "3: AFTERNOON PART-DAY PROGRAM (PM)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1CLSSFY
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1CMPSEN
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1CMPSTR
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1COMPYY
      2010  "2010"  
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1COMSC
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1ERSPSC
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1EXPLN
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1FIRKDG
      1  "1: FIRST YEAR IN KINDERGARTEN"  
      2  "2: SECOND YEAR IN KINDERGARTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1FOLLOW
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1FRACTN
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1GLASS
      1  "1: NEVER"  
      2  "2: SELDOM"  
      3  "3: USUALLY"  
      4  "4: ALWAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1GRAPH
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1KEEPS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1LETTER
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1LIFSCI
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1MEASU
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1NOMTGP
      1  "1: I DO NOT USE ACHIEVEMENT GROUPS IN MATHEMATICS"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: FIVE OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1NORDGP
      1  "1: I DO NOT USE ACHIEVEMENT GROUPS IN READING"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: FIVE OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1OBSRV
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1ORDER
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1PERSIS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1PHYSCI
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1PRDCT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1PRINT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1READS
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1RELAT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1SCIPRD
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1SHOWS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1SOLVE
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1SORTS
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1STORY
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1STRAT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1USESTR
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1WORKS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1WRITE
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2ABIL
      1  "1: NEVER"  
      2  "2: SELDOM"  
      3  "3: USUALLY"  
      4  "4: ALWAYS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2ACCOM
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      4  "4: CHILD DOES NOT PARTICIPATE IN TESTING/ASSESSMENT PROG"  
      5  "5: THERE IS NO TESTING OR ASSESSMENT PROG AT THIS GRADE LEVEL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2ADAPTS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2AFTER
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT OFFERED"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2ATTEN
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2BEFORE
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT OFFERED"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2CMPSEN
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2CMPST
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2COMPYY
      2011  "2011"  
      2012  "2012"  
;
   label define T2ENNAT
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2FOLLOW
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2FRACTN
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2GRAPH
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2HRCIN
      1  "1: NONE OF THE TIME"  
      2  "2: LESS THAN HALF OF THE TIME"  
      3  "3: HALF OF THE TIME"  
      4  "4: MORE THAN HALF OF THE TIME"  
      5  "5: ALMOST ALL THE TIME"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2INFMT
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT APPLICABLE/NOT OFFERED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2KEEPS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2LETTER
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2MEASU
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2NOMTGP
      1  "1: I DO NOT USE ACHIEVEMENT GROUPS IN MATHEMATICS"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: FIVE OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2NORD
      1  "1: I DO NOT USE ACHIEVEMENT GROUPS IN READING"  
      2  "2: TWO"  
      3  "3: THREE"  
      4  "4: FOUR"  
      5  "5: FIVE OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2ORDER
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2PARCON
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT APPLICABLE/NOT OFFERED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2PARIN
      1  "1: NOT INVOLVED AT ALL"  
      2  "2: SOMEWHAT INVOLVED"  
      3  "3: VERY INVOLVED"  
      4  "4: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2PERSIS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2PRDCT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2PRINT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2RATSC
      1  "1: FAR BELOW AVERAGE"  
      2  "2: BELOW AVERAGE"  
      3  "3: AVERAGE"  
      4  "4: ABOVE AVERAGE"  
      5  "5: FAR ABOVE AVERAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2READS
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2REGCO
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT APPLICABLE/NOT OFFERED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2RELAT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2RETCL
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT APPLICABLE/NOT OFFERED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2RTLAN
      1  "1: FAR BELOW AVERAGE"  
      2  "2: BELOW AVERAGE"  
      3  "3: AVERAGE"  
      4  "4: ABOVE AVERAGE"  
      5  "5: FAR ABOVE AVERAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2RTMTH
      1  "1: FAR BELOW AVERAGE"  
      2  "2: BELOW AVERAGE"  
      3  "3: AVERAGE"  
      4  "4: ABOVE AVERAGE"  
      5  "5: FAR ABOVE AVERAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2RTSSS
      1  "1: FAR BELOW AVERAGE"  
      2  "2: BELOW AVERAGE"  
      3  "3: AVERAGE"  
      4  "4: ABOVE AVERAGE"  
      5  "5: FAR ABOVE AVERAGE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2SHOWS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2SOLVE
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2SORTS
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2SPINS
      1  "1: NEVER"  
      2  "2: LESS THAN 1 DAY A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2STORY
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2STRAT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2STRPL
      1  "1: A LOT LESS ACTIVE THAN MOST"  
      2  "2: A LITTLE LESS ACTIVE THAN MOST"  
      3  "3: ABOUT THE SAME AS MOST"  
      4  "4: A LITTLE MORE ACTIVE THAN MOST"  
      5  "5: A LOT MORE ACTIVE THAN MOST"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2TRCIN
      1  "1: LESS THAN 1/2 HOUR A DAY"  
      2  "2: 1/2 HOUR TO LESS THAN 1 HOUR A DAY"  
      3  "3: 1 TO LESS THAN 1 1/2 HOURS A DAY"  
      4  "4: 1 1/2 TO LESS THAN 2 HOURS A DAY"  
      5  "5: 2 TO LESS THAN 2 1/2 HOURS A DAY"  
      6  "6: 2 1/2 TO LESS THAN 3 HOURS A DAY"  
      7  "7: 3 HOURS OR MORE A DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2TTABS
      1  "1: NO ABSENCES"  
      2  "2: 1 TO 4 ABSENCES"  
      3  "3: 5 TO 7 ABSENCES"  
      4  "4: 8 TO 10 ABSENCES"  
      5  "5: 11 TO 19 ABSENCES"  
      6  "6: 20 OR MORE ABSENCES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2UNPLA
      1  "1: A LOT LESS ACTIVE THAN MOST"  
      2  "2: A LITTLE LESS ACTIVE THAN MOST"  
      3  "3: ABOUT THE SAME AS MOST"  
      4  "4: A LITTLE MORE ACTIVE THAN MOST"  
      5  "5: A LOT MORE ACTIVE THAN MOST"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2USEST
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2VOLUN
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NOT APPLICABLE/NOT OFFERED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2WORKS
      1  "1: NEVER"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      5  "5: NO OPPORTUNITY TO OBSERVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T2WRITE
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3COMASS
      1  "1: YES, COMPLETED ALL THE ASSIGNED WORK"  
      2  "2: YES, COMPLETED SOME, BUT NOT ALL, OF THE ASSIGNED WORK"  
      3  "3: NO"  
      4  "4: DON'T KNOW"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3FNOMTGP
      1  "1: I DO NOT USE ACHIEVEMENT GROUPS FOR MATHEMATICS"  
      2  "2: I USE MATHEMATICS ACHIEVEMENT GROUPS BUT HAVE NOT CREATED THEM YET FOR THIS CLASS"  
      3  "3: TWO"  
      4  "4: THREE"  
      5  "5: FOUR"  
      6  "6: FIVE OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3FNORDGP
      1  "1: I DO NOT USE ACHIEVEMENT GROUPS FOR READING"  
      2  "2: I USE READING ACHIEVEMENT GROUPS BUT HAVE NOT CREATED THEM YET FOR THIS CLASS"  
      3  "3: TWO"  
      4  "4: THREE"  
      5  "5: FOUR"  
      6  "6: FIVE OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3GRADE
      1  "1: KINDERGARTEN (FULL-DAY PROGRAM)"  
      2  "2: KINDERGARTEN (PART-DAY PROGRAM)"  
      3  "3: FIRST GRADE"  
      4  "4: SECOND GRADE"  
      5  "5: THIS IS AN UNGRADED CLASSROOM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3GVSMAS
      1  "1: YES"  
      2  "2: NO"  
      3  "3: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3RLVINF
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T3WRTSKIL
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4CLSSF
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4CMPSES
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4COINS
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4ESTQNT
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4EXPECT
      1  "1: RECEIVE LESS THAN A HIGH SCHOOL DIPLOMA"  
      2  "2: GRADUATE FROM HIGH SCHOOL"  
      3  "3: FINISH A FOUR- OR FIVE-YEAR COLLEGE DEGREE"  
      4  "4: EARN AN ADVANCED DEGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4GRADE
      1  "1: KINDERGARTEN"  
      2  "2: FIRST GRADE"  
      3  "3: SECOND GRADE"  
      4  "4: THIRD GRADE"  
      5  "5: THIS IS AN UNGRADED CLASSROOM"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4IRGVWL
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4KEXPECT
      1  "1: RECEIVE LESS THAN A HIGH SCHOOL DIPLOMA"  
      2  "2: GRADUATE FROM HIGH SCHOOL"  
      3  "3: FINISH A FOUR- OR FIVE-YEAR COLLEGE DEGREE"  
      4  "4: EARN AN ADVANCED DEGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4LNGINT
      1  "1: ENGLISH AS A SECOND LANGUAGE (ESL)"  
      2  "2: BILINGUAL EDUCATION"  
      3  "3: DUAL-LANGUAGE EDUCATION"  
      4  "4: ENGLISH-ONLY INSTRUCTION"  
      5  "5: SOME OTHER TYPE OF INSTRUCTION"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4PLCVL
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4RD1FLN
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4RD1IND
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4REGVWL
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4RLVINF
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4WHNUM
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T4WRTSKIL
      1  "1: NOT YET"  
      2  "2: BEGINNING"  
      3  "3: IN PROGRESS"  
      4  "4: INTERMEDIATE"  
      5  "5: PROFICIENT"  
      6  "6: NOT APPLICABLE OR SKILL NOT YET TAUGHT"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define TF59F
      1  "1: TRUE"  
      2  "2: FALSE"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2ANGRY
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2COMPYY
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2DOBMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2ENJOY
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2MISBEH
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2MKDIFF
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2NOENRG
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2RELAXD
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2RULES
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2TEACH
      1  "1: STRONGLY AGREE"  
      2  "2: AGREE"  
      3  "3: NEITHER AGREE NOR DISAGREE"  
      4  "4: DISAGREE"  
      5  "5: STRONGLY DISAGREE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define V2WCHCRD
      1  "1: CHILD DEVELOPMENT ASSOCIATE (CDA)"  
      2  "2: STATE CREDENTIAL"  
      3  "3: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X_CHSEX
      1  "1: MALE"  
      2  "2: FEMALE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X_DOBMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X12CHGSH
      1  "1: CHILD DID NOT CHANGE SCHOOLS"  
      2  "2: CHILD TRANSFERRED FROM PUBLIC TO PUBLIC"  
      3  "3: CHILD TRANSFERRED FROM PRIVATE TO PRIVATE"  
      4  "4: CHILD TRANSFERRED FROM PUBLIC TO PRIVATE"  
      5  "5: CHILD TRANSFERRED FROM PRIVATE TO PUBLIC"  
      6  "6: CHILD TRANSFERRED, OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X12CHGTH
      0  "0: NO CHANGE"  
      1  "1: CHANGED TEACHERS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X12LNGST
      1  "1: NON-ENGLISH LANGUAGE"  
      2  "2: ENGLISH LANGUAGE"  
      3  "3: CAN'T CHOOSE PRIMARY OR 2 LANG EQUALLY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X12PRMPK
      0  "0: NO NONPARENTAL CARE"  
      1  "1: RELATIVE CARE IN CHILD'S HOME"  
      2  "2: RELATIVE CARE IN ANOTHER HOME"  
      3  "3: RELATIVE CARE, LOCATION VARIES/NOT ASKED"  
      4  "4: NONRELATIVE CARE IN CHILD'S HOME"  
      5  "5: NONRELATIVE CARE IN ANOTHER HOME"  
      6  "6: NONRELATIVE CARE, LOCATION VARIES/NOT ASKED"  
      7  "7: CENTER-BASED PROGRAM"  
      8  "8: 2 OR MORE TYPES OF CARE WITH EQUAL HOURS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X12RACTH
      1  "1: WHITE, NON-HISPANIC"  
      2  "2: BLACK/AFRICAN AMERICAN, NON-HISPANIC"  
      3  "3: HISPANIC, RACE SPECIFIED"  
      4  "4: HISPANIC, NO RACE SPECIFIED"  
      5  "5: ASIAN, NON-HISPANIC"  
      6  "6: NATIVE HAWAIIAN/PACIFIC ISLANDER, NON-HISPANIC"  
      7  "7: AMERICAN INDIAN/ALASKA NATIVE, NON-HISPANIC"  
      8  "8: TWO OR MORE RACES, NON-HISPANIC"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X12RACTP
      1  "1: WHITE, NON-HISPANIC"  
      2  "2: BLACK/AFRICAN AMERICAN, NON-HISPANIC"  
      3  "3: HISPANIC, RACE SPECIFIED"  
      4  "4: HISPANIC, NO RACE SPECIFIED"  
      5  "5: ASIAN, NON-HISPANIC"  
      6  "6: NATIVE HAWAIIAN/PACIFIC ISLANDER, NON-HISPANIC"  
      7  "7: AMERICAN INDIAN/ALASKA NATIVE, NON-HISPANIC"  
      8  "8: TWO OR MORE RACES, NON-HISPANIC"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1CLASS
      10  "10: CHILD FULL-DAY CLASS, MISSING TEACHER DATA"  
      11  "11: CHILD FULL-DAY CLASS, FULL-DAY TEACHER DATA"  
      12  "12: CHILD FULL-DAY CLASS, MORNING TEACHER DATA"  
      13  "13: CHILD FULL-DAY CLASS, AFTERNOON TEACHER DATA"  
      19  "19: CHILD FULL-DAY CLASS, TEACHER DATA IN MULTIPLE COLUMNS"  
      20  "20: CHILD MORNING CLASS, MISSING TEACHER DATA"  
      21  "21: CHILD MORNING CLASS, FULL-DAY TEACHER DATA"  
      22  "22: CHILD MORNING CLASS, MORNING TEACHER DATA"  
      23  "23: CHILD MORNING CLASS, AFTERNOON TEACHER DATA"  
      29  "29: CHILD MORNING CLASS, TEACHER DATA IN MULTIPLE COLUMNS"  
      30  "30: CHILD AFTERNOON CLASS, MISSING TEACHER DATA"  
      31  "31: CHILD AFTERNOON CLASS, FULL-DAY TEACHER DATA"  
      32  "32: CHILD AFTERNOON CLASS, MORNING TEACHER DATA"  
      33  "33: CHILD AFTERNOON CLASS, AFTERNOON TEACHER DATA"  
      39  "39: CHILD AFTERNOON CLASS, TEACHER DATA IN MULTIPLE COLUMNS"  
;
   label define X1EDIT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1ELLSCR
      0  "0: ENGLISH-SPEAKER, ROUTED THROUGH ENGLISH ASSESSMENT BATTERY"  
      1  "1: SPANISH-SPEAKER, ROUTED THROUGH SPANISH ASSESSMENT BATTERY"  
      2  "2: OTHER LANGUAGE SPEAKER (NOT SPANISH/ENGLISH), DID NOT RECEIVE FULL COGNITIVE BATTERY OR EXECUTIVE FUNCTION ASSESSMENTS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1HPAR1F
      1  "1: BIOLOGICAL MOTHER"  
      2  "2: BIOLOGICAL FATHER"  
      3  "3: ADOPTIVE MOTHER"  
      4  "4: ADOPTIVE FATHER"  
      5  "5: STEP-MOTHER"  
      6  "6: STEP-FATHER"  
      7  "7: FOSTER MOTHER"  
      8  "8: FOSTER FATHER"  
      9  "9: OTHER FEMALE PARENT OR GUARDIAN"  
      10  "10: OTHER MALE PARENT OR GUARDIAN"  
      11  "11: FEMALE PARTNER OF CHILD'S PARENT"  
      12  "12: MALE PARTNER OF CHILD'S PARENT"  
      13  "13: FEMALE PARENT FIGURE UNKNOWN TYPE"  
      14  "14: MALE PARENT FIGURE UNKNOWN TYPE"  
      15  "15: NO RESIDENT PARENT 1"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1HPAR2F
      1  "1: BIOLOGICAL MOTHER"  
      2  "2: BIOLOGICAL FATHER"  
      3  "3: ADOPTIVE MOTHER"  
      4  "4: ADOPTIVE FATHER"  
      5  "5: STEP-MOTHER"  
      6  "6: STEP-FATHER"  
      7  "7: FOSTER MOTHER"  
      8  "8: FOSTER FATHER"  
      9  "9: OTHER FEMALE PARENT OR GUARDIAN"  
      10  "10: OTHER MALE PARENT OR GUARDIAN"  
      11  "11: FEMALE PARTNER OF CHILD'S PARENT"  
      12  "12: MALE PARTNER OF CHILD'S PARENT"  
      13  "13: FEMALE PARENT FIGURE UNKNOWN TYPE"  
      14  "14: MALE PARENT FIGURE UNKNOWN TYPE"  
      15  "15: NO RESIDENT PARENT 2"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1HPARNT
      1  "1: TWO BIOLOGICAL/ADOPTIVE PARENTS"  
      2  "2: ONE BIOLOGICAL/ADOPTIVE PARENT AND ONE OTHER PARENT/PARTNER"  
      3  "3: ONE BIOLOGICAL/ADOPTIVE PARENT ONLY"  
      4  "4: OTHER GUARDIANS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1KSCTYP
      1  "1: CATHOLIC"  
      2  "2: OTHER RELIGIOUS"  
      3  "3: OTHER PRIVATE"  
      4  "4: PUBLIC"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PARDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PR1EMP
      1  "1: 35 OR MORE HOURS PER WEEK"  
      2  "2: LESS THAN 35 HOURS PER WEEK"  
      3  "3: LOOKING FOR WORK"  
      4  "4: NOT IN THE LABOR FORCE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PR1OCC
      1  "1: EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "2: ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "3: NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "4: SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "5: UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "6: TEACHER, EXCEPT POSTSECONDARY"  
      7  "7: PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "8: REGISTERED NURSES, PHARMACISTS"  
      9  "9: WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "10: HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "11: TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "12: MARKETING & SALES OCCUPATION"  
      13  "13: ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "14: SERVICE OCCUPATIONS"  
      15  "15: AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "16: MECHANICS & REPAIRERS"  
      17  "17: CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "18: PRECISION PRODUCTION OCCUPATION"  
      19  "19: PRODUCTION WORKING OCCUPATION"  
      20  "20: TRANSPORTATION, MATERIAL MOVING"  
      21  "21: HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "22: UNEMPLOYED/RETIRED/DISABLED/UNCLASSIFIED"  
      -1  "-1: NO OCCUPATION"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PR1RAC
      1  "1: WHITE, NON-HISPANIC"  
      2  "2: BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "3: HISPANIC, RACE SPECIFIED"  
      4  "4: HISPANIC, NO RACE SPECIFIED"  
      5  "5: ASIAN, NON-HISPANIC"  
      6  "6: NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER, NON-HISPANIC"  
      7  "7: AMERICAN INDIAN OR ALASKA NATIVE, NON-HISPANIC"  
      8  "8: MORE THAN 1 RACE, NON-HISPANIC"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PR2EMP
      1  "1: 35 OR MORE HOURS PER WEEK"  
      2  "2: LESS THAN 35 HOURS PER WEEK"  
      3  "3: LOOKING FOR WORK"  
      4  "4: NOT IN THE LABOR FORCE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PR2OCC
      1  "1: EXECUTIVE, ADMIN, MANAGERIAL OCCUPATION"  
      2  "2: ENGINEERS, SURVEYORS, & ARCHITECTS"  
      3  "3: NATURAL SCIENTISTS & MATHEMATICIANS"  
      4  "4: SOCIAL SCIENTIST/WORKERS, LAWYERS"  
      5  "5: UNIVERSITY TEACHERS, POSTSECONDARY COUNSELORS, LIBRARIANS"  
      6  "6: TEACHER, EXCEPT POSTSECONDARY"  
      7  "7: PHYSICIANS, DENTISTS, VETERINARIANS"  
      8  "8: REGISTERED NURSES, PHARMACISTS"  
      9  "9: WRITERS, ARTISTS, ENTERTAINERS, ATHLETES"  
      10  "10: HEALTH TECHNOLOGISTS & TECHNICIANS"  
      11  "11: TECHNOLOGISTS, EXCEPT HEALTH"  
      12  "12: MARKETING & SALES OCCUPATION"  
      13  "13: ADMINISTRATIVE SUPPORT, INCLUDING CLERK"  
      14  "14: SERVICE OCCUPATIONS"  
      15  "15: AGRICULTURE, FORESTRY, FISHING OCCUPATIONS"  
      16  "16: MECHANICS & REPAIRERS"  
      17  "17: CONSTRUCTION & EXTRACTIVE OCCUPATIONS"  
      18  "18: PRECISION PRODUCTION OCCUPATION"  
      19  "19: PRODUCTION WORKING OCCUPATION"  
      20  "20: TRANSPORTATION, MATERIAL MOVING"  
      21  "21: HANDLER, EQUIP, CLEANER, HELPERS, LABOR"  
      22  "22: UNEMPLOYED/RETIRED/DISABLED/UNCLASSIFIED"  
      -1  "-1: NO OCCUPATION OR NO PARENT 2"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PR2RAC
      1  "1: WHITE, NON-HISPANIC"  
      2  "2: BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "3: HISPANIC, RACE SPECIFIED"  
      4  "4: HISPANIC, NO RACE SPECIFIED"  
      5  "5: ASIAN, NON-HISPANIC"  
      6  "6: NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER, NON-HISPANIC"  
      7  "7: AMERICAN INDIAN OR ALASKA NATIVE, NON-HISPANIC"  
      8  "8: MORE THAN 1 RACE, NON-HISPANIC"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PRIMNW
      0  "0: NO NONPARENTAL CARE"  
      1  "1: RELATIVE CARE IN CHILD'S HOME"  
      2  "2: RELATIVE CARE IN ANOTHER HOME"  
      3  "3: RELATIVE CARE, LOCATION VARIES"  
      4  "4: NONRELATIVE CARE IN CHILD'S HOME"  
      5  "5: NONRELATIVE CARE IN ANOTHER HOME"  
      6  "6: NONRELATIVE CARE, LOCATION VARIES"  
      7  "7: CENTER-BASED PROGRAM"  
      8  "8: 2 OR MORE TYPES OF CARE WITH EQUAL HOURS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1PUBPRI
      1  "1: PUBLIC"  
      2  "2: PRIVATE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1RDGFLG
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1RESREL
      1  "1: BIOLOGICAL MOTHER"  
      2  "2: OTHER MOTHER TYPE"  
      3  "3: BIOLOGICAL FATHER"  
      4  "4: OTHER FATHER TYPE"  
      5  "5: NON-PARENT RELATIVE"  
      6  "6: NON-RELATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1TQCDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1TQTDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1TWIN
      0  "0: NO TWIN IN HOUSEHOLD"  
      1  "1: TWIN IN HOUSEHOLD"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1WECEP
      1  "1: RELATIVE"  
      2  "2: NONRELATIVE"  
      3  "3: CENTER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2CLASS
      10  "10: CHILD FULL-DAY CLASS, MISSING TEACHER DATA"  
      11  "11: CHILD FULL-DAY CLASS, FULL-DAY TEACHER DATA"  
      12  "12: CHILD FULL-DAY CLASS, MORNING TEACHER DATA"  
      13  "13: CHILD FULL-DAY CLASS, AFTERNOON TEACHER DATA"  
      19  "19: CHILD FULL-DAY CLASS, TEACHER DATA IN MULTIPLE COLUMNS"  
      20  "20: CHILD MORNING CLASS, MISSING TEACHER DATA"  
      21  "21: CHILD MORNING CLASS, FULL-DAY TEACHER DATA"  
      22  "22: CHILD MORNING CLASS, MORNING TEACHER DATA"  
      23  "23: CHILD MORNING CLASS, AFTERNOON TEACHER DATA"  
      29  "29: CHILD MORNING CLASS, TEACHER DATA IN MULTIPLE COLUMNS"  
      30  "30: CHILD AFTERNOON CLASS, MISSING TEACHER DATA"  
      31  "31: CHILD AFTERNOON CLASS, FULL-DAY TEACHER DATA"  
      32  "32: CHILD AFTERNOON CLASS, MORNING TEACHER DATA"  
      33  "33: CHILD AFTERNOON CLASS, AFTERNOON TEACHER DATA"  
      39  "39: CHILD AFTERNOON CLASS, TEACHER DATA IN MULTIPLE COLUMNS"  
;
   label define X2EDIT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2ELLSCR
      0  "0: ENGLISH-SPEAKER, ROUTED THROUGH ENGLISH ASSESSMENT BATTERY"  
      1  "1: SPANISH-SPEAKER, ROUTED THROUGH SPANISH ASSESSMENT BATTERY"  
      2  "2: OTHER LANGUAGE SPEAKER (NOT SPANISH/ENGLISH), DID NOT RECEIVE FULL COGNITIVE BATTERY OR EXECUTIVE FUNCTION ASSESSMENTS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2FSCHST
      1  "1: FOOD SECURE"  
      2  "2: LOW FOOD SECURITY"  
      3  "3: VERY LOW FOOD SECURITY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2FSDS2F
      1  "1: FOOD SECURE"  
      2  "2: LOW FOOD SECURITY"  
      3  "3: VERY LOW FOOD SECURITY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2FSTT2F
      1  "1: FOOD SECURE"  
      2  "2: LOW FOOD SECURITY"  
      3  "3: VERY LOW FOOD SECURITY"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2HPARNT
      1  "1: TWO BIOLOGICAL/ADOPTIVE PARENTS"  
      2  "2: ONE BIOLOGICAL/ADOPTIVE PARENT AND ONE OTHER PARENT/PARTNER"  
      3  "3: ONE BIOLOGICAL/ADOPTIVE PARENT ONLY"  
      4  "4: OTHER GUARDIAN(S)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2INCATI
      1  "1: $5,000 OR LESS"  
      2  "2: $5,001 TO $10,000"  
      3  "3: $10,001 TO $15,000"  
      4  "4: $15,001 TO $20,000"  
      5  "5: $20,001 TO $25,000"  
      6  "6: $25,001 TO $30,000"  
      7  "7: $30,001 TO $35,000"  
      8  "8: $35,001 TO $40,000"  
      9  "9: $40,001 TO $45,000"  
      10  "10: $45,001 TO $50,000"  
      11  "11: $50,001 TO $55,000"  
      12  "12: $55,001 TO $60,000"  
      13  "13: $60,001 TO $65,000"  
      14  "14: $65,001 TO $70,000"  
      15  "15: $70,001 TO $75,000"  
      16  "16: $75,001 TO $100,000"  
      17  "17: $100,001 TO $200,000"  
      18  "18: $200,001 OR MORE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2INSAQ
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2KENRLS
      1  "1: 0-149 STUDENTS"  
      2  "2: 150-299 STUDENTS"  
      3  "3: 300-499 STUDENTS"  
      4  "4: 500-749 STUDENTS"  
      5  "5: 750 AND ABOVE STUDENTS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2KSCTYP
      1  "1: CATHOLIC"  
      2  "2: OTHER RELIGIOUS"  
      3  "3: OTHER PRIVATE"  
      4  "4: PUBLIC"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2PARDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2POVTY
      1  "1: BELOW POVERTY THRESHOLD"  
      2  "2: AT OR ABOVE POVERTY THRESHOLD, BELOW 200 PERCENT OF POVERTY THRESHOLD"  
      3  "3: AT OR ABOVE 200 PERCENT OF POVERTY THRESHOLD"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2PR1RAC
      1  "1: WHITE, NON-HISPANIC"  
      2  "2: BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "3: HISPANIC, RACE SPECIFIED"  
      4  "4: HISPANIC, NO RACE SPECIFIED"  
      5  "5: ASIAN, NON-HISPANIC"  
      6  "6: NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER, NON-HISPANIC"  
      7  "7: AMERICAN INDIAN OR ALASKA NATIVE, NON-HISPANIC"  
      8  "8: MORE THAN 1 RACE, NON-HISPANIC"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2PR2RAC
      1  "1: WHITE, NON-HISPANIC"  
      2  "2: BLACK OR AFRICAN AMERICAN, NON-HISPANIC"  
      3  "3: HISPANIC, RACE SPECIFIED"  
      4  "4: HISPANIC, NO RACE SPECIFIED"  
      5  "5: ASIAN, NON-HISPANIC"  
      6  "6: NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER, NON-HISPANIC"  
      7  "7: AMERICAN INDIAN OR ALASKA NATIVE, NON-HISPANIC"  
      8  "8: MORE THAN 1 RACE, NON-HISPANIC"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2PUBPRI
      1  "1: PUBLIC"  
      2  "2: PRIVATE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2RESREL
      1  "1: BIOLOGICAL MOTHER"  
      2  "2: OTHER MOTHER TYPE"  
      3  "3: BIOLOGICAL FATHER"  
      4  "4: OTHER FATHER TYPE"  
      5  "5: NON-PARENT RELATIVE"  
      6  "6: NON-RELATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2SCHBYY
      2010  "2010"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2SCHEYY
      2011  "2011"  
      2012  "2012"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2SETQA
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2SETQC
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2SPECS
      1  "1: REQUESTED SPECIAL ED QUESTIONNAIRES FROM TEACHER"  
      2  "2: DID NOT REQUEST SPECIAL ED QUESTIONNAIRES FROM TEACHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2SPQDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2TQCDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2TQSDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X2TQTDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X34CHGTCH
      0  "0: NO CHANGE"  
      1  "1: CHANGED TEACHERS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X3DEST
      0  "0: FALSE"  
      1  "1: TRUE"  
;
   label define X3FALLSMP
      1  "1: IN FALL SUBSAMPLE, PARTICIPATED"  
      2  "2: IN FALL SUBSAMPLE, DID NOT PARTICIPATE"  
      3  "3: NOT IN FALL SUBSAMPLE"  
;
   label define X3GRDLVL
      1  "1: KINDERGARTEN"  
      2  "2: FIRST GRADE"  
      3  "3: SECOND GRADE"  
      4  "4: UNGRADED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X3SUMVDF
      -1  "-1: HOMESCHOOLED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4CLASS2F
      10  "10: CHILD FULL-DAY KINDERGARTEN, MISSING TEACHER DATA"  
      11  "11: CHILD FULL-DAY KINDERGARTEN, FULL-DAY TEACHER DATA"  
      12  "12: CHILD FULL-DAY KINDERGARTEN, MORNING TEACHER DATA"  
      13  "13: CHILD FULL-DAY KINDERGARTEN, AFTERNOON TEACHER DATA"  
      19  "19: CHILD FULL-DAY KINDERGARTEN, TEACHER DATA IN MULTIPLE COLUMNS"  
      20  "20: CHILD PART-DAY KINDERGARTEN, MISSING TEACHER DATA"  
      21  "21: CHILD PART-DAY KINDERGARTEN, FULL-DAY TEACHER DATA"  
      22  "22: CHILD PART-DAY KINDERGARTEN, MORNING TEACHER DATA"  
      23  "23: CHILD PART-DAY KINDERGARTEN, AFTERNOON TEACHER DATA"  
      29  "29: CHILD PART-DAY KINDERGARTEN, TEACHER DATA IN MULTIPLE COLUMNS"  
      30  "30: CHILD UNKNOWN KINDERGARTEN, MISSING TEACHER DATA"  
      31  "31: CHILD UNKNOWN KINDERGARTEN, FULL-DAY TEACHER DATA"  
      32  "32: CHILD UNKNOWN KINDERGARTEN, MORNING TEACHER DATA"  
      33  "33: CHILD UNKNOWN KINDERGARTEN, AFTERNOON TEACHER DATA"  
      39  "39: CHILD UNKNOWN KINDERGARTEN, TEACHER DATA IN MULTIPLE COLUMNS"  
      90  "90: CHILD NOT IDENTIFIED AS IN KINDERGARTEN, MISSING TEACHER DATA"  
      91  "91: CHILD NOT IDENTIFIED AS IN KINDERGARTEN, FULL-DAY TEACHER DATA"  
      92  "92: CHILD NOT IDENTIFIED AS IN KINDERGARTEN, MORNING TEACHER DATA"  
      93  "93: CHILD NOT IDENTIFIED AS IN KINDERGARTEN, AFTERNOON TEACHER DATA"  
      99  "99: CHILD NOT IDENTIFIED AS IN KINDERGARTEN, TEACHER DATA IN MULTIPLE COLUMNS"  
;
   label define X4DEST
      0  "0: FALSE"  
      1  "1: TRUE"  
;
   label define X4FSCHRAF
      0  "0: NO AFFIRMATIVE RESPONSES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4GRDLVL
      1  "1: KINDERGARTEN"  
      2  "2: FIRST GRADE"  
      3  "3: SECOND GRADE"  
      4  "4: THIRD GRADE"  
      5  "5: UNGRADED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4PARDAT
      0  "0: FALSE"  
      1  "1: TRUE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4POVTY_I
      1  "1: BELOW POVERTY THRESHOLD"  
      2  "2: AT OR ABOVE POVERTY THRESHOLD, BELOW 200 PERCENT OF POVERTY THRESHOLD"  
      3  "3: AT OR ABOVE 200 PERCENT OF POVERTY THRESHOLD"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4PUBPRI
      1  "1: PUBLIC"  
      2  "2: PRIVATE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4RESREL2F
      1  "1: BIOLOGICAL MOTHER"  
      2  "2: OTHER MOTHER TYPE"  
      3  "3: MOTHER OF UNKNOWN TYPE"  
      4  "4: BIOLOGICAL FATHER"  
      5  "5: OTHER FATHER TYPE"  
      6  "6: FATHER OF UNKNOWN TYPE"  
      7  "7: NON-PARENT RELATIVE"  
      8  "8: NON-RELATIVE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X4SCHBYY
      2011  "2011"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2COMPYY
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2PFEEUN
      1  "1: A DAY"  
      2  "2: A WEEK"  
      3  "3: A MONTH"  
      4  "4: A YEAR"  
      5  "5: OTHER"  
      6  "6: NO FEE"  
      7  "7: AN HOUR (SPECIFIED)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2PRGACC
      1  "1: YES"  
      2  "2: NO"  
      3  "3: NO - EXEMPT"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2PRGPUB
      1  "1: PUBLIC ORGANIZATION"  
      2  "2: PRIVATE ORGANIZATION"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2PURPOS
      1  "1: PROVIDE ADULT SUPERVISION AND SAFE ENVIRONMENT"  
      2  "2: PROVIDE RECREATIONAL ACTIVITIES"  
      3  "3: IMPROVE ACADEMIC SKILLS OF ALL CHILDREN"  
      4  "4: PROVIDE CULTURAL AND/OR ENRICHMENT ACTIVITIES"  
      5  "5: PROVIDE REMEDIAL HELP"  
      6  "6: PROVIDE FLEXIBLE RELAXED HOME-LIKE ENVIRONMENT"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2WRAPCR
      1  "1: PUBLIC PROGRAM OPEN ONLY BEFORE- AND/OR AFTER-SCHOOL"  
      2  "2: PUBLIC PROGRAM OPEN BEFORE- AND/OR AFTER-SCHOOL AND OTHER"  
      3  "3: PRIVATE PROGRAM OPEN ONLY BEFORE- AND/OR AFTER-SCHOOL"  
      4  "4: PRIVATE PROGRAM OPEN BEFORE- AND/OR AFTER-SCHOOL AND OTHER"  
      5  "5: SOME OTHER TYPE OF PROGRAM"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Y2YNGHRS
      1  "1: YES"  
      2  "2: NO"  
      3  "3: PROGRAM OR CHILD CARE SETTING DOES NOT HAVE OLDER CHILDREN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define YN159F
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define YN19F
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define YN1RDK9F
      1  "1: YES"  
      2  "2: NO"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define YN59F
      1  "1: YES"  
      2  "2: NO"  
      -5  "-5: ABBREVIATED SURVEY (ITEM NOT FIELDED)"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define YN9F
      1  "1: YES"  
      2  "2: NO"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define YNRDK9F
      1  "1: YES"  
      2  "2: NO"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2ACTIVE
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2ADLACT
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2AGUNIT
      1  "1: MONTHS"  
      2  "2: YEARS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2ARTCFT
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2BUILD
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2CMPGAM
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2COMPMM
      1  "1: JANUARY"  
      2  "2: FEBRUARY"  
      3  "3: MARCH"  
      4  "4: APRIL"  
      5  "5: MAY"  
      6  "6: JUNE"  
      7  "7: JULY"  
      8  "8: AUGUST"  
      9  "9: SEPTEMBER"  
      10  "10: OCTOBER"  
      11  "11: NOVEMBER"  
      12  "12: DECEMBER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2COMPYY
      2011  "2011"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2COOKNG
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2DAYSCM
      1  "1: NEVER"  
      2  "2: ONE"  
      3  "3: TWO"  
      4  "4: THREE"  
      5  "5: FOUR"  
      6  "6: FIVE"  
      7  "7: SIX"  
      8  "8: SEVEN"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2DRAMA
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2EXERCS
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2GAMES
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2HOMWRK
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2MUSIC
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2NOTV
      1  "1: BOX CHECKED"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2NOWTCH
      1  "1: BOX CHECKED"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2OUTDPL
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2READNG
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2SCIENC
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2SKILLS
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2SOCIAL
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2STORY
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2TEAMSP
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2TRIPS
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2TUTOR
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      6  "6: AS NEEDED"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2WRITNG
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2WTCHTV
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define Z2WTCHVD
      1  "1: EVERY DAY"  
      2  "2: AT LEAST ONCE A WEEK"  
      3  "3: AT LEAST ONCE A MONTH"  
      4  "4: A FEW TIMES A YEAR"  
      5  "5: NEVER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A6DIVRD
      1  "1: NEVER"  
      2  "2: LESS THAN ONCE A WEEK"  
      3  "3: 1 DAY A WEEK"  
      4  "4: 2 DAYS A WEEK"  
      5  "5: 3 DAYS A WEEK"  
      6  "6: 4 DAYS A WEEK"  
      7  "7: 5 DAYS A WEEK"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define A6MINRD
      0  "0: 0 MINUTES/DAY"  
      1  "1: 1-15 MINUTES/DAY"  
      2  "2: 16-30 MINUTES/DAY"  
      3  "3: 31-60 MINUTES/DAY"  
      4  "4: MORE THAN 60 MINUTES/DAY"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C5DCCSCM
      1  "1: ONLY THE RIGHT HAND"  
      2  "2: ONLY THE LEFT HAND"  
      3  "3: BOTH HANDS"  
      4  "4: CHILD DID NOT COMPLETE THE DCCS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define C5GAMEF
      1  "1: SHAPE"  
      2  "2: COLOR"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define ELLPRG
      1  "1: PROGRAMS THAT FOCUS ON DEVELOPING LITERACY IN TWO LANGUAGES"  
      2  "2: PROGRAMS THAT FOCUS ON DEVELOPING LITERACY SOLELY IN ENGLISH"  
      3  "3: OTHER ELL PROGRAM"  
      4  "4: NO SPECIALIZED LANGUAGE PROGRAM PROVIDED TO 2ND GRADE ENGLISH LANGUAGE LEARNERS"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P6IMPFLG1F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED USING VALUE FROM FIRST GRADE"  
      2  "2: IMPUTED USING VALUE FROM BASE YEAR (KG)"  
      3  "3: IMPUTED USING HOT-DECK METHOD"  
;
   label define P6IMPFLG2F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED"  
;
   label define P6LISTNCH
      1  "1: NEVER TRUE"  
      2  "2: SOMETIMES TRUE"  
      3  "3: OFTEN TRUE"  
      4  "4: VERY OFTEN TRUE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P6MTHRD
      1  "1: NEVER"  
      2  "2: ONCE OR TWICE A WEEK"  
      3  "3: 3 TO 6 TIMES A WEEK"  
      4  "4: EVERY DAY"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define P6OFTTEA
      1  "1: RARELY"  
      2  "2: SOMETIMES"  
      3  "3: OFTEN"  
      4  "4: VERY OFTEN"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define S6RTLMTH
      1  "1: YES, FULLY IMPLEMENTED IN 2ND GRADE"  
      2  "2: YES, PARTIALLY IMPLEMENTED IN 2ND GRADE"  
      3  "3: NO, NOT IMPLEMENTED IN 2ND GRADE"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T1BEZDAC
      1  "1: EXTREMELY UNTRUE"  
      2  "2: QUITE UNTRUE"  
      3  "3: SLIGHTLY UNTRUE"  
      4  "4: NEITHER TRUE NOR UNTRUE"  
      5  "5: SLIGHTLY TRUE"  
      6  "6: QUITE TRUE"  
      7  "7: EXTREMELY TRUE"  
      8  "8: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T6BEZDSL
      1  "1: ALMOST ALWAYS UNTRUE"  
      2  "2: USUALLY UNTRUE"  
      3  "3: SOMETIMES TRUE, SOMETIMES UNTRUE"  
      4  "4: USUALLY TRUE"  
      5  "5: ALMOST ALWAYS TRUE"  
      6  "6: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T6OSTEAS
      1  "1: NEVER"  
      2  "2: RARELY"  
      3  "3: SOMETIMES"  
      4  "4: OFTEN"  
      5  "5: VERY OFTEN"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define T6RTREAD
      1  "1: BELOW GRADE LEVEL"  
      2  "2: ABOUT ON GRADE LEVEL"  
      3  "3: ABOVE GRADE LEVEL"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X1ASMTDD
      1  "1: DAY OF MONTH 1-7"  
      2  "2: DAY OF MONTH 8-15"  
      3  "3: DAY OF MONTH 16-22"  
      4  "4: DAY OF MONTH 23-31"  
;
   label define X5ASMTYY
      2012  "2012"  
;
   label define X5DCCSFLG
      0  "0: NOT ADMINISTERED"  
      1  "1: DCCS COMPUTED (OVERALL) SCORE PRESENT"  
      2  "2: FAILED SHAPE GAME PRACTICE"  
      3  "3: FAILED COLOR GAME PRACTICE"  
      4  "4: BREAKOFF BEFORE PASSING PRACTICE TRIALS"  
      5  "5: BREAKOFF AFTER PASSING PRACTICE TRIALS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X5SUMVDF
      -1  "-1: HOMESCHOOLED"  
      -9  "-9: NOT ASCERTAINED"  
      -11  "-11: DATA ANOMALY"  
;
   label define X6SCHBYY
      2012  "2012"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define X6SCHEYY
      2013  "2013"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define _5COMPYY
      2012  "2012"  
      2013  "2013"  
;
   label define _6COMPYY
      2013  "2013"  
;
   label define P6DISTHM
      1  "1: LESS THAN 1/8TH MILE"  
      2  "2: 1/8TH MILE - 1/4 MILE"  
      3  "3: MORE THAN 1/4 MILE TO < 1/2 MILE"  
      4  "4: 1/2 MILE TO < 1 MILE"  
      5  "5: 1 MILE TO 2.5 MILES"  
      6  "6: 2.6 MILES TO 5 MILES"  
      7  "7: 5.1 MILES TO 7.5 MILES"  
      8  "8: 7.6 MILES TO 10 MILES"  
      9  "9: 10.1 MILES OR MORE"  
      10  "10: HOME SCHOOLED"  
      91  "91: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF254F
      1  "1: SECOND GRADE"  
      2  "2: OTHER"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF255F
      1  "1: ONE"  
      2  "2: TWO"  
      3  "3: THREE OR MORE"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF256F
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF257F
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 OR MORE HOURS"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF258F
      7  "7: 7TH GRADE OR LOWER"  
      8  "8: 8TH GRADE"  
      9  "9: 9TH GRADE"  
      10  "10: 10TH GRADE"  
      11  "11: 11TH GRADE"  
      12  "12: 12TH GRADE BUT NO DIPLOMA"  
      13  "13: HIGH SCHOOL EQUIVELENT/GED"  
      14  "14: HIGH SCHOOL DIPLOMA"  
      15  "15: VOC/TECH PROGRAM AFTER HIGH SCHOOL BUT NO VOC/TECH DIPLOMA"  
      16  "16: VOC/TECH PROGRAM AFTER HIGH SCHOOL, DIPLOMA"  
      17  "17: SOME COLLEGE BUT NO DEGREE"  
      18  "18: ASSOCIATE'S DEGREE"  
      19  "19: BACHELOR'S DEGREE"  
      20  "20: GRADUATE OR PROFESSIONAL SCHOOL BUT NO DEGREE"  
      21  "21: MASTER'S (MA, MS) OR HIGHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF259F
      1  "1: BEFORE 1950"  
      2  "2: 1950 TO 1954"  
      3  "3: 1955 TO 1959"  
      4  "4: 1960 TO 1964"  
      5  "5: 1965 TO 1969"  
      6  "6: 1970 TO 1974"  
      7  "7: 1975 TO 1979"  
      8  "8: 1980 TO 1984"  
      9  "9: 1985+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF260F
      1  "1: 0 TO 10"  
      2  "2: 11 TO 25"  
      3  "3: 26 TO 50"  
      4  "4: 51+"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF261F
      1  "1: 0"  
      2  "2: 1 OR 2"  
      3  "3: 3 TO 5"  
      4  "4: 6+"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF262F
      1  "1: USA (1)"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF263F
      1  "1: SCHOOL BUS (1)"  
      2  "2: PARENT DRIVES (2)"  
      3  "3: WALK (4)"  
      4  "4: OTHER (3, 5, 6, 7, 91)"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
      -1  "-1: NOT APPLICABLE"  
;
   label define PUF264F
      1  "1: SECOND GRADE (3)"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF265F
      1  "1: SECOND GRADE (2)"  
      2  "2: OTHER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF266F
      1  "1: Never (1)"  
      2  "2: Less than once a week to 4 days a week (2 to 6)"  
      3  "3: 5 days a week (7)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF267F
      1  "1: Never (1)"  
      2  "2: Less than once a week to 5 days a week (2+)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF268F
      1  "1: NA/Never (1)"  
      2  "2: Less than half hour to less than 3 hours (2 to 7)"  
      3  "3: 3 hours or more (8)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF269F
      1  "1: NOT APPLICABLE/NEVER"  
      2  "2: LESS THAN 1/2 HOUR A DAY"  
      3  "3: 1/2 HOUR TO LESS THAN 1 HOUR"  
      4  "4: 1 TO LESS THAN 1 1/2 HOURS"  
      5  "5: 1 1/2 TO LESS THAN 2 HOURS"  
      6  "6: 2 hours to less than 3 hours (6, 7)"  
      7  "7: 3 hours or more"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF270F
      1  "1: NA/Never (1)"  
      2  "2: OTHER (2+)"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF271F
      1  "1: NO TIME"  
      2  "2: 1-15 MINUTES"  
      3  "3: 16-30 MINUTES"  
      4  "4: 31-45 MINUTES"  
      5  "5: LONGER THAN 45 MINUTES"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF273F
      8  "8: AUGUST OR EARLIER"  
      9  "9: SEPTEMBER"  
      -1  "-1: NOT APPLICABLE"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF274F
      1  "1: 0 TO 24"  
      2  "2. 25 to 49"  
      3  "3. 50 to 74"  
      4  "4. 75 to 100"  
      -1  "-1: NOT APPLICABLE"  
      -7  "-7: REFUSED"  
      -8  "-8: DON'T KNOW"  
      -9  "-9: NOT ASCERTAINED"  
;
   label define PUF275F
      0  "0: NOT IMPUTED"  
      1  "1: IMPUTED"  
;
   label values X2FSADRA2 _09F;
   label values X2FSCHRA _09F;
   label values X2FSRAW2 _09F;
   label values X4FSADRA2 _09F;
   label values P1AGE_10 _1789F;
   label values P1AGE_11 _1789F;
   label values P1AGE_12 _1789F;
   label values P1AGE_13 _1789F;
   label values P1AGE_14 _1789F;
   label values P1AGE_15 _1789F;
   label values P1AGE_16 _1789F;
   label values P1AGE_17 _1789F;
   label values P1AGE_18 _1789F;
   label values P1AGE_19 _1789F;
   label values P1AGE_20 _1789F;
   label values P1AGE_21 _1789F;
   label values P1AGE_22 _1789F;
   label values P1AGE_23 _1789F;
   label values P1AGE_24 _1789F;
   label values P1AGE_25 _1789F;
   label values P1AGE_3 _1789F;
   label values P1AGE_4 _1789F;
   label values P1AGE_5 _1789F;
   label values P1AGE_6 _1789F;
   label values P1AGE_7 _1789F;
   label values P1AGE_8 _1789F;
   label values P1AGE_9 _1789F;
   label values P1BDDYWK _1789F;
   label values P1CAGEMO _1789F;
   label values P1CAGEYR _1789F;
   label values P1CAMTPD _1789F;
   label values P1CDAYPK _1789F;
   label values P1CDAYS _1789F;
   label values P1CHRS _1789F;
   label values P1CHRSPK _1789F;
   label values P1EARPMT _1789F;
   label values P1EARPYR _1789F;
   label values P1EMPP2 _1789F;
   label values P1HRS_1 _1789F;
   label values P1HRS_2 _1789F;
   label values P1JOB_1 _1789F;
   label values P1JOB_2 _1789F;
   label values P1MTHLIV _1789F;
   label values P1MTHSLV _1789F;
   label values P1NAGEMO _1789F;
   label values P1NAGEYR _1789F;
   label values P1NAMTPD _1789F;
   label values P1NDAYPK _1789F;
   label values P1NDAYS _1789F;
   label values P1NHRS _1789F;
   label values P1NHRSPK _1789F;
   label values P1NMSEFD _1789F;
   label values P1O2ETMT _1789F;
   label values P1O2ETYR _1789F;
   label values P1O2NEAR _1789F;
   label values P1OLDMOM _1789F;
   label values P1PEQHH2 _1789F;
   label values P1RAGEMO _1789F;
   label values P1RAGEYR _1789F;
   label values P1RAMTPD _1789F;
   label values P1RDAYPK _1789F;
   label values P1RDAYS _1789F;
   label values P1RDMINS _1789F;
   label values P1RHROTH _1789F;
   label values P1RHRS _1789F;
   label values P1RHRSPK _1789F;
   label values P1SPOUSE _1789F;
   label values P1U2ETMT _1789F;
   label values P1U2ETYR _1789F;
   label values P1U2NEAR _1789F;
   label values P1WEIGHG _1789F;
   label values P1WEIGHO _1789F;
   label values P1WEIGHP _1789F;
   label values P1WHENFS _1789F;
   label values P1WHTANF _1789F;
   label values P1YRSLIV _1789F;
   label values P2AGE_10 _1789F;
   label values P2AGE_11 _1789F;
   label values P2AGE_12 _1789F;
   label values P2AGE_13 _1789F;
   label values P2AGE_14 _1789F;
   label values P2AGE_15 _1789F;
   label values P2AGE_16 _1789F;
   label values P2AGE_17 _1789F;
   label values P2AGE_18 _1789F;
   label values P2AGE_19 _1789F;
   label values P2AGE_20 _1789F;
   label values P2AGE_21 _1789F;
   label values P2AGE_22 _1789F;
   label values P2AGE_23 _1789F;
   label values P2AGE_24 _1789F;
   label values P2AGE_25 _1789F;
   label values P2AGE_3 _1789F;
   label values P2AGE_4 _1789F;
   label values P2AGE_5 _1789F;
   label values P2AGE_6 _1789F;
   label values P2AGE_7 _1789F;
   label values P2AGE_8 _1789F;
   label values P2AGE_9 _1789F;
   label values P2AGVIM1 _1789F;
   label values P2AGVIY1 _1789F;
   label values P2BDDYWK _1789F;
   label values P2BDNITE _1789F;
   label values P2BDPHON _1789F;
   label values P2BDTMHR _1789F;
   label values P2BDTMLM _1789F;
   label values P2BDTMMN _1789F;
   label values P2BMDYWK _1789F;
   label values P2BMNITE _1789F;
   label values P2BMPHON _1789F;
   label values P2DIAEAR _1789F;
   label values P2EDUP1 _1789F;
   label values P2EDUP2 _1789F;
   label values P2HIGTIN _1789F;
   label values P2HOWPAY _1789F;
   label values P2MOFDST _1789F;
   label values P2NUMBKF _1789F;
   label values P2NUMLNC _1789F;
   label values P2PAREM1 _1789F;
   label values P2PAREM2 _1789F;
   label values P2SPOUSE _1789F;
   label values P2TVA6PH _1789F;
   label values P2TVA6PM _1789F;
   label values P2TVBF8M _1789F;
   label values P2TVDAYH _1789F;
   label values P2TVDAYM _1789F;
   label values P2TVSATH _1789F;
   label values P2TVSATM _1789F;
   label values P2TVSUNH _1789F;
   label values P2TVSUNM _1789F;
   label values P2VISMO _1789F;
   label values P2VISYR _1789F;
   label values P2WEIGHG _1789F;
   label values P2WEIGHO _1789F;
   label values P2WEIGHP _1789F;
   label values P2WHENAF _1789F;
   label values P3CARNMW _1789F;
   label values P3NDYPRM _1789F;
   label values P3NHRPRM _1789F;
   label values P3NMDCMP _1789F;
   label values P3NMHCMP _1789F;
   label values P3NMWCMP _1789F;
   label values P3NUMCMP _1789F;
   label values P3SUMRD _1789F;
   label values P3TVHR _1789F;
   label values P3TVMIN _1789F;
   label values P3VIDHR _1789F;
   label values P3VIDMIN _1789F;
   label values P3VISLIB _1789F;
   label values P4AGE_1_R _1789F;
   label values P4AGE_10_R _1789F;
   label values P4AGE_11_R _1789F;
   label values P4AGE_12_R _1789F;
   label values P4AGE_13_R _1789F;
   label values P4AGE_14_R _1789F;
   label values P4AGE_15_R _1789F;
   label values P4AGE_16 _1789F;
   label values P4AGE_17 _1789F;
   label values P4AGE_18 _1789F;
   label values P4AGE_19 _1789F;
   label values P4AGE_20 _1789F;
   label values P4AGE_21 _1789F;
   label values P4AGE_22 _1789F;
   label values P4AGE_23 _1789F;
   label values P4AGE_24 _1789F;
   label values P4AGE_25 _1789F;
   label values P4AGE_3_R _1789F;
   label values P4AGE_4_R _1789F;
   label values P4AGE_5_R _1789F;
   label values P4AGE_6_R _1789F;
   label values P4AGE_7_R _1789F;
   label values P4AGE_8_R _1789F;
   label values P4AGE_9_R _1789F;
   label values P4AGHCY2 _1789F;
   label values P4AMDYWK _1789F;
   label values P4AMPHEM _1789F;
   label values P4BDDYWK _1789F;
   label values P4BDPHEM _1789F;
   label values P4BEDTMM _1789F;
   label values P4BMDYWK _1789F;
   label values P4BMPHEM _1789F;
   label values P4CAMTPD _1789F;
   label values P4CDAYS _1789F;
   label values P4CHRS _1789F;
   label values P4DIAEAR _1789F;
   label values P4EMPP2 _1789F;
   label values P4HRS_1_I _1789F;
   label values P4HRS_2_I _1789F;
   label values P4JOB_1 _1789F;
   label values P4JOB_2 _1789F;
   label values P4LASTMM _1789F;
   label values P4METPAR _1789F;
   label values P4NAMTPD _1789F;
   label values P4NDAYS _1789F;
   label values P4NHRS _1789F;
   label values P4NUMBKF _1789F;
   label values P4NUMLNC _1789F;
   label values P4PAREM1 _1789F;
   label values P4PAREM2 _1789F;
   label values P4PEQHH2 _1789F;
   label values P4RAMTPD _1789F;
   label values P4RDAYS _1789F;
   label values P4RDMINS _1789F;
   label values P4READMN _1789F;
   label values P4RHROTH _1789F;
   label values P4RHRS _1789F;
   label values P4SPOUSE _1789F;
   label values P4TARDY _1789F;
   label values P4TLKPNT _1789F;
   label values P4TVMIN _1789F;
   label values P4VIDMIN _1789F;
   label values P5CARNMW _1789F;
   label values P5DIAEAR _1789F;
   label values P5NDYPRM _1789F;
   label values P5NHRPRM _1789F;
   label values P5NMDCMP _1789F;
   label values P5NMHCMP _1789F;
   label values P5NMWCMP _1789F;
   label values P5NUMCMP _1789F;
   label values P5SUMRD _1789F;
   label values P5TVHR _1789F;
   label values P5TVMIN _1789F;
   label values P5VIDHR _1789F;
   label values P5VIDMIN _1789F;
   label values P5VISLIB _1789F;
   label values P6AGE_1 _1789F;
   label values P6AGE_10 _1789F;
   label values P6AGE_11 _1789F;
   label values P6AGE_12 _1789F;
   label values P6AGE_13 _1789F;
   label values P6AGE_14 _1789F;
   label values P6AGE_15 _1789F;
   label values P6AGE_16 _1789F;
   label values P6AGE_17 _1789F;
   label values P6AGE_18 _1789F;
   label values P6AGE_19 _1789F;
   label values P6AGE_20 _1789F;
   label values P6AGE_21 _1789F;
   label values P6AGE_22 _1789F;
   label values P6AGE_23 _1789F;
   label values P6AGE_24 _1789F;
   label values P6AGE_25 _1789F;
   label values P6AGE_3 _1789F;
   label values P6AGE_4 _1789F;
   label values P6AGE_5 _1789F;
   label values P6AGE_6 _1789F;
   label values P6AGE_7 _1789F;
   label values P6AGE_8 _1789F;
   label values P6AGE_9 _1789F;
   label values P6BDPHEM _1789F;
   label values P6BMPHEM _1789F;
   label values P6CDAYS _1789F;
   label values P6CHRS _1789F;
   label values P6DIAEAR _1789F;
   label values P6EMPP2 _1789F;
   label values P6HRS_1_I _1789F;
   label values P6HRS_2_I _1789F;
   label values P6JOB_1 _1789F;
   label values P6JOB_2 _1789F;
   label values P6METPAR _1789F;
   label values P6NDAYS _1789F;
   label values P6NHRS _1789F;
   label values P6RDAYS _1789F;
   label values P6READMN _1789F;
   label values P6RHROTH _1789F;
   label values P6RHRS _1789F;
   label values P6SPOUSE _1789F;
   label values P6TVHR _1789F;
   label values P6TVMIN _1789F;
   label values P6VIDHR _1789F;
   label values P6VIDMIN _1789F;
   label values A1A5YROL _19F;
   label values A1A6YROL _19F;
   label values A1ABLACK _19F;
   label values A1AELLOU _19F;
   label values A1AELLRE _19F;
   label values A1AGIRLS _19F;
   label values A1AHISP _19F;
   label values A1ANMELL _19F;
   label values A1ANOELL _19F;
   label values A1AREPK _19F;
   label values A1ATOTAG _19F;
   label values A1ATOTGN _19F;
   label values A1ATOTRA _19F;
   label values A1AWHITE _19F;
   label values A1D5YROL _19F;
   label values A1D6YROL _19F;
   label values A1DBLACK _19F;
   label values A1DELLOU _19F;
   label values A1DELLRE _19F;
   label values A1DGIRLS _19F;
   label values A1DHISP _19F;
   label values A1DNMELL _19F;
   label values A1DNOELL _19F;
   label values A1DREPK _19F;
   label values A1DTOTAG _19F;
   label values A1DTOTGN _19F;
   label values A1DTOTRA _19F;
   label values A1DWHITE _19F;
   label values A1P5YROL _19F;
   label values A1P6YROL _19F;
   label values A1PBLACK _19F;
   label values A1PELLOU _19F;
   label values A1PELLRE _19F;
   label values A1PGIRLS _19F;
   label values A1PHISP _19F;
   label values A1PNMELL _19F;
   label values A1PNOELL _19F;
   label values A1PREPK _19F;
   label values A1PTOTAG _19F;
   label values A1PTOTGN _19F;
   label values A1PTOTRA _19F;
   label values A1PWHITE _19F;
   label values A2AABSEN _19F;
   label values A2AENROL _19F;
   label values A2AJOINE _19F;
   label values A2ALEFTL _19F;
   label values A2AMORE _19F;
   label values A2AMTHBL _19F;
   label values A2ARDBLO _19F;
   label values A2ASPCIA _19F;
   label values A2ASPECN _19F;
   label values A2ATARDY _19F;
   label values A2DABSEN _19F;
   label values A2DENROL _19F;
   label values A2DGIFT _19F;
   label values A2DJOINE _19F;
   label values A2DLEFTL _19F;
   label values A2DMORE _19F;
   label values A2DMTHBL _19F;
   label values A2DPRTGF _19F;
   label values A2DRDBLO _19F;
   label values A2DSPCIA _19F;
   label values A2DSPECN _19F;
   label values A2DTARDY _19F;
   label values A2NUMMTH _19F;
   label values A2NUMRD _19F;
   label values A2PABSEN _19F;
   label values A2PENROL _19F;
   label values A2PJOINE _19F;
   label values A2PLEFTL _19F;
   label values A2PMORE _19F;
   label values A2PMTHBL _19F;
   label values A2PRDBLO _19F;
   label values A2PSPCIA _19F;
   label values A2PSPECN _19F;
   label values A2PTARDY _19F;
   label values A4DSRV _19F;
   label values A4ELLOU _19F;
   label values A4ELLRE _19F;
   label values A4MHLP _19F;
   label values A4NMELL _19F;
   label values A4NOELL _19F;
   label values A4NUMMTH _19F;
   label values A4NUMRD _19F;
   label values A4SBLACK _19F;
   label values A4SHISP _19F;
   label values A4SWHITE _19F;
   label values A6DSRV _19F;
   label values A6ELLOU _19F;
   label values A6ELLRE _19F;
   label values A6MHLP _19F;
   label values A6NMELL _19F;
   label values A6NOELL _19F;
   label values A6NUMMTH _19F;
   label values A6NUMRD _19F;
   label values A6SBLACK _19F;
   label values A6SHISP _19F;
   label values A6SWHITE _19F;
   label values P1PLQHH1 _19F;
   label values P1PLQHH2 _19F;
   label values P4PLQHH1 _19F;
   label values P4PLQHH2 _19F;
   label values R2PRGFEE _19F;
   label values S2ADA _19F;
   label values S2BRKENDHH _19F;
   label values S2BRKENDMM _19F;
   label values S2BRKSTRHH _19F;
   label values S2BRKSTRMM _19F;
   label values S2MTHPCT _19F;
   label values S2NMRETK _19F;
   label values S2RDGPCT _19F;
   label values S2SCIPCT _19F;
   label values S2TOTELL _19F;
   label values S2TOTKND _19F;
   label values S4BRKENDHH _19F;
   label values S4BRKENDMM _19F;
   label values S4BRKSTRHH _19F;
   label values S4BRKSTRMM _19F;
   label values S4MTPPCT _19F;
   label values S4RDPPCT _19F;
   label values S4TOTELL _19F;
   label values S4TOTFRS _19F;
   label values S6MTPPCT _19F;
   label values S6RDPPCT _19F;
   label values S6TOTELL _19F;
   label values S6TOTSEC _19F;
   label values T1CHMTGP _19F;
   label values T1CHRDGP _19F;
   label values T2CHMTHG _19F;
   label values T2CHRDG _19F;
   label values T3CHMTGP _19F;
   label values T3CHRDGP _19F;
   label values T4CHMTGP _19F;
   label values T4CHRDGP _19F;
   label values T4KCHMTGP _19F;
   label values T4KCHRDGP _19F;
   label values T5CHMTGP _19F;
   label values T5CHRDGP _19F;
   label values T6CHMTGP _19F;
   label values T6CHRDGP _19F;
   label values X_DISTPOV _19F;
   label values X1ATTNFS _19F;
   label values X1CSBGSC _19F;
   label values X1CSPSSC _19F;
   label values X1EBRSCM _19F;
   label values X1EBRSTOT _19F;
   label values X1HRSNOW _19F;
   label values X1IDP2 _19F;
   label values X1INBCNT _19F;
   label values X1NRPERC _19F;
   label values X1NRSSCR _19F;
   label values X1NRWABL _19F;
   label values X1PAR1SCR_I _19F;
   label values X1PAR2AGE _19F;
   label values X1PAR2SCR_I _19F;
   label values X1PLART _19F;
   label values X1PLSS _19F;
   label values X1PLTOT _19F;
   label values X1PRNAPP _19F;
   label values X1PRNCON _19F;
   label values X1PRNIMP _19F;
   label values X1PRNSAD _19F;
   label values X1PRNSOC _19F;
   label values X1SERSCM _19F;
   label values X1SERSSCK1 _19F;
   label values X1SERSSEK1 _19F;
   label values X1TCHAPP _19F;
   label values X1TCHCON _19F;
   label values X1TCHEXT _19F;
   label values X1TCHINT _19F;
   label values X1TCHPER _19F;
   label values X2ATTNFS _19F;
   label values X2CLSNSS _19F;
   label values X2CNFLCT _19F;
   label values X2CSBGSC _19F;
   label values X2CSPSSC _19F;
   label values X2EBRSCM _19F;
   label values X2EBRSTOT _19F;
   label values X2FLCH2_I _19F;
   label values X2IDP2 _19F;
   label values X2INBCNT _19F;
   label values X2KENRLK _19F;
   label values X2KRCETH _19F;
   label values X2NRPERC _19F;
   label values X2NRSSCR _19F;
   label values X2NRWABL _19F;
   label values X2PAR2AGE _19F;
   label values X2PLART _19F;
   label values X2PLSS _19F;
   label values X2PLTOT _19F;
   label values X2PRNAPP _19F;
   label values X2PRNCON _19F;
   label values X2PRNIMP _19F;
   label values X2PRNSAD _19F;
   label values X2PRNSOC _19F;
   label values X2RLCH2_I _19F;
   label values X2SERSCM _19F;
   label values X2SERSSCK1 _19F;
   label values X2SERSSEK1 _19F;
   label values X2TCHAPP _19F;
   label values X2TCHCON _19F;
   label values X2TCHEXT _19F;
   label values X2TCHINT _19F;
   label values X2TCHPER _19F;
   label values X3CSBGSC _19F;
   label values X3EBRSCM _19F;
   label values X3EBRSTOT _19F;
   label values X3PLART _19F;
   label values X3PLSS _19F;
   label values X3PLTOT _19F;
   label values X3SERSCM _19F;
   label values X3TCHAPP _19F;
   label values X3TCHCON _19F;
   label values X3TCHEXT _19F;
   label values X3TCHINT _19F;
   label values X3TCHPER _19F;
   label values X4ATTNFS _19F;
   label values X4CLSNSS _19F;
   label values X4CNFLCT _19F;
   label values X4CSBGSC _19F;
   label values X4DISTPOV _19F;
   label values X4EBRSCM _19F;
   label values X4EBRSTOT _19F;
   label values X4FMEAL_I _19F;
   label values X4IDP2 _19F;
   label values X4INBCNT _19F;
   label values X4KATTNFS _19F;
   label values X4KCLSNSS _19F;
   label values X4KCNFLCT _19F;
   label values X4KINBCNT _19F;
   label values X4KTCHAPP _19F;
   label values X4KTCHCON _19F;
   label values X4KTCHEXT _19F;
   label values X4KTCHINT _19F;
   label values X4KTCHPER _19F;
   label values X4PAR1SCR_I _19F;
   label values X4PAR2AGE_R _19F;
   label values X4PAR2SCR_I _19F;
   label values X4PLART _19F;
   label values X4PLSS _19F;
   label values X4PLTOT _19F;
   label values X4PRNAPP _19F;
   label values X4PRNCON _19F;
   label values X4PRNIMP _19F;
   label values X4PRNSAD _19F;
   label values X4PRNSOC _19F;
   label values X4RCETH _19F;
   label values X4RMEAL_I _19F;
   label values X4SERSCM _19F;
   label values X4TCHAPP _19F;
   label values X4TCHCON _19F;
   label values X4TCHEXT _19F;
   label values X4TCHINT _19F;
   label values X4TCHPER _19F;
   label values X6DISTPOV _19F;
   label values X6IDP2 _19F;
   label values X6PAR1SCR_I _19F;
   label values X6PAR2AGE _19F;
   label values X6PAR2SCR_I _19F;
   label values Y2LOCNUM _19F;
   label values Y2PRGFEE _19F;
   label values Z2CHDAGE _19F;
   label values Z2HRSTV _19F;
   label values Z2HRWTCH _19F;
   label values Z2MNCOMP _19F;
   label values Z2MNWTCH _19F;
   label values Z2NONENG _19F;
   label values Z2NUMCHD _19F;
   label values Z2NUMREL _19F;
   label values Z2SPCNDS _19F;
   label values S2ENGPCT _219F;
   label values S2MTPTRQ _319F;
   label values S2RDPTRQ _319F;
   label values S2SCPTRQ _319F;
   label values A4COMPYY _4COMPYY;
   label values S4COMPYY _4COMPYY;
   label values T4COMPYY _4COMPYY;
   label values S4AMBUSFHH _59F;
   label values S4AMBUSFMM _59F;
   label values S4AMBUSLHH _59F;
   label values S4AMBUSLMM _59F;
   label values S4STRTAMHH _59F;
   label values S4STRTAMMM _59F;
   label values T5COMPYY _5COMPYY;
   label values X2FSADSC2 _69F;
   label values X2FSCHSC _69F;
   label values X2FSSCAL2 _69F;
   label values X4FSADSC2 _69F;
   label values X4FSCHSC _69F;
   label values X4FSSCAL2 _69F;
   label values A6COMPYY _6COMPYY;
   label values S6COMPYY _6COMPYY;
   label values S6SYREYY _6COMPYY;
   label values T6COMPYY _6COMPYY;
   label values X6ASMTYY _6COMPYY;
   label values C1HGT1 _789F;
   label values C1HGT2 _789F;
   label values C1WGT1 _789F;
   label values C1WGT2 _789F;
   label values C2HGT1 _789F;
   label values C2HGT2 _789F;
   label values C2WGT1 _789F;
   label values C2WGT2 _789F;
   label values C3HGT1 _789F;
   label values C3HGT2 _789F;
   label values C3WGT1 _789F;
   label values C3WGT2 _789F;
   label values C4HGT1 _789F;
   label values C4HGT2 _789F;
   label values C4WGT1 _789F;
   label values C4WGT2 _789F;
   label values C5HGT1 _789F;
   label values C5HGT2 _789F;
   label values C5WGT1 _789F;
   label values C5WGT2 _789F;
   label values C6HGT1 _789F;
   label values C6HGT2 _789F;
   label values C6WGT1 _789F;
   label values C6WGT2 _789F;
   label values P1AGE_1 _789F;
   label values P1AGE_2 _789F;
   label values P1CHLDBK _789F;
   label values P1EMPP1 _789F;
   label values P1NUMPLA _789F;
   label values P1PEQHH1 _789F;
   label values P2AGE_1 _789F;
   label values P2AGE_2 _789F;
   label values P2BDTMLH _789F;
   label values P2BFREG _789F;
   label values P2BFRESP _789F;
   label values P2BFTOG _789F;
   label values P2CNTBEH _789F;
   label values P2CNTGRE _789F;
   label values P2CNTWRK _789F;
   label values P2DNRREG _789F;
   label values P2DNRTOG _789F;
   label values P2HIGTFT _789F;
   label values P2METPAR _789F;
   label values P2NOSLBF _789F;
   label values P2RAPID _789F;
   label values P2TLKPNT _789F;
   label values P2WIGTLB _789F;
   label values P3NWTHPA _789F;
   label values P4AGE_2 _789F;
   label values P4BEDTMH _789F;
   label values P4CHLDBK _789F;
   label values P4DNRTOG _789F;
   label values P4EMPP1 _789F;
   label values P4NOSLBF _789F;
   label values P4NUMPLA _789F;
   label values P4PEQHH1 _789F;
   label values P4RAPID _789F;
   label values P4TVHR _789F;
   label values P4VIDHR _789F;
   label values P5NWTHPA _789F;
   label values P6AGE_2 _789F;
   label values P6DNRTOG _789F;
   label values P6EMPP1 _789F;
   label values P6RAPID _789F;
   label values X1HEIGHT _789F;
   label values X1WEIGHT _789F;
   label values X2HEIGHT _789F;
   label values X2WEIGHT _789F;
   label values X3HEIGHT _789F;
   label values X3WEIGHT _789F;
   label values X4HEIGHT _789F;
   label values X4WEIGHT _789F;
   label values X5HEIGHT _789F;
   label values X5WEIGHT _789F;
   label values X6HEIGHT _789F;
   label values X6WEIGHT _789F;
   label values P1YRSLV _891789F;
   label values A1COMPDD _9F;
   label values A1YRSCH _9F;
   label values A1YRSTCH _9F;
   label values A2COMPDD _9F;
   label values A2DYRECS _9F;
   label values A2ESLOTH _9F;
   label values A2ESLWRK _9F;
   label values A2MNAIDE _9F;
   label values A2MNEXTR _9F;
   label values A2MNPOIN _9F;
   label values A2MNSPEC _9F;
   label values A2REGOTH _9F;
   label values A2REGWRK _9F;
   label values A2SPEDOT _9F;
   label values A2SPEDWK _9F;
   label values A2VOLIT _9F;
   label values A2VOLOT _9F;
   label values A46YROL _9F;
   label values A47YROL _9F;
   label values A4ABSEN _9F;
   label values A4COMPDD _9F;
   label values A4DEVINCL _9F;
   label values A4DEVTOCL _9F;
   label values A4DISAB _9F;
   label values A4DYRECS _9F;
   label values A4ENROL _9F;
   label values A4ESLWRK _9F;
   label values A4GIFT _9F;
   label values A4GIRLS _9F;
   label values A4HRSDA _9F;
   label values A4INTINCL _9F;
   label values A4INTTOCL _9F;
   label values A4JOINE _9F;
   label values A4LEFTL _9F;
   label values A4MTHABV _9F;
   label values A4MTHBL _9F;
   label values A4PRTGF _9F;
   label values A4RDABV _9F;
   label values A4RDBLW _9F;
   label values A4REGWRK _9F;
   label values A4REPK _9F;
   label values A4SPEDWK _9F;
   label values A4TARDY _9F;
   label values A4TOTAG _9F;
   label values A4TOTGN _9F;
   label values A4TOTRA _9F;
   label values A4VOLIT _9F;
   label values A4YRSCH _9F;
   label values A4YRSTCH _9F;
   label values A67YROL _9F;
   label values A68YROL _9F;
   label values A6ABSEN _9F;
   label values A6COMPDD _9F;
   label values A6DEVINCL _9F;
   label values A6DEVTOCL _9F;
   label values A6DISAB _9F;
   label values A6DYRECS _9F;
   label values A6ENROL _9F;
   label values A6ESLWRK _9F;
   label values A6GIFT _9F;
   label values A6GIRLS _9F;
   label values A6HRSDA _9F;
   label values A6INTINCL _9F;
   label values A6INTTOCL _9F;
   label values A6JOINE _9F;
   label values A6LEFTL _9F;
   label values A6MTHABV _9F;
   label values A6MTHBL _9F;
   label values A6PRTGF _9F;
   label values A6RDABV _9F;
   label values A6RDBLW _9F;
   label values A6REGWRK _9F;
   label values A6REPK _9F;
   label values A6SPEDWK _9F;
   label values A6TARDY _9F;
   label values A6TOTAG _9F;
   label values A6TOTGN _9F;
   label values A6TOTRA _9F;
   label values A6VOLIT _9F;
   label values A6YRSCH _9F;
   label values A6YRSTCH _9F;
   label values B2COMPDD _9F;
   label values B2YRSCH _9F;
   label values B2YRSTC _9F;
   label values C5TARGRT1 _9F;
   label values C5TARGRT10 _9F;
   label values C5TARGRT11 _9F;
   label values C5TARGRT12 _9F;
   label values C5TARGRT13 _9F;
   label values C5TARGRT14 _9F;
   label values C5TARGRT15 _9F;
   label values C5TARGRT16 _9F;
   label values C5TARGRT17 _9F;
   label values C5TARGRT18 _9F;
   label values C5TARGRT19 _9F;
   label values C5TARGRT2 _9F;
   label values C5TARGRT20 _9F;
   label values C5TARGRT21 _9F;
   label values C5TARGRT22 _9F;
   label values C5TARGRT23 _9F;
   label values C5TARGRT24 _9F;
   label values C5TARGRT25 _9F;
   label values C5TARGRT26 _9F;
   label values C5TARGRT27 _9F;
   label values C5TARGRT28 _9F;
   label values C5TARGRT29 _9F;
   label values C5TARGRT3 _9F;
   label values C5TARGRT30 _9F;
   label values C5TARGRT4 _9F;
   label values C5TARGRT5 _9F;
   label values C5TARGRT6 _9F;
   label values C5TARGRT7 _9F;
   label values C5TARGRT8 _9F;
   label values C5TARGRT9 _9F;
   label values C6TARGRT1 _9F;
   label values C6TARGRT10 _9F;
   label values C6TARGRT11 _9F;
   label values C6TARGRT12 _9F;
   label values C6TARGRT13 _9F;
   label values C6TARGRT14 _9F;
   label values C6TARGRT15 _9F;
   label values C6TARGRT16 _9F;
   label values C6TARGRT17 _9F;
   label values C6TARGRT18 _9F;
   label values C6TARGRT19 _9F;
   label values C6TARGRT2 _9F;
   label values C6TARGRT20 _9F;
   label values C6TARGRT21 _9F;
   label values C6TARGRT22 _9F;
   label values C6TARGRT23 _9F;
   label values C6TARGRT24 _9F;
   label values C6TARGRT25 _9F;
   label values C6TARGRT26 _9F;
   label values C6TARGRT27 _9F;
   label values C6TARGRT28 _9F;
   label values C6TARGRT29 _9F;
   label values C6TARGRT3 _9F;
   label values C6TARGRT30 _9F;
   label values C6TARGRT4 _9F;
   label values C6TARGRT5 _9F;
   label values C6TARGRT6 _9F;
   label values C6TARGRT7 _9F;
   label values C6TARGRT8 _9F;
   label values C6TARGRT9 _9F;
   label values R2CARMTH _9F;
   label values R2CARYRS _9F;
   label values R2COMPDD _9F;
   label values S2ADMNCM _9F;
   label values S2AIANP2 _9F;
   label values S2AIANPT _9F;
   label values S2AMBUSFHH _9F;
   label values S2AMBUSFMM _9F;
   label values S2AMBUSLHH _9F;
   label values S2AMBUSLMM _9F;
   label values S2ASIAP2 _9F;
   label values S2ASIAPT _9F;
   label values S2BLACP2 _9F;
   label values S2BLACPT _9F;
   label values S2COMPDD _9F;
   label values S2DISCAT _9F;
   label values S2ESLFL _9F;
   label values S2ESLPT _9F;
   label values S2FLLKIN _9F;
   label values S2GIFPCT _9F;
   label values S2GIFTFL _9F;
   label values S2GIFTPT _9F;
   label values S2HAWPP2 _9F;
   label values S2HAWPPT _9F;
   label values S2HISPP2 _9F;
   label values S2HISPPT _9F;
   label values S2HLFKIN _9F;
   label values S2INRMGT _9F;
   label values S2INSTCM _9F;
   label values S2INSTRU _9F;
   label values S2LIBRFL _9F;
   label values S2LIBRPT _9F;
   label values S2LUNCH _9F;
   label values S2MONITR _9F;
   label values S2MSARFL _9F;
   label values S2MSARPT _9F;
   label values S2MTIPCT _9F;
   label values S2MULTP2 _9F;
   label values S2MULTPT _9F;
   label values S2NGHBOR _9F;
   label values S2NUMDAY _9F;
   label values S2NUMTOT _9F;
   label values S2NURSFL _9F;
   label values S2NURSPT _9F;
   label values S2PARAFL _9F;
   label values S2PARAPT _9F;
   label values S2PPRWRK _9F;
   label values S2PSYCFL _9F;
   label values S2PSYCPT _9F;
   label values S2RDIPCT _9F;
   label values S2READFL _9F;
   label values S2READPT _9F;
   label values S2RTCHFL _9F;
   label values S2RTCHPT _9F;
   label values S2SPDPCT _9F;
   label values S2SPEDFL _9F;
   label values S2SPEDPT _9F;
   label values S2STRTAMHH _9F;
   label values S2STRTAMMM _9F;
   label values S2STUDNT _9F;
   label values S2TALKPT _9F;
   label values S2TEACH _9F;
   label values S2TEBEGN _9F;
   label values S2TELEFT _9F;
   label values S2WHITP2 _9F;
   label values S2WHITPT _9F;
   label values S4504STU _9F;
   label values S4ADA _9F;
   label values S4AIANP2 _9F;
   label values S4AIANPT _9F;
   label values S4ARTSTF _9F;
   label values S4ARTSTP _9F;
   label values S4ASIAP2 _9F;
   label values S4ASIAPT _9F;
   label values S4BLACP2 _9F;
   label values S4BLACPT _9F;
   label values S4COMPDD _9F;
   label values S4CTECHF _9F;
   label values S4CTECHP _9F;
   label values S4DISCAT _9F;
   label values S4ESLF _9F;
   label values S4ESLP _9F;
   label values S4GDCONF _9F;
   label values S4GDCONP _9F;
   label values S4GIFPCT _9F;
   label values S4GIFTF _9F;
   label values S4GIFTP _9F;
   label values S4GYMTF _9F;
   label values S4GYMTP _9F;
   label values S4HAWPP2 _9F;
   label values S4HAWPPT _9F;
   label values S4HISPP2 _9F;
   label values S4HISPPT _9F;
   label values S4INRMGT _9F;
   label values S4INSTRU _9F;
   label values S4LIBRF _9F;
   label values S4LIBRP _9F;
   label values S4MATHF _9F;
   label values S4MATHP _9F;
   label values S4MONITR _9F;
   label values S4MULTP2 _9F;
   label values S4MULTPT _9F;
   label values S4NEEIEP _9F;
   label values S4NEIEPY _9F;
   label values S4NMRET1 _9F;
   label values S4NMRETK _9F;
   label values S4NUMDAY _9F;
   label values S4NUMTOT _9F;
   label values S4NURSF _9F;
   label values S4NURSP _9F;
   label values S4PARAF _9F;
   label values S4PARAP _9F;
   label values S4PCTFLN _9F;
   label values S4PPRWRK _9F;
   label values S4PSYCF _9F;
   label values S4PSYCP _9F;
   label values S4RDTCHFL _9F;
   label values S4RDTCHPT _9F;
   label values S4RGTCHF _9F;
   label values S4RGTCHP _9F;
   label values S4SPDPCT _9F;
   label values S4SPEDF _9F;
   label values S4SPEDP _9F;
   label values S4STUDNT _9F;
   label values S4TALKPT _9F;
   label values S4TCH1SY _9F;
   label values S4TCH1YH _9F;
   label values S4TEACH _9F;
   label values S4TEBEGN _9F;
   label values S4TELEFT _9F;
   label values S4WHITP2 _9F;
   label values S4WHITPT _9F;
   label values S6504STU _9F;
   label values S6ADA _9F;
   label values S6AIANP2 _9F;
   label values S6AIANPT _9F;
   label values S6ARTSTF _9F;
   label values S6ARTSTP _9F;
   label values S6ASIAP2 _9F;
   label values S6ASIAPT _9F;
   label values S6BLACP2 _9F;
   label values S6BLACPT _9F;
   label values S6COMPDD _9F;
   label values S6CTECHF _9F;
   label values S6CTECHP _9F;
   label values S6DISCAT _9F;
   label values S6ESLF _9F;
   label values S6ESLP _9F;
   label values S6GDCONF _9F;
   label values S6GDCONP _9F;
   label values S6GIFPCT _9F;
   label values S6GIFTF _9F;
   label values S6GIFTP _9F;
   label values S6GYMTF _9F;
   label values S6GYMTP _9F;
   label values S6HAWPP2 _9F;
   label values S6HAWPPT _9F;
   label values S6HISPP2 _9F;
   label values S6HISPPT _9F;
   label values S6INRMGT _9F;
   label values S6INSTRU _9F;
   label values S6LIBRF _9F;
   label values S6LIBRP _9F;
   label values S6MATHF _9F;
   label values S6MATHP _9F;
   label values S6MONITR _9F;
   label values S6MULTP2 _9F;
   label values S6MULTPT _9F;
   label values S6NEEIEP _9F;
   label values S6NEIEPY _9F;
   label values S6NMRET1 _9F;
   label values S6NMRET2 _9F;
   label values S6NUMDAY _9F;
   label values S6NUMTOT _9F;
   label values S6NURSF _9F;
   label values S6NURSP _9F;
   label values S6PARAF _9F;
   label values S6PARAP _9F;
   label values S6PPRWRK _9F;
   label values S6PSYCF _9F;
   label values S6PSYCP _9F;
   label values S6RDTCHFL _9F;
   label values S6RDTCHPT _9F;
   label values S6RGTCHF _9F;
   label values S6RGTCHP _9F;
   label values S6SPDPCT _9F;
   label values S6SPEDF _9F;
   label values S6SPEDP _9F;
   label values S6STRTAMHH _9F;
   label values S6STRTAMMM _9F;
   label values S6STUDNT _9F;
   label values S6TALKPT _9F;
   label values S6TCH1SY _9F;
   label values S6TCH1YH _9F;
   label values S6TEACH _9F;
   label values S6TEBEGN _9F;
   label values S6TELEFT _9F;
   label values S6WHITP2 _9F;
   label values S6WHITPT _9F;
   label values T1COMPDD _9F;
   label values T2COMPDD _9F;
   label values T3COMPDD _9F;
   label values T4COMPDD _9F;
   label values T4KCOMPDD _9F;
   label values T5COMPDD _9F;
   label values T6COMPDD _9F;
   label values V2CARMTH _9F;
   label values V2CARYRS _9F;
   label values V2COMPDD _9F;
   label values V2NUMCHD _9F;
   label values X12SESL _9F;
   label values X1AGEENT _9F;
   label values X1BMI _9F;
   label values X1CHLDID _9F;
   label values X1CSPRES _9F;
   label values X1DCCSTOT _9F;
   label values X1HTOTAL _9F;
   label values X1IDP1 _9F;
   label values X1KAGE_R _9F;
   label values X1LESS18 _9F;
   label values X1MSCALK2 _9F;
   label values X1MSETHK2 _9F;
   label values X1MTHETK2 _9F;
   label values X1NRPEGR _9F;
   label values X1NRSSGR _9F;
   label values X1NUMSIB _9F;
   label values X1OVER18 _9F;
   label values X1PAR1AGE _9F;
   label values X1RESID _9F;
   label values X1RSCALK2 _9F;
   label values X1RSETHK2 _9F;
   label values X1RTHETK2 _9F;
   label values X1SERSTHK1 _9F;
   label values X2BMI _9F;
   label values X2CHLDID _9F;
   label values X2CSPRES _9F;
   label values X2DCCSTOT _9F;
   label values X2HTOTAL _9F;
   label values X2IDP1 _9F;
   label values X2KAGE_R _9F;
   label values X2LESS18 _9F;
   label values X2MSCALK2 _9F;
   label values X2MSETHK2 _9F;
   label values X2MTHETK2 _9F;
   label values X2NRPEGR _9F;
   label values X2NRSSGR _9F;
   label values X2NUMSIB _9F;
   label values X2OVER18 _9F;
   label values X2PAR1AGE _9F;
   label values X2RESID _9F;
   label values X2RSCALK2 _9F;
   label values X2RSETHK2 _9F;
   label values X2RTHETK2 _9F;
   label values X2SERSTHK1 _9F;
   label values X2SSCALK2 _9F;
   label values X2SSETHK2 _9F;
   label values X2STHETK2 _9F;
   label values X3AGE _9F;
   label values X3BMI _9F;
   label values X3CSPRES _9F;
   label values X3CSPSSC _9F;
   label values X3DCCSTOT _9F;
   label values X3MSCALK2 _9F;
   label values X3MSETHK2 _9F;
   label values X3MTHETK2 _9F;
   label values X3NRPEGR _9F;
   label values X3NRPERC _9F;
   label values X3NRSSCR _9F;
   label values X3NRSSGR _9F;
   label values X3NRWABL _9F;
   label values X3RESID _9F;
   label values X3RSCALK2 _9F;
   label values X3RSETHK2 _9F;
   label values X3RTHETK2 _9F;
   label values X3SERSSCK1 _9F;
   label values X3SERSSEK1 _9F;
   label values X3SERSTHK1 _9F;
   label values X3SSCALK2 _9F;
   label values X3SSETHK2 _9F;
   label values X3STHETK2 _9F;
   label values X4AGE _9F;
   label values X4BMI _9F;
   label values X4CSPRES _9F;
   label values X4CSPSSC _9F;
   label values X4DCCSTOT _9F;
   label values X4HTOTAL _9F;
   label values X4IDP1 _9F;
   label values X4LESS18_R _9F;
   label values X4MSCALK2 _9F;
   label values X4MSETHK2 _9F;
   label values X4MTHETK2 _9F;
   label values X4NRPEGR _9F;
   label values X4NRPERC _9F;
   label values X4NRSSCR _9F;
   label values X4NRSSGR _9F;
   label values X4NRWABL _9F;
   label values X4NUMSIB _9F;
   label values X4OVER18_R _9F;
   label values X4PAR1AGE_R _9F;
   label values X4RESID _9F;
   label values X4RSCALK2 _9F;
   label values X4RSETHK2 _9F;
   label values X4RTHETK2 _9F;
   label values X4SERSSCK1 _9F;
   label values X4SERSSEK1 _9F;
   label values X4SERSTHK1 _9F;
   label values X4SESL_I _9F;
   label values X4SSCALK2 _9F;
   label values X4SSETHK2 _9F;
   label values X4STHETK2 _9F;
   label values X5AGE _9F;
   label values X5BMI _9F;
   label values X5CSACC _9F;
   label values X5CSNDRT _9F;
   label values X5DCCSSCR _9F;
   label values X5MSCALK2 _9F;
   label values X5MSETHK2 _9F;
   label values X5MTHETK2 _9F;
   label values X5NRPEGR _9F;
   label values X5NRPERC _9F;
   label values X5NRSSCR _9F;
   label values X5NRSSGR _9F;
   label values X5NRWABL _9F;
   label values X5RESID _9F;
   label values X5RSCALK2 _9F;
   label values X5RSETHK2 _9F;
   label values X5RTHETK2 _9F;
   label values X5SSCALK2 _9F;
   label values X5SSETHK2 _9F;
   label values X5STHETK2 _9F;
   label values X5TCHAPP _9F;
   label values X5TCHCON _9F;
   label values X5TCHEXT _9F;
   label values X5TCHINT _9F;
   label values X5TCHPER _9F;
   label values X6AGE _9F;
   label values X6ATTMCQ _9F;
   label values X6BMI _9F;
   label values X6CLSNSS _9F;
   label values X6CNFLCT _9F;
   label values X6CSACC _9F;
   label values X6CSNDRT _9F;
   label values X6DCCSSCR _9F;
   label values X6HTOTAL _9F;
   label values X6IDP1 _9F;
   label values X6INTMCQ _9F;
   label values X6LESS18 _9F;
   label values X6MSCALK2 _9F;
   label values X6MSETHK2 _9F;
   label values X6MTHETK2 _9F;
   label values X6NRPEGR _9F;
   label values X6NRPERC _9F;
   label values X6NRSSCR _9F;
   label values X6NRSSGR _9F;
   label values X6NRWABL _9F;
   label values X6NUMSIB _9F;
   label values X6OVER18 _9F;
   label values X6PAR1AGE _9F;
   label values X6RESID _9F;
   label values X6RSCALK2 _9F;
   label values X6RSETHK2 _9F;
   label values X6RTHETK2 _9F;
   label values X6SSCALK2 _9F;
   label values X6SSETHK2 _9F;
   label values X6STHETK2 _9F;
   label values X6TCHAPP _9F;
   label values X6TCHCON _9F;
   label values X6TCHEXT _9F;
   label values X6TCHINT _9F;
   label values X6TCHPER _9F;
   label values Y2COMPDD _9F;
   label values Y2DIRMON _9F;
   label values Y2DIRYRS _9F;
   label values Z2CARMTH _9F;
   label values Z2CARYRS _9F;
   label values Z2CHDACH _9F;
   label values Z2CHDACM _9F;
   label values Z2COMPDD _9F;
   label values Z2DAYSWK _9F;
   label values Z2HRSWK _9F;
   label values Z2INDACH _9F;
   label values Z2INDACM _9F;
   label values Z2NUMADL _9F;
   label values Z2NUMBKS _9F;
   label values Z2NUMLIB _9F;
   label values Z2NUMPLG _9F;
   label values Z2NUMSTR _9F;
   label values Z2PLAYHR _9F;
   label values Z2PLAYMN _9F;
   label values Z2SMLGRH _9F;
   label values Z2SMLGRM _9F;
   label values Z2TIMEBL _9F;
   label values Z2TIMEPL _9F;
   label values Z2TIMERD _9F;
   label values Z2TIMESS _9F;
   label values Z2TIMEST _9F;
   label values Z2WHLCLH _9F;
   label values Z2WHLCLM _9F;
   label values A1AADDSB A1AADDSB;
   label values A1ABEHVR A1ABEHVR;
   label values A1ACNT20 A1ACNT2A;
   label values A1ALETT A1ALETT;
   label values A4LGINS A1ALGINS;
   label values A1ALPHBF A1ALPHBF;
   label values A1ALPHBT A1ALPHBT;
   label values A1ANONCN A1ANONCN;
   label values A4NONCN A1ANONCN;
   label values A6NONCN A1ANONCN;
   label values A1ANONIN A1ANONIN;
   label values A4NONIN A1ANONIN;
   label values A6NONIN A1ANONIN;
   label values A1ANONMT A1ANONMT;
   label values A4NONMT A1ANONMT;
   label values A6NONMT A1ANONMT;
   label values A1ANONOT A1ANONOT;
   label values A4NONOT A1ANONOT;
   label values A6NONOT A1ANONOT;
   label values A1ANONRD A1ANONRD;
   label values A4NONRD A1ANONRD;
   label values A6NONRD A1ANONRD;
   label values A1ARECNM A1ARECNM;
   label values A1ASNTNC A1ASNTNC;
   label values A1ATNDPR A1ATNDPR;
   label values A1AWORD A1AWORD;
   label values A4BKSIGN A1BKSIGN;
   label values A1CHCLDS A1CHCLDS;
   label values A1CLSSIZ A1CLSSIZ;
   label values A1CNT20 A1CNT2A;
   label values A1CNTRLC A1CNTRLC;
   label values A1COMM A1COMM;
   label values A1COMPMM A1COMPMM;
   label values A1COMPYY A1COMPYY;
   label values A1DADDSB A1DADDSB;
   label values A1DBEHVR A1DBEHVR;
   label values A1DCNT20 A1DCNT2A;
   label values A1DLETT A1DLETT;
   label values A1DLGINS A1DLGINS;
   label values A1DNONCN A1DNONCN;
   label values A1DNONIN A1DNONIN;
   label values A1DNONMT A1DNONMT;
   label values A1DNONOT A1DNONOT;
   label values A1DNONRD A1DNONRD;
   label values A1DRECNM A1DRECNM;
   label values A1DSNTNC A1DSNTNC;
   label values A1DSPKTM A1DSPKTM;
   label values A1DWORD A1DWORD;
   label values A1ENGLAN A1ENGLAN;
   label values A1ENJOY A1ENJOY;
   label values A1FNSHT A1FNSHT;
   label values A1FOLWDR A1FOLWDR;
   label values A1FRMLIN A1FRMLIN;
   label values A1HGHPAR A1HGHPAR;
   label values A1HIGHQL A1HIGHQL;
   label values A1HMWRK A1HMWRK;
   label values A1IDCOLO A1IDCOLO;
   label values A1INDVDL A1INDVDL;
   label values A1LRNREA A1LRNREA;
   label values A1MKDIFF A1MKDIFF;
   label values A1NOTDSR A1NOTDSR;
   label values A1PADDSB A1PADDSB;
   label values A1PBEHVR A1PBEHVR;
   label values A1PCNT20 A1PCNT2A;
   label values A1PENCIL A1PENCIL;
   label values A1PLETT A1PLETT;
   label values A1PNONCN A1PNONCN;
   label values A1PNONIN A1PNONIN;
   label values A1PNONMT A1PNONMT;
   label values A1PNONOT A1PNONOT;
   label values A1PNONRD A1PNONRD;
   label values A1PRBLMS A1PRBLMS;
   label values A1PRCTWR A1PRCTWR;
   label values A1PRECNM A1PRECNM;
   label values A1PSNTNC A1PSNTNC;
   label values A1PWORD A1PWORD;
   label values A1READAT A1READAT;
   label values A1SENSTI A1SENSTI;
   label values A1SHARE A1SHARE;
   label values A1SITSTI A1SITSTI;
   label values A1SMLGRP A1SMLGRP;
   label values A1STATCT A1STATCT;
   label values A1TCHPRN A1TCHPRN;
   label values A1TEACH A1TEACH;
   label values A1TIMDIS A1TIMDIS;
   label values A1WHLCLS A1WHLCLS;
   label values A21TO10 A21TO1A;
   label values A22S5S10 A22S5S1A;
   label values A23DGT A23DGT;
   label values A2ABEHVR A2ABEHVR;
   label values A2ACCPTD A2ACCPTD;
   label values A4ACCPTD A2ACCPTD;
   label values A6ACCPTD A2ACCPTD;
   label values A2ACCURA A2ACCURA;
   label values A2ADTRND A2ADTRND;
   label values A4ADTRND A2ADTRND;
   label values A6ADTRMT A2ADTRND;
   label values A6ADTRND A2ADTRND;
   label values A6ADTRRD A2ADTRND;
   label values A6RESMTH A2ADTRND;
   label values A6RESRED A2ADTRND;
   label values A2AIDTUT A2AIDTUT;
   label values A2ALPBTZ A2ALPBTZ;
   label values A2ANONCN A2ANONCN;
   label values A2ANONEN A2ANONEN;
   label values A2ANONIN A2ANONIN;
   label values A2ANONMT A2ANONMT;
   label values A2ANONOT A2ANONOT;
   label values A2ANONRD A2ANONRD;
   label values A2ART A2ART;
   label values A2ARTMAT A2ARTMAT;
   label values A4ARTMAT A2ARTMAT;
   label values A6ARTMAT A2ARTMAT;
   label values A2ATTART A2ATTART;
   label values A4ATTART A2ATTART;
   label values A6ATTART A2ATTART;
   label values A2ATTND A2ATTND;
   label values A2ATTOPN A2ATTOPN;
   label values A4ATTOPN A2ATTOPN;
   label values A6ATTOPN A2ATTOPN;
   label values A2AUDIOV A2AUDIOV;
   label values A2AVDDIS A2AVDDIS;
   label values A4AVDDIS A2AVDDIS;
   label values A6AVDDIS A2AVDDIS;
   label values A2BASAL A2BASAL;
   label values A2BASBK A2BASBK;
   label values A2BEHAVR A2BEHAVR;
   label values A2BLNDWD A2BLNDWD;
   label values A2BODY A2BODY;
   label values A2BORROW A2BORROW;
   label values A4BORROW A2BORROW;
   label values A2BYD100 A2BYD10O;
   label values A2CALCUL A2CALCUL;
   label values A2CALEND A2CALEND;
   label values A2CHCLDS A2CHCLDS;
   label values A2CHGAP A2CHGAP;
   label values A4CHGAP A2CHGAP;
   label values A6CHGAP A2CHGAP;
   label values A2CHLKBD A2CHLKBD;
   label values A2CHSBK A2CHSBK;
   label values A2CLASPA A2CLASPA;
   label values A2CLSSPC A2CLSSPC;
   label values A2CMNITY A2CMNITY;
   label values A2CMRCLT A2CMRCLT;
   label values A2CNTNLR A2CNTNLR;
   label values A4CNTNLR A2CNTNLR;
   label values A6CNTNLR A2CNTNLR;
   label values A2COMPEQ A2COMPEQ;
   label values A2COMPMM A2COMPMM;
   label values A4COMPMM A2COMPMM;
   label values A6COMPMM A2COMPMM;
   label values A2COMPOS A2COMPOS;
   label values A2COMPSE A2COMPSE;
   label values A2COMPYY A2COMPYY;
   label values A4KCOMPYY A2COMPYY;
   label values A2COMSRV A2COMSRV;
   label values A2CONVNT A2CONVNT;
   label values A2CONVOC A2CONVOC;
   label values A2COOK A2COOK;
   label values A4COOK A2COOK;
   label values A6COOK A2COOK;
   label values A2COPIER A2COPIER;
   label values A2COPRTV A2COPRTV;
   label values A2COPSTF A2COPSTF;
   label values A4COPSTF A2COPSTF;
   label values A6COPSTF A2COPSTF;
   label values A2COSTUM A2COSTUM;
   label values A4COSTUM A2COSTUM;
   label values A6COSTUM A2COSTUM;
   label values A2CRTIVE A2CRTIVE;
   label values A2CULTUR A2CULTUR;
   label values A2CURRDV A2CURRDV;
   label values A2CURVNT A2CURVNT;
   label values A2DATACO A2DATACO;
   label values A2DBEHVR A2DBEHVR;
   label values A2DFMTH A2DFMTH;
   label values A4DFMTH A2DFMTH;
   label values A6DFMTH A2DFMTH;
   label values A2DICTAT A2DICTAT;
   label values A2DINOSR A2DINOSR;
   label values A2DISMAT A2DISMAT;
   label values A2DIVMTH A2DIVMTH;
   label values A4DIVMTH A2DIVMTH;
   label values A2DIVRD A2DIVRD;
   label values A4DIVRD A2DIVRD;
   label values A2DNONCN A2DNONCN;
   label values A2DNONEN A2DNONEN;
   label values A2DNONIN A2DNONIN;
   label values A2DNONMT A2DNONMT;
   label values A2DNONOT A2DNONOT;
   label values A2DNONRD A2DNONRD;
   label values A2DOPROJ A2DOPROJ;
   label values A2DRCTNS A2DRCTNS;
   label values A2DVDVCR A2DVDVCR;
   label values A2ECOLOG A2ECOLOG;
   label values A2EFFO A2EFFO;
   label values A2ELLASE A2ELLASE;
   label values A4ELLASE A2ELLASE;
   label values A6ELLASE A2ELLASE;
   label values A2ELLINC A2ELLINC;
   label values A4ELLINC A2ELLINC;
   label values A6ELLINC A2ELLINC;
   label values A2ELLMAT A2ELLMAT;
   label values A2ELLSMG A2ELLSMG;
   label values A4ELLSMG A2ELLSMG;
   label values A6ELLSMG A2ELLSMG;
   label values A2ELLTRN A2ELLTRN;
   label values A4ELLTRN A2ELLTRN;
   label values A6ELLTRN A2ELLTRN;
   label values A2EMLANS A2EMLANS;
   label values A4EMLANS A2EMLANS;
   label values A6EMLANS A2EMLANS;
   label values A2EMLUPD A2EMLUPD;
   label values A4EMLUPD A2EMLUPD;
   label values A6EMLUPD A2EMLUPD;
   label values A2ENCOUR A2ENCOUR;
   label values A4ENCOUR A2ENCOUR;
   label values A6ENCOUR A2ENCOUR;
   label values A2ENJOY A2ENJOY;
   label values A4ENJOY A2ENJOY;
   label values A6ENJOY A2ENJOY;
   label values A2EQTN A2EQTN;
   label values A2EQUIPM A2EQUIPM;
   label values A4EQUIPM A2EQUIPM;
   label values A6EQUIPM A2EQUIPM;
   label values A2ESTQNT A2ESTQNT;
   label values A2EVAL A2EVAL;
   label values A2EXASIS A2EXASIS;
   label values A2EXPMTH A2EXPMTH;
   label values A2FCTOR A2FCTOR;
   label values A4FCTOR A2FCTOR;
   label values A6FCTOR A2FCTOR;
   label values A2FLLWDR A2FLLWDR;
   label values A2FRCTNS A2FRCTNS;
   label values A2GEOMET A2GEOMET;
   label values A2GEORPH A2GEORPH;
   label values A2GOTOLI A2GOTOLI;
   label values A4GOTOLI A2GOTOLI;
   label values A2GRAPHS A2GRAPHS;
   label values A2GTTHR A2GTTHR;
   label values A4GTTHR A2GTTHR;
   label values A6GTTHR A2GTTHR;
   label values A2HABIT A2HABIT;
   label values A4HABIT A2HABIT;
   label values A6HABIT A2HABIT;
   label values A2HANDON A2HANDON;
   label values A2HEATAC A2HEATAC;
   label values A2HISTOR A2HISTOR;
   label values A2HYGIEN A2HYGIEN;
   label values A2IDEASC A2IDEASC;
   label values A2IDQNTY A2IDQNTY;
   label values A2IGRPRJ A2IGRPRJ;
   label values A2IMPRVM A2IMPRVM;
   label values A2INCLUS A2INCLUS;
   label values A4INCLUS A2INCLUS;
   label values A6INCLUS A2INCLUS;
   label values A2INCRET A2INCRET;
   label values A4INCRET A2INCRET;
   label values A6INCRET A2INCRET;
   label values A2INDVDL A2INDVDL;
   label values A2INSTRM A2INSTRM;
   label values A2INVENT A2INVENT;
   label values A2JRNL A2JRNL;
   label values A2LABSKL A2LABSKL;
   label values A2LAWS A2LAWS;
   label values A2LESPLN A2LESPLN;
   label values A2LIGHT A2LIGHT;
   label values A2LTLDO A2LTLDO;
   label values A4LTLDO A2LTLDO;
   label values A6LTLDO A2LTLDO;
   label values A2LUNCH A2LUNCH;
   label values A2MAGNET A2MAGNET;
   label values A2MAINID A2MAINID;
   label values A2MANIPS A2MANIPS;
   label values A2MANIPU A2MANIPU;
   label values A2MANSYL A2MANSYL;
   label values A2MAPRD A2MAPRD;
   label values A2MATCH A2MATCH;
   label values A2MINMTH A2MINMTH;
   label values A4MINMTH A2MINMTH;
   label values A2MINRD A2MINRD;
   label values A4MINRD A2MINRD;
   label values A2MISBHV A2MISBHV;
   label values A4MISBHV A2MISBHV;
   label values A6MISBHV A2MISBHV;
   label values A2MISSIO A2MISSIO;
   label values A4MISSIO A2MISSIO;
   label values A6MISSIO A2MISSIO;
   label values A2MKDIFF A2MKDIFF;
   label values A4MKDIFF A2MKDIFF;
   label values A6MKDIFF A2MKDIFF;
   label values A2MKLES A2MKLES;
   label values A4MKLES A2MKLES;
   label values A6MKLES A2MKLES;
   label values A2MONELL A2MONELL;
   label values A2MOTORS A2MOTORS;
   label values A2MTHGME A2MTHGME;
   label values A2MTHMAT A2MTHMAT;
   label values A2MTHSHT A2MTHSHT;
   label values A2MTHTXT A2MTHTXT;
   label values A2MUSIC A2MUSIC;
   label values A4MUSIC A2MUSIC;
   label values A6MUSIC A2MUSIC;
   label values A2MUSMTH A2MUSMTH;
   label values A2MXDGRP A2MXDGRP;
   label values A2MXMATH A2MXMATH;
   label values A2NEWVOC A2NEWVOC;
   label values A2NOPRNT A2NOPRNT;
   label values A2NOTCAP A2NOTCAP;
   label values A4NOTCAP A2NOTCAP;
   label values A6NOTCAP A2NOTCAP;
   label values A2NUMBLN A2NUMBLN;
   label values A2NUMCNF A2NUMCNF;
   label values A4NUMCNF A2NUMCNF;
   label values A6NUMCNF A2NUMCNF;
   label values A2OBSOBJ A2OBSOBJ;
   label values A2OFTART A2OFTART;
   label values A4OFTART A2OFTART;
   label values A6OFTART A2OFTART;
   label values A2OFTDAN A2OFTDAN;
   label values A4OFTDAN A2OFTDAN;
   label values A6OFTDAN A2OFTDAN;
   label values A2OFTFOR A2OFTFOR;
   label values A2OFTHTR A2OFTHTR;
   label values A4OFTHTR A2OFTHTR;
   label values A6OFTHTR A2OFTHTR;
   label values A2OFTMTH A2OFTMTH;
   label values A4OFTMTH A2OFTMTH;
   label values A6OFTMTH A2OFTMTH;
   label values A2OFTMUS A2OFTMUS;
   label values A4OFTMUS A2OFTMUS;
   label values A6OFTMUS A2OFTMUS;
   label values A2OFTPE A2OFTPE;
   label values A4OFTPE A2OFTPE;
   label values A6OFTPE A2OFTPE;
   label values A2OFTRDL A2OFTRDL;
   label values A4OFTRDL A2OFTRDL;
   label values A6OFTRDL A2OFTRDL;
   label values A2OFTSCI A2OFTSCI;
   label values A4OFTSCI A2OFTSCI;
   label values A6OFTSCI A2OFTSCI;
   label values A2OFTSOC A2OFTSOC;
   label values A4OFTSOC A2OFTSOC;
   label values A6OFTSOC A2OFTSOC;
   label values A2ORALID A2ORALID;
   label values A2ORDINL A2ORDINL;
   label values A2OUTLOU A2OUTLOU;
   label values A2PAPER A2PAPER;
   label values A2PAPRWR A2PAPRWR;
   label values A4PAPRWR A2PAPRWR;
   label values A6PAPRWR A2PAPRWR;
   label values A2PATTXT A2PATTXT;
   label values A2PBEHVR A2PBEHVR;
   label values A2PEER A2PEER;
   label values A2PEERGP A2PEERGP;
   label values A4PEERGP A2PEERGP;
   label values A6PEERGP A2PEERGP;
   label values A2PHONIC A2PHONIC;
   label values A2PHOTXT A2PHOTXT;
   label values A2PLACE A2PLACE;
   label values A2PLANT A2PLANT;
   label values A2PLAYER A2PLAYER;
   label values A2PNCTUA A2PNCTUA;
   label values A2PNONCN A2PNONCN;
   label values A2PNONEN A2PNONEN;
   label values A2PNONIN A2PNONIN;
   label values A2PNONMT A2PNONMT;
   label values A2PNONOT A2PNONOT;
   label values A2PNONRD A2PNONRD;
   label values A2PRACLT A2PRACLT;
   label values A2PRBBTY A2PRBBTY;
   label values A2PREDIC A2PREDIC;
   label values A2PREPOS A2PREPOS;
   label values A2PRTNRS A2PRTNRS;
   label values A2PRTUTR A2PRTUTR;
   label values A2PSUPP A2PSUPP;
   label values A4PSUPP A2PSUPP;
   label values A6PSUPP A2PSUPP;
   label values A2PTTRNS A2PTTRNS;
   label values A2PULLOU A2PULLOU;
   label values A2QUANTI A2QUANTI;
   label values A2RCGNZE A2RCGNZE;
   label values A2RDFLNT A2RDFLNT;
   label values A2RDLMAT A2RDLMAT;
   label values A2READLD A2READLD;
   label values A2REALLI A2REALLI;
   label values A2RECJOB A2RECJOB;
   label values A4RECJOB A2RECJOB;
   label values A6RECJOB A2RECJOB;
   label values A2RECRDS A2RECRDS;
   label values A2REGHLP A2REGHLP;
   label values A4REGHLP A2REGHLP;
   label values A6REGHLP A2REGHLP;
   label values A2REGZCN A2REGZCN;
   label values A2RELFAM A2RELFAM;
   label values A4RELFAM A2RELFAM;
   label values A6RELFAM A2RELFAM;
   label values A2RETELL A2RETELL;
   label values A2REVSCI A2REVSCI;
   label values A2RHYMNG A2RHYMNG;
   label values A2RULERS A2RULERS;
   label values A2SCIMAT A2SCIMAT;
   label values A2SCMTHD A2SCMTHD;
   label values A2SEEPRI A2SEEPRI;
   label values A2SETPRI A2SETPRI;
   label values A4SETPRI A2SETPRI;
   label values A6SETPRI A2SETPRI;
   label values A2SHAPES A2SHAPES;
   label values A2SHARED A2SHARED;
   label values A4SHARED A2SHARED;
   label values A6SHARED A2SHARED;
   label values A2SILENT A2SILENT;
   label values A2SKITS A2SKITS;
   label values A2SMLGRP A2SMLGRP;
   label values A2SNGDGT A2SNGDGT;
   label values A2SNTHME A2SNTHME;
   label values A6SNTHME A2SNTHME;
   label values A2SOCPRO A2SOCPRO;
   label values A2SOFTWA A2SOFTWA;
   label values A2SOLAR A2SOLAR;
   label values A2SOUND A2SOUND;
   label values A2SPECTU A2SPECTU;
   label values A2SPELL A2SPELL;
   label values A2STNDLO A2STNDLO;
   label values A4STNDLO A2STNDLO;
   label values A6STNDLO A2STNDLO;
   label values A2STNDRD A2STNDRD;
   label values A2SUBGRP A2SUBGRP;
   label values A2SUBSDG A2SUBSDG;
   label values A2SYLLAB A2SYLLAB;
   label values A2SZORDR A2SZORDR;
   label values A2TCHRMD A2TCHRMD;
   label values A2TEACH A2TEACH;
   label values A4TEACH A2TEACH;
   label values A6TEACH A2TEACH;
   label values A2TELLTI A2TELLTI;
   label values A2TEMP A2TEMP;
   label values A2TEXTCU A2TEXTCU;
   label values A2TIMEMT A2TIMEMT;
   label values A4TIMEMT A2TIMEMT;
   label values A6TIMEMT A2TIMEMT;
   label values A2TIMERD A2TIMERD;
   label values A4TIMERD A2TIMERD;
   label values A6TIMERD A2TIMERD;
   label values A2TLKPAR A2TLKPAR;
   label values A6TLKPAR A2TLKPAR;
   label values A2TOCLAS A2TOCLAS;
   label values A2TOOLS A2TOOLS;
   label values A2TOSTND A2TOSTND;
   label values A2TPCONF A2TPCONF;
   label values A4TPCONF A2TPCONF;
   label values A6TPCONF A2TPCONF;
   label values A2TPLOUT A2TPLOUT;
   label values A4TPLOUT A2TPLOUT;
   label values A6TPLOUT A2TPLOUT;
   label values A2TPLYIN A2TPLYIN;
   label values A2TRADBK A2TRADBK;
   label values A2TVWTCH A2TVWTCH;
   label values A2TWODGT A2TWODGT;
   label values A2TXART A2TXART;
   label values A4TXART A2TXART;
   label values A2TXDAN A2TXDAN;
   label values A4TXDAN A2TXDAN;
   label values A2TXFOR A2TXFOR;
   label values A2TXMTH A2TXMTH;
   label values A4TXMTH A2TXMTH;
   label values A6TXMTH A2TXMTH;
   label values A2TXMUS A2TXMUS;
   label values A4TXMUS A2TXMUS;
   label values A2TXPE A2TXPE;
   label values A4TXPE A2TXPE;
   label values A6TXPE A2TXPE;
   label values A2TXRCE A2TXRCE;
   label values A4TXRCE A2TXRCE;
   label values A6TXRCE A2TXRCE;
   label values A2TXRDLA A2TXRDLA;
   label values A4TXRDLA A2TXRDLA;
   label values A6TXRDLA A2TXRDLA;
   label values A2TXSCI A2TXSCI;
   label values A4TXSCI A2TXSCI;
   label values A6TXSCI A2TXSCI;
   label values A2TXSOC A2TXSOC;
   label values A4TXSOC A2TXSOC;
   label values A6TXSOC A2TXSOC;
   label values A2TXTBK A2TXTBK;
   label values A2TXTBKT A2TXTBKT;
   label values A2TXTHTR A2TXTHTR;
   label values A4TXTHTR A2TXTHTR;
   label values A2USEBAS A2USEBAS;
   label values A2USECMP A2USECMP;
   label values A4USECMP A2USECMP;
   label values A6USECMP A2USECMP;
   label values A2USEKIT A2USEKIT;
   label values A4USEKIT A2USEKIT;
   label values A6USEKIT A2USEKIT;
   label values A2USEMAG A2USEMAG;
   label values A2USEOTH A2USEOTH;
   label values A4USEOTH A2USEOTH;
   label values A6USEOTH A2USEOTH;
   label values A2USETRD A2USETRD;
   label values A4USETRD A2USETRD;
   label values A6USETRD A2USETRD;
   label values A2VIDEO A2VIDEO;
   label values A2W12100 A2W1210A;
   label values A2WATER A2WATER;
   label values A2WHLCLS A2WHLCLS;
   label values A2WRKBK A2WRKBK;
   label values A2WRKSHT A2WRKSHT;
   label values A2WRKSMP A2WRKSMP;
   label values A2WRTNME A2WRTNME;
   label values A2WRTSTO A2WRTSTO;
   label values A2WRTWRD A2WRTWRD;
   label values A2WSTTM A2WSTTM;
   label values A4WSTTM A2WSTTM;
   label values A6WSTTM A2WSTTM;
   label values A2WTHER A2WTHER;
   label values A4ACTSTF A4ACTSTF;
   label values A6ACTSTF A4ACTSTF;
   label values A4ADDTO100 A4ADDTO100F;
   label values A4ANCLS A4ANCLS;
   label values A6ANCLS A4ANCLS;
   label values A4ANSGRPH A4ANSGRPH;
   label values A6ANSGRPH A4ANSGRPH;
   label values A4ARR3OBJ A4ARR3OBJ;
   label values A4ATTEND A4ATTEND;
   label values A6ATTEND A4ATTEND;
   label values A4ATTRSHP A4ATTRSHP;
   label values A6ATTRSHP A4ATTRSHP;
   label values A4BEHVR A4BEHVR;
   label values A6BEHVR A4BEHVR;
   label values A4BSCPLT A4BSCPLT;
   label values A6BSCPLT A4BSCPLT;
   label values A4CDUSE A4CDUSE;
   label values A6CDUSE A4CDUSE;
   label values A4CHARPLOT A4CHARPLOT;
   label values A6CHARPLOT A4CHARPLOT;
   label values A4CLSBHV A4CLSBHV;
   label values A6CLSBHV A4CLSBHV;
   label values A4CLSPAR A4CLSPAR;
   label values A6CLSPAR A4CLSPAR;
   label values A4CLSPROP A4CLSPROP;
   label values A6CLSPROP A4CLSPROP;
   label values A4CMPUSE A4CMPUSE;
   label values A6CMPUSE A4CMPUSE;
   label values A4CMPXINF A4CMPXINF;
   label values A4CMPXPRO A4CMPXPRO;
   label values A4CMSRV A4CMSRV;
   label values A6CMSRV A4CMSRV;
   label values A4CNCLEVD A4CNCLEVD;
   label values A6CNCLEVD A4CNCLEVD;
   label values A4CNSNSS A4CNSNSS;
   label values A6CNSNSS A4CNSNSS;
   label values A4CNT120 A4CNT120F;
   label values A4CNT20QTY A4CNT20QTY;
   label values A4COLLCR A4COLLCR;
   label values A6COLLCR A4COLLCR;
   label values A4COMMSCI A4COMMSCI;
   label values A6COMMSCI A4COMMSCI;
   label values A4COMNTY A4COMNTY;
   label values A6COMNTY A4COMNTY;
   label values A4CONFER A4CONFER;
   label values A6CONFER A4CONFER;
   label values A4CONSLT A4CONSLT;
   label values A6CONSLT A4CONSLT;
   label values A4COOPRT A4COOPRT;
   label values A6COOPRT A4COOPRT;
   label values A4CREVNT A4CREVNT;
   label values A6CREVNT A4CREVNT;
   label values A4CTADSUB A4CTADSUB;
   label values A4CULTRS A4CULTRS;
   label values A6CULTRS A4CULTRS;
   label values A4DESCHAR A4DESCHAR;
   label values A4DGTCUSE A4DGTCUSE;
   label values A6DGTCUSE A4DGTCUSE;
   label values A4DIMCOMP A4DIMCOMP;
   label values A4DINFOS A4DINFOS;
   label values A6DINFOS A4DINFOS;
   label values A4DPWHMWK A4DPWHMWK;
   label values A6DPWHMWK A4DPWHMWK;
   label values A4DRWGRPH A4DRWGRPH;
   label values A6DRWGRPH A4DRWGRPH;
   label values A4DSCPTIM A4DSCPTIM;
   label values A6DSCPTIM A4DSCPTIM;
   label values A4DVDUSE A4DVDUSE;
   label values A6DVDUSE A4DVDUSE;
   label values A4EFFRT A4EFFRT;
   label values A6EFFRT A4EFFRT;
   label values A4ELLPRO A4ELLPRO;
   label values A6ELLPRO A4ELLPRO;
   label values A4EQLSIGN A4EQLSIGN;
   label values A4ESTLNG A4ESTLNG;
   label values A6ESTLNG A4ESTLNG;
   label values A4FICNONF A4FICNONF;
   label values A4FIND10 A4FIND10F;
   label values A4FLLDIR A4FLLDIR;
   label values A6FLLDIR A4FLLDIR;
   label values A4GENCSP A4GENCSP;
   label values A6GENCSP A4GENCSP;
   label values A4GRPCHRT A4GRPCHRT;
   label values A6GRPCHRT A4GRPCHRT;
   label values A4HGHPAR A4HGHPAR;
   label values A6HGHPAR A4HGHPAR;
   label values A4HISTORY A4HISTORY;
   label values A6HISTORY A4HISTORY;
   label values A4IMPPRG A4IMPPRG;
   label values A6IMPPRG A4IMPPRG;
   label values A4INFPIEC A4INFPIEC;
   label values A4IRREGWD A4IRREGWD;
   label values A6IRREGWD A4IRREGWD;
   label values A4LAWGVT A4LAWGVT;
   label values A6LAWGVT A4LAWGVT;
   label values A4LNG2BY3 A4LNG2BY3F;
   label values A6100MOL A4LNG2BY3F;
   label values A610MOLS A4LNG2BY3F;
   label values A620EVOD A4LNG2BY3F;
   label values A6ADD4NM A4LNG2BY3F;
   label values A6ADST20 A4LNG2BY3F;
   label values A6CENMSG A4LNG2BY3F;
   label values A6CHRRSP A4LNG2BY3F;
   label values A6CMPCST A4LNG2BY3F;
   label values A6COMPLIT A4LNG2BY3F;
   label values A6COMWSYM A4LNG2BY3F;
   label values A6CT1000 A4LNG2BY3F;
   label values A6DERGWD A4LNG2BY3F;
   label values A6DESRTM A4LNG2BY3F;
   label values A6DESSTR A4LNG2BY3F;
   label values A6DIFPOV A4LNG2BY3F;
   label values A6DRSHAP A4LNG2BY3F;
   label values A6IDNHTO A4LNG2BY3F;
   label values A6IDNTOP A4LNG2BY3F;
   label values A6IMGCLR A4LNG2BY3F;
   label values A6INFDET A4LNG2BY3F;
   label values A6LNG2BY3 A4LNG2BY3F;
   label values A6LSVOWL A4LNG2BY3F;
   label values A6MEQGLT A4LNG2BY3F;
   label values A6MLT2NM A4LNG2BY3F;
   label values A6MLTB10 A4LNG2BY3F;
   label values A6MNPXSX A4LNG2BY3F;
   label values A6MSAREA A4LNG2BY3F;
   label values A6MSLNGR A4LNG2BY3F;
   label values A6OWNPOV A4LNG2BY3F;
   label values A6QKEYDT A4LNG2BY3F;
   label values A6RDINSL A4LNG2BY3F;
   label values A6RECDTA A4LNG2BY3F;
   label values A6RW1000 A4LNG2BY3F;
   label values A6SLCTXT A4LNG2BY3F;
   label values A6TMPORD A4LNG2BY3F;
   label values A6TTANDG A4LNG2BY3F;
   label values A6TTNR5M A4LNG2BY3F;
   label values A6UNDCSP A4LNG2BY3F;
   label values A6UNDMLT A4LNG2BY3F;
   label values A6USETXF A4LNG2BY3F;
   label values A6WAS100 A4LNG2BY3F;
   label values A6WDLNTH A4LNG2BY3F;
   label values A6WTNR5M A4LNG2BY3F;
   label values A4LNGMULT A4LNGMULT;
   label values A4MAINID A4MAINID;
   label values A6MAINID A4MAINID;
   label values A4MAINTEXT A4MAINTEXT;
   label values A4MANPHO A4MANPHO;
   label values A6MANPHO A4MANPHO;
   label values A4MAPSKL A4MAPSKL;
   label values A6MAPSKL A4MAPSKL;
   label values A4MBLWBMK A4MBLWBMK;
   label values A6MBLWBMK A4MBLWBMK;
   label values A4MCLRINT A4MCLRINT;
   label values A6MCLRINT A4MCLRINT;
   label values A4MCLRNINT A4MCLRNINT;
   label values A6MCLRNINT A4MCLRNINT;
   label values A4MCLRSK A4MCLRSK;
   label values A6MCLRSK A4MCLRSK;
   label values A4MCORCUR A4MCORCUR;
   label values A6MCORCUR A4MCORCUR;
   label values A4MDEFICT A4MDEFICT;
   label values A6MDEFICT A4MDEFICT;
   label values A4MEATOOL A4MEATOOL;
   label values A6MEATOOL A4MEATOOL;
   label values A4MPLCMNT A4MPLCMNT;
   label values A6MPLCMNT A4MPLCMNT;
   label values A4MPROGRS A4MPROGRS;
   label values A6MPROGRS A4MPROGRS;
   label values A4NARRTV A4NARRTV;
   label values A6NARRTV A4NARRTV;
   label values A4NATRSC A4NATRSC;
   label values A6NATRSC A4NATRSC;
   label values A4NMRL120 A4NMRL120F;
   label values A4NUMQTY A4NUMQTY;
   label values A4NUTHLTH A4NUTHLTH;
   label values A6NUTHLTH A4NUTHLTH;
   label values A4OBOBJS A4OBOBJS;
   label values A6OBOBJS A4OBOBJS;
   label values A4OBSBPEER A4OBSBPEER;
   label values A6OBSBPEER A4OBSBPEER;
   label values A4OFTFLN A4OFTFLN;
   label values A6OFTFLN A4OFTFLN;
   label values A4OPINION A4OPINION;
   label values A6OPINION A4OPINION;
   label values A4PACEINT A4PACEINT;
   label values A6PACEINT A4PACEINT;
   label values A4PARTEQL A4PARTEQL;
   label values A4PDARFM A4PDARFM;
   label values A6PDARFM A4PDARFM;
   label values A4PDARFR A4PDARFR;
   label values A6PDARFR A4PDARFR;
   label values A4PDMCUR A4PDMCUR;
   label values A6PDMCUR A4PDMCUR;
   label values A4PDMINS A4PDMINS;
   label values A6PDMINS A4PDMINS;
   label values A4PDRCUR A4PDRCUR;
   label values A6PDRCUR A4PDRCUR;
   label values A4PDRINS A4PDRINS;
   label values A6PDRINS A4PDRINS;
   label values A4PJCTUSE A4PJCTUSE;
   label values A6PJCTUSE A4PJCTUSE;
   label values A4PORTION A4PORTION;
   label values A6PORTION A4PORTION;
   label values A4PREDCT A4PREDCT;
   label values A6PREDCT A4PREDCT;
   label values A4PREDICT A4PREDICT;
   label values A6PREDICT A4PREDICT;
   label values A4PRODEV A4PRODEV;
   label values A6PRODEV A4PRODEV;
   label values A4PROJCT A4PROJCT;
   label values A6PROJCT A4PROJCT;
   label values A4RBLWBMK A4RBLWBMK;
   label values A6RBLWBMK A4RBLWBMK;
   label values A4RCLRINT A4RCLRINT;
   label values A6RCLRINT A4RCLRINT;
   label values A4RCLRNINT A4RCLRNINT;
   label values A6RCLRNINT A4RCLRNINT;
   label values A4RCLRSK A4RCLRSK;
   label values A6RCLRSK A4RCLRSK;
   label values A4RCORCUR A4RCORCUR;
   label values A6RCORCUR A4RCORCUR;
   label values A4RDACCR A4RDACCR;
   label values A6RDACCR A4RDACCR;
   label values A4RDEFICT A4RDEFICT;
   label values A6RDEFICT A4RDEFICT;
   label values A4REASSUP A4REASSUP;
   label values A6REASSUP A4REASSUP;
   label values A4RELQTY A4RELQTY;
   label values A4RELSYM A4RELSYM;
   label values A4RESDIS A4RESDIS;
   label values A6RESDIS A4RESDIS;
   label values A4RESELL A4RESELL;
   label values A6RESELL A4RESELL;
   label values A4RETELL A4RETELL;
   label values A6RETELL A4RETELL;
   label values A4RPLCMNT A4RPLCMNT;
   label values A6RPLCMNT A4RPLCMNT;
   label values A4RPROGRS A4RPROGRS;
   label values A6RPROGRS A4RPROGRS;
   label values A4SEGWORD A4SEGWORD;
   label values A6SEGWORD A4SEGWORD;
   label values A4SENCTXT A4SENCTXT;
   label values A4SENSES A4SENSES;
   label values A4SENSOBS A4SENSOBS;
   label values A6SENSOBS A4SENSOBS;
   label values A4SHDLGT A4SHDLGT;
   label values A6SHDLGT A4SHDLGT;
   label values A4SIDEQUA A4SIDEQUA;
   label values A4SIMDIFF A4SIMDIFF;
   label values A4SKIPCNT A4SKIPCNT;
   label values A6SKIPCNT A4SKIPCNT;
   label values A4SLVADD3 A4SLVADD3F;
   label values A4SLVADSB A4SLVADSB;
   label values A4SLVCOIN A4SLVCOIN;
   label values A6SLVCOIN A4SLVCOIN;
   label values A4SLVUKNM A4SLVUKNM;
   label values A4SNDWRD A4SNDWRD;
   label values A4SOLSPC A4SOLSPC;
   label values A6SOLSPC A4SOLSPC;
   label values A4STFBEHV A4STFBEHV;
   label values A6STFBEHV A4STFBEHV;
   label values A4STFGDE A4STFGDE;
   label values A6STFGDE A4STFGDE;
   label values A4STFMATH A4STFMATH;
   label values A6STFMATH A4STFMATH;
   label values A4STFORG A4STFORG;
   label values A6STFORG A4STFORG;
   label values A4STFREAD A4STFREAD;
   label values A6STFREAD A4STFREAD;
   label values A4STNTST A4STNTST;
   label values A6STNTST A4STNTST;
   label values A4STTMTR A4STTMTR;
   label values A6STTMTR A4STTMTR;
   label values A4TECHWK A4TECHWK;
   label values A6TECHWK A4TECHWK;
   label values A4TELLTIME A4TELLTIME;
   label values A4TENONES A4TENONES;
   label values A4TOCLSS A4TOCLSS;
   label values A6TOCLSS A4TOCLSS;
   label values A4TOOLINF A4TOOLINF;
   label values A6TOOLINF A4TOOLINF;
   label values A4TOSTDR A4TOSTDR;
   label values A6TOSTDR A4TOSTDR;
   label values A4TRIQUAD A4TRIQUAD;
   label values A6TRIQUAD A4TRIQUAD;
   label values A4TSTQZ A4TSTQZ;
   label values A6TSTQZ A4TSTQZ;
   label values A4TVUSE A4TVUSE;
   label values A6TVUSE A4TVUSE;
   label values A4TXFLN A4TXFLN;
   label values A6TXFLN A4TXFLN;
   label values A4USEANTH A4USEANTH;
   label values A6USEANTH A4USEANTH;
   label values A4USEAUBK A4USEAUBK;
   label values A6USEAUBK A4USEAUBK;
   label values A4USEBGBK A4USEBGBK;
   label values A6USEBGBK A4USEBGBK;
   label values A4USEBSL A4USEBSL;
   label values A6USEBSL A4USEBSL;
   label values A4USEDECB A4USEDECB;
   label values A6USEDECB A4USEDECB;
   label values A4USEGLOS A4USEGLOS;
   label values A4USELEV A4USELEV;
   label values A6USELEV A4USELEV;
   label values A4USEMAN A4USEMAN;
   label values A6USEMAN A4USEMAN;
   label values A4USENEW A4USENEW;
   label values A6USENEW A4USENEW;
   label values A4WEBDEV A4WEBDEV;
   label values A6WEBDEV A4WEBDEV;
   label values A4WETHER A4WETHER;
   label values A6WETHER A4WETHER;
   label values A4WHOTELL A4WHOTELL;
   label values A4WKINDP A4WKINDP;
   label values A6WKINDP A4WKINDP;
   label values A4WKINDV A4WKINDV;
   label values A6WKINDV A4WKINDV;
   label values A4WKLGRP A4WKLGRP;
   label values A6WKLGRP A4WKLGRP;
   label values A4WKPEER A4WKPEER;
   label values A6WKPEER A4WKPEER;
   label values A4WKSGRP A4WKSGRP;
   label values A6WKSGRP A4WKSGRP;
   label values A4WORKSH A4WORKSH;
   label values A6WORKSH A4WORKSH;
   label values A4WRDSND A4WRDSND;
   label values A4WRKSAM A4WRKSAM;
   label values A6WRKSAM A4WRKSAM;
   label values A4WRKSTS A4WRKSTS;
   label values A6WRKSTS A4WRKSTS;
   label values A4WRTTIME A4WRTTIME;
   label values A4WTBUSE A4WTBUSE;
   label values A6WTBUSE A4WTBUSE;
   label values A6DIVMTH A6DIVRD;
   label values A6DIVRD A6DIVRD;
   label values A6MINMTH A6MINRD;
   label values A6MINRD A6MINRD;
   label values B2COMPMM B2COMPMM;
   label values B2COMPYY B2COMPYY;
   label values B2HGHPAR B2HGHPAR;
   label values A4HIGHQL B2HIGHQL;
   label values A6HIGHQL B2HIGHQL;
   label values B2HIGHQL B2HIGHQL;
   label values A4STATCT B2STATCT;
   label values A6STATCT B2STATCT;
   label values B2STATCT B2STATCT;
   label values C1ATTLVL C1ATTLVL;
   label values C1COOPER C1COOPER;
   label values C1MOTIVA C1MOTIVA;
   label values C1ENGHM C1NENGHM;
   label values C1SPHOME C1SPHOME;
   label values C1WHATDI C1WHATDI;
   label values C1WHATIN C1WHATIN;
   label values C1WHOPRE C1WHOPRE;
   label values C2ATTLVL C2ATTLVL;
   label values C2COOPER C2COOPER;
   label values C2MOTIVA C2MOTIVA;
   label values C2ENGHM C2NENGHM;
   label values C2SPHOME C2SPHOME;
   label values C2WHATDI C2WHATDI;
   label values C2WHATIN C2WHATIN;
   label values C2WHOPRE C2WHOPRE;
   label values C3ATTLVL C3ATTLVL;
   label values C5ATTLVL C3ATTLVL;
   label values C3COOPER C3COOPER;
   label values C5COOPER C3COOPER;
   label values C3MOTIVA C3MOTIVA;
   label values C5MOTIVA C3MOTIVA;
   label values C3SPHOME C3SPHOME;
   label values C3WHOPRE C3WHOPRE;
   label values C5WHOPRE C3WHOPRE;
   label values C4ATTLVL C4ATTLVL;
   label values C6ATTLVL C4ATTLVL;
   label values C4COOPER C4COOPER;
   label values C6COOPER C4COOPER;
   label values C4MOTIVA C4MOTIVA;
   label values C6MOTIVA C4MOTIVA;
   label values C4SPHOME C4SPHOME;
   label values C4WHOPRE C4WHOPRE;
   label values C6WHOPRE C4WHOPRE;
   label values C5DCCSCM C5DCCSCM;
   label values C6DCCSCM C5DCCSCM;
   label values C5GAME1 C5GAMEF;
   label values C5GAME10 C5GAMEF;
   label values C5GAME11 C5GAMEF;
   label values C5GAME12 C5GAMEF;
   label values C5GAME13 C5GAMEF;
   label values C5GAME14 C5GAMEF;
   label values C5GAME15 C5GAMEF;
   label values C5GAME16 C5GAMEF;
   label values C5GAME17 C5GAMEF;
   label values C5GAME18 C5GAMEF;
   label values C5GAME19 C5GAMEF;
   label values C5GAME2 C5GAMEF;
   label values C5GAME20 C5GAMEF;
   label values C5GAME21 C5GAMEF;
   label values C5GAME22 C5GAMEF;
   label values C5GAME23 C5GAMEF;
   label values C5GAME24 C5GAMEF;
   label values C5GAME25 C5GAMEF;
   label values C5GAME26 C5GAMEF;
   label values C5GAME27 C5GAMEF;
   label values C5GAME28 C5GAMEF;
   label values C5GAME29 C5GAMEF;
   label values C5GAME3 C5GAMEF;
   label values C5GAME30 C5GAMEF;
   label values C5GAME4 C5GAMEF;
   label values C5GAME5 C5GAMEF;
   label values C5GAME6 C5GAMEF;
   label values C5GAME7 C5GAMEF;
   label values C5GAME8 C5GAMEF;
   label values C5GAME9 C5GAMEF;
   label values C6GAME1 C5GAMEF;
   label values C6GAME10 C5GAMEF;
   label values C6GAME11 C5GAMEF;
   label values C6GAME12 C5GAMEF;
   label values C6GAME13 C5GAMEF;
   label values C6GAME14 C5GAMEF;
   label values C6GAME15 C5GAMEF;
   label values C6GAME16 C5GAMEF;
   label values C6GAME17 C5GAMEF;
   label values C6GAME18 C5GAMEF;
   label values C6GAME19 C5GAMEF;
   label values C6GAME2 C5GAMEF;
   label values C6GAME20 C5GAMEF;
   label values C6GAME21 C5GAMEF;
   label values C6GAME22 C5GAMEF;
   label values C6GAME23 C5GAMEF;
   label values C6GAME24 C5GAMEF;
   label values C6GAME25 C5GAMEF;
   label values C6GAME26 C5GAMEF;
   label values C6GAME27 C5GAMEF;
   label values C6GAME28 C5GAMEF;
   label values C6GAME29 C5GAMEF;
   label values C6GAME3 C5GAMEF;
   label values C6GAME30 C5GAMEF;
   label values C6GAME4 C5GAMEF;
   label values C6GAME5 C5GAMEF;
   label values C6GAME6 C5GAMEF;
   label values C6GAME7 C5GAMEF;
   label values C6GAME8 C5GAMEF;
   label values C6GAME9 C5GAMEF;
   label values A6LNGINS ELLPRG;
   label values T6LNGINS ELLPRG;
   label values X1ASMTMM F1ASMTMM;
   label values X3ASMTMM F1ASMTMM;
   label values X4ASMTMM F1ASMTMM;
   label values X5ASMTMM F1ASMTMM;
   label values X1ASMTYY F1ASMTYY;
   label values F1CLASS F1CLASS;
   label values F2CLASS F1CLASS;
   label values F1INTVMM F1INTVMM;
   label values F3INTVMM F1INTVMM;
   label values F5INTVMM F1INTVMM;
   label values F1INTVYY F1INTVYY;
   label values X2ASMTMM F2ASMTMM;
   label values X6ASMTMM F2ASMTMM;
   label values X2ASMTYY F2ASMTYY;
   label values X4ASMTYY F2ASMTYY;
   label values F2INTVMM F2INTVMM;
   label values F4INTVMM F2INTVMM;
   label values F6INTVMM F2INTVMM;
   label values F2INTVYY F2INTVYY;
   label values F4INTVYY F2INTVYY;
   label values F6INTVYY F2INTVYY;
   label values X3ASMTYY F3ASMTYY;
   label values F3INTVYY F3INTVYY;
   label values F5INTVYY F3INTVYY;
   label values IFP4DO1_1 IFP4DO1_1F;
   label values IFP4DO1_2 IFP4DO1_2F;
   label values IFP4DO2_1 IFP4DO2_1F;
   label values IFP4DO2_2 IFP4DO2_2F;
   label values IFP4DO3_1 IFP4DO3_1F;
   label values IFP4DO3_2 IFP4DO3_2F;
   label values IFP4DO4_1 IFP4DO4_1F;
   label values IFP4DO4_2 IFP4DO4_2F;
   label values IFP4DO5_1 IFP4DO5_1F;
   label values IFP4DO5_2 IFP4DO5_2F;
   label values IFP4EMPCHG_1 IFP4EMPCHG_1F;
   label values IFP4EMPCHG_2 IFP4EMPCHG_2F;
   label values IFP4HIG_1 IFP4HIG_1F;
   label values IFP4HIG_2 IFP4HIG_2F;
   label values IFP4HILOW IFP4HILOW;
   label values IFP4HIS_1 IFP4HIS_1F;
   label values IFP4HIS_2 IFP4HIS_2F;
   label values IFP4HRS_1 IFP4HRS_1F;
   label values IFP4HRS_2 IFP4HRS_2F;
   label values IFP4INCHIG IFP4INCHIG;
   label values IFP4INCLOW IFP4INCLOW;
   label values IFP4LOK_1 IFP4LOK_1F;
   label values IFP4LOK_2 IFP4LOK_2F;
   label values IFP4PAY_1 IFP4PAY_1F;
   label values IFP4PAY_2 IFP4PAY_2F;
   label values IFP4TINCTH IFP4TINCTH;
   label values IFP4VAC_1 IFP4VAC_1F;
   label values IFP4VAC_2 IFP4VAC_2F;
   label values IFX4PAR1OCC IFX4PAR1OCC;
   label values IFX4PAR1SCR IFX4PAR1SCR;
   label values IFX4PAR2OCC IFX4PAR2OCC;
   label values IFX4PAR2SCR IFX4PAR2SCR;
   label values IFX12PAR1ED IMPUTE;
   label values IFX12PAR2ED IMPUTE;
   label values IFX1PAR1SCR IMPUTE;
   label values IFX1PAR2SCR IMPUTE;
   label values IFX2FLCH2 IMPUTE;
   label values IFX2INCCAT IMPUTE;
   label values IFX2RLCH2 IMPUTE;
   label values C1BORDER1 NUMREV;
   label values C1BORDER2 NUMREV;
   label values C1BORDER3 NUMREV;
   label values C1BORDER4 NUMREV;
   label values C1BORDER5 NUMREV;
   label values C1BORDER6 NUMREV;
   label values C1NMRV1 NUMREV;
   label values C1NMRV10 NUMREV;
   label values C1NMRV11 NUMREV;
   label values C1NMRV12 NUMREV;
   label values C1NMRV13 NUMREV;
   label values C1NMRV14 NUMREV;
   label values C1NMRV15 NUMREV;
   label values C1NMRV16 NUMREV;
   label values C1NMRV17 NUMREV;
   label values C1NMRV18 NUMREV;
   label values C1NMRV19 NUMREV;
   label values C1NMRV2 NUMREV;
   label values C1NMRV20 NUMREV;
   label values C1NMRV21 NUMREV;
   label values C1NMRV22 NUMREV;
   label values C1NMRV23 NUMREV;
   label values C1NMRV24 NUMREV;
   label values C1NMRV25 NUMREV;
   label values C1NMRV26 NUMREV;
   label values C1NMRV27 NUMREV;
   label values C1NMRV28 NUMREV;
   label values C1NMRV29 NUMREV;
   label values C1NMRV3 NUMREV;
   label values C1NMRV30 NUMREV;
   label values C1NMRV4 NUMREV;
   label values C1NMRV5 NUMREV;
   label values C1NMRV6 NUMREV;
   label values C1NMRV7 NUMREV;
   label values C1NMRV8 NUMREV;
   label values C1NMRV9 NUMREV;
   label values C2BORDER1 NUMREV;
   label values C2BORDER2 NUMREV;
   label values C2BORDER3 NUMREV;
   label values C2BORDER4 NUMREV;
   label values C2BORDER5 NUMREV;
   label values C2BORDER6 NUMREV;
   label values C2NMRV1 NUMREV;
   label values C2NMRV10 NUMREV;
   label values C2NMRV11 NUMREV;
   label values C2NMRV12 NUMREV;
   label values C2NMRV13 NUMREV;
   label values C2NMRV14 NUMREV;
   label values C2NMRV15 NUMREV;
   label values C2NMRV16 NUMREV;
   label values C2NMRV17 NUMREV;
   label values C2NMRV18 NUMREV;
   label values C2NMRV19 NUMREV;
   label values C2NMRV2 NUMREV;
   label values C2NMRV20 NUMREV;
   label values C2NMRV21 NUMREV;
   label values C2NMRV22 NUMREV;
   label values C2NMRV23 NUMREV;
   label values C2NMRV24 NUMREV;
   label values C2NMRV25 NUMREV;
   label values C2NMRV26 NUMREV;
   label values C2NMRV27 NUMREV;
   label values C2NMRV28 NUMREV;
   label values C2NMRV29 NUMREV;
   label values C2NMRV3 NUMREV;
   label values C2NMRV30 NUMREV;
   label values C2NMRV4 NUMREV;
   label values C2NMRV5 NUMREV;
   label values C2NMRV6 NUMREV;
   label values C2NMRV7 NUMREV;
   label values C2NMRV8 NUMREV;
   label values C2NMRV9 NUMREV;
   label values C3BORDER1 NUMREV;
   label values C3BORDER2 NUMREV;
   label values C3BORDER3 NUMREV;
   label values C3BORDER4 NUMREV;
   label values C3BORDER5 NUMREV;
   label values C3BORDER6 NUMREV;
   label values C3NMRV1 NUMREV;
   label values C3NMRV10 NUMREV;
   label values C3NMRV11 NUMREV;
   label values C3NMRV12 NUMREV;
   label values C3NMRV13 NUMREV;
   label values C3NMRV14 NUMREV;
   label values C3NMRV15 NUMREV;
   label values C3NMRV16 NUMREV;
   label values C3NMRV17 NUMREV;
   label values C3NMRV18 NUMREV;
   label values C3NMRV19 NUMREV;
   label values C3NMRV2 NUMREV;
   label values C3NMRV20 NUMREV;
   label values C3NMRV21 NUMREV;
   label values C3NMRV22 NUMREV;
   label values C3NMRV23 NUMREV;
   label values C3NMRV24 NUMREV;
   label values C3NMRV25 NUMREV;
   label values C3NMRV26 NUMREV;
   label values C3NMRV27 NUMREV;
   label values C3NMRV28 NUMREV;
   label values C3NMRV29 NUMREV;
   label values C3NMRV3 NUMREV;
   label values C3NMRV30 NUMREV;
   label values C3NMRV4 NUMREV;
   label values C3NMRV5 NUMREV;
   label values C3NMRV6 NUMREV;
   label values C3NMRV7 NUMREV;
   label values C3NMRV8 NUMREV;
   label values C3NMRV9 NUMREV;
   label values C4BORDER1 NUMREV;
   label values C4BORDER2 NUMREV;
   label values C4BORDER3 NUMREV;
   label values C4BORDER4 NUMREV;
   label values C4BORDER5 NUMREV;
   label values C4BORDER6 NUMREV;
   label values C4NMRV1 NUMREV;
   label values C4NMRV10 NUMREV;
   label values C4NMRV11 NUMREV;
   label values C4NMRV12 NUMREV;
   label values C4NMRV13 NUMREV;
   label values C4NMRV14 NUMREV;
   label values C4NMRV15 NUMREV;
   label values C4NMRV16 NUMREV;
   label values C4NMRV17 NUMREV;
   label values C4NMRV18 NUMREV;
   label values C4NMRV19 NUMREV;
   label values C4NMRV2 NUMREV;
   label values C4NMRV20 NUMREV;
   label values C4NMRV21 NUMREV;
   label values C4NMRV22 NUMREV;
   label values C4NMRV23 NUMREV;
   label values C4NMRV24 NUMREV;
   label values C4NMRV25 NUMREV;
   label values C4NMRV26 NUMREV;
   label values C4NMRV27 NUMREV;
   label values C4NMRV28 NUMREV;
   label values C4NMRV29 NUMREV;
   label values C4NMRV3 NUMREV;
   label values C4NMRV30 NUMREV;
   label values C4NMRV4 NUMREV;
   label values C4NMRV5 NUMREV;
   label values C4NMRV6 NUMREV;
   label values C4NMRV7 NUMREV;
   label values C4NMRV8 NUMREV;
   label values C4NMRV9 NUMREV;
   label values C5NMRV1 NUMREV;
   label values C5NMRV10 NUMREV;
   label values C5NMRV11 NUMREV;
   label values C5NMRV12 NUMREV;
   label values C5NMRV13 NUMREV;
   label values C5NMRV14 NUMREV;
   label values C5NMRV15 NUMREV;
   label values C5NMRV16 NUMREV;
   label values C5NMRV17 NUMREV;
   label values C5NMRV18 NUMREV;
   label values C5NMRV19 NUMREV;
   label values C5NMRV2 NUMREV;
   label values C5NMRV20 NUMREV;
   label values C5NMRV21 NUMREV;
   label values C5NMRV22 NUMREV;
   label values C5NMRV23 NUMREV;
   label values C5NMRV24 NUMREV;
   label values C5NMRV25 NUMREV;
   label values C5NMRV26 NUMREV;
   label values C5NMRV27 NUMREV;
   label values C5NMRV28 NUMREV;
   label values C5NMRV29 NUMREV;
   label values C5NMRV3 NUMREV;
   label values C5NMRV30 NUMREV;
   label values C5NMRV4 NUMREV;
   label values C5NMRV5 NUMREV;
   label values C5NMRV6 NUMREV;
   label values C5NMRV7 NUMREV;
   label values C5NMRV8 NUMREV;
   label values C5NMRV9 NUMREV;
   label values C6NMRV1 NUMREV;
   label values C6NMRV10 NUMREV;
   label values C6NMRV11 NUMREV;
   label values C6NMRV12 NUMREV;
   label values C6NMRV13 NUMREV;
   label values C6NMRV14 NUMREV;
   label values C6NMRV15 NUMREV;
   label values C6NMRV16 NUMREV;
   label values C6NMRV17 NUMREV;
   label values C6NMRV18 NUMREV;
   label values C6NMRV19 NUMREV;
   label values C6NMRV2 NUMREV;
   label values C6NMRV20 NUMREV;
   label values C6NMRV21 NUMREV;
   label values C6NMRV22 NUMREV;
   label values C6NMRV23 NUMREV;
   label values C6NMRV24 NUMREV;
   label values C6NMRV25 NUMREV;
   label values C6NMRV26 NUMREV;
   label values C6NMRV27 NUMREV;
   label values C6NMRV28 NUMREV;
   label values C6NMRV29 NUMREV;
   label values C6NMRV3 NUMREV;
   label values C6NMRV30 NUMREV;
   label values C6NMRV4 NUMREV;
   label values C6NMRV5 NUMREV;
   label values C6NMRV6 NUMREV;
   label values C6NMRV7 NUMREV;
   label values C6NMRV8 NUMREV;
   label values C6NMRV9 NUMREV;
   label values C1COLOR1 NUMREVF;
   label values C1COLOR2 NUMREVF;
   label values C1COLOR3 NUMREVF;
   label values C1COLOR4 NUMREVF;
   label values C1COLOR5 NUMREVF;
   label values C1COLOR6 NUMREVF;
   label values C1SHAPE1 NUMREVF;
   label values C1SHAPE2 NUMREVF;
   label values C1SHAPE3 NUMREVF;
   label values C1SHAPE4 NUMREVF;
   label values C1SHAPE5 NUMREVF;
   label values C1SHAPE6 NUMREVF;
   label values C2COLOR1 NUMREVF;
   label values C2COLOR2 NUMREVF;
   label values C2COLOR3 NUMREVF;
   label values C2COLOR4 NUMREVF;
   label values C2COLOR5 NUMREVF;
   label values C2COLOR6 NUMREVF;
   label values C2SHAPE1 NUMREVF;
   label values C2SHAPE2 NUMREVF;
   label values C2SHAPE3 NUMREVF;
   label values C2SHAPE4 NUMREVF;
   label values C2SHAPE5 NUMREVF;
   label values C2SHAPE6 NUMREVF;
   label values C3COLOR1 NUMREVF;
   label values C3COLOR2 NUMREVF;
   label values C3COLOR3 NUMREVF;
   label values C3COLOR4 NUMREVF;
   label values C3COLOR5 NUMREVF;
   label values C3COLOR6 NUMREVF;
   label values C3SHAPE1 NUMREVF;
   label values C3SHAPE2 NUMREVF;
   label values C3SHAPE3 NUMREVF;
   label values C3SHAPE4 NUMREVF;
   label values C3SHAPE5 NUMREVF;
   label values C3SHAPE6 NUMREVF;
   label values C4COLOR1 NUMREVF;
   label values C4COLOR2 NUMREVF;
   label values C4COLOR3 NUMREVF;
   label values C4COLOR4 NUMREVF;
   label values C4COLOR5 NUMREVF;
   label values C4COLOR6 NUMREVF;
   label values C4SHAPE1 NUMREVF;
   label values C4SHAPE2 NUMREVF;
   label values C4SHAPE3 NUMREVF;
   label values C4SHAPE4 NUMREVF;
   label values C4SHAPE5 NUMREVF;
   label values C4SHAPE6 NUMREVF;
   label values C5DCCS1 NUMREVF;
   label values C5DCCS10 NUMREVF;
   label values C5DCCS11 NUMREVF;
   label values C5DCCS12 NUMREVF;
   label values C5DCCS13 NUMREVF;
   label values C5DCCS14 NUMREVF;
   label values C5DCCS15 NUMREVF;
   label values C5DCCS16 NUMREVF;
   label values C5DCCS17 NUMREVF;
   label values C5DCCS18 NUMREVF;
   label values C5DCCS19 NUMREVF;
   label values C5DCCS2 NUMREVF;
   label values C5DCCS20 NUMREVF;
   label values C5DCCS21 NUMREVF;
   label values C5DCCS22 NUMREVF;
   label values C5DCCS23 NUMREVF;
   label values C5DCCS24 NUMREVF;
   label values C5DCCS25 NUMREVF;
   label values C5DCCS26 NUMREVF;
   label values C5DCCS27 NUMREVF;
   label values C5DCCS28 NUMREVF;
   label values C5DCCS29 NUMREVF;
   label values C5DCCS3 NUMREVF;
   label values C5DCCS30 NUMREVF;
   label values C5DCCS4 NUMREVF;
   label values C5DCCS5 NUMREVF;
   label values C5DCCS6 NUMREVF;
   label values C5DCCS7 NUMREVF;
   label values C5DCCS8 NUMREVF;
   label values C5DCCS9 NUMREVF;
   label values C6DCCS1 NUMREVF;
   label values C6DCCS10 NUMREVF;
   label values C6DCCS11 NUMREVF;
   label values C6DCCS12 NUMREVF;
   label values C6DCCS13 NUMREVF;
   label values C6DCCS14 NUMREVF;
   label values C6DCCS15 NUMREVF;
   label values C6DCCS16 NUMREVF;
   label values C6DCCS17 NUMREVF;
   label values C6DCCS18 NUMREVF;
   label values C6DCCS19 NUMREVF;
   label values C6DCCS2 NUMREVF;
   label values C6DCCS20 NUMREVF;
   label values C6DCCS21 NUMREVF;
   label values C6DCCS22 NUMREVF;
   label values C6DCCS23 NUMREVF;
   label values C6DCCS24 NUMREVF;
   label values C6DCCS25 NUMREVF;
   label values C6DCCS26 NUMREVF;
   label values C6DCCS27 NUMREVF;
   label values C6DCCS28 NUMREVF;
   label values C6DCCS29 NUMREVF;
   label values C6DCCS3 NUMREVF;
   label values C6DCCS30 NUMREVF;
   label values C6DCCS4 NUMREVF;
   label values C6DCCS5 NUMREVF;
   label values C6DCCS6 NUMREVF;
   label values C6DCCS7 NUMREVF;
   label values C6DCCS8 NUMREVF;
   label values C6DCCS9 NUMREVF;
   label values P1BKOTHL P1BKOTHL;
   label values P1BRO_10 P1BRO10F;
   label values P1BRO_11 P1BRO11F;
   label values P1BRO_12 P1BRO12F;
   label values P1BRO_13 P1BRO13F;
   label values P1BRO_14 P1BRO14F;
   label values P1BRO_15 P1BRO15F;
   label values P1BRO_16 P1BRO16F;
   label values P1BRO_17 P1BRO17F;
   label values P1BRO_18 P1BRO18F;
   label values P1BRO_19 P1BRO19F;
   label values P1BRO_1 P1BRO1F;
   label values P1BRO_20 P1BRO20F;
   label values P1BRO_21 P1BRO21F;
   label values P1BRO_22 P1BRO22F;
   label values P1BRO_23 P1BRO23F;
   label values P1BRO_24 P1BRO24F;
   label values P1BRO_25 P1BRO25F;
   label values P1BRO_2 P1BRO2F;
   label values P1BRO_3 P1BRO3F;
   label values P1BRO_4 P1BRO4F;
   label values P1BRO_5 P1BRO5F;
   label values P1BRO_6 P1BRO6F;
   label values P1BRO_7 P1BRO7F;
   label values P1BRO_8 P1BRO8F;
   label values P1BRO_9 P1BRO9F;
   label values P1BRTWGT P1BRTWGT;
   label values P1BUILD P1BUILD;
   label values P1CAMTUC P1CAMTUC;
   label values P1CHDOBM P1CHDOBM;
   label values P1CHL_1 P1CHL1F;
   label values P1CHL_2 P1CHL2F;
   label values P1CHORES P1CHORES;
   label values P1CHREAD P1CHREAD;
   label values P1CHSEX P1CHSEX;
   label values P1CLSGRN P1CLSGRN;
   label values P1CMOPK P1CMOPK;
   label values P1COMPLN P1COMPLN;
   label values P1CONCEN P1CONCEN;
   label values P1COUNT P1COUNT;
   label values P1CREATV P1CREATV;
   label values P1CTRNUM P1CTRNUM;
   label values P1DAD_10 P1DAD10F;
   label values P1DAD_11 P1DAD11F;
   label values P1DAD_12 P1DAD12F;
   label values P1DAD_13 P1DAD13F;
   label values P1DAD_14 P1DAD14F;
   label values P1DAD_15 P1DAD15F;
   label values P1DAD_16 P1DAD16F;
   label values P1DAD_17 P1DAD17F;
   label values P1DAD_18 P1DAD18F;
   label values P1DAD_19 P1DAD19F;
   label values P1DAD_1 P1DAD1F;
   label values P1DAD_20 P1DAD20F;
   label values P1DAD_21 P1DAD21F;
   label values P1DAD_22 P1DAD22F;
   label values P1DAD_23 P1DAD23F;
   label values P1DAD_24 P1DAD24F;
   label values P1DAD_25 P1DAD25F;
   label values P1DAD_2 P1DAD2F;
   label values P1DAD_3 P1DAD3F;
   label values P1DAD_4 P1DAD4F;
   label values P1DAD_5 P1DAD5F;
   label values P1DAD_6 P1DAD6F;
   label values P1DAD_7 P1DAD7F;
   label values P1DAD_8 P1DAD8F;
   label values P1DAD_9 P1DAD9F;
   label values P1EAGER P1EAGER;
   label values P1EXPECT P1EXPECT;
   label values P1FKSICK P1FKSICK;
   label values P1FPT_1 P1FPTOA;
   label values P4FPT_1 P1FPTOA;
   label values P1FPT_2 P1FPTOB;
   label values P4FPT_2 P1FPTOB;
   label values P1GAMES P1GAMES;
   label values P6EXERCS P1GAMES;
   label values P6GAMES P1GAMES;
   label values P6PRACTC P1GAMES;
   label values P1GOOD P1GOOD;
   label values P1HIS_1 P1HIS1F;
   label values P1HIS_2 P1HIS2F;
   label values P1HLPART P1HLPART;
   label values P6HLPART P1HLPART;
   label values P1INDIAN P1INDIAN;
   label values P4INDIAN P1INDIAN;
   label values P6INDIAN P1INDIAN;
   label values P1LEARN P1LEARN;
   label values P1LETTER P1LETTER;
   label values P1LKTCHR P1LKTCHR;
   label values P1LVGRAN P1LVGRAN;
   label values P1MODE P1MODE;
   label values P1MOM_10 P1MOM10F;
   label values P1MOM_11 P1MOM11F;
   label values P1MOM_12 P1MOM12F;
   label values P1MOM_13 P1MOM13F;
   label values P1MOM_14 P1MOM14F;
   label values P1MOM_15 P1MOM15F;
   label values P1MOM_16 P1MOM16F;
   label values P1MOM_17 P1MOM17F;
   label values P1MOM_18 P1MOM18F;
   label values P1MOM_19 P1MOM19F;
   label values P1MOM_1 P1MOM1F;
   label values P1MOM_20 P1MOM20F;
   label values P1MOM_21 P1MOM21F;
   label values P1MOM_22 P1MOM22F;
   label values P1MOM_23 P1MOM23F;
   label values P1MOM_24 P1MOM24F;
   label values P1MOM_25 P1MOM25F;
   label values P1MOM_2 P1MOM2F;
   label values P1MOM_3 P1MOM3F;
   label values P1MOM_4 P1MOM4F;
   label values P1MOM_5 P1MOM5F;
   label values P1MOM_6 P1MOM6F;
   label values P1MOM_7 P1MOM7F;
   label values P1MOM_8 P1MOM8F;
   label values P1MOM_9 P1MOM9F;
   label values P1MOSPK P1MOSPK;
   label values P1NAMTUN P1NAMTUN;
   label values P4NAMTUN P1NAMTUN;
   label values P1NATURE P1NATURE;
   label values P6NATURE P1NATURE;
   label values P1NMOPK P1NMOPK;
   label values P1NOENG P1NOENG;
   label values P1NPLACE P1NPLACE;
   label values P4NPLACE P1NPLACE;
   label values P6NPLACE P1NPLACE;
   label values P1NPLCPK P1NPLCPK;
   label values P1NUMBRS P1NUMBRS;
   label values P1PAYATT P1PAYATT;
   label values P1PENCIL P1PENCIL;
   label values P1PER_10 P1PER10F;
   label values P1PER_11 P1PER11F;
   label values P1PER_12 P1PER12F;
   label values P1PER_13 P1PER13F;
   label values P1PER_14 P1PER14F;
   label values P1PER_15 P1PER15F;
   label values P1PER_16 P1PER16F;
   label values P1PER_17 P1PER17F;
   label values P1PER_18 P1PER18F;
   label values P1PER_19 P1PER19F;
   label values P1PER_1 P1PER1F;
   label values P1PER_20 P1PER20F;
   label values P1PER_21 P1PER21F;
   label values P1PER_22 P1PER22F;
   label values P1PER_23 P1PER23F;
   label values P1PER_24 P1PER24F;
   label values P1PER_25 P1PER25F;
   label values P1PER_2 P1PER2F;
   label values P1PER_3 P1PER3F;
   label values P1PER_4 P1PER4F;
   label values P1PER_5 P1PER5F;
   label values P1PER_6 P1PER6F;
   label values P1PER_7 P1PER7F;
   label values P1PER_8 P1PER8F;
   label values P1PER_9 P1PER9F;
   label values P1PICBKS P1PICBKS;
   label values P4RAMTCH P1RAMTCH;
   label values P1RAMTUN P1RAMTUN;
   label values P4RAMTUN P1RAMTUN;
   label values P1RDOTHL P1RDOTHL;
   label values P4RDOTHL P1RDOTHL;
   label values P6RDOTHL P1RDOTHL;
   label values P1READE1 P1READ1F;
   label values P1READE2 P1READ2F;
   label values P1READBK P1READBK;
   label values P4READBK P1READBK;
   label values P6READBK P1READBK;
   label values P1REL_10 P1REL10F;
   label values P1REL_11 P1REL11F;
   label values P1REL_12 P1REL12F;
   label values P1REL_13 P1REL13F;
   label values P1REL_14 P1REL14F;
   label values P1REL_15 P1REL15F;
   label values P1REL_16 P1REL16F;
   label values P1REL_17 P1REL17F;
   label values P1REL_18 P1REL18F;
   label values P1REL_19 P1REL19F;
   label values P1REL_1 P1REL1F;
   label values P1REL_20 P1REL20F;
   label values P1REL_21 P1REL21F;
   label values P1REL_22 P1REL22F;
   label values P1REL_23 P1REL23F;
   label values P1REL_24 P1REL24F;
   label values P1REL_25 P1REL25F;
   label values P1REL_2 P1REL2F;
   label values P1REL_3 P1REL3F;
   label values P1REL_4 P1REL4F;
   label values P1REL_5 P1REL5F;
   label values P1REL_6 P1REL6F;
   label values P1REL_7 P1REL7F;
   label values P1REL_8 P1REL8F;
   label values P1REL_9 P1REL9F;
   label values P1RES_1 P1RES1F;
   label values P4RES_1 P1RES1F;
   label values P1RES_2 P1RES2F;
   label values P4RES_2 P1RES2F;
   label values P1RPLACE P1RPLACE;
   label values P4RPLACE P1RPLACE;
   label values P6RPLACE P1RPLACE;
   label values P1RPLCPK P1RPLCPK;
   label values P1SAYND P1SAYND;
   label values P1SCH_N1 P1SCHN1F;
   label values P1SCH_N3 P1SCHN3F;
   label values P1SCHORE P1SCHORE;
   label values P1SEX_10 P1SEX10F;
   label values P1SEX_11 P1SEX11F;
   label values P1SEX_12 P1SEX12F;
   label values P1SEX_13 P1SEX13F;
   label values P1SEX_14 P1SEX14F;
   label values P1SEX_15 P1SEX15F;
   label values P1SEX_16 P1SEX16F;
   label values P1SEX_17 P1SEX17F;
   label values P1SEX_18 P1SEX18F;
   label values P1SEX_19 P1SEX19F;
   label values P1SEX_1 P1SEX1F;
   label values P1SEX_20 P1SEX20F;
   label values P1SEX_21 P1SEX21F;
   label values P1SEX_22 P1SEX22F;
   label values P1SEX_23 P1SEX23F;
   label values P1SEX_24 P1SEX24F;
   label values P1SEX_25 P1SEX25F;
   label values P1SEX_2 P1SEX2F;
   label values P1SEX_3 P1SEX3F;
   label values P1SEX_4 P1SEX4F;
   label values P1SEX_5 P1SEX5F;
   label values P1SEX_6 P1SEX6F;
   label values P1SEX_7 P1SEX7F;
   label values P1SEX_8 P1SEX8F;
   label values P1SEX_9 P1SEX9F;
   label values P1SHARE P1SHARE;
   label values P1SHWINT P1SHWINT;
   label values P1SINGSO P1SINGSO;
   label values P1SIS_10 P1SIS10F;
   label values P1SIS_11 P1SIS11F;
   label values P1SIS_12 P1SIS12F;
   label values P1SIS_13 P1SIS13F;
   label values P1SIS_14 P1SIS14F;
   label values P1SIS_15 P1SIS15F;
   label values P1SIS_16 P1SIS16F;
   label values P1SIS_17 P1SIS17F;
   label values P1SIS_18 P1SIS18F;
   label values P1SIS_19 P1SIS19F;
   label values P1SIS_1 P1SIS1F;
   label values P1SIS_20 P1SIS20F;
   label values P1SIS_21 P1SIS21F;
   label values P1SIS_22 P1SIS22F;
   label values P1SIS_23 P1SIS23F;
   label values P1SIS_24 P1SIS24F;
   label values P1SIS_25 P1SIS25F;
   label values P1SIS_2 P1SIS2F;
   label values P1SIS_3 P1SIS3F;
   label values P1SIS_4 P1SIS4F;
   label values P1SIS_5 P1SIS5F;
   label values P1SIS_6 P1SIS6F;
   label values P1SIS_7 P1SIS7F;
   label values P1SIS_8 P1SIS8F;
   label values P1SIS_9 P1SIS9F;
   label values P1SPEAK1 P1SPKOA;
   label values P1SPEAK2 P1SPKOB;
   label values P1SPORT P1SPORT;
   label values P6SPORT P1SPORT;
   label values P1TELLST P1TELLST;
   label values P6TELLST P1TELLST;
   label values P1UNDER1 P1UNDROA;
   label values P1UNDER2 P1UNDROB;
   label values P1UNR_10 P1UNR10F;
   label values P1UNR_11 P1UNR11F;
   label values P1UNR_12 P1UNR12F;
   label values P1UNR_13 P1UNR13F;
   label values P1UNR_14 P1UNR14F;
   label values P1UNR_15 P1UNR15F;
   label values P1UNR_16 P1UNR16F;
   label values P1UNR_17 P1UNR17F;
   label values P1UNR_18 P1UNR18F;
   label values P1UNR_19 P1UNR19F;
   label values P1UNR_1 P1UNR1F;
   label values P1UNR_20 P1UNR20F;
   label values P1UNR_21 P1UNR21F;
   label values P1UNR_22 P1UNR22F;
   label values P1UNR_23 P1UNR23F;
   label values P1UNR_24 P1UNR24F;
   label values P1UNR_25 P1UNR25F;
   label values P1UNR_2 P1UNR2F;
   label values P1UNR_3 P1UNR3F;
   label values P1UNR_4 P1UNR4F;
   label values P1UNR_5 P1UNR5F;
   label values P1UNR_6 P1UNR6F;
   label values P1UNR_7 P1UNR7F;
   label values P1UNR_8 P1UNR8F;
   label values P1UNR_9 P1UNR9F;
   label values P1UNSEFD P1UNSEFD;
   label values P1UPSET P1UPSET;
   label values P1WHENEN P1WHENEN;
   label values P1WHRITV P1WHRITV;
   label values P1WRKFIN P1WRKFIN;
   label values P1WRKOT1 P1WRKO1F;
   label values P1WRKOT2 P1WRKO2F;
   label values P1WRITE1 P1WRTOA;
   label values P1WRITE2 P1WRTOB;
   label values P2ACTIVE P2ACTIVE;
   label values P4ACTIVE P2ACTIVE;
   label values P6ACTIVE P2ACTIVE;
   label values P4AGHCU2 P2AGHC2F;
   label values P2AGHCU1 P2AGHC8F;
   label values P2AGSVU1 P2AGSVUG;
   label values P2AGVIU1 P2AGVIUG;
   label values P2APPETI P2APPETI;
   label values P2ARTICL P2ARTICL;
   label values P2BDLVST P2BDLVST;
   label values P2BDTMAP P2BDTMAP;
   label values P2BDTMLT P2BDTMLT;
   label values P2BLMEAL P2BLMEAL;
   label values P4BLMEAL P2BLMEAL;
   label values P2BLUE P2BLUE;
   label values P2BMLVST P2BMLVST;
   label values P2BOTHER P2BOTHER;
   label values P2BRO_10 P2BRO10F;
   label values P2BRO_11 P2BRO11F;
   label values P2BRO_12 P2BRO12F;
   label values P2BRO_13 P2BRO13F;
   label values P2BRO_14 P2BRO14F;
   label values P2BRO_15 P2BRO15F;
   label values P2BRO_16 P2BRO16F;
   label values P2BRO_17 P2BRO17F;
   label values P2BRO_18 P2BRO18F;
   label values P2BRO_19 P2BRO19F;
   label values P2BRO_1 P2BRO1F;
   label values P2BRO_20 P2BRO20F;
   label values P2BRO_21 P2BRO21F;
   label values P2BRO_22 P2BRO22F;
   label values P2BRO_23 P2BRO23F;
   label values P2BRO_24 P2BRO24F;
   label values P2BRO_25 P2BRO25F;
   label values P2BRO_2 P2BRO2F;
   label values P2BRO_3 P2BRO3F;
   label values P2BRO_4 P2BRO4F;
   label values P2BRO_5 P2BRO5F;
   label values P2BRO_6 P2BRO6F;
   label values P2BRO_7 P2BRO7F;
   label values P2BRO_8 P2BRO8F;
   label values P2BRO_9 P2BRO9F;
   label values P2BURGLR P2BURGLR;
   label values P2CANTAF P2CANTAF;
   label values P2CHANCV P2CHANCV;
   label values P2CHDBTH P2CHDBTH;
   label values P2CHDOBM P2CHDOBM;
   label values P2CHILDR P2CHILDR;
   label values P2CHLIKE P2CHLIKE;
   label values P2CHLPIC P2CHLPIC;
   label values P2CHORES P2CHORES;
   label values P4CHORES P2CHORES;
   label values P2CHREAD P2CHREAD;
   label values P4CHREAD P2CHREAD;
   label values P6CHREAD P2CHREAD;
   label values P2CHSEX P2CHSEX;
   label values P4CHSEX P2CHSEX;
   label values P6CHSEX P2CHSEX;
   label values P2CMPRD P2CMPRD;
   label values P2COMMUN P2COMMUN;
   label values P4COMMUN P2COMMUN;
   label values P2CONCEN P2CONCEN;
   label values P4CONCEN P2CONCEN;
   label values P2COORD P2COORD;
   label values P4ARTICL P2COORD;
   label values P4COORD P2COORD;
   label values P6ARTICL P2COORD;
   label values P6COORD P2COORD;
   label values P2CREATV P2CREATV;
   label values P4CREATV P2CREATV;
   label values P2DAD_10 P2DAD10F;
   label values P4DAD_10 P2DAD10F;
   label values P6DAD_10 P2DAD10F;
   label values P2DAD_11 P2DAD11F;
   label values P4DAD_11 P2DAD11F;
   label values P6DAD_11 P2DAD11F;
   label values P2DAD_12 P2DAD12F;
   label values P4DAD_12 P2DAD12F;
   label values P6DAD_12 P2DAD12F;
   label values P2DAD_13 P2DAD13F;
   label values P4DAD_13 P2DAD13F;
   label values P6DAD_13 P2DAD13F;
   label values P2DAD_14 P2DAD14F;
   label values P4DAD_14 P2DAD14F;
   label values P6DAD_14 P2DAD14F;
   label values P2DAD_15 P2DAD15F;
   label values P4DAD_15 P2DAD15F;
   label values P6DAD_15 P2DAD15F;
   label values P2DAD_16 P2DAD16F;
   label values P4DAD_16 P2DAD16F;
   label values P6DAD_16 P2DAD16F;
   label values P2DAD_17 P2DAD17F;
   label values P4DAD_17 P2DAD17F;
   label values P6DAD_17 P2DAD17F;
   label values P2DAD_18 P2DAD18F;
   label values P4DAD_18 P2DAD18F;
   label values P6DAD_18 P2DAD18F;
   label values P2DAD_19 P2DAD19F;
   label values P4DAD_19 P2DAD19F;
   label values P6DAD_19 P2DAD19F;
   label values P2DAD_1 P2DAD1F;
   label values P4DAD_1 P2DAD1F;
   label values P6DAD_1 P2DAD1F;
   label values P2DAD_20 P2DAD20F;
   label values P4DAD_20 P2DAD20F;
   label values P6DAD_20 P2DAD20F;
   label values P2DAD_21 P2DAD21F;
   label values P4DAD_21 P2DAD21F;
   label values P6DAD_21 P2DAD21F;
   label values P2DAD_22 P2DAD22F;
   label values P4DAD_22 P2DAD22F;
   label values P6DAD_22 P2DAD22F;
   label values P2DAD_23 P2DAD23F;
   label values P4DAD_23 P2DAD23F;
   label values P6DAD_23 P2DAD23F;
   label values P2DAD_24 P2DAD24F;
   label values P4DAD_24 P2DAD24F;
   label values P6DAD_24 P2DAD24F;
   label values P2DAD_25 P2DAD25F;
   label values P4DAD_25 P2DAD25F;
   label values P6DAD_25 P2DAD25F;
   label values P2DAD_2 P2DAD2F;
   label values P4DAD_2 P2DAD2F;
   label values P6DAD_2 P2DAD2F;
   label values P2DAD_3 P2DAD3F;
   label values P4DAD_3 P2DAD3F;
   label values P6DAD_3 P2DAD3F;
   label values P2DAD_4 P2DAD4F;
   label values P4DAD_4 P2DAD4F;
   label values P6DAD_4 P2DAD4F;
   label values P2DAD_5 P2DAD5F;
   label values P4DAD_5 P2DAD5F;
   label values P6DAD_5 P2DAD5F;
   label values P2DAD_6 P2DAD6F;
   label values P4DAD_6 P2DAD6F;
   label values P6DAD_6 P2DAD6F;
   label values P2DAD_7 P2DAD7F;
   label values P4DAD_7 P2DAD7F;
   label values P6DAD_7 P2DAD7F;
   label values P2DAD_8 P2DAD8F;
   label values P4DAD_8 P2DAD8F;
   label values P6DAD_8 P2DAD8F;
   label values P2DAD_9 P2DAD9F;
   label values P4DAD_9 P2DAD9F;
   label values P6DAD_9 P2DAD9F;
   label values P2DADHOM P2DADHOM;
   label values P2DADHM2 P2DADMF;
   label values P2DEPRES P2DEPRES;
   label values P2DISTHM P2DISTHM;
   label values P2DRUG P2DRUG;
   label values P2EFFORT P2EFFORT;
   label values P2ETHNIC P2ETHNIC;
   label values P2EVCUT P2EVCUT;
   label values P4EVCUT P2EVCUT;
   label values P2EXPRES P2EXPRES;
   label values P2FDLAST P2FDLAST;
   label values P4FDLAST P2FDLAST;
   label values P2FEARFL P2FEARFL;
   label values P2FLANGR P2FLANGR;
   label values P4FLANGR P2FLANGR;
   label values P2FREERD P2FREERD;
   label values P4FREERD P2FREERD;
   label values P6FREERD P2FREERD;
   label values P2FRERED P2FRERED;
   label values P4FRERED P2FRERED;
   label values P2GOTOBD P2GOTOBD;
   label values P2HEALTH P2HEALTH;
   label values P6HEALTH P2HEALTH;
   label values P2HILOW P2HILOW;
   label values P2HIS_1 P2HIS1F;
   label values P2HIS_2 P2HIS2F;
   label values P2HLPLRN P2HLPLRN;
   label values P4HLPLRN P2HLPLRN;
   label values P2HOWCHD P2HOWCHD;
   label values P4HOWCHD P2HOWCHD;
   label values P2HSP_1 P2HSP1F;
   label values P4HSP_1 P2HSP1F;
   label values P6HSP_1 P2HSP1F;
   label values P2HSP_2 P2HSP2F;
   label values P4HSP_2 P2HSP2F;
   label values P6HSP_2 P2HSP2F;
   label values P2INCHIG P2INCHIG;
   label values P2INCLOW P2INCLOW;
   label values P2INDPNT P2INDPNT;
   label values P4INDPNT P2INDPNT;
   label values P6INDPNT P2INDPNT;
   label values P2JOI_10 P2JOI10F;
   label values P2JOI_11 P2JOI11F;
   label values P2JOI_12 P2JOI12F;
   label values P2JOI_13 P2JOI13F;
   label values P2JOI_14 P2JOI14F;
   label values P2JOI_15 P2JOI15F;
   label values P2JOI_16 P2JOI16F;
   label values P2JOI_17 P2JOI17F;
   label values P2JOI_18 P2JOI18F;
   label values P2JOI_19 P2JOI19F;
   label values P2JOI_1 P2JOI1F;
   label values P2JOI_20 P2JOI20F;
   label values P2JOI_21 P2JOI21F;
   label values P2JOI_22 P2JOI22F;
   label values P2JOI_23 P2JOI23F;
   label values P2JOI_24 P2JOI24F;
   label values P2JOI_25 P2JOI25F;
   label values P2JOI_2 P2JOI2F;
   label values P2JOI_3 P2JOI3F;
   label values P2JOI_4 P2JOI4F;
   label values P2JOI_5 P2JOI5F;
   label values P2JOI_6 P2JOI6F;
   label values P2JOI_7 P2JOI7F;
   label values P2JOI_8 P2JOI8F;
   label values P2JOI_9 P2JOI9F;
   label values P2KPMIND P2KPMIND;
   label values P2LEARN P2LEARN;
   label values P4LEARN P2LEARN;
   label values P2LENHLP P2LENHLP;
   label values P4LENHLP P2LENHLP;
   label values P6LENHLP P2LENHLP;
   label values P4LOCMED2 P2LOCMED;
   label values P2LONELY P2LONELY;
   label values P2LOWCST P2LOWCST;
   label values P4LOWCST P2LOWCST;
   label values P2MAGPRB P2MAGPRB;
   label values P4MAGPRB P2MAGPRB;
   label values P6MAGPRB P2MAGPRB;
   label values P2MODE P2MODE;
   label values P4MODE P2MODE;
   label values P6MODE P2MODE;
   label values P2MOM_10 P2MOM10F;
   label values P4MOM_10 P2MOM10F;
   label values P6MOM_10 P2MOM10F;
   label values P2MOM_11 P2MOM11F;
   label values P4MOM_11 P2MOM11F;
   label values P6MOM_11 P2MOM11F;
   label values P2MOM_12 P2MOM12F;
   label values P4MOM_12 P2MOM12F;
   label values P6MOM_12 P2MOM12F;
   label values P2MOM_13 P2MOM13F;
   label values P4MOM_13 P2MOM13F;
   label values P6MOM_13 P2MOM13F;
   label values P2MOM_14 P2MOM14F;
   label values P4MOM_14 P2MOM14F;
   label values P6MOM_14 P2MOM14F;
   label values P2MOM_15 P2MOM15F;
   label values P4MOM_15 P2MOM15F;
   label values P6MOM_15 P2MOM15F;
   label values P2MOM_16 P2MOM16F;
   label values P4MOM_16 P2MOM16F;
   label values P6MOM_16 P2MOM16F;
   label values P2MOM_17 P2MOM17F;
   label values P4MOM_17 P2MOM17F;
   label values P6MOM_17 P2MOM17F;
   label values P2MOM_18 P2MOM18F;
   label values P4MOM_18 P2MOM18F;
   label values P6MOM_18 P2MOM18F;
   label values P2MOM_19 P2MOM19F;
   label values P4MOM_19 P2MOM19F;
   label values P6MOM_19 P2MOM19F;
   label values P2MOM_1 P2MOM1F;
   label values P4MOM_1 P2MOM1F;
   label values P6MOM_1 P2MOM1F;
   label values P2MOM_20 P2MOM20F;
   label values P4MOM_20 P2MOM20F;
   label values P6MOM_20 P2MOM20F;
   label values P2MOM_21 P2MOM21F;
   label values P4MOM_21 P2MOM21F;
   label values P6MOM_21 P2MOM21F;
   label values P2MOM_22 P2MOM22F;
   label values P4MOM_22 P2MOM22F;
   label values P6MOM_22 P2MOM22F;
   label values P2MOM_23 P2MOM23F;
   label values P4MOM_23 P2MOM23F;
   label values P6MOM_23 P2MOM23F;
   label values P2MOM_24 P2MOM24F;
   label values P4MOM_24 P2MOM24F;
   label values P6MOM_24 P2MOM24F;
   label values P2MOM_25 P2MOM25F;
   label values P4MOM_25 P2MOM25F;
   label values P6MOM_25 P2MOM25F;
   label values P2MOM_2 P2MOM2F;
   label values P4MOM_2 P2MOM2F;
   label values P6MOM_2 P2MOM2F;
   label values P2MOM_3 P2MOM3F;
   label values P4MOM_3 P2MOM3F;
   label values P6MOM_3 P2MOM3F;
   label values P2MOM_4 P2MOM4F;
   label values P4MOM_4 P2MOM4F;
   label values P6MOM_4 P2MOM4F;
   label values P2MOM_5 P2MOM5F;
   label values P4MOM_5 P2MOM5F;
   label values P6MOM_5 P2MOM5F;
   label values P2MOM_6 P2MOM6F;
   label values P4MOM_6 P2MOM6F;
   label values P6MOM_6 P2MOM6F;
   label values P2MOM_7 P2MOM7F;
   label values P4MOM_7 P2MOM7F;
   label values P6MOM_7 P2MOM7F;
   label values P2MOM_8 P2MOM8F;
   label values P4MOM_8 P2MOM8F;
   label values P6MOM_8 P2MOM8F;
   label values P2MOM_9 P2MOM9F;
   label values P4MOM_9 P2MOM9F;
   label values P6MOM_9 P2MOM9F;
   label values P2NOBAL P2NOBAL;
   label values P4NOBAL P2NOBAL;
   label values P2NOTEA2 P2NOTE2F;
   label values P4NOTEA2 P2NOTE2F;
   label values P2NOTGO P2NOTGO;
   label values P2OFTCUT P2OFTCUT;
   label values P4OFTCUT P2OFTCUT;
   label values P2PAYATT P2PAYATT;
   label values P4PAYATT P2PAYATT;
   label values P6PAYATT P2PAYATT;
   label values P2PER_10 P2PER10F;
   label values P4PER_10 P2PER10F;
   label values P6PER_10 P2PER10F;
   label values P2PER_11 P2PER11F;
   label values P4PER_11 P2PER11F;
   label values P6PER_11 P2PER11F;
   label values P2PER_12 P2PER12F;
   label values P4PER_12 P2PER12F;
   label values P6PER_12 P2PER12F;
   label values P2PER_13 P2PER13F;
   label values P4PER_13 P2PER13F;
   label values P6PER_13 P2PER13F;
   label values P2PER_14 P2PER14F;
   label values P4PER_14 P2PER14F;
   label values P6PER_14 P2PER14F;
   label values P2PER_15 P2PER15F;
   label values P4PER_15 P2PER15F;
   label values P6PER_15 P2PER15F;
   label values P2PER_16 P2PER16F;
   label values P4PER_16 P2PER16F;
   label values P6PER_16 P2PER16F;
   label values P2PER_17 P2PER17F;
   label values P4PER_17 P2PER17F;
   label values P6PER_17 P2PER17F;
   label values P2PER_18 P2PER18F;
   label values P4PER_18 P2PER18F;
   label values P6PER_18 P2PER18F;
   label values P2PER_19 P2PER19F;
   label values P4PER_19 P2PER19F;
   label values P6PER_19 P2PER19F;
   label values P2PER_1 P2PER1F;
   label values P4PER_1 P2PER1F;
   label values P6PER_1 P2PER1F;
   label values P2PER_20 P2PER20F;
   label values P4PER_20 P2PER20F;
   label values P6PER_20 P2PER20F;
   label values P2PER_21 P2PER21F;
   label values P4PER_21 P2PER21F;
   label values P6PER_21 P2PER21F;
   label values P2PER_22 P2PER22F;
   label values P4PER_22 P2PER22F;
   label values P6PER_22 P2PER22F;
   label values P2PER_23 P2PER23F;
   label values P4PER_23 P2PER23F;
   label values P6PER_23 P2PER23F;
   label values P2PER_24 P2PER24F;
   label values P4PER_24 P2PER24F;
   label values P6PER_24 P2PER24F;
   label values P2PER_25 P2PER25F;
   label values P4PER_25 P2PER25F;
   label values P6PER_25 P2PER25F;
   label values P2PER_2 P2PER2F;
   label values P4PER_2 P2PER2F;
   label values P6PER_2 P2PER2F;
   label values P2PER_3 P2PER3F;
   label values P4PER_3 P2PER3F;
   label values P6PER_3 P2PER3F;
   label values P2PER_4 P2PER4F;
   label values P4PER_4 P2PER4F;
   label values P6PER_4 P2PER4F;
   label values P2PER_5 P2PER5F;
   label values P4PER_5 P2PER5F;
   label values P6PER_5 P2PER5F;
   label values P2PER_6 P2PER6F;
   label values P4PER_6 P2PER6F;
   label values P6PER_6 P2PER6F;
   label values P2PER_7 P2PER7F;
   label values P4PER_7 P2PER7F;
   label values P6PER_7 P2PER7F;
   label values P2PER_8 P2PER8F;
   label values P4PER_8 P2PER8F;
   label values P6PER_8 P2PER8F;
   label values P2PER_9 P2PER9F;
   label values P4PER_9 P2PER9F;
   label values P6PER_9 P2PER9F;
   label values P2PTHARD P2PTHARD;
   label values P4PTHARD P2PTHARD;
   label values P2RDP_10 P2RDP10F;
   label values P2RDP_11 P2RDP11F;
   label values P2RDP_12 P2RDP12F;
   label values P2RDP_13 P2RDP13F;
   label values P2RDP_14 P2RDP14F;
   label values P2RDP_15 P2RDP15F;
   label values P2RDP_16 P2RDP16F;
   label values P2RDP_17 P2RDP17F;
   label values P2RDP_18 P2RDP18F;
   label values P2RDP_19 P2RDP19F;
   label values P2RDP_1 P2RDP1F;
   label values P2RDP_20 P2RDP20F;
   label values P2RDP_21 P2RDP21F;
   label values P2RDP_22 P2RDP22F;
   label values P2RDP_23 P2RDP23F;
   label values P2RDP_24 P2RDP24F;
   label values P2RDP_25 P2RDP25F;
   label values P2RDP_2 P2RDP2F;
   label values P2RDP_3 P2RDP3F;
   label values P2RDP_4 P2RDP4F;
   label values P2RDP_5 P2RDP5F;
   label values P2RDP_6 P2RDP6F;
   label values P2RDP_7 P2RDP7F;
   label values P2RDP_8 P2RDP8F;
   label values P2RDP_9 P2RDP9F;
   label values P2REL_10 P2REL10F;
   label values P4REL_10 P2REL10F;
   label values P6REL_10 P2REL10F;
   label values P2REL_11 P2REL11F;
   label values P4REL_11 P2REL11F;
   label values P6REL_11 P2REL11F;
   label values P2REL_12 P2REL12F;
   label values P4REL_12 P2REL12F;
   label values P6REL_12 P2REL12F;
   label values P2REL_13 P2REL13F;
   label values P4REL_13 P2REL13F;
   label values P6REL_13 P2REL13F;
   label values P2REL_14 P2REL14F;
   label values P4REL_14 P2REL14F;
   label values P6REL_14 P2REL14F;
   label values P2REL_15 P2REL15F;
   label values P4REL_15 P2REL15F;
   label values P6REL_15 P2REL15F;
   label values P2REL_16 P2REL16F;
   label values P4REL_16 P2REL16F;
   label values P6REL_16 P2REL16F;
   label values P2REL_17 P2REL17F;
   label values P4REL_17 P2REL17F;
   label values P6REL_17 P2REL17F;
   label values P2REL_18 P2REL18F;
   label values P4REL_18 P2REL18F;
   label values P6REL_18 P2REL18F;
   label values P2REL_19 P2REL19F;
   label values P4REL_19 P2REL19F;
   label values P6REL_19 P2REL19F;
   label values P2REL_1 P2REL1F;
   label values P4REL_1 P2REL1F;
   label values P6REL_1 P2REL1F;
   label values P2REL_20 P2REL20F;
   label values P4REL_20 P2REL20F;
   label values P6REL_20 P2REL20F;
   label values P2REL_21 P2REL21F;
   label values P4REL_21 P2REL21F;
   label values P6REL_21 P2REL21F;
   label values P2REL_22 P2REL22F;
   label values P4REL_22 P2REL22F;
   label values P6REL_22 P2REL22F;
   label values P2REL_23 P2REL23F;
   label values P4REL_23 P2REL23F;
   label values P6REL_23 P2REL23F;
   label values P2REL_24 P2REL24F;
   label values P4REL_24 P2REL24F;
   label values P6REL_24 P2REL24F;
   label values P2REL_25 P2REL25F;
   label values P4REL_25 P2REL25F;
   label values P6REL_25 P2REL25F;
   label values P2REL_2 P2REL2F;
   label values P4REL_2 P2REL2F;
   label values P6REL_2 P2REL2F;
   label values P2REL_3 P2REL3F;
   label values P4REL_3 P2REL3F;
   label values P6REL_3 P2REL3F;
   label values P2REL_4 P2REL4F;
   label values P4REL_4 P2REL4F;
   label values P6REL_4 P2REL4F;
   label values P2REL_5 P2REL5F;
   label values P4REL_5 P2REL5F;
   label values P6REL_5 P2REL5F;
   label values P2REL_6 P2REL6F;
   label values P4REL_6 P2REL6F;
   label values P6REL_6 P2REL6F;
   label values P2REL_7 P2REL7F;
   label values P4REL_7 P2REL7F;
   label values P6REL_7 P2REL7F;
   label values P2REL_8 P2REL8F;
   label values P4REL_8 P2REL8F;
   label values P6REL_8 P2REL8F;
   label values P2REL_9 P2REL9F;
   label values P4REL_9 P2REL9F;
   label values P6REL_9 P2REL9F;
   label values P2RELADT P2RELADT;
   label values P4RELADT P2RELADT;
   label values P6RELADT P2RELADT;
   label values P2RELCHD P2RELCHD;
   label values P4RELCHD P2RELCHD;
   label values P6RELCHD P2RELCHD;
   label values P2RELIG P2RELIG;
   label values P2RELSHP P2RELSHP;
   label values P2RESTLS P2RESTLS;
   label values P2SACRFC P2SACRFC;
   label values P4SACRFC P2SACRFC;
   label values P2SAD P2SAD;
   label values P2SAFEPL P2SAFEPL;
   label values P4SAFEPL P2SAFEPL;
   label values P2SATPSS P2SATPSS;
   label values P4SATPSS P2SATPSS;
   label values P6SATPSS P2SATPSS;
   label values P2SATSCL P2SATSCL;
   label values P6SATSCL P2SATSCL;
   label values P2SEX_10 P2SEX10F;
   label values P4SEX_10 P2SEX10F;
   label values P6SEX_10 P2SEX10F;
   label values P2SEX_11 P2SEX11F;
   label values P4SEX_11 P2SEX11F;
   label values P6SEX_11 P2SEX11F;
   label values P2SEX_12 P2SEX12F;
   label values P4SEX_12 P2SEX12F;
   label values P6SEX_12 P2SEX12F;
   label values P2SEX_13 P2SEX13F;
   label values P4SEX_13 P2SEX13F;
   label values P6SEX_13 P2SEX13F;
   label values P2SEX_14 P2SEX14F;
   label values P4SEX_14 P2SEX14F;
   label values P6SEX_14 P2SEX14F;
   label values P2SEX_15 P2SEX15F;
   label values P4SEX_15 P2SEX15F;
   label values P6SEX_15 P2SEX15F;
   label values P2SEX_16 P2SEX16F;
   label values P4SEX_16 P2SEX16F;
   label values P6SEX_16 P2SEX16F;
   label values P2SEX_17 P2SEX17F;
   label values P4SEX_17 P2SEX17F;
   label values P6SEX_17 P2SEX17F;
   label values P2SEX_18 P2SEX18F;
   label values P4SEX_18 P2SEX18F;
   label values P6SEX_18 P2SEX18F;
   label values P2SEX_19 P2SEX19F;
   label values P4SEX_19 P2SEX19F;
   label values P6SEX_19 P2SEX19F;
   label values P2SEX_1 P2SEX1F;
   label values P4SEX_1 P2SEX1F;
   label values P6SEX_1 P2SEX1F;
   label values P2SEX_20 P2SEX20F;
   label values P4SEX_20 P2SEX20F;
   label values P6SEX_20 P2SEX20F;
   label values P2SEX_21 P2SEX21F;
   label values P4SEX_21 P2SEX21F;
   label values P6SEX_21 P2SEX21F;
   label values P2SEX_22 P2SEX22F;
   label values P4SEX_22 P2SEX22F;
   label values P6SEX_22 P2SEX22F;
   label values P2SEX_23 P2SEX23F;
   label values P4SEX_23 P2SEX23F;
   label values P6SEX_23 P2SEX23F;
   label values P2SEX_24 P2SEX24F;
   label values P4SEX_24 P2SEX24F;
   label values P6SEX_24 P2SEX24F;
   label values P2SEX_25 P2SEX25F;
   label values P4SEX_25 P2SEX25F;
   label values P6SEX_25 P2SEX25F;
   label values P2SEX_2 P2SEX2F;
   label values P4SEX_2 P2SEX2F;
   label values P6SEX_2 P2SEX2F;
   label values P2SEX_3 P2SEX3F;
   label values P4SEX_3 P2SEX3F;
   label values P6SEX_3 P2SEX3F;
   label values P2SEX_4 P2SEX4F;
   label values P4SEX_4 P2SEX4F;
   label values P6SEX_4 P2SEX4F;
   label values P2SEX_5 P2SEX5F;
   label values P4SEX_5 P2SEX5F;
   label values P6SEX_5 P2SEX5F;
   label values P2SEX_6 P2SEX6F;
   label values P4SEX_6 P2SEX6F;
   label values P6SEX_6 P2SEX6F;
   label values P2SEX_7 P2SEX7F;
   label values P4SEX_7 P2SEX7F;
   label values P6SEX_7 P2SEX7F;
   label values P2SEX_8 P2SEX8F;
   label values P4SEX_8 P2SEX8F;
   label values P6SEX_8 P2SEX8F;
   label values P2SEX_9 P2SEX9F;
   label values P4SEX_9 P2SEX9F;
   label values P6SEX_9 P2SEX9F;
   label values P2SHOWLV P2SHOWLV;
   label values P2SHWINT P2SHWINT;
   label values P4SHWINT P2SHWINT;
   label values P2SIS_10 P2SIS10F;
   label values P4SIS_10 P2SIS10F;
   label values P6SIS_10 P2SIS10F;
   label values P2SIS_11 P2SIS11F;
   label values P4SIS_11 P2SIS11F;
   label values P6SIS_11 P2SIS11F;
   label values P2SIS_12 P2SIS12F;
   label values P4SIS_12 P2SIS12F;
   label values P6SIS_12 P2SIS12F;
   label values P2SIS_13 P2SIS13F;
   label values P4SIS_13 P2SIS13F;
   label values P6SIS_13 P2SIS13F;
   label values P2SIS_14 P2SIS14F;
   label values P4SIS_14 P2SIS14F;
   label values P6SIS_14 P2SIS14F;
   label values P2SIS_15 P2SIS15F;
   label values P4SIS_15 P2SIS15F;
   label values P6SIS_15 P2SIS15F;
   label values P2SIS_16 P2SIS16F;
   label values P4SIS_16 P2SIS16F;
   label values P6SIS_16 P2SIS16F;
   label values P2SIS_17 P2SIS17F;
   label values P4SIS_17 P2SIS17F;
   label values P6SIS_17 P2SIS17F;
   label values P2SIS_18 P2SIS18F;
   label values P4SIS_18 P2SIS18F;
   label values P6SIS_18 P2SIS18F;
   label values P2SIS_19 P2SIS19F;
   label values P4SIS_19 P2SIS19F;
   label values P6SIS_19 P2SIS19F;
   label values P2SIS_1 P2SIS1F;
   label values P4SIS_1 P2SIS1F;
   label values P6SIS_1 P2SIS1F;
   label values P2SIS_20 P2SIS20F;
   label values P4SIS_20 P2SIS20F;
   label values P6SIS_20 P2SIS20F;
   label values P2SIS_21 P2SIS21F;
   label values P4SIS_21 P2SIS21F;
   label values P6SIS_21 P2SIS21F;
   label values P2SIS_22 P2SIS22F;
   label values P4SIS_22 P2SIS22F;
   label values P6SIS_22 P2SIS22F;
   label values P2SIS_23 P2SIS23F;
   label values P4SIS_23 P2SIS23F;
   label values P6SIS_23 P2SIS23F;
   label values P2SIS_24 P2SIS24F;
   label values P4SIS_24 P2SIS24F;
   label values P6SIS_24 P2SIS24F;
   label values P2SIS_25 P2SIS25F;
   label values P4SIS_25 P2SIS25F;
   label values P6SIS_25 P2SIS25F;
   label values P2SIS_2 P2SIS2F;
   label values P4SIS_2 P2SIS2F;
   label values P6SIS_2 P2SIS2F;
   label values P2SIS_3 P2SIS3F;
   label values P4SIS_3 P2SIS3F;
   label values P6SIS_3 P2SIS3F;
   label values P2SIS_4 P2SIS4F;
   label values P4SIS_4 P2SIS4F;
   label values P6SIS_4 P2SIS4F;
   label values P2SIS_5 P2SIS5F;
   label values P4SIS_5 P2SIS5F;
   label values P6SIS_5 P2SIS5F;
   label values P2SIS_6 P2SIS6F;
   label values P4SIS_6 P2SIS6F;
   label values P6SIS_6 P2SIS6F;
   label values P2SIS_7 P2SIS7F;
   label values P4SIS_7 P2SIS7F;
   label values P6SIS_7 P2SIS7F;
   label values P2SIS_8 P2SIS8F;
   label values P4SIS_8 P2SIS8F;
   label values P6SIS_8 P2SIS8F;
   label values P2SIS_9 P2SIS9F;
   label values P4SIS_9 P2SIS9F;
   label values P6SIS_9 P2SIS9F;
   label values P2SIGHT2 P2SITE2F;
   label values P4SIGHT2 P2SITE2F;
   label values P6SIGHT2 P2SITE2F;
   label values P2SPANK P2SPK;
   label values P2TALKLS P2TALKLS;
   label values P2THINK P2THINK;
   label values P4THINK P2THINK;
   label values P6THINK P2THINK;
   label values P2TMBFCL P2TMBFCL;
   label values P2TMTSCH P2TMTSCH;
   label values P2TRIDEA P2TRIDEA;
   label values P4TRIDEA P2TRIDEA;
   label values P2TVBF8H P2TV;
   label values P2UNR_10 P2UNR10F;
   label values P4UNR_10 P2UNR10F;
   label values P6UNR_10 P2UNR10F;
   label values P2UNR_11 P2UNR11F;
   label values P4UNR_11 P2UNR11F;
   label values P6UNR_11 P2UNR11F;
   label values P2UNR_12 P2UNR12F;
   label values P4UNR_12 P2UNR12F;
   label values P6UNR_12 P2UNR12F;
   label values P2UNR_13 P2UNR13F;
   label values P4UNR_13 P2UNR13F;
   label values P6UNR_13 P2UNR13F;
   label values P2UNR_14 P2UNR14F;
   label values P4UNR_14 P2UNR14F;
   label values P6UNR_14 P2UNR14F;
   label values P2UNR_15 P2UNR15F;
   label values P4UNR_15 P2UNR15F;
   label values P6UNR_15 P2UNR15F;
   label values P2UNR_16 P2UNR16F;
   label values P4UNR_16 P2UNR16F;
   label values P6UNR_16 P2UNR16F;
   label values P2UNR_17 P2UNR17F;
   label values P4UNR_17 P2UNR17F;
   label values P6UNR_17 P2UNR17F;
   label values P2UNR_18 P2UNR18F;
   label values P4UNR_18 P2UNR18F;
   label values P6UNR_18 P2UNR18F;
   label values P2UNR_19 P2UNR19F;
   label values P4UNR_19 P2UNR19F;
   label values P6UNR_19 P2UNR19F;
   label values P2UNR_1 P2UNR1F;
   label values P4UNR_1 P2UNR1F;
   label values P6UNR_1 P2UNR1F;
   label values P2UNR_20 P2UNR20F;
   label values P4UNR_20 P2UNR20F;
   label values P6UNR_20 P2UNR20F;
   label values P2UNR_21 P2UNR21F;
   label values P4UNR_21 P2UNR21F;
   label values P6UNR_21 P2UNR21F;
   label values P2UNR_22 P2UNR22F;
   label values P4UNR_22 P2UNR22F;
   label values P6UNR_22 P2UNR22F;
   label values P2UNR_23 P2UNR23F;
   label values P4UNR_23 P2UNR23F;
   label values P6UNR_23 P2UNR23F;
   label values P2UNR_24 P2UNR24F;
   label values P4UNR_24 P2UNR24F;
   label values P6UNR_24 P2UNR24F;
   label values P2UNR_25 P2UNR25F;
   label values P4UNR_25 P2UNR25F;
   label values P6UNR_25 P2UNR25F;
   label values P2UNR_2 P2UNR2F;
   label values P4UNR_2 P2UNR2F;
   label values P6UNR_2 P2UNR2F;
   label values P2UNR_3 P2UNR3F;
   label values P4UNR_3 P2UNR3F;
   label values P6UNR_3 P2UNR3F;
   label values P2UNR_4 P2UNR4F;
   label values P4UNR_4 P2UNR4F;
   label values P6UNR_4 P2UNR4F;
   label values P2UNR_5 P2UNR5F;
   label values P4UNR_5 P2UNR5F;
   label values P6UNR_5 P2UNR5F;
   label values P2UNR_6 P2UNR6F;
   label values P4UNR_6 P2UNR6F;
   label values P6UNR_6 P2UNR6F;
   label values P2UNR_7 P2UNR7F;
   label values P4UNR_7 P2UNR7F;
   label values P6UNR_7 P2UNR7F;
   label values P2UNR_8 P2UNR8F;
   label values P4UNR_8 P2UNR8F;
   label values P6UNR_8 P2UNR8F;
   label values P2UNR_9 P2UNR9F;
   label values P4UNR_9 P2UNR9F;
   label values P6UNR_9 P2UNR9F;
   label values P2USECMP P2USECMP;
   label values P2WARMCL P2WARMCL;
   label values P2WEIGHU P2WEIGHU;
   label values P2WHRITV P2WHRITV;
   label values P4WHRITV P2WHRITV;
   label values P6WHRITV P2WHRITV;
   label values P2WORRFD P2WORRFD;
   label values P4WORRFD P2WORRFD;
   label values P2WRKFIN P2WRKFIN;
   label values P4WRKFIN P2WRKFIN;
   label values P3CARNMH P3CARNMHF;
   label values P5CARNMH P3CARNMHF;
   label values P3CHDOBM P3CHDOBM;
   label values P5CHDOBM P3CHDOBM;
   label values P3CHSEX P3CHSEX;
   label values P5CHSEX P3CHSEX;
   label values P3COMEDU P3COMEDU;
   label values P5COMEDU P3COMEDU;
   label values P3DOMATH P3DOMATH;
   label values P5DOMATH P3DOMATH;
   label values P3DOWRIT P3DOWRIT;
   label values P5DOWRIT P3DOWRIT;
   label values P3HWLGRD P3HWLGRD;
   label values P5HWLGRD P3HWLGRD;
   label values P3MODE P3MODE;
   label values P5MODE P3MODE;
   label values P3OUTACT P3OUTACT;
   label values P5OUTACT P3OUTACT;
   label values P3RDALON P3RDALON;
   label values P5RDALON P3RDALON;
   label values P3RDBKTC P3RDBKTC;
   label values P5RDBKTC P3RDBKTC;
   label values P3SMREQ P3SMREQ;
   label values P5SMREQ P3SMREQ;
   label values P3WHRITV P3WHRITV;
   label values P5WHRITV P3WHRITV;
   label values P4ADVICE P4ADVICE;
   label values P4AMCNTC P4AMCNTC;
   label values P4AMTHWK P4AMTHWK;
   label values P4ATNDSERV P4ATNDSERV;
   label values P4BEDTMAP P4BEDTMAP;
   label values P4BKOTHL P4BKOTHL;
   label values P4BRO_10 P4BRO10F;
   label values P6BRO_10 P4BRO10F;
   label values P4BRO_11 P4BRO11F;
   label values P6BRO_11 P4BRO11F;
   label values P4BRO_12 P4BRO12F;
   label values P6BRO_12 P4BRO12F;
   label values P4BRO_13 P4BRO13F;
   label values P6BRO_13 P4BRO13F;
   label values P4BRO_14 P4BRO14F;
   label values P6BRO_14 P4BRO14F;
   label values P4BRO_15 P4BRO15F;
   label values P6BRO_15 P4BRO15F;
   label values P4BRO_16 P4BRO16F;
   label values P6BRO_16 P4BRO16F;
   label values P4BRO_17 P4BRO17F;
   label values P6BRO_17 P4BRO17F;
   label values P4BRO_18 P4BRO18F;
   label values P6BRO_18 P4BRO18F;
   label values P4BRO_19 P4BRO19F;
   label values P6BRO_19 P4BRO19F;
   label values P4BRO_1 P4BRO1F;
   label values P6BRO_1 P4BRO1F;
   label values P4BRO_20 P4BRO20F;
   label values P6BRO_20 P4BRO20F;
   label values P4BRO_21 P4BRO21F;
   label values P6BRO_21 P4BRO21F;
   label values P4BRO_22 P4BRO22F;
   label values P6BRO_22 P4BRO22F;
   label values P4BRO_23 P4BRO23F;
   label values P6BRO_23 P4BRO23F;
   label values P4BRO_24 P4BRO24F;
   label values P6BRO_24 P4BRO24F;
   label values P4BRO_25 P4BRO25F;
   label values P6BRO_25 P4BRO25F;
   label values P4BRO_2 P4BRO2F;
   label values P6BRO_2 P4BRO2F;
   label values P4BRO_3 P4BRO3F;
   label values P6BRO_3 P4BRO3F;
   label values P4BRO_4 P4BRO4F;
   label values P6BRO_4 P4BRO4F;
   label values P4BRO_5 P4BRO5F;
   label values P6BRO_5 P4BRO5F;
   label values P4BRO_6 P4BRO6F;
   label values P6BRO_6 P4BRO6F;
   label values P4BRO_7 P4BRO7F;
   label values P6BRO_7 P4BRO7F;
   label values P4BRO_8 P4BRO8F;
   label values P6BRO_8 P4BRO8F;
   label values P4BRO_9 P4BRO9F;
   label values P6BRO_9 P4BRO9F;
   label values P4CAMTUC P4CAMTUC;
   label values P4CANTAF P4CANTAF;
   label values P4CASH P4CASH;
   label values P4CHANCV P4CHANCV;
   label values P4CHDBTH P4CHDBTH;
   label values P4CHDOBM P4CHDOBM;
   label values P6CHDOBM P4CHDOBM;
   label values P4CHILDR P4CHILDR;
   label values P4CHL_1 P4CHL1F;
   label values P4CHL_2 P4CHL2F;
   label values P4CHOSE P4CHOSE;
   label values P4CHPRSC P4CHPRSC;
   label values P4DOW_2 P4DOW_1F;
   label values P4EARLYPNSH P4EARLYPNSH;
   label values P4HILOW_I P4HILOW_I;
   label values P6HILOW_I P4HILOW_I;
   label values P4HIS_1_I P4HIS_1_I;
   label values P4HIS_2_I P4HIS_2_I;
   label values P4HLPHWK P4HLPHWK;
   label values P6HLPHWK P4HLPHWK;
   label values P4HMWORK P4HMWORK;
   label values P6HMWORK P4HMWORK;
   label values P4INCHIG_I P4INCHIG_I;
   label values P6INCHIG_I P4INCHIG_I;
   label values P4INCLOW_I P4INCLOW_I;
   label values P6INCLOW_I P4INCLOW_I;
   label values P4NOPUNISH P4NOPUNISH;
   label values P4TALKOUTPNSH P4TALKOUTPNSH;
   label values P6DISTHM P6DISTHM;
   label values IFP6DO1_1 P6IMPFLG1F;
   label values IFP6DO1_2 P6IMPFLG1F;
   label values IFP6DO2_1 P6IMPFLG1F;
   label values IFP6DO2_2 P6IMPFLG1F;
   label values IFP6DO3_1 P6IMPFLG1F;
   label values IFP6DO3_2 P6IMPFLG1F;
   label values IFP6DO4_1 P6IMPFLG1F;
   label values IFP6DO4_2 P6IMPFLG1F;
   label values IFP6DO5_1 P6IMPFLG1F;
   label values IFP6DO5_2 P6IMPFLG1F;
   label values IFP6DO6_1 P6IMPFLG1F;
   label values IFP6DO6_2 P6IMPFLG1F;
   label values IFP6DO7_1 P6IMPFLG1F;
   label values IFP6DO7_2 P6IMPFLG1F;
   label values IFP6HILOW P6IMPFLG1F;
   label values IFP6HRS_1 P6IMPFLG1F;
   label values IFP6HRS_2 P6IMPFLG1F;
   label values IFP6INCHIG P6IMPFLG1F;
   label values IFP6INCLOW P6IMPFLG1F;
   label values IFP6LOK_1 P6IMPFLG1F;
   label values IFP6LOK_2 P6IMPFLG1F;
   label values IFP6PAY_1 P6IMPFLG1F;
   label values IFP6PAY_2 P6IMPFLG1F;
   label values IFP6TINCTH P6IMPFLG1F;
   label values IFP6VAC_1 P6IMPFLG1F;
   label values IFP6VAC_2 P6IMPFLG1F;
   label values IFX6PAR1OCC P6IMPFLG1F;
   label values IFX6PAR1SCR P6IMPFLG1F;
   label values IFX6PAR2OCC P6IMPFLG1F;
   label values IFX6PAR2SCR P6IMPFLG1F;
   label values IFP6EMPCHG_1 P6IMPFLG2F;
   label values IFP6EMPCHG_2 P6IMPFLG2F;
   label values P6DISWOR P6LISTNCH;
   label values P6ENCFRD P6LISTNCH;
   label values P6ENCOPN P6LISTNCH;
   label values P6ENCTRB P6LISTNCH;
   label values P6LISTNCH P6LISTNCH;
   label values P6STOPLS P6LISTNCH;
   label values P6MTHRD P6MTHRD;
   label values P6OFTEXC P6OFTTEA;
   label values P6OFTHIT P6OFTTEA;
   label values P6OFTTEA P6OFTTEA;
   label values S4CRIME PROBSIZE;
   label values S4DRUGS PROBSIZE;
   label values S4GANGS PROBSIZE;
   label values S4HOODVI PROBSIZE;
   label values S4TNSION PROBSIZE;
   label values S4VCANCY PROBSIZE;
   label values S6CRIME PROBSIZE;
   label values S6DRUGS PROBSIZE;
   label values S6GANGS PROBSIZE;
   label values S6HOODVI PROBSIZE;
   label values S6TNSION PROBSIZE;
   label values S6VCANCY PROBSIZE;
   label values S4BNUMCH PUF100F;
   label values S4BRTHYR PUF101F;
   label values S6BRTHYR PUF101F;
   label values S4CHLDNM PUF102F;
   label values S6CHLDNM PUF102F;
   label values S4CNUMCH PUF103F;
   label values S4DUALIN PUF104F;
   label values S4ESLPLL PUF105F;
   label values S4ESLREG PUF106F;
   label values S4FLPRBK PUF107F;
   label values S4FLPRLU PUF108F;
   label values S4FREEBK PUF109F;
   label values A2AGIFT PUF10F;
   label values S4MTIPCT PUF110F;
   label values S6MTIPCT PUF110F;
   label values S4NMFRM_I PUF111F;
   label values S4NMRDM_I PUF112F;
   label values S4OTNEED PUF113F;
   label values S6OTNEED PUF113F;
   label values S4PDBRK PUF114F;
   label values S4PTRAYP PUF115F;
   label values S4PUBCHO PUF116F;
   label values S6PUBCHO PUF116F;
   label values S4RDCBRK PUF117F;
   label values S4RDIPCT PUF118F;
   label values S6RDIPCT PUF118F;
   label values S4RDPRBK PUF119F;
   label values A2APRTGF PUF11F;
   label values S4RDPRLU PUF120F;
   label values S4TOFRLU PUF121F;
   label values S4TOPDLU PUF122F;
   label values S4TORDLU PUF123F;
   label values S4TOTENR PUF124F;
   label values S6TOTENR PUF124F;
   label values S4TOTPRI PUF125F;
   label values S6TOTPRI PUF125F;
   label values S4YSTCH PUF126F;
   label values S6YSTCH PUF126F;
   label values T2ACCOM PUF127F;
   label values T6ACCOM PUF127F;
   label values V2DOBYY PUF128F;
   label values X_DOBYY_R PUF129F;
   label values A2PGIFT PUF12F;
   label values X1LOCALE PUF130F;
   label values X2HIGGRD PUF131F;
   label values X2LOCALE PUF132F;
   label values X2LOWGRD PUF133F;
   label values X3LOCALE PUF134F;
   label values X3SUMSH PUF135F;
   label values X5SUMSH PUF135F;
   label values X4HIGGRD PUF136F;
   label values X6HIGGRD PUF136F;
   label values X4LOCALE PUF137F;
   label values X5LOCALE PUF137F;
   label values X6LOCALE PUF137F;
   label values X4LOWGRD PUF138F;
   label values X6LOWGRD PUF138F;
   label values Y2HIRE12 PUF139F;
   label values A2PPRTGF PUF13F;
   label values Y2LEFT12 PUF140F;
   label values Y2LOCATE PUF141F;
   label values Y2PRGEMP PUF142F;
   label values Y2PRGNM3 PUF143F;
   label values Y2PRGNM4 PUF144F;
   label values Y2PRGNM5 PUF145F;
   label values A1A2YRK1 PUF146F;
   label values A1A3YROL PUF146F;
   label values A1A4YROL PUF146F;
   label values A1A7YROL PUF146F;
   label values A1A8YROL PUF146F;
   label values A1A9YROL PUF146F;
   label values A1AAIAN PUF146F;
   label values A1AARBIC PUF146F;
   label values A1AARBIN PUF146F;
   label values A1AASIAN PUF146F;
   label values A1ABOYS PUF146F;
   label values A1ACHNIN PUF146F;
   label values A1ACJPNS PUF146F;
   label values A1ACKRN PUF146F;
   label values A1AFILIN PUF146F;
   label values A1AFRNIN PUF146F;
   label values A1AHAWPI PUF146F;
   label values A1AJPNIN PUF146F;
   label values A1AKRNIN PUF146F;
   label values A1AMINAN PUF146F;
   label values A1AMULGR PUF146F;
   label values A1AMULTR PUF146F;
   label values A1AOTHIN PUF146F;
   label values A1AOTHLG PUF146F;
   label values A1AREGK PUF146F;
   label values A1ASIAN PUF146F;
   label values A1ASIGN PUF146F;
   label values A1ASIGNL PUF146F;
   label values A1ASIGNS PUF146F;
   label values A1ASPCED PUF146F;
   label values A1AT1ST PUF146F;
   label values A1AT2ND PUF146F;
   label values A1AT3RD PUF146F;
   label values A1ATCHNS PUF146F;
   label values A1ATFLPN PUF146F;
   label values A1ATJPNS PUF146F;
   label values A1ATKRN PUF146F;
   label values A1ATPRE1 PUF146F;
   label values A1ATPREK PUF146F;
   label values A1ATREGK PUF146F;
   label values A1ATRNK PUF146F;
   label values A1ATTRNK PUF146F;
   label values A1ATVTNM PUF146F;
   label values A1AUNGR PUF146F;
   label values A1AVTNIN PUF146F;
   label values A1BKINDN PUF146F;
   label values A1BKSARB PUF146F;
   label values A1BKSFIL PUF146F;
   label values A1BKSIGN PUF146F;
   label values A1BKSJAP PUF146F;
   label values A1BKSKOR PUF146F;
   label values A1BKSVIT PUF146F;
   label values A1BLACK PUF146F;
   label values A1D2YRK1 PUF146F;
   label values A1D3YROL PUF146F;
   label values A1D4YROL PUF146F;
   label values A1D7YROL PUF146F;
   label values A1D8YROL PUF146F;
   label values A1D9YROL PUF146F;
   label values A1DAIAN PUF146F;
   label values A1DARBIC PUF146F;
   label values A1DARBIN PUF146F;
   label values A1DASIAN PUF146F;
   label values A1DBOYS PUF146F;
   label values A1DCHNIN PUF146F;
   label values A1DEGELM PUF146F;
   label values A1DEGERL PUF146F;
   label values A1DEGNON PUF146F;
   label values A1DEGOTH PUF146F;
   label values A1DEGSPE PUF146F;
   label values A1DFILIN PUF146F;
   label values A1DFRNIN PUF146F;
   label values A1DHAWPI PUF146F;
   label values A1DJPNIN PUF146F;
   label values A1DKRNIN PUF146F;
   label values A1DMULGR PUF146F;
   label values A1DMULTR PUF146F;
   label values A1DOTHIN PUF146F;
   label values A1DOTHLG PUF146F;
   label values A1DPR1ST PUF146F;
   label values A1DSIGN PUF146F;
   label values A1DSIGNL PUF146F;
   label values A1DSIGNS PUF146F;
   label values A1DSPCED PUF146F;
   label values A1DT1ST PUF146F;
   label values A1DT2ND PUF146F;
   label values A1DT3RD PUF146F;
   label values A1DTCHNS PUF146F;
   label values A1DTFLPN PUF146F;
   label values A1DTJPNS PUF146F;
   label values A1DTKRN PUF146F;
   label values A1DTPRE1 PUF146F;
   label values A1DTPREK PUF146F;
   label values A1DTREGK PUF146F;
   label values A1DTRNK PUF146F;
   label values A1DTTRNK PUF146F;
   label values A1DTVTNM PUF146F;
   label values A1DUNGR PUF146F;
   label values A1DVTNIN PUF146F;
   label values A1ELEMCT PUF146F;
   label values A1ERLYCT PUF146F;
   label values A1ESLCT PUF146F;
   label values A1GRDELM PUF146F;
   label values A1GRDERL PUF146F;
   label values A1GRDNON PUF146F;
   label values A1GRDOTH PUF146F;
   label values A1GRDSPE PUF146F;
   label values A1HAWPI PUF146F;
   label values A1HISP PUF146F;
   label values A1OTHRCT PUF146F;
   label values A1P3YROL PUF146F;
   label values A1P4YROL PUF146F;
   label values A1P7YROL PUF146F;
   label values A1P8YROL PUF146F;
   label values A1P9YROL PUF146F;
   label values A1PAIAN PUF146F;
   label values A1PARBIC PUF146F;
   label values A1PARBIN PUF146F;
   label values A1PASIAN PUF146F;
   label values A1PBOYS PUF146F;
   label values A1PCHNIN PUF146F;
   label values A1PCJPNS PUF146F;
   label values A1PCKRN PUF146F;
   label values A1PFILIN PUF146F;
   label values A1PFRNIN PUF146F;
   label values A1PHAWPI PUF146F;
   label values A1PJPNIN PUF146F;
   label values A1PKRNIN PUF146F;
   label values A1PMULGR PUF146F;
   label values A1PMULTR PUF146F;
   label values A1POTHIN PUF146F;
   label values A1POTHLG PUF146F;
   label values A1PREGK PUF146F;
   label values A1PSIGN PUF146F;
   label values A1PSIGNL PUF146F;
   label values A1PSIGNS PUF146F;
   label values A1PSPCED PUF146F;
   label values A1PT1ST PUF146F;
   label values A1PT2ND PUF146F;
   label values A1PT3RD PUF146F;
   label values A1PTCHNS PUF146F;
   label values A1PTFLPN PUF146F;
   label values A1PTJPNS PUF146F;
   label values A1PTKRN PUF146F;
   label values A1PTPRE1 PUF146F;
   label values A1PTPREK PUF146F;
   label values A1PTREGK PUF146F;
   label values A1PTRNK PUF146F;
   label values A1PTTRNK PUF146F;
   label values A1PTVTNM PUF146F;
   label values A1PUNGR PUF146F;
   label values A1PVTNIN PUF146F;
   label values A1SPECCT PUF146F;
   label values A1TGEND PUF146F;
   label values A1WHITE PUF146F;
   label values A1YRS2T5 PUF146F;
   label values A1YRS6PL PUF146F;
   label values A1YRSART PUF146F;
   label values A1YRSBIL PUF146F;
   label values A1YRSDUL PUF146F;
   label values A1YRSESL PUF146F;
   label values A1YRSFST PUF146F;
   label values A1YRSKIN PUF146F;
   label values A1YRSPE PUF146F;
   label values A1YRSPRE PUF146F;
   label values A1YRSSPE PUF146F;
   label values A2AAUTSM PUF146F;
   label values A2ADELAY PUF146F;
   label values A2ADFBLD PUF146F;
   label values A2AEMODST PUF146F;
   label values A2AHEAR PUF146F;
   label values A2AIMPAI PUF146F;
   label values A2AINTDS PUF146F;
   label values A2ALRNDI PUF146F;
   label values A2AMULTI PUF146F;
   label values A2AORTHO PUF146F;
   label values A2AOTDIS PUF146F;
   label values A2AOTHER PUF146F;
   label values A2ATRAUM PUF146F;
   label values A2AVIS PUF146F;
   label values A2DAUTSM PUF146F;
   label values A2DDELAY PUF146F;
   label values A2DDFBLD PUF146F;
   label values A2DEMODST PUF146F;
   label values A2DHEAR PUF146F;
   label values A2DIMPAI PUF146F;
   label values A2DINTDS PUF146F;
   label values A2DLRNDI PUF146F;
   label values A2DMULTI PUF146F;
   label values A2DORTHO PUF146F;
   label values A2DOTDIS PUF146F;
   label values A2DOTHER PUF146F;
   label values A2DTRAUM PUF146F;
   label values A2DVIS PUF146F;
   label values A2PAUTSM PUF146F;
   label values A2PDELAY PUF146F;
   label values A2PDFBLD PUF146F;
   label values A2PEMODST PUF146F;
   label values A2PHEAR PUF146F;
   label values A2PIMPAI PUF146F;
   label values A2PINTDS PUF146F;
   label values A2PLRNDI PUF146F;
   label values A2PMULTI PUF146F;
   label values A2PORTHO PUF146F;
   label values A2POTDIS PUF146F;
   label values A2POTHER PUF146F;
   label values A2PTRAUM PUF146F;
   label values A2PVIS PUF146F;
   label values A410YRMO PUF146F;
   label values A44YRSLS PUF146F;
   label values A45YROL PUF146F;
   label values A48YROL PUF146F;
   label values A49YROL PUF146F;
   label values A4AMINAN PUF146F;
   label values A4ARBIC PUF146F;
   label values A4ARBIN PUF146F;
   label values A4ASIAN PUF146F;
   label values A4AVTNIN PUF146F;
   label values A4BKINDN PUF146F;
   label values A4BKSARB PUF146F;
   label values A4BKSCHN PUF146F;
   label values A4BKSFIL PUF146F;
   label values A4BKSFRN PUF146F;
   label values A4BKSJAP PUF146F;
   label values A4BKSKOR PUF146F;
   label values A4BKSOTH PUF146F;
   label values A4BKSVIT PUF146F;
   label values A4BLACK PUF146F;
   label values A4BOYS PUF146F;
   label values A4CCREOL PUF146F;
   label values A4CGRMN PUF146F;
   label values A4CHMONG PUF146F;
   label values A4CPOLSH PUF146F;
   label values A4DEGELM PUF146F;
   label values A4DEGERL PUF146F;
   label values A4DEGNON PUF146F;
   label values A4DEGOTH PUF146F;
   label values A4DEGSPE PUF146F;
   label values A4ELEMCT PUF146F;
   label values A4ERLYCT PUF146F;
   label values A4ESLCT PUF146F;
   label values A4FILIN PUF146F;
   label values A4GRDELM PUF146F;
   label values A4GRDERL PUF146F;
   label values A4GRDNON PUF146F;
   label values A4GRDOTH PUF146F;
   label values A4GRDSPE PUF146F;
   label values A4HAWPI PUF146F;
   label values A4HISP PUF146F;
   label values A4IFRNIN PUF146F;
   label values A4INDIN PUF146F;
   label values A4JPNIN PUF146F;
   label values A4K1TO10 PUF146F;
   label values A4K2S5S10 PUF146F;
   label values A4K3DGT PUF146F;
   label values A4KA3YROL PUF146F;
   label values A4KA4YROL PUF146F;
   label values A4KA5YROL PUF146F;
   label values A4KA6YROL PUF146F;
   label values A4KA7YROL PUF146F;
   label values A4KA8YROL PUF146F;
   label values A4KA9YROL PUF146F;
   label values A4KAABSEN PUF146F;
   label values A4KAADDSB PUF146F;
   label values A4KAAIAN PUF146F;
   label values A4KAARABC PUF146F;
   label values A4KAARBIC PUF146F;
   label values A4KAARBIN PUF146F;
   label values A4KAASIAN PUF146F;
   label values A4KABEHVR PUF146F;
   label values A4KABLACK PUF146F;
   label values A4KABOYS PUF146F;
   label values A4KACAFRN PUF146F;
   label values A4KACCHNS PUF146F;
   label values A4KACCPTD PUF146F;
   label values A4KACCREO PUF146F;
   label values A4KACCURA PUF146F;
   label values A4KACFLPN PUF146F;
   label values A4KACFRCH PUF146F;
   label values A4KACGRMN PUF146F;
   label values A4KACHNIN PUF146F;
   label values A4KACJPNS PUF146F;
   label values A4KACKRN PUF146F;
   label values A4KACNT20 PUF146F;
   label values A4KACPORT PUF146F;
   label values A4KACRSSN PUF146F;
   label values A4KACSPNH PUF146F;
   label values A4KACTSTF PUF146F;
   label values A4KACVTNM PUF146F;
   label values A4KADISAB PUF146F;
   label values A4KADSRV PUF146F;
   label values A4KADTRND PUF146F;
   label values A4KADYSWK PUF146F;
   label values A4KAELL PUF146F;
   label values A4KAELLOU PUF146F;
   label values A4KAELLRE PUF146F;
   label values A4KAENGIN PUF146F;
   label values A4KAENROL PUF146F;
   label values A4KAFILIN PUF146F;
   label values A4KAFRNIN PUF146F;
   label values A4KAGIFT PUF146F;
   label values A4KAGIRLS PUF146F;
   label values A4KAHAWPI PUF146F;
   label values A4KAHISP PUF146F;
   label values A4KAHRSDA PUF146F;
   label values A4KAINDIA PUF146F;
   label values A4KAINDIN PUF146F;
   label values A4KAJOINE PUF146F;
   label values A4KAJPNIN PUF146F;
   label values A4KAKRNIN PUF146F;
   label values A4KALANOT PUF146F;
   label values A4KALEFTL PUF146F;
   label values A4KALETT PUF146F;
   label values A4KALGINS PUF146F;
   label values A4KALPBTZ PUF146F;
   label values A4KALPHBT PUF146F;
   label values A4KAMHLP PUF146F;
   label values A4KAMINAN PUF146F;
   label values A4KAMTHABV PUF146F;
   label values A4KAMTHBL PUF146F;
   label values A4KAMTHONL PUF146F;
   label values A4KAMULTR PUF146F;
   label values A4KANMELL PUF146F;
   label values A4KANOELL PUF146F;
   label values A4KANONCN PUF146F;
   label values A4KANONIN PUF146F;
   label values A4KANONMT PUF146F;
   label values A4KANONOT PUF146F;
   label values A4KANONRD PUF146F;
   label values A4KAOTHIN PUF146F;
   label values A4KAOTHLG PUF146F;
   label values A4KAOTLAN PUF146F;
   label values A4KAPRTGF PUF146F;
   label values A4KARDABV PUF146F;
   label values A4KARDBLW PUF146F;
   label values A4KARDONL PUF146F;
   label values A4KARECNM PUF146F;
   label values A4KAREPK PUF146F;
   label values A4KARTARE PUF146F;
   label values A4KARTMAT PUF146F;
   label values A4KASIAN PUF146F;
   label values A4KASIGN PUF146F;
   label values A4KASIGNL PUF146F;
   label values A4KASIGNS PUF146F;
   label values A4KASNTNC PUF146F;
   label values A4KASPNIN PUF146F;
   label values A4KAT1ST PUF146F;
   label values A4KAT2ND PUF146F;
   label values A4KAT3RD PUF146F;
   label values A4KATAFRN PUF146F;
   label values A4KATARDY PUF146F;
   label values A4KATCHNS PUF146F;
   label values A4KATCREO PUF146F;
   label values A4KATEACH PUF146F;
   label values A4KATFLPN PUF146F;
   label values A4KATFRCH PUF146F;
   label values A4KATINDN PUF146F;
   label values A4KATJPNS PUF146F;
   label values A4KATKRN PUF146F;
   label values A4KATNOOT PUF146F;
   label values A4KATOTAG PUF146F;
   label values A4KATOTGN PUF146F;
   label values A4KATOTRA PUF146F;
   label values A4KATPRE1 PUF146F;
   label values A4KATPREK PUF146F;
   label values A4KATREGK PUF146F;
   label values A4KATSPNH PUF146F;
   label values A4KATTART PUF146F;
   label values A4KATTEND PUF146F;
   label values A4KATTOPN PUF146F;
   label values A4KATTRNK PUF146F;
   label values A4KATVTNM PUF146F;
   label values A4KAVDDIS PUF146F;
   label values A4KAVTNIN PUF146F;
   label values A4KAWHITE PUF146F;
   label values A4KAWORD PUF146F;
   label values A4KBASAL PUF146F;
   label values A4KBKINDN PUF146F;
   label values A4KBKSARB PUF146F;
   label values A4KBKSCHN PUF146F;
   label values A4KBKSENG PUF146F;
   label values A4KBKSFIL PUF146F;
   label values A4KBKSFRN PUF146F;
   label values A4KBKSIGN PUF146F;
   label values A4KBKSJAP PUF146F;
   label values A4KBKSKOR PUF146F;
   label values A4KBKSOTH PUF146F;
   label values A4KBKSSPN PUF146F;
   label values A4KBKSVIT PUF146F;
   label values A4KBLACK PUF146F;
   label values A4KBLNDWD PUF146F;
   label values A4KBNCHM PUF146F;
   label values A4KBODY PUF146F;
   label values A4KBORROW PUF146F;
   label values A4KBOTHCL PUF146F;
   label values A4KBYD100 PUF146F;
   label values A4KCALCUL PUF146F;
   label values A4KCALEND PUF146F;
   label values A4KCDUSE PUF146F;
   label values A4KCHGAP PUF146F;
   label values A4KCHKLST PUF146F;
   label values A4KCHLKBD PUF146F;
   label values A4KCHSBK PUF146F;
   label values A4KCLSBHV PUF146F;
   label values A4KCLSPAR PUF146F;
   label values A4KCMNITY PUF146F;
   label values A4KCMPUSE PUF146F;
   label values A4KCNSNSS PUF146F;
   label values A4KCNT20 PUF146F;
   label values A4KCNTNLR PUF146F;
   label values A4KCOLLCR PUF146F;
   label values A4KCOMM PUF146F;
   label values A4KCOMPAR PUF146F;
   label values A4KCOMPDD PUF146F;
   label values A4KCOMPMM PUF146F;
   label values A4KCOMPOS PUF146F;
   label values A4KCOMPSE PUF146F;
   label values A4KCOMSRV PUF146F;
   label values A4KCONFER PUF146F;
   label values A4KCONSLT PUF146F;
   label values A4KCONVNT PUF146F;
   label values A4KCONVOC PUF146F;
   label values A4KCOOK PUF146F;
   label values A4KCOOPRT PUF146F;
   label values A4KCOPSTF PUF146F;
   label values A4KCOSTUM PUF146F;
   label values A4KCRTIVE PUF146F;
   label values A4KCULTUR PUF146F;
   label values A4KCURVNT PUF146F;
   label values A4KD3YROL PUF146F;
   label values A4KD4YROL PUF146F;
   label values A4KD5YROL PUF146F;
   label values A4KD6YROL PUF146F;
   label values A4KD7YROL PUF146F;
   label values A4KD8YROL PUF146F;
   label values A4KD9YROL PUF146F;
   label values A4KDABSEN PUF146F;
   label values A4KDADDSB PUF146F;
   label values A4KDAIAN PUF146F;
   label values A4KDARABC PUF146F;
   label values A4KDARBIC PUF146F;
   label values A4KDARBIN PUF146F;
   label values A4KDASIAN PUF146F;
   label values A4KDATACO PUF146F;
   label values A4KDATBEH PUF146F;
   label values A4KDATMTH PUF146F;
   label values A4KDATRD PUF146F;
   label values A4KDBEHVR PUF146F;
   label values A4KDBLACK PUF146F;
   label values A4KDBOYS PUF146F;
   label values A4KDCAFRN PUF146F;
   label values A4KDCCHNS PUF146F;
   label values A4KDCCREO PUF146F;
   label values A4KDCFLPN PUF146F;
   label values A4KDCFRCH PUF146F;
   label values A4KDCGRMN PUF146F;
   label values A4KDCHNIN PUF146F;
   label values A4KDCJPNS PUF146F;
   label values A4KDCKRN PUF146F;
   label values A4KDCNT20 PUF146F;
   label values A4KDCPORT PUF146F;
   label values A4KDCRSSN PUF146F;
   label values A4KDCSPNH PUF146F;
   label values A4KDCVTNM PUF146F;
   label values A4KDDISAB PUF146F;
   label values A4KDDSRV PUF146F;
   label values A4KDDYSWK PUF146F;
   label values A4KDEGELM PUF146F;
   label values A4KDEGERL PUF146F;
   label values A4KDEGNON PUF146F;
   label values A4KDEGOTH PUF146F;
   label values A4KDEGSPE PUF146F;
   label values A4KDELL PUF146F;
   label values A4KDELLOU PUF146F;
   label values A4KDELLRE PUF146F;
   label values A4KDENGIN PUF146F;
   label values A4KDENROL PUF146F;
   label values A4KDEVINCL PUF146F;
   label values A4KDEVLP PUF146F;
   label values A4KDEVTOCL PUF146F;
   label values A4KDFILIN PUF146F;
   label values A4KDFMTH PUF146F;
   label values A4KDFRNIN PUF146F;
   label values A4KDGIFT PUF146F;
   label values A4KDGIRLS PUF146F;
   label values A4KDGTCUSE PUF146F;
   label values A4KDHAWPI PUF146F;
   label values A4KDHISP PUF146F;
   label values A4KDHRSDA PUF146F;
   label values A4KDICTAT PUF146F;
   label values A4KDINDIA PUF146F;
   label values A4KDINDIN PUF146F;
   label values A4KDINOSR PUF146F;
   label values A4KDIVMTH PUF146F;
   label values A4KDIVRD PUF146F;
   label values A4KDJOINE PUF146F;
   label values A4KDJPNIN PUF146F;
   label values A4KDKRNIN PUF146F;
   label values A4KDLANOT PUF146F;
   label values A4KDLEFTL PUF146F;
   label values A4KDLETT PUF146F;
   label values A4KDLGINS PUF146F;
   label values A4KDMHLP PUF146F;
   label values A4KDMTHABV PUF146F;
   label values A4KDMTHBL PUF146F;
   label values A4KDMTHONL PUF146F;
   label values A4KDMULTR PUF146F;
   label values A4KDNMELL PUF146F;
   label values A4KDNOELL PUF146F;
   label values A4KDNONCN PUF146F;
   label values A4KDNONIN PUF146F;
   label values A4KDNONMT PUF146F;
   label values A4KDNONOT PUF146F;
   label values A4KDNONRD PUF146F;
   label values A4KDOPROJ PUF146F;
   label values A4KDOTHIN PUF146F;
   label values A4KDOTHLG PUF146F;
   label values A4KDOTLAN PUF146F;
   label values A4KDPRTGF PUF146F;
   label values A4KDPWHMWK PUF146F;
   label values A4KDRAMAR PUF146F;
   label values A4KDRCTNS PUF146F;
   label values A4KDRDABV PUF146F;
   label values A4KDRDBLW PUF146F;
   label values A4KDRDONL PUF146F;
   label values A4KDRECNM PUF146F;
   label values A4KDREPK PUF146F;
   label values A4KDSCPTIM PUF146F;
   label values A4KDSIGN PUF146F;
   label values A4KDSIGNL PUF146F;
   label values A4KDSIGNS PUF146F;
   label values A4KDSNTNC PUF146F;
   label values A4KDSPNIN PUF146F;
   label values A4KDT1ST PUF146F;
   label values A4KDT2ND PUF146F;
   label values A4KDT3RD PUF146F;
   label values A4KDTAFRN PUF146F;
   label values A4KDTARDY PUF146F;
   label values A4KDTCHNS PUF146F;
   label values A4KDTCREO PUF146F;
   label values A4KDTEACH PUF146F;
   label values A4KDTFLPN PUF146F;
   label values A4KDTFRCH PUF146F;
   label values A4KDTINDN PUF146F;
   label values A4KDTJPNS PUF146F;
   label values A4KDTKRN PUF146F;
   label values A4KDTNOOT PUF146F;
   label values A4KDTOTAG PUF146F;
   label values A4KDTOTGN PUF146F;
   label values A4KDTOTRA PUF146F;
   label values A4KDTPRE1 PUF146F;
   label values A4KDTPREK PUF146F;
   label values A4KDTREGK PUF146F;
   label values A4KDTSPNH PUF146F;
   label values A4KDTTRNK PUF146F;
   label values A4KDTVTNM PUF146F;
   label values A4KDVDUSE PUF146F;
   label values A4KDVTNIN PUF146F;
   label values A4KDWHITE PUF146F;
   label values A4KDWORD PUF146F;
   label values A4KDYRECS PUF146F;
   label values A4KEARLY PUF146F;
   label values A4KECOLOG PUF146F;
   label values A4KEFFRT PUF146F;
   label values A4KELEMCT PUF146F;
   label values A4KELLASE PUF146F;
   label values A4KELLINC PUF146F;
   label values A4KELLPRO PUF146F;
   label values A4KELLSMG PUF146F;
   label values A4KELLTRN PUF146F;
   label values A4KEMLANS PUF146F;
   label values A4KEMLUPD PUF146F;
   label values A4KENCOUR PUF146F;
   label values A4KENGLAN PUF146F;
   label values A4KENJOY PUF146F;
   label values A4KEQTN PUF146F;
   label values A4KEQUIPM PUF146F;
   label values A4KERLYCT PUF146F;
   label values A4KESL PUF146F;
   label values A4KESLCT PUF146F;
   label values A4KESLWRK PUF146F;
   label values A4KESTQNT PUF146F;
   label values A4KEXPMTH PUF146F;
   label values A4KFCTOR PUF146F;
   label values A4KFLLDIR PUF146F;
   label values A4KFNSHT PUF146F;
   label values A4KFOLIO PUF146F;
   label values A4KFOLWDR PUF146F;
   label values A4KFRCTNS PUF146F;
   label values A4KFULDAY PUF146F;
   label values A4KGEOMET PUF146F;
   label values A4KGEORPH PUF146F;
   label values A4KGOTOLI PUF146F;
   label values A4KGRAPHS PUF146F;
   label values A4KGRDELM PUF146F;
   label values A4KGRDERL PUF146F;
   label values A4KGRDNON PUF146F;
   label values A4KGRDOTH PUF146F;
   label values A4KGRDSPE PUF146F;
   label values A4KGTTHR PUF146F;
   label values A4KHABIT PUF146F;
   label values A4KHALFAM PUF146F;
   label values A4KHALFPM PUF146F;
   label values A4KHANDON PUF146F;
   label values A4KHAWPI PUF146F;
   label values A4KHGHPAR PUF146F;
   label values A4KHGHSTD PUF146F;
   label values A4KHIGHQL PUF146F;
   label values A4KHISP PUF146F;
   label values A4KHISTOR PUF146F;
   label values A4KHYGIEN PUF146F;
   label values A4KIDCOLO PUF146F;
   label values A4KIDEASC PUF146F;
   label values A4KIDQNTY PUF146F;
   label values A4KIMPPRG PUF146F;
   label values A4KINCLUS PUF146F;
   label values A4KINCRET PUF146F;
   label values A4KINTINCL PUF146F;
   label values A4KINTTOCL PUF146F;
   label values A4KINVENT PUF146F;
   label values A4KJRNL PUF146F;
   label values A4KLABSKL PUF146F;
   label values A4KLAWS PUF146F;
   label values A4KLIGHT PUF146F;
   label values A4KLISTNC PUF146F;
   label values A4KLTLDO PUF146F;
   label values A4KLUNCH PUF146F;
   label values A4KMAGNET PUF146F;
   label values A4KMAINID PUF146F;
   label values A4KMANIPS PUF146F;
   label values A4KMANSYL PUF146F;
   label values A4KMAPRD PUF146F;
   label values A4KMATCH PUF146F;
   label values A4KMATHAR PUF146F;
   label values A4KMINMTH PUF146F;
   label values A4KMINRD PUF146F;
   label values A4KMISBHV PUF146F;
   label values A4KMISSIO PUF146F;
   label values A4KMKDIFF PUF146F;
   label values A4KMKLES PUF146F;
   label values A4KMOTORS PUF146F;
   label values A4KMSATRSK PUF146F;
   label values A4KMTHGME PUF146F;
   label values A4KMTHSHT PUF146F;
   label values A4KMTHTXT PUF146F;
   label values A4KMULGR PUF146F;
   label values A4KMUSIC PUF146F;
   label values A4KMUSMTH PUF146F;
   label values A4KMXDGRP PUF146F;
   label values A4KMXMATH PUF146F;
   label values A4KNATEXM PUF146F;
   label values A4KNEWVOC PUF146F;
   label values A4KNODEG PUF146F;
   label values A4KNONENG PUF146F;
   label values A4KNOPRNT PUF146F;
   label values A4KNOTCAP PUF146F;
   label values A4KNOTDSR PUF146F;
   label values A4KNUMBLN PUF146F;
   label values A4KNUMCNF PUF146F;
   label values A4KNUMMTH PUF146F;
   label values A4KNUMRD PUF146F;
   label values A4KOFTART PUF146F;
   label values A4KOFTDAN PUF146F;
   label values A4KOFTFLN PUF146F;
   label values A4KOFTHTR PUF146F;
   label values A4KOFTMTH PUF146F;
   label values A4KOFTMUS PUF146F;
   label values A4KOFTPE PUF146F;
   label values A4KOFTRDL PUF146F;
   label values A4KOFTSCI PUF146F;
   label values A4KOFTSOC PUF146F;
   label values A4KORALID PUF146F;
   label values A4KORDINL PUF146F;
   label values A4KOTHCRT PUF146F;
   label values A4KOUTLOU PUF146F;
   label values A4KP3YROL PUF146F;
   label values A4KP4YROL PUF146F;
   label values A4KP5YROL PUF146F;
   label values A4KP6YROL PUF146F;
   label values A4KP7YROL PUF146F;
   label values A4KP8YROL PUF146F;
   label values A4KP9YROL PUF146F;
   label values A4KPABSEN PUF146F;
   label values A4KPADDSB PUF146F;
   label values A4KPAIAN PUF146F;
   label values A4KPAPRWR PUF146F;
   label values A4KPARABC PUF146F;
   label values A4KPARBIC PUF146F;
   label values A4KPARBIN PUF146F;
   label values A4KPASIAN PUF146F;
   label values A4KPATTXT PUF146F;
   label values A4KPBEHVR PUF146F;
   label values A4KPBLACK PUF146F;
   label values A4KPBOYS PUF146F;
   label values A4KPCAFRN PUF146F;
   label values A4KPCCHNS PUF146F;
   label values A4KPCCREO PUF146F;
   label values A4KPCFLPN PUF146F;
   label values A4KPCFRCH PUF146F;
   label values A4KPCGRMN PUF146F;
   label values A4KPCHNIN PUF146F;
   label values A4KPCJPNS PUF146F;
   label values A4KPCKRN PUF146F;
   label values A4KPCNT20 PUF146F;
   label values A4KPCPORT PUF146F;
   label values A4KPCRSSN PUF146F;
   label values A4KPCSPNH PUF146F;
   label values A4KPCVTNM PUF146F;
   label values A4KPDARFM PUF146F;
   label values A4KPDARFR PUF146F;
   label values A4KPDISAB PUF146F;
   label values A4KPDMCUR PUF146F;
   label values A4KPDMINS PUF146F;
   label values A4KPDRCUR PUF146F;
   label values A4KPDRINS PUF146F;
   label values A4KPDSRV PUF146F;
   label values A4KPDYSWK PUF146F;
   label values A4KPEER PUF146F;
   label values A4KPEERGP PUF146F;
   label values A4KPELL PUF146F;
   label values A4KPELLOU PUF146F;
   label values A4KPELLRE PUF146F;
   label values A4KPENCIL PUF146F;
   label values A4KPENGIN PUF146F;
   label values A4KPENROL PUF146F;
   label values A4KPFILIN PUF146F;
   label values A4KPFRNIN PUF146F;
   label values A4KPGIFT PUF146F;
   label values A4KPGIRLS PUF146F;
   label values A4KPHAWPI PUF146F;
   label values A4KPHISP PUF146F;
   label values A4KPHONIC PUF146F;
   label values A4KPHOTXT PUF146F;
   label values A4KPHRSDA PUF146F;
   label values A4KPINDIA PUF146F;
   label values A4KPINDIN PUF146F;
   label values A4KPJCTUSE PUF146F;
   label values A4KPJOINE PUF146F;
   label values A4KPJPNIN PUF146F;
   label values A4KPKRNIN PUF146F;
   label values A4KPLACE PUF146F;
   label values A4KPLANOT PUF146F;
   label values A4KPLANT PUF146F;
   label values A4KPLEFTL PUF146F;
   label values A4KPLETT PUF146F;
   label values A4KPLGINS PUF146F;
   label values A4KPMHLP PUF146F;
   label values A4KPMTHABV PUF146F;
   label values A4KPMTHBL PUF146F;
   label values A4KPMTHONL PUF146F;
   label values A4KPMULTR PUF146F;
   label values A4KPNCTUA PUF146F;
   label values A4KPNMELL PUF146F;
   label values A4KPNOELL PUF146F;
   label values A4KPNONCN PUF146F;
   label values A4KPNONIN PUF146F;
   label values A4KPNONMT PUF146F;
   label values A4KPNONOT PUF146F;
   label values A4KPNONRD PUF146F;
   label values A4KPOTHIN PUF146F;
   label values A4KPOTHLG PUF146F;
   label values A4KPOTLAN PUF146F;
   label values A4KPPRTGF PUF146F;
   label values A4KPRACLT PUF146F;
   label values A4KPRBBTY PUF146F;
   label values A4KPRBLMS PUF146F;
   label values A4KPRDABV PUF146F;
   label values A4KPRDBLW PUF146F;
   label values A4KPRDONL PUF146F;
   label values A4KPRECNM PUF146F;
   label values A4KPREDIC PUF146F;
   label values A4KPREPK PUF146F;
   label values A4KPREPOS PUF146F;
   label values A4KPRGRPT PUF146F;
   label values A4KPRODEV PUF146F;
   label values A4KPROFDVLP PUF146F;
   label values A4KPROJCT PUF146F;
   label values A4KPRTNRS PUF146F;
   label values A4KPRTUTR PUF146F;
   label values A4KPSIGN PUF146F;
   label values A4KPSIGNL PUF146F;
   label values A4KPSIGNS PUF146F;
   label values A4KPSNTNC PUF146F;
   label values A4KPSPNIN PUF146F;
   label values A4KPSUPP PUF146F;
   label values A4KPT1ST PUF146F;
   label values A4KPT2ND PUF146F;
   label values A4KPT3RD PUF146F;
   label values A4KPTAFRN PUF146F;
   label values A4KPTARDY PUF146F;
   label values A4KPTCHNS PUF146F;
   label values A4KPTCREO PUF146F;
   label values A4KPTEACH PUF146F;
   label values A4KPTFLPN PUF146F;
   label values A4KPTFRCH PUF146F;
   label values A4KPTINDN PUF146F;
   label values A4KPTJPNS PUF146F;
   label values A4KPTKRN PUF146F;
   label values A4KPTNOOT PUF146F;
   label values A4KPTOTAG PUF146F;
   label values A4KPTOTGN PUF146F;
   label values A4KPTOTRA PUF146F;
   label values A4KPTPRE1 PUF146F;
   label values A4KPTPREK PUF146F;
   label values A4KPTREGK PUF146F;
   label values A4KPTSPNH PUF146F;
   label values A4KPTTRNK PUF146F;
   label values A4KPTTRNS PUF146F;
   label values A4KPTVTNM PUF146F;
   label values A4KPUBRES PUF146F;
   label values A4KPUZBLK PUF146F;
   label values A4KPVTNIN PUF146F;
   label values A4KPWHITE PUF146F;
   label values A4KPWORD PUF146F;
   label values A4KQUANTI PUF146F;
   label values A4KRCGNZE PUF146F;
   label values A4KRDFLNT PUF146F;
   label values A4KREADAR PUF146F;
   label values A4KREADLD PUF146F;
   label values A4KREALLI PUF146F;
   label values A4KRECJOB PUF146F;
   label values A4KREGHLP PUF146F;
   label values A4KREGWRK PUF146F;
   label values A4KREGZCN PUF146F;
   label values A4KRELFAM PUF146F;
   label values A4KRESDIS PUF146F;
   label values A4KRESELL PUF146F;
   label values A4KRETELL PUF146F;
   label values A4KREVSCI PUF146F;
   label values A4KRHYMNG PUF146F;
   label values A4KRNIN PUF146F;
   label values A4KRSATRSK PUF146F;
   label values A4KRULERS PUF146F;
   label values A4KSCIAR PUF146F;
   label values A4KSCMTHD PUF146F;
   label values A4KSEATRSK PUF146F;
   label values A4KSEEPRI PUF146F;
   label values A4KSENSTI PUF146F;
   label values A4KSETPRI PUF146F;
   label values A4KSHAPES PUF146F;
   label values A4KSHARE PUF146F;
   label values A4KSHARED PUF146F;
   label values A4KSILENT PUF146F;
   label values A4KSITSTI PUF146F;
   label values A4KSKITS PUF146F;
   label values A4KSNGDGT PUF146F;
   label values A4KSNTHME PUF146F;
   label values A4KSOCPRO PUF146F;
   label values A4KSOLAR PUF146F;
   label values A4KSOUND PUF146F;
   label values A4KSPECCT PUF146F;
   label values A4KSPECED PUF146F;
   label values A4KSPEDWK PUF146F;
   label values A4KSPELL PUF146F;
   label values A4KSRPCRD PUF146F;
   label values A4KSTATCT PUF146F;
   label values A4KSTDSCR PUF146F;
   label values A4KSTNDLO PUF146F;
   label values A4KSTNTST PUF146F;
   label values A4KSUBGRP PUF146F;
   label values A4KSUBSDG PUF146F;
   label values A4KSYLLAB PUF146F;
   label values A4KSZORDR PUF146F;
   label values A4KTEACH PUF146F;
   label values A4KTECHWK PUF146F;
   label values A4KTELLTI PUF146F;
   label values A4KTEMP PUF146F;
   label values A4KTEXTCU PUF146F;
   label values A4KTGEND PUF146F;
   label values A4KTIMEMT PUF146F;
   label values A4KTIMERD PUF146F;
   label values A4KTLKPAR PUF146F;
   label values A4KTOCLSS PUF146F;
   label values A4KTOOLS PUF146F;
   label values A4KTOSTDR PUF146F;
   label values A4KTPCONF PUF146F;
   label values A4KTPLOUT PUF146F;
   label values A4KTPLYIN PUF146F;
   label values A4KTSTQZ PUF146F;
   label values A4KTVUSE PUF146F;
   label values A4KTWODGT PUF146F;
   label values A4KTXART PUF146F;
   label values A4KTXDAN PUF146F;
   label values A4KTXFLN PUF146F;
   label values A4KTXMTH PUF146F;
   label values A4KTXMUS PUF146F;
   label values A4KTXPE PUF146F;
   label values A4KTXRCE PUF146F;
   label values A4KTXRDLA PUF146F;
   label values A4KTXSCI PUF146F;
   label values A4KTXSOC PUF146F;
   label values A4KTXTHTR PUF146F;
   label values A4KUSEBAS PUF146F;
   label values A4KUSECMP PUF146F;
   label values A4KUSEKIT PUF146F;
   label values A4KUSEMAG PUF146F;
   label values A4KUSEOTH PUF146F;
   label values A4KUSETRD PUF146F;
   label values A4KVOLIT PUF146F;
   label values A4KW12100 PUF146F;
   label values A4KWATER PUF146F;
   label values A4KWEBDEV PUF146F;
   label values A4KWHITE PUF146F;
   label values A4KWKINDP PUF146F;
   label values A4KWKINDV PUF146F;
   label values A4KWKLGRP PUF146F;
   label values A4KWKPEER PUF146F;
   label values A4KWKSGRP PUF146F;
   label values A4KWORKSH PUF146F;
   label values A4KWRKBK PUF146F;
   label values A4KWRKSAM PUF146F;
   label values A4KWRKSTS PUF146F;
   label values A4KWRTCNT PUF146F;
   label values A4KWRTNME PUF146F;
   label values A4KWRTSTO PUF146F;
   label values A4KWRTWRD PUF146F;
   label values A4KWSTTM PUF146F;
   label values A4KWTBUSE PUF146F;
   label values A4KWTHER PUF146F;
   label values A4KWTRSAND PUF146F;
   label values A4KYRBORN PUF146F;
   label values A4KYRS2T5 PUF146F;
   label values A4KYRS6PL PUF146F;
   label values A4KYRSART PUF146F;
   label values A4KYRSBIL PUF146F;
   label values A4KYRSCH PUF146F;
   label values A4KYRSDUL PUF146F;
   label values A4KYRSESL PUF146F;
   label values A4KYRSFST PUF146F;
   label values A4KYRSKIN PUF146F;
   label values A4KYRSPE PUF146F;
   label values A4KYRSPRE PUF146F;
   label values A4KYRSSPE PUF146F;
   label values A4KYRSTCH PUF146F;
   label values A4MTHONL PUF146F;
   label values A4NODEG PUF146F;
   label values A4OTHIN PUF146F;
   label values A4OTHLG PUF146F;
   label values A4OTHRCT PUF146F;
   label values A4RDONL PUF146F;
   label values A4SAMINAN PUF146F;
   label values A4SASIAN PUF146F;
   label values A4SHAWPI PUF146F;
   label values A4SIGNL PUF146F;
   label values A4SIGNS PUF146F;
   label values A4SMULTR PUF146F;
   label values A4SPECCT PUF146F;
   label values A4T1ST PUF146F;
   label values A4T2ND PUF146F;
   label values A4T3RD PUF146F;
   label values A4T4TH PUF146F;
   label values A4TAFRCN PUF146F;
   label values A4TCHNS PUF146F;
   label values A4TCREOL PUF146F;
   label values A4TFLPN PUF146F;
   label values A4TFRNCH PUF146F;
   label values A4TGEND PUF146F;
   label values A4TGRMN PUF146F;
   label values A4THMONG PUF146F;
   label values A4TINDN PUF146F;
   label values A4TJPNS PUF146F;
   label values A4TKRN PUF146F;
   label values A4TPOLSH PUF146F;
   label values A4TPORTG PUF146F;
   label values A4TPRE1 PUF146F;
   label values A4TPREK PUF146F;
   label values A4TREGK PUF146F;
   label values A4TRUSSN PUF146F;
   label values A4TSIGN PUF146F;
   label values A4TTRNK PUF146F;
   label values A4TVTNM PUF146F;
   label values A4WHITE PUF146F;
   label values A4YRS2T5 PUF146F;
   label values A4YRS6PL PUF146F;
   label values A4YRSART PUF146F;
   label values A4YRSBIL PUF146F;
   label values A4YRSDUL PUF146F;
   label values A4YRSESL PUF146F;
   label values A4YRSFST PUF146F;
   label values A4YRSKIN PUF146F;
   label values A4YRSPE PUF146F;
   label values A4YRSPRE PUF146F;
   label values A4YRSSPE PUF146F;
   label values A610YROL PUF146F;
   label values A611YRMO PUF146F;
   label values A64YRSLS PUF146F;
   label values A65YROL PUF146F;
   label values A66YROL PUF146F;
   label values A69YROL PUF146F;
   label values A6AMINAN PUF146F;
   label values A6ARBIC PUF146F;
   label values A6ARBIN PUF146F;
   label values A6ASIAN PUF146F;
   label values A6AVTNIN PUF146F;
   label values A6BKINDN PUF146F;
   label values A6BKSARB PUF146F;
   label values A6BKSCHN PUF146F;
   label values A6BKSFIL PUF146F;
   label values A6BKSFRN PUF146F;
   label values A6BKSIGN PUF146F;
   label values A6BKSJAP PUF146F;
   label values A6BKSKOR PUF146F;
   label values A6BKSOTH PUF146F;
   label values A6BKSVIT PUF146F;
   label values A6BLACK PUF146F;
   label values A6BOYS PUF146F;
   label values A6CCREOL PUF146F;
   label values A6CGRMN PUF146F;
   label values A6CHMONG PUF146F;
   label values A6CHNIN PUF146F;
   label values A6CPOLSH PUF146F;
   label values A6CPORTG PUF146F;
   label values A6DEGELM PUF146F;
   label values A6DEGERL PUF146F;
   label values A6DEGNON PUF146F;
   label values A6DEGOTH PUF146F;
   label values A6DEGSPE PUF146F;
   label values A6ELEMCT PUF146F;
   label values A6ERLYCT PUF146F;
   label values A6ESLCT PUF146F;
   label values A6FILIN PUF146F;
   label values A6GRDELM PUF146F;
   label values A6GRDERL PUF146F;
   label values A6GRDNON PUF146F;
   label values A6GRDOTH PUF146F;
   label values A6GRDSPE PUF146F;
   label values A6HAWPI PUF146F;
   label values A6HISP PUF146F;
   label values A6IFRNIN PUF146F;
   label values A6INDIN PUF146F;
   label values A6JPNIN PUF146F;
   label values A6KRNIN PUF146F;
   label values A6MTHONL PUF146F;
   label values A6NODEG PUF146F;
   label values A6OTHIN PUF146F;
   label values A6OTHLG PUF146F;
   label values A6OTHRCT PUF146F;
   label values A6RDONL PUF146F;
   label values A6SAMINAN PUF146F;
   label values A6SASIAN PUF146F;
   label values A6SHAWPI PUF146F;
   label values A6SIGNL PUF146F;
   label values A6SIGNS PUF146F;
   label values A6SMULTR PUF146F;
   label values A6SPECCT PUF146F;
   label values A6T1ST PUF146F;
   label values A6T2ND PUF146F;
   label values A6T3RD PUF146F;
   label values A6T4TH PUF146F;
   label values A6T5THOH PUF146F;
   label values A6TAFRCN PUF146F;
   label values A6TCHNS PUF146F;
   label values A6TCREOL PUF146F;
   label values A6TFLPN PUF146F;
   label values A6TFRNCH PUF146F;
   label values A6TGEND PUF146F;
   label values A6TGRMN PUF146F;
   label values A6THMONG PUF146F;
   label values A6TINDN PUF146F;
   label values A6TJPNS PUF146F;
   label values A6TKRN PUF146F;
   label values A6TPOLSH PUF146F;
   label values A6TPORTG PUF146F;
   label values A6TPRE1 PUF146F;
   label values A6TPREK PUF146F;
   label values A6TREGK PUF146F;
   label values A6TRUSSN PUF146F;
   label values A6TSIGN PUF146F;
   label values A6TTRNK PUF146F;
   label values A6TVTNM PUF146F;
   label values A6WHITE PUF146F;
   label values A6YRS2ND PUF146F;
   label values A6YRS3T5 PUF146F;
   label values A6YRS6PL PUF146F;
   label values A6YRSART PUF146F;
   label values A6YRSBIL PUF146F;
   label values A6YRSDUL PUF146F;
   label values A6YRSESL PUF146F;
   label values A6YRSFST PUF146F;
   label values A6YRSKIN PUF146F;
   label values A6YRSPE PUF146F;
   label values A6YRSPRE PUF146F;
   label values A6YRSSPE PUF146F;
   label values B2AMINAN PUF146F;
   label values B2ASIAN PUF146F;
   label values B2BLACK PUF146F;
   label values B2DEGELM PUF146F;
   label values B2DEGERL PUF146F;
   label values B2DEGNON PUF146F;
   label values B2DEGOTH PUF146F;
   label values B2DEGSPE PUF146F;
   label values B2ELEMCT PUF146F;
   label values B2ERLYCT PUF146F;
   label values B2ESLCT PUF146F;
   label values B2GRDELM PUF146F;
   label values B2GRDERL PUF146F;
   label values B2GRDNON PUF146F;
   label values B2GRDOTH PUF146F;
   label values B2GRDSPE PUF146F;
   label values B2HAWPI PUF146F;
   label values B2HISP PUF146F;
   label values B2OTHCRT PUF146F;
   label values B2SPECCT PUF146F;
   label values B2TGEND PUF146F;
   label values B2WHITE PUF146F;
   label values B2YRS2T5 PUF146F;
   label values B2YRS6PL PUF146F;
   label values B2YRSART PUF146F;
   label values B2YRSBIL PUF146F;
   label values B2YRSDUL PUF146F;
   label values B2YRSESL PUF146F;
   label values B2YRSFST PUF146F;
   label values B2YRSKIN PUF146F;
   label values B2YRSPE PUF146F;
   label values B2YRSPRE PUF146F;
   label values B2YRSSPE PUF146F;
   label values C1ACCOM PUF146F;
   label values C1AIDE PUF146F;
   label values C1BREAKS PUF146F;
   label values C1BRKRES PUF146F;
   label values C1DEVICE PUF146F;
   label values C1EXTTIM PUF146F;
   label values C1IEPPRO PUF146F;
   label values C1SCHEDL PUF146F;
   label values C1SETTNG PUF146F;
   label values C1SPECAC PUF146F;
   label values C1STAFF PUF146F;
   label values C2ACCOM PUF146F;
   label values C2AIDE PUF146F;
   label values C2BREAKS PUF146F;
   label values C2BRKRES PUF146F;
   label values C2DEVICE PUF146F;
   label values C2EXTTIM PUF146F;
   label values C2IEPPRO PUF146F;
   label values C2SCHEDL PUF146F;
   label values C2SETTNG PUF146F;
   label values C2SPECAC PUF146F;
   label values C2STAFF PUF146F;
   label values C3ACCOM PUF146F;
   label values C3AIDE PUF146F;
   label values C3BMBTHR PUF146F;
   label values C3BREAKS PUF146F;
   label values C3BRKRES PUF146F;
   label values C3DEVICE PUF146F;
   label values C3EXTTIM PUF146F;
   label values C3FRDRILL PUF146F;
   label values C3IEPPRO PUF146F;
   label values C3SCHEDL PUF146F;
   label values C3SETTNG PUF146F;
   label values C3SPECAC PUF146F;
   label values C3STAFF PUF146F;
   label values C4ACCOM PUF146F;
   label values C4AIDE PUF146F;
   label values C4BMBTHR PUF146F;
   label values C4BRKRES PUF146F;
   label values C4DEVICE PUF146F;
   label values C4EXTTIM PUF146F;
   label values C4FRDRILL PUF146F;
   label values C4IEPPRO PUF146F;
   label values C4SCHEDL PUF146F;
   label values C4SETTNG PUF146F;
   label values C4SPECAC PUF146F;
   label values C4STAFF PUF146F;
   label values C5ACCOM PUF146F;
   label values C5AIDE PUF146F;
   label values C5BMBTHR PUF146F;
   label values C5BREAKS PUF146F;
   label values C5BRKRES PUF146F;
   label values C5DEVICE PUF146F;
   label values C5EXTTIM PUF146F;
   label values C5FRDRILL PUF146F;
   label values C5IEPPRO PUF146F;
   label values C5LIMIT PUF146F;
   label values C5SCHEDL PUF146F;
   label values C5SETTNG PUF146F;
   label values C5SPECAC PUF146F;
   label values C5STAFF PUF146F;
   label values C6ACCOM PUF146F;
   label values C6AIDE PUF146F;
   label values C6BMBTHR PUF146F;
   label values C6BREAKS PUF146F;
   label values C6BRKRES PUF146F;
   label values C6DEVICE PUF146F;
   label values C6EXTTIM PUF146F;
   label values C6FRDRILL PUF146F;
   label values C6IEPPRO PUF146F;
   label values C6LIMIT PUF146F;
   label values C6SCHEDL PUF146F;
   label values C6SETTNG PUF146F;
   label values C6SPECAC PUF146F;
   label values C6STAFF PUF146F;
   label values D2AMINAN PUF146F;
   label values D2ASIAN PUF146F;
   label values D2ASSIGN PUF146F;
   label values D2BLACK PUF146F;
   label values D2BLIND PUF146F;
   label values D2CHDDEV PUF146F;
   label values D2CLNCMP PUF146F;
   label values D2CLPSYL PUF146F;
   label values D2CLSMGT PUF146F;
   label values D2CLSZO PUF146F;
   label values D2COMDIS PUF146F;
   label values D2COMPDD PUF146F;
   label values D2COMPMM PUF146F;
   label values D2COMPYY PUF146F;
   label values D2CRPOS PUF146F;
   label values D2DEAF PUF146F;
   label values D2DISSPE PUF146F;
   label values D2EARLY PUF146F;
   label values D2ELEM PUF146F;
   label values D2EMRGN PUF146F;
   label values D2EMTNL PUF146F;
   label values D2ENJOY PUF146F;
   label values D2ERLSPE PUF146F;
   label values D2ESL PUF146F;
   label values D2GENDER PUF146F;
   label values D2GENED PUF146F;
   label values D2GNED PUF146F;
   label values D2HAWPI PUF146F;
   label values D2HGHPAR PUF146F;
   label values D2HGHSTD PUF146F;
   label values D2HISP PUF146F;
   label values D2INFNT PUF146F;
   label values D2INTDIS PUF146F;
   label values D2INTSRV PUF146F;
   label values D2LRNDIS PUF146F;
   label values D2MKDIF PUF146F;
   label values D2NATEXM PUF146F;
   label values D2NCLSS PUF146F;
   label values D2NODIR PUF146F;
   label values D2NOSTDN PUF146F;
   label values D2OCCPT PUF146F;
   label values D2OCCTH PUF146F;
   label values D2ORTHPD PUF146F;
   label values D2OTHPRF PUF146F;
   label values D2OTHRM PUF146F;
   label values D2PHYST PUF146F;
   label values D2PHYSTH PUF146F;
   label values D2PRVSN PUF146F;
   label values D2RSPINT PUF146F;
   label values D2SCHLYR PUF146F;
   label values D2SCHPSY PUF146F;
   label values D2SCPSYL PUF146F;
   label values D2SOCLCS PUF146F;
   label values D2SPCH PUF146F;
   label values D2SPECED PUF146F;
   label values D2SPED PUF146F;
   label values D2SPEDRM PUF146F;
   label values D2SPLYRS PUF146F;
   label values D2TEACH PUF146F;
   label values D2WHITE PUF146F;
   label values D2YRBORN PUF146F;
   label values D2YRWKID PUF146F;
   label values D4AMINAN PUF146F;
   label values D4ASIAN PUF146F;
   label values D4ASSIGN PUF146F;
   label values D4BLACK PUF146F;
   label values D4BLIND PUF146F;
   label values D4CHDDEV PUF146F;
   label values D4CLNCMP PUF146F;
   label values D4CLPSYL PUF146F;
   label values D4CLSMGT PUF146F;
   label values D4CLSZO PUF146F;
   label values D4COMDIS PUF146F;
   label values D4COMPDD PUF146F;
   label values D4COMPMM PUF146F;
   label values D4COMPYY PUF146F;
   label values D4CRPOS PUF146F;
   label values D4DATBEH PUF146F;
   label values D4DATMTH PUF146F;
   label values D4DATRD PUF146F;
   label values D4DEAF PUF146F;
   label values D4DISSPE PUF146F;
   label values D4EARLY PUF146F;
   label values D4ELEM PUF146F;
   label values D4EMRGN PUF146F;
   label values D4EMTNL PUF146F;
   label values D4ENJOY PUF146F;
   label values D4ERLSPE PUF146F;
   label values D4ESL PUF146F;
   label values D4GENDER PUF146F;
   label values D4GENED PUF146F;
   label values D4GNED PUF146F;
   label values D4HAWPI PUF146F;
   label values D4HGHPAR PUF146F;
   label values D4HGHSTD PUF146F;
   label values D4HISP PUF146F;
   label values D4INFNT PUF146F;
   label values D4INTDIS PUF146F;
   label values D4LRNDIS PUF146F;
   label values D4MKDIF PUF146F;
   label values D4NATEXM PUF146F;
   label values D4NCLSS PUF146F;
   label values D4NODIR PUF146F;
   label values D4NOSTDN PUF146F;
   label values D4OCCPT PUF146F;
   label values D4OCCTH PUF146F;
   label values D4ORTHPD PUF146F;
   label values D4OTHPRF PUF146F;
   label values D4OTHRM PUF146F;
   label values D4PHYST PUF146F;
   label values D4PHYSTH PUF146F;
   label values D4PRVSN PUF146F;
   label values D4PUBRES PUF146F;
   label values D4SCHLYR PUF146F;
   label values D4SCHPSY PUF146F;
   label values D4SCPSYL PUF146F;
   label values D4SOCLCS PUF146F;
   label values D4SPCH PUF146F;
   label values D4SPECED PUF146F;
   label values D4SPED PUF146F;
   label values D4SPEDRM PUF146F;
   label values D4SPLYRS PUF146F;
   label values D4TEACH PUF146F;
   label values D4WHITE PUF146F;
   label values D4YRBORN PUF146F;
   label values D4YRWKID PUF146F;
   label values D6AMINAN PUF146F;
   label values D6ASIAN PUF146F;
   label values D6ASSIGN PUF146F;
   label values D6BLACK PUF146F;
   label values D6BLIND PUF146F;
   label values D6CHDDEV PUF146F;
   label values D6CLNCMP PUF146F;
   label values D6CLPSYL PUF146F;
   label values D6CLSMGT PUF146F;
   label values D6CLSZO PUF146F;
   label values D6COMDIS PUF146F;
   label values D6COMPDD PUF146F;
   label values D6COMPMM PUF146F;
   label values D6COMPYY PUF146F;
   label values D6CRPOS PUF146F;
   label values D6DATBEH PUF146F;
   label values D6DATMTH PUF146F;
   label values D6DATRD PUF146F;
   label values D6DEAF PUF146F;
   label values D6DISSPE PUF146F;
   label values D6EARLY PUF146F;
   label values D6ELEM PUF146F;
   label values D6EMRGN PUF146F;
   label values D6EMTNL PUF146F;
   label values D6ENJOY PUF146F;
   label values D6ERLSPE PUF146F;
   label values D6ESL PUF146F;
   label values D6GENDER PUF146F;
   label values D6GENED PUF146F;
   label values D6GNED PUF146F;
   label values D6HAWPI PUF146F;
   label values D6HGHPAR PUF146F;
   label values D6HGHSTD PUF146F;
   label values D6HISP PUF146F;
   label values D6INFNT PUF146F;
   label values D6INTDIS PUF146F;
   label values D6LRNDIS PUF146F;
   label values D6MKDIF PUF146F;
   label values D6NATEXM PUF146F;
   label values D6NCLSS PUF146F;
   label values D6NOSTDN PUF146F;
   label values D6OCCPT PUF146F;
   label values D6OCCTH PUF146F;
   label values D6ORTHPD PUF146F;
   label values D6OTHPRF PUF146F;
   label values D6OTHRM PUF146F;
   label values D6OUTSCH PUF146F;
   label values D6PHYST PUF146F;
   label values D6PHYSTH PUF146F;
   label values D6PRVSN PUF146F;
   label values D6PUBRES PUF146F;
   label values D6SCHLYR PUF146F;
   label values D6SCHPSY PUF146F;
   label values D6SCPSYL PUF146F;
   label values D6SOCLCS PUF146F;
   label values D6SPCH PUF146F;
   label values D6SPECED PUF146F;
   label values D6SPED PUF146F;
   label values D6SPEDRM PUF146F;
   label values D6SPLYRS PUF146F;
   label values D6T_ID PUF146F;
   label values D6TEACH PUF146F;
   label values D6WHITE PUF146F;
   label values D6YRBORN PUF146F;
   label values D6YRWKID PUF146F;
   label values E2ACHLVL PUF146F;
   label values E2ADHD PUF146F;
   label values E2ADLGY PUF146F;
   label values E2ADPPE PUF146F;
   label values E2AUTISM PUF146F;
   label values E2BLNVSL PUF146F;
   label values E2BMNGT PUF146F;
   label values E2BRAILE PUF146F;
   label values E2BRAIN PUF146F;
   label values E2BRATXT PUF146F;
   label values E2CALC PUF146F;
   label values E2CCTV PUF146F;
   label values E2CLSAD PUF146F;
   label values E2CMPIND PUF146F;
   label values E2CMPMTH PUF146F;
   label values E2CMPRDG PUF146F;
   label values E2CMPSHR PUF146F;
   label values E2CMPTR PUF146F;
   label values E2CMPWRT PUF146F;
   label values E2CNSSER PUF146F;
   label values E2COGSTR PUF146F;
   label values E2COMPDD PUF146F;
   label values E2COMPMM PUF146F;
   label values E2COMPUT PUF146F;
   label values E2COMPYY PUF146F;
   label values E2COPLRN PUF146F;
   label values E2CPTN PUF146F;
   label values E2CUEDSP PUF146F;
   label values E2DEAFHH PUF146F;
   label values E2DEVDLY PUF146F;
   label values E2DFBLND PUF146F;
   label values E2DIGTXT PUF146F;
   label values E2DIRINS PUF146F;
   label values E2ELCBRA PUF146F;
   label values E2ELCSPL PUF146F;
   label values E2ELCTRN PUF146F;
   label values E2ELGDET PUF146F;
   label values E2EMTPRB PUF146F;
   label values E2EVLAC PUF146F;
   label values E2EVLHR PUF146F;
   label values E2EVLLS PUF146F;
   label values E2EVLMS PUF146F;
   label values E2EVLOTH PUF146F;
   label values E2EVLPSY PUF146F;
   label values E2EVLSPC PUF146F;
   label values E2EVLVSN PUF146F;
   label values E2FAMCOU PUF146F;
   label values E2FMLOOP PUF146F;
   label values E2GENEDC PUF146F;
   label values E2GOAL PUF146F;
   label values E2GRDASM PUF146F;
   label values E2HAIDS PUF146F;
   label values E2HLTHIM PUF146F;
   label values E2HRSSPE PUF146F;
   label values E2IEPADP PUF146F;
   label values E2IEPADT PUF146F;
   label values E2IEPAPP PUF146F;
   label values E2IEPFMS PUF146F;
   label values E2IEPGMS PUF146F;
   label values E2IEPLNG PUF146F;
   label values E2IEPLP PUF146F;
   label values E2IEPLST PUF146F;
   label values E2IEPMOB PUF146F;
   label values E2IEPMTH PUF146F;
   label values E2IEPNXY PUF146F;
   label values E2IEPORL PUF146F;
   label values E2IEPOTH PUF146F;
   label values E2IEPPK PUF146F;
   label values E2IEPRDG PUF146F;
   label values E2IEPSCI PUF146F;
   label values E2IEPSOC PUF146F;
   label values E2IEPVOC PUF146F;
   label values E2IMPLNT PUF146F;
   label values E2INTRPR PUF146F;
   label values E2LNGTHM PUF146F;
   label values E2LNGTHR PUF146F;
   label values E2LRGGRP PUF146F;
   label values E2LRNDIS PUF146F;
   label values E2MGNFY PUF146F;
   label values E2MLTIM PUF146F;
   label values E2MNLENG PUF146F;
   label values E2MNTRTR PUF146F;
   label values E2MOBILS PUF146F;
   label values E2NOCLAS PUF146F;
   label values E2NOELC PUF146F;
   label values E2NOINS PUF146F;
   label values E2NOTEC PUF146F;
   label values E2OCCTHR PUF146F;
   label values E2OFTGTC PUF146F;
   label values E2OFTPAR PUF146F;
   label values E2ONEON1 PUF146F;
   label values E2ORIENS PUF146F;
   label values E2ORTHIM PUF146F;
   label values E2OTHSER PUF146F;
   label values E2PEERTR PUF146F;
   label values E2PHYTHR PUF146F;
   label values E2PLNTRN PUF146F;
   label values E2PRESCH PUF146F;
   label values E2PRMDIS PUF146F;
   label values E2PRMPLC PUF146F;
   label values E2PRVCMN PUF146F;
   label values E2PRVCON PUF146F;
   label values E2PRVIND PUF146F;
   label values E2PRVINS PUF146F;
   label values E2PRVOTH PUF146F;
   label values E2PRVREL PUF146F;
   label values E2PSYCRE PUF146F;
   label values E2PSYTHR PUF146F;
   label values E2RECGFT PUF146F;
   label values E2RECSPE PUF146F;
   label values E2REHABS PUF146F;
   label values E2RVWREC PUF146F;
   label values E2SCHHLT PUF146F;
   label values E2SEDHOC PUF146F;
   label values E2SGNINT PUF146F;
   label values E2SGNLNG PUF146F;
   label values E2SMLGRP PUF146F;
   label values E2SMNGT PUF146F;
   label values E2SOCWRK PUF146F;
   label values E2SPCHLN PUF146F;
   label values E2SPEDC PUF146F;
   label values E2TAPERC PUF146F;
   label values E2TAUASL PUF146F;
   label values E2TAUBRA PUF146F;
   label values E2TAUCUE PUF146F;
   label values E2TAUMAN PUF146F;
   label values E2TECOTH PUF146F;
   label values E2TRNSPR PUF146F;
   label values E2TTYS PUF146F;
   label values E2TUTSPE PUF146F;
   label values E2VANS PUF146F;
   label values E2WHLCHR PUF146F;
   label values E2WHTCN PUF146F;
   label values E4ACCMD PUF146F;
   label values E4ACHLVL PUF146F;
   label values E4ADHD PUF146F;
   label values E4ADLGY PUF146F;
   label values E4ADPPE PUF146F;
   label values E4AUTISM PUF146F;
   label values E4BLNVSL PUF146F;
   label values E4BMNGT PUF146F;
   label values E4BRAILE PUF146F;
   label values E4BRAIN PUF146F;
   label values E4BRATXT PUF146F;
   label values E4CALC PUF146F;
   label values E4CCTV PUF146F;
   label values E4CLSAD PUF146F;
   label values E4CMPIND PUF146F;
   label values E4CMPMTH PUF146F;
   label values E4CMPRDG PUF146F;
   label values E4CMPSHR PUF146F;
   label values E4CMPTR PUF146F;
   label values E4CMPWRT PUF146F;
   label values E4CNSSER PUF146F;
   label values E4COGSTR PUF146F;
   label values E4COMPDD PUF146F;
   label values E4COMPMM PUF146F;
   label values E4COMPUT PUF146F;
   label values E4COMPYY PUF146F;
   label values E4COMSTF PUF146F;
   label values E4COPLRN PUF146F;
   label values E4CPTN PUF146F;
   label values E4CUEDSP PUF146F;
   label values E4DEAFHH PUF146F;
   label values E4DEVDLY PUF146F;
   label values E4DFBLND PUF146F;
   label values E4DIGTXT PUF146F;
   label values E4DIRINS PUF146F;
   label values E4ELCBRA PUF146F;
   label values E4ELCSPL PUF146F;
   label values E4ELCTRN PUF146F;
   label values E4ELGDET PUF146F;
   label values E4EMTPRB PUF146F;
   label values E4EVLAC PUF146F;
   label values E4EVLHR PUF146F;
   label values E4EVLLS PUF146F;
   label values E4EVLMS PUF146F;
   label values E4EVLOTH PUF146F;
   label values E4EVLPSY PUF146F;
   label values E4EVLSPC PUF146F;
   label values E4EVLVSN PUF146F;
   label values E4FAMCOU PUF146F;
   label values E4FMLOOP PUF146F;
   label values E4GENEDC PUF146F;
   label values E4GOAL PUF146F;
   label values E4GRADE PUF146F;
   label values E4GRDASM PUF146F;
   label values E4HAIDS PUF146F;
   label values E4HLTHIM PUF146F;
   label values E4HRSSPE PUF146F;
   label values E4IEPADP PUF146F;
   label values E4IEPADT PUF146F;
   label values E4IEPAPP PUF146F;
   label values E4IEPFMS PUF146F;
   label values E4IEPGMS PUF146F;
   label values E4IEPLNG PUF146F;
   label values E4IEPLP PUF146F;
   label values E4IEPLST PUF146F;
   label values E4IEPMOB PUF146F;
   label values E4IEPMTH PUF146F;
   label values E4IEPNXY PUF146F;
   label values E4IEPORL PUF146F;
   label values E4IEPOTH PUF146F;
   label values E4IEPRDG PUF146F;
   label values E4IEPSCI PUF146F;
   label values E4IEPSOC PUF146F;
   label values E4IEPVOC PUF146F;
   label values E4IMPLNT PUF146F;
   label values E4INTRPR PUF146F;
   label values E4LNGTHM PUF146F;
   label values E4LNGTHR PUF146F;
   label values E4LRGGRP PUF146F;
   label values E4LRNDIS PUF146F;
   label values E4MGNFY PUF146F;
   label values E4MLTIM PUF146F;
   label values E4MNLENG PUF146F;
   label values E4MNTRTR PUF146F;
   label values E4MOBILS PUF146F;
   label values E4NOCLAS PUF146F;
   label values E4NOELC PUF146F;
   label values E4NOINS PUF146F;
   label values E4NOTEC PUF146F;
   label values E4OCCTHR PUF146F;
   label values E4OFTGTC PUF146F;
   label values E4OFTPAR PUF146F;
   label values E4ONEON1 PUF146F;
   label values E4ORIENS PUF146F;
   label values E4ORTHIM PUF146F;
   label values E4OTHSER PUF146F;
   label values E4PEERTR PUF146F;
   label values E4PHYTHR PUF146F;
   label values E4PLNTRN PUF146F;
   label values E4PRMDIS PUF146F;
   label values E4PRMPLC PUF146F;
   label values E4PRVCMN PUF146F;
   label values E4PRVCON PUF146F;
   label values E4PRVIND PUF146F;
   label values E4PRVINS PUF146F;
   label values E4PRVOTH PUF146F;
   label values E4PRVREL PUF146F;
   label values E4PSYCRE PUF146F;
   label values E4PSYTHR PUF146F;
   label values E4RECGFT PUF146F;
   label values E4RECSPE PUF146F;
   label values E4REHABS PUF146F;
   label values E4REVREC PUF146F;
   label values E4SCHHLT PUF146F;
   label values E4SEDHOC PUF146F;
   label values E4SGNINT PUF146F;
   label values E4SGNLNG PUF146F;
   label values E4SMLGRP PUF146F;
   label values E4SMNGT PUF146F;
   label values E4SOCWRK PUF146F;
   label values E4SPCHLN PUF146F;
   label values E4SPEDC PUF146F;
   label values E4TAPERC PUF146F;
   label values E4TAUASL PUF146F;
   label values E4TAUBRA PUF146F;
   label values E4TAUCUE PUF146F;
   label values E4TAUMAN PUF146F;
   label values E4TECOTH PUF146F;
   label values E4TRNSPR PUF146F;
   label values E4TTYS PUF146F;
   label values E4TUTSPE PUF146F;
   label values E4VANS PUF146F;
   label values E4WHLCHR PUF146F;
   label values E4WHTCN PUF146F;
   label values E6ACCMD PUF146F;
   label values E6ACHLVL PUF146F;
   label values E6ADHD PUF146F;
   label values E6ADLGY PUF146F;
   label values E6ADPPE PUF146F;
   label values E6AUTISM PUF146F;
   label values E6BLNVSL PUF146F;
   label values E6BMNGT PUF146F;
   label values E6BRAILE PUF146F;
   label values E6BRAIN PUF146F;
   label values E6BRATXT PUF146F;
   label values E6CALC PUF146F;
   label values E6CCTV PUF146F;
   label values E6CLSAD PUF146F;
   label values E6CMPIND PUF146F;
   label values E6CMPMTH PUF146F;
   label values E6CMPRDG PUF146F;
   label values E6CMPSHR PUF146F;
   label values E6CMPTR PUF146F;
   label values E6CMPWRT PUF146F;
   label values E6CNSSER PUF146F;
   label values E6COGSTR PUF146F;
   label values E6COMPDD PUF146F;
   label values E6COMPMM PUF146F;
   label values E6COMPUT PUF146F;
   label values E6COMPYY PUF146F;
   label values E6COMSTF PUF146F;
   label values E6COPLRN PUF146F;
   label values E6CPTN PUF146F;
   label values E6CUEDSP PUF146F;
   label values E6DEAFHH PUF146F;
   label values E6DEVDLY PUF146F;
   label values E6DFBLND PUF146F;
   label values E6DIGTXT PUF146F;
   label values E6DIRINS PUF146F;
   label values E6ELCBRA PUF146F;
   label values E6ELCSPL PUF146F;
   label values E6ELCTRN PUF146F;
   label values E6ELGDET PUF146F;
   label values E6ELNOVO PUF146F;
   label values E6EMTPRB PUF146F;
   label values E6EVLAC PUF146F;
   label values E6EVLHR PUF146F;
   label values E6EVLLS PUF146F;
   label values E6EVLMS PUF146F;
   label values E6EVLOTH PUF146F;
   label values E6EVLPSY PUF146F;
   label values E6EVLSPC PUF146F;
   label values E6EVLVSN PUF146F;
   label values E6FAMCOU PUF146F;
   label values E6FMLOOP PUF146F;
   label values E6GENEDC PUF146F;
   label values E6GOAL PUF146F;
   label values E6GRADE PUF146F;
   label values E6GRDASM PUF146F;
   label values E6HAIDS PUF146F;
   label values E6HLTHIM PUF146F;
   label values E6HRSSPE PUF146F;
   label values E6IEPADP PUF146F;
   label values E6IEPADT PUF146F;
   label values E6IEPAPP PUF146F;
   label values E6IEPFMS PUF146F;
   label values E6IEPGMS PUF146F;
   label values E6IEPLNG PUF146F;
   label values E6IEPLP PUF146F;
   label values E6IEPLST PUF146F;
   label values E6IEPMOB PUF146F;
   label values E6IEPMTH PUF146F;
   label values E6IEPNXY PUF146F;
   label values E6IEPORL PUF146F;
   label values E6IEPOTH PUF146F;
   label values E6IEPRDG PUF146F;
   label values E6IEPSCI PUF146F;
   label values E6IEPSOC PUF146F;
   label values E6IEPVOC PUF146F;
   label values E6IMPLNT PUF146F;
   label values E6INTRPR PUF146F;
   label values E6LNGTHM PUF146F;
   label values E6LNGTHR PUF146F;
   label values E6LRGGRP PUF146F;
   label values E6LRNDIS PUF146F;
   label values E6MGNFY PUF146F;
   label values E6MLTIM PUF146F;
   label values E6MNLENG PUF146F;
   label values E6MNTRTR PUF146F;
   label values E6MOBILS PUF146F;
   label values E6NOCLAS PUF146F;
   label values E6NOELC PUF146F;
   label values E6OCCTHR PUF146F;
   label values E6OFTGTC PUF146F;
   label values E6OFTPAR PUF146F;
   label values E6ONEON1 PUF146F;
   label values E6ORIENS PUF146F;
   label values E6ORTHIM PUF146F;
   label values E6OTHSER PUF146F;
   label values E6PEERTR PUF146F;
   label values E6PHYTHR PUF146F;
   label values E6PLNTRN PUF146F;
   label values E6PRMDIS PUF146F;
   label values E6PRMPLC PUF146F;
   label values E6PRVCMN PUF146F;
   label values E6PRVCON PUF146F;
   label values E6PRVIND PUF146F;
   label values E6PRVINS PUF146F;
   label values E6PRVOTH PUF146F;
   label values E6PRVREL PUF146F;
   label values E6PSYCRE PUF146F;
   label values E6PSYTHR PUF146F;
   label values E6RECGFT PUF146F;
   label values E6RECSPE PUF146F;
   label values E6REHABS PUF146F;
   label values E6REVREC PUF146F;
   label values E6SCHHLT PUF146F;
   label values E6SEDHOC PUF146F;
   label values E6SGNINT PUF146F;
   label values E6SGNLNG PUF146F;
   label values E6SMLGRP PUF146F;
   label values E6SMNGT PUF146F;
   label values E6SOCWRK PUF146F;
   label values E6SPCHLN PUF146F;
   label values E6SPEDC PUF146F;
   label values E6SPESRT PUF146F;
   label values E6TAPERC PUF146F;
   label values E6TAUASL PUF146F;
   label values E6TAUBRA PUF146F;
   label values E6TAUCUE PUF146F;
   label values E6TAUMAN PUF146F;
   label values E6TECOTH PUF146F;
   label values E6TRNSPR PUF146F;
   label values E6TTYS PUF146F;
   label values E6TUTSPE PUF146F;
   label values E6VANS PUF146F;
   label values E6WALKER PUF146F;
   label values E6WHLCHR PUF146F;
   label values E6WHTCN PUF146F;
   label values F1CADISP PUF146F;
   label values F1PIDISP PUF146F;
   label values F2CADISP PUF146F;
   label values F2PIDISP PUF146F;
   label values F3CADISP PUF146F;
   label values F3PIDISP PUF146F;
   label values F4CADISP PUF146F;
   label values F4PIDISP PUF146F;
   label values F5CADISP PUF146F;
   label values F5CCDLEA PUF146F;
   label values F5CCDSID PUF146F;
   label values F5CENTRC PUF146F;
   label values F5FIPSCT PUF146F;
   label values F5FIPSST PUF146F;
   label values F5PIDISP PUF146F;
   label values F5SCHPIN PUF146F;
   label values F5SCHZIP PUF146F;
   label values F6CADISP PUF146F;
   label values F6CCDLEA PUF146F;
   label values F6CCDSID PUF146F;
   label values F6CENTRC PUF146F;
   label values F6FIPSCT PUF146F;
   label values F6FIPSST PUF146F;
   label values F6PIDISP PUF146F;
   label values F6SCHPIN PUF146F;
   label values F6SCHZIP PUF146F;
   label values P1ABRUPT PUF146F;
   label values P1ADDCON PUF146F;
   label values P1ADDYWK PUF146F;
   label values P1ADMCON PUF146F;
   label values P1ADOPTD PUF146F;
   label values P1ADOPTM PUF146F;
   label values P1AMDYWK PUF146F;
   label values P1ANESTH PUF146F;
   label values P1ARABIC PUF146F;
   label values P1ATTSCH PUF146F;
   label values P1BIDLIV PUF146F;
   label values P1BIMLIV PUF146F;
   label values P1BIMMAR PUF146F;
   label values P1BIODAG PUF146F;
   label values P1BIODBM PUF146F;
   label values P1BIODBY PUF146F;
   label values P1BIODDM PUF146F;
   label values P1BIODDY PUF146F;
   label values P1BIOLE1 PUF146F;
   label values P1BIOLIV PUF146F;
   label values P1BIOLVM PUF146F;
   label values P1BIOLVY PUF146F;
   label values P1BIOMAG PUF146F;
   label values P1BIOMBM PUF146F;
   label values P1BIOMBY PUF146F;
   label values P1BIOMDM PUF146F;
   label values P1BIOMDY PUF146F;
   label values P1BIOMRM PUF146F;
   label values P1BIOMRY PUF146F;
   label values P1BIOMYM PUF146F;
   label values P1BIOMYR PUF146F;
   label values P1BIOMYY PUF146F;
   label values P1BIOPA2 PUF146F;
   label values P1BIOPAR PUF146F;
   label values P1BLEED PUF146F;
   label values P1BMDYWK PUF146F;
   label values P1BRFDMO PUF146F;
   label values P1BRFDNM PUF146F;
   label values P1BRFDUN PUF146F;
   label values P1CHDADM PUF146F;
   label values P1CHDADY PUF146F;
   label values P1CHDOLD PUF146F;
   label values P1CHLVBD PUF146F;
   label values P1CHLVBM PUF146F;
   label values P1CHMOMM PUF146F;
   label values P1CHMOMY PUF146F;
   label values P1CHROTH PUF146F;
   label values P1CPDEMP PUF146F;
   label values P1CPDOTH PUF146F;
   label values P1CPDREL PUF146F;
   label values P1CPDSOC PUF146F;
   label values P1CPDTCF PUF146F;
   label values P1CURLVM PUF146F;
   label values P1CURLVY PUF146F;
   label values P1CURMAM PUF146F;
   label values P1CURMAY PUF146F;
   label values P1CWKEND PUF146F;
   label values P1DADAIA PUF146F;
   label values P1DADASN PUF146F;
   label values P1DADBLK PUF146F;
   label values P1DADHPI PUF146F;
   label values P1DADHSP PUF146F;
   label values P1DADWHT PUF146F;
   label values P1EARLY PUF146F;
   label values P1ENDMO PUF146F;
   label values P1ENDYR PUF146F;
   label values P1ERLYUN PUF146F;
   label values P1FARSI PUF146F;
   label values P1FAST PUF146F;
   label values P1FEBRIL PUF146F;
   label values P1FLPNO PUF146F;
   label values P1FRENCH PUF146F;
   label values P1GERMAN PUF146F;
   label values P1GRD_N2 PUF146F;
   label values P1GRD_N4 PUF146F;
   label values P1GREEK PUF146F;
   label values P1HMONG PUF146F;
   label values P1HRSSCH PUF146F;
   label values P1ITALN PUF146F;
   label values P1JAPNES PUF146F;
   label values P1KNOWL2 PUF146F;
   label values P1KNOWLE PUF146F;
   label values P1KOREAN PUF146F;
   label values P1LIVEMO PUF146F;
   label values P1LIVEYR PUF146F;
   label values P1LIVMO PUF146F;
   label values P1LIVTOG PUF146F;
   label values P1LIVYR PUF146F;
   label values P1LSTLVM PUF146F;
   label values P1LSTLVY PUF146F;
   label values P1LVOTM PUF146F;
   label values P1LVOTY PUF146F;
   label values P1MDWHM PUF146F;
   label values P1MDWHY PUF146F;
   label values P1MIDEST_R PUF146F;
   label values P1MOMAIA PUF146F;
   label values P1MOMASN PUF146F;
   label values P1MOMBLK PUF146F;
   label values P1MOMHPI PUF146F;
   label values P1MOMHSP PUF146F;
   label values P1MOMWHT PUF146F;
   label values P1MORE10 PUF146F;
   label values P1MRRYMO PUF146F;
   label values P1MULSIB PUF146F;
   label values P1NATVAM PUF146F;
   label values P1NHROTH PUF146F;
   label values P1NPDEMP PUF146F;
   label values P1NPDOTH PUF146F;
   label values P1NPDREL PUF146F;
   label values P1NPDSOC PUF146F;
   label values P1NPDTNF PUF146F;
   label values P1NR18Y PUF146F;
   label values P1NRLC18 PUF146F;
   label values P1NRMOLV PUF146F;
   label values P1O2CHIR PUF146F;
   label values P1O2DECN PUF146F;
   label values P1O2FLSH PUF146F;
   label values P1O2NODR PUF146F;
   label values P1O2NOIN PUF146F;
   label values P1O2OTHR PUF146F;
   label values P1O2TONS PUF146F;
   label values P1O2WAIT PUF146F;
   label values P1O2WHER PUF146F;
   label values P1OTHLNG PUF146F;
   label values P1OTHWHM PUF146F;
   label values P1OTHWHY PUF146F;
   label values P1PACISL PUF146F;
   label values P1PLCNTP PUF146F;
   label values P1POLISH PUF146F;
   label values P1PORTUG PUF146F;
   label values P1PRAG18 PUF146F;
   label values P1PROLPS PUF146F;
   label values P1REL18Y PUF146F;
   label values P1RELC18 PUF146F;
   label values P1RESBIO PUF146F;
   label values P1RESLIV PUF146F;
   label values P1RESLVM PUF146F;
   label values P1RESLVO PUF146F;
   label values P1RESLVY PUF146F;
   label values P1RESOTH PUF146F;
   label values P1RESWHM PUF146F;
   label values P1RESWHY PUF146F;
   label values P1RPDEMP PUF146F;
   label values P1RPDOTH PUF146F;
   label values P1RPDREL PUF146F;
   label values P1RPDSOC PUF146F;
   label values P1RPDTNF PUF146F;
   label values P1SCH_N2 PUF146F;
   label values P1SCH_N4 PUF146F;
   label values P1SCHRWK PUF146F;
   label values P1SEIZE PUF146F;
   label values P1SELFCA PUF146F;
   label values P1SIGNLG PUF146F;
   label values P1SOASIA PUF146F;
   label values P1STOPMM PUF146F;
   label values P1STOPYY PUF146F;
   label values P1U2CHIR PUF146F;
   label values P1U2DECN PUF146F;
   label values P1U2ETLO PUF146F;
   label values P1U2FLSH PUF146F;
   label values P1U2NODR PUF146F;
   label values P1U2OTHR PUF146F;
   label values P1U2TONS PUF146F;
   label values P1U2WAIT PUF146F;
   label values P1VIETNM PUF146F;
   label values P1WEIGH3 PUF146F;
   label values P1WEIGH5 PUF146F;
   label values P1WHNMAM PUF146F;
   label values P1WHNMAY PUF146F;
   label values P1WSTEUR_R PUF146F;
   label values P21REHAM PUF146F;
   label values P21REHAU PUF146F;
   label values P21REHAY PUF146F;
   label values P2ABNRML PUF146F;
   label values P2ADACTV PUF146F;
   label values P2ADCONF PUF146F;
   label values P2ADD PUF146F;
   label values P2ADDAYS PUF146F;
   label values P2ADDCON PUF146F;
   label values P2ADDRAL1 PUF146F;
   label values P2ADDRAL2 PUF146F;
   label values P2ADDYWK PUF146F;
   label values P2ADHA PUF146F;
   label values P2ADLTYP1 PUF146F;
   label values P2ADLTYP2 PUF146F;
   label values P2ADLVMN PUF146F;
   label values P2ADLVST PUF146F;
   label values P2ADMCON PUF146F;
   label values P2ADMDOT1 PUF146F;
   label values P2ADMDOT2 PUF146F;
   label values P2ADMISS PUF146F;
   label values P2ADNITE PUF146F;
   label values P2ADOPNH PUF146F;
   label values P2ADPHON PUF146F;
   label values P2ADRELS PUF146F;
   label values P2ADVOL PUF146F;
   label values P2AGEADD PUF146F;
   label values P2AGEADM PUF146F;
   label values P2AGEADU PUF146F;
   label values P2AGEADY PUF146F;
   label values P2AGEAHD PUF146F;
   label values P2AGEAN PUF146F;
   label values P2AGEANM PUF146F;
   label values P2AGEANU PUF146F;
   label values P2AGEANY PUF146F;
   label values P2AGEAU PUF146F;
   label values P2AGEAUM PUF146F;
   label values P2AGEAUU PUF146F;
   label values P2AGEAUY PUF146F;
   label values P2AGEBI PUF146F;
   label values P2AGEBIM PUF146F;
   label values P2AGEBIU PUF146F;
   label values P2AGEBIY PUF146F;
   label values P2AGEBR PUF146F;
   label values P2AGEBRM PUF146F;
   label values P2AGEBRU PUF146F;
   label values P2AGEBRY PUF146F;
   label values P2AGECD PUF146F;
   label values P2AGECDM PUF146F;
   label values P2AGECDU PUF146F;
   label values P2AGECDY PUF146F;
   label values P2AGEDC PUF146F;
   label values P2AGEDCM PUF146F;
   label values P2AGEDCU PUF146F;
   label values P2AGEDCY PUF146F;
   label values P2AGEDE PUF146F;
   label values P2AGEDEM PUF146F;
   label values P2AGEDEU PUF146F;
   label values P2AGEDEY PUF146F;
   label values P2AGEDL PUF146F;
   label values P2AGEDLM PUF146F;
   label values P2AGEDLU PUF146F;
   label values P2AGEDLY PUF146F;
   label values P2AGEDV PUF146F;
   label values P2AGEDVM PUF146F;
   label values P2AGEDVU PUF146F;
   label values P2AGEDVY PUF146F;
   label values P2AGEEM PUF146F;
   label values P2AGEEMM PUF146F;
   label values P2AGEEMU PUF146F;
   label values P2AGEEMY PUF146F;
   label values P2AGEGA PUF146F;
   label values P2AGEGAM PUF146F;
   label values P2AGEGAU PUF146F;
   label values P2AGEGAY PUF146F;
   label values P2AGEHDM PUF146F;
   label values P2AGEHDU PUF146F;
   label values P2AGEHDY PUF146F;
   label values P2AGELD PUF146F;
   label values P2AGELDM PUF146F;
   label values P2AGELDU PUF146F;
   label values P2AGELDY PUF146F;
   label values P2AGEOC PUF146F;
   label values P2AGEOCM PUF146F;
   label values P2AGEOCU PUF146F;
   label values P2AGEOCY PUF146F;
   label values P2AGEOR PUF146F;
   label values P2AGEORM PUF146F;
   label values P2AGEORU PUF146F;
   label values P2AGEORY PUF146F;
   label values P2AGEOT PUF146F;
   label values P2AGEOTM PUF146F;
   label values P2AGEOTU PUF146F;
   label values P2AGEOTY PUF146F;
   label values P2AGEPC PUF146F;
   label values P2AGEPCM PUF146F;
   label values P2AGEPCU PUF146F;
   label values P2AGEPCY PUF146F;
   label values P2AGESA PUF146F;
   label values P2AGESAM PUF146F;
   label values P2AGESAU PUF146F;
   label values P2AGESAY PUF146F;
   label values P2AGHCM1 PUF146F;
   label values P2AGHCM2 PUF146F;
   label values P2AGHCU2 PUF146F;
   label values P2AGHCY1 PUF146F;
   label values P2AGHCY2 PUF146F;
   label values P2AGSVM1 PUF146F;
   label values P2AGSVY1 PUF146F;
   label values P2AIDEAR PUF146F;
   label values P2AIDREG PUF146F;
   label values P2AIDSCH PUF146F;
   label values P2AIDSHT PUF146F;
   label values P2AIDWHS PUF146F;
   label values P2ALIMPM PUF146F;
   label values P2ALIMPU PUF146F;
   label values P2ALIMPY PUF146F;
   label values P2AMACTV PUF146F;
   label values P2AMCONF PUF146F;
   label values P2AMDAYS PUF146F;
   label values P2AMDYWK PUF146F;
   label values P2AMLVMN PUF146F;
   label values P2AMLVST PUF146F;
   label values P2AMMISS PUF146F;
   label values P2AMNITE PUF146F;
   label values P2AMOPNH PUF146F;
   label values P2AMPHON PUF146F;
   label values P2AMRELS PUF146F;
   label values P2AMVOL PUF146F;
   label values P2ARIMPM PUF146F;
   label values P2ARIMPU PUF146F;
   label values P2ARIMPY PUF146F;
   label values P2AUTSM PUF146F;
   label values P2AUTSPC PUF146F;
   label values P2BIPOLR PUF146F;
   label values P2BRALLE PUF146F;
   label values P2BTHPLC PUF146F;
   label values P2CAPDIS PUF146F;
   label values P2CHDOLD PUF146F;
   label values P2CHEW PUF146F;
   label values P2CLDFRM PUF146F;
   label values P2CLEFT PUF146F;
   label values P2CMV PUF146F;
   label values P2CNTRYB PUF146F;
   label values P2COAGEM PUF146F;
   label values P2COAGEU PUF146F;
   label values P2COAGEY PUF146F;
   label values P2COCHER PUF146F;
   label values P2COCHLE PUF146F;
   label values P2COCHRG PUF146F;
   label values P2COCHSH PUF146F;
   label values P2COCHWH PUF146F;
   label values P2COGNTV PUF146F;
   label values P2CONCER1 PUF146F;
   label values P2CONCER2 PUF146F;
   label values P2CRT_N3 PUF146F;
   label values P2CSADPF PUF146F;
   label values P2CSADPM PUF146F;
   label values P2CSBIOF PUF146F;
   label values P2CSBIOM PUF146F;
   label values P2DEAF PUF146F;
   label values P2DEPRESS PUF146F;
   label values P2DESCHR PUF146F;
   label values P2DEVDLY PUF146F;
   label values P2DEXEDR1 PUF146F;
   label values P2DEXEDR2 PUF146F;
   label values P2DR1REM PUF146F;
   label values P2DR1REU PUF146F;
   label values P2DR1REY PUF146F;
   label values P2DRREHA PUF146F;
   label values P2DTHCM1 PUF146F;
   label values P2DTHCM2 PUF146F;
   label values P2DTHCY1 PUF146F;
   label values P2DTHCY2 PUF146F;
   label values P2DYSCLC PUF146F;
   label values P2DYSLXA PUF146F;
   label values P2EARDRM PUF146F;
   label values P2EARLY PUF146F;
   label values P2EARSCK PUF146F;
   label values P2EARWX PUF146F;
   label values P2EMODIS PUF146F;
   label values P2ERLYUN PUF146F;
   label values P2EVHAID PUF146F;
   label values P2FLDNER PUF146F;
   label values P2GENANX PUF146F;
   label values P2GENES PUF146F;
   label values P2HDINJY PUF146F;
   label values P2HEARNO PUF146F;
   label values P2HEARQT PUF146F;
   label values P2HEARWH PUF146F;
   label values P2HEARYL PUF146F;
   label values P2HRLSDK PUF146F;
   label values P2HROTHR PUF146F;
   label values P2HVELEN PUF146F;
   label values P2ILLNES PUF146F;
   label values P2IMPLNT PUF146F;
   label values P2KCHIR PUF146F;
   label values P2KDECN PUF146F;
   label values P2KETLO PUF146F;
   label values P2KFLSH PUF146F;
   label values P2KNODR PUF146F;
   label values P2KOTHR PUF146F;
   label values P2KTONS PUF146F;
   label values P2KTUBE PUF146F;
   label values P2LASTMM PUF146F;
   label values P2LASTYY PUF146F;
   label values P2LIMPYR PUF146F;
   label values P2LOCMED1 PUF146F;
   label values P2LOCMED2 PUF146F;
   label values P2LRNDIS PUF146F;
   label values P2MALFRM PUF146F;
   label values P2MEDAD PUF146F;
   label values P2MEDAN PUF146F;
   label values P2MEDANL PUF146F;
   label values P2MEDAU PUF146F;
   label values P2MEDAUL PUF146F;
   label values P2MEDBI PUF146F;
   label values P2MEDBIL PUF146F;
   label values P2MEDBR PUF146F;
   label values P2MEDBRL PUF146F;
   label values P2MEDCD PUF146F;
   label values P2MEDCDL PUF146F;
   label values P2MEDDC PUF146F;
   label values P2MEDDCL PUF146F;
   label values P2MEDDE PUF146F;
   label values P2MEDDEL PUF146F;
   label values P2MEDDL PUF146F;
   label values P2MEDDLL PUF146F;
   label values P2MEDDV PUF146F;
   label values P2MEDDVL PUF146F;
   label values P2MEDEM PUF146F;
   label values P2MEDEML PUF146F;
   label values P2MEDGA PUF146F;
   label values P2MEDGAL PUF146F;
   label values P2MEDHD PUF146F;
   label values P2MEDLAD PUF146F;
   label values P2MEDLD PUF146F;
   label values P2MEDLDL PUF146F;
   label values P2MEDLHD PUF146F;
   label values P2MEDOC PUF146F;
   label values P2MEDOCL PUF146F;
   label values P2MEDOR PUF146F;
   label values P2MEDORL PUF146F;
   label values P2MEDOT PUF146F;
   label values P2MEDOTL PUF146F;
   label values P2MEDPC PUF146F;
   label values P2MEDPCL PUF146F;
   label values P2MEDSA PUF146F;
   label values P2MEDSAL PUF146F;
   label values P2METADT1 PUF146F;
   label values P2METADT2 PUF146F;
   label values P2MORE10 PUF146F;
   label values P2NOISE PUF146F;
   label values P2NRVDF PUF146F;
   label values P2OCD PUF146F;
   label values P2ORTHOP PUF146F;
   label values P2OTHANX PUF146F;
   label values P2OTOTXC PUF146F;
   label values P2PNCDIS PUF146F;
   label values P2REASL1 PUF146F;
   label values P2REASL10 PUF146F;
   label values P2REASL11 PUF146F;
   label values P2REASL12 PUF146F;
   label values P2REASL13 PUF146F;
   label values P2REASL14 PUF146F;
   label values P2REASL15 PUF146F;
   label values P2REASL16 PUF146F;
   label values P2REASL17 PUF146F;
   label values P2REASL18 PUF146F;
   label values P2REASL19 PUF146F;
   label values P2REASL2 PUF146F;
   label values P2REASL20 PUF146F;
   label values P2REASL21 PUF146F;
   label values P2REASL22 PUF146F;
   label values P2REASL23 PUF146F;
   label values P2REASL24 PUF146F;
   label values P2REASL25 PUF146F;
   label values P2REASL3 PUF146F;
   label values P2REASL4 PUF146F;
   label values P2REASL5 PUF146F;
   label values P2REASL6 PUF146F;
   label values P2REASL7 PUF146F;
   label values P2REASL8 PUF146F;
   label values P2REASL9 PUF146F;
   label values P2RIMPYR PUF146F;
   label values P2RITALN1 PUF146F;
   label values P2RITALN2 PUF146F;
   label values P2SENSDF PUF146F;
   label values P2SEPANX PUF146F;
   label values P2SFNDHP PUF146F;
   label values P2SFRVHP PUF146F;
   label values P2SGNLNG PUF146F;
   label values P2STRTRR1 PUF146F;
   label values P2STRTRR2 PUF146F;
   label values P2SURGRY PUF146F;
   label values P2SVSMO PUF146F;
   label values P2SVSYR PUF146F;
   label values P2SWALLO PUF146F;
   label values P2TINCTH PUF146F;
   label values P2TRMBRI PUF146F;
   label values P2VISBLN PUF146F;
   label values P2VISCLR PUF146F;
   label values P2VISCRS PUF146F;
   label values P2VISRET PUF146F;
   label values P2WEIGH3 PUF146F;
   label values P2WEIGH5 PUF146F;
   label values P2YRCOME PUF146F;
   label values P3ATCAMP PUF146F;
   label values P3NMDTUT PUF146F;
   label values P3NMHTUT PUF146F;
   label values P3NMWTUT PUF146F;
   label values P3OCCTRP PUF146F;
   label values P3OTHTRP PUF146F;
   label values P3PHYTRP PUF146F;
   label values P3PSYSRV PUF146F;
   label values P3SCHSRV PUF146F;
   label values P3SMENGL PUF146F;
   label values P3SMSCNUM PUF146F;
   label values P3SMSCUN PUF146F;
   label values P3SPCTRP PUF146F;
   label values P3TUTENGL PUF146F;
   label values P3TUTFRNGL PUF146F;
   label values P3TUTMTH PUF146F;
   label values P3TUTOTH PUF146F;
   label values P3TUTREA PUF146F;
   label values P3TUTSCI PUF146F;
   label values P41REHAM PUF146F;
   label values P41REHAU PUF146F;
   label values P41REHAY PUF146F;
   label values P4ABNRML PUF146F;
   label values P4ADCNTC PUF146F;
   label values P4ADD PUF146F;
   label values P4ADDYWK PUF146F;
   label values P4ADHA PUF146F;
   label values P4ADPHEM PUF146F;
   label values P4AFRLNG PUF146F;
   label values P4AGEADD PUF146F;
   label values P4AGEADM PUF146F;
   label values P4AGEADU PUF146F;
   label values P4AGEADY PUF146F;
   label values P4AGEAHD PUF146F;
   label values P4AGEAN PUF146F;
   label values P4AGEANM PUF146F;
   label values P4AGEANU PUF146F;
   label values P4AGEANY PUF146F;
   label values P4AGEAU PUF146F;
   label values P4AGEAUM PUF146F;
   label values P4AGEAUU PUF146F;
   label values P4AGEAUY PUF146F;
   label values P4AGEBI PUF146F;
   label values P4AGEBIM PUF146F;
   label values P4AGEBIU PUF146F;
   label values P4AGEBIY PUF146F;
   label values P4AGEBR PUF146F;
   label values P4AGEBRM PUF146F;
   label values P4AGEBRU PUF146F;
   label values P4AGEBRY PUF146F;
   label values P4AGECD PUF146F;
   label values P4AGECDM PUF146F;
   label values P4AGECDU PUF146F;
   label values P4AGECDY PUF146F;
   label values P4AGEDC PUF146F;
   label values P4AGEDCM PUF146F;
   label values P4AGEDCU PUF146F;
   label values P4AGEDCY PUF146F;
   label values P4AGEDE PUF146F;
   label values P4AGEDEM PUF146F;
   label values P4AGEDEU PUF146F;
   label values P4AGEDEY PUF146F;
   label values P4AGEDL PUF146F;
   label values P4AGEDLM PUF146F;
   label values P4AGEDLU PUF146F;
   label values P4AGEDLY PUF146F;
   label values P4AGEDV PUF146F;
   label values P4AGEDVM PUF146F;
   label values P4AGEDVU PUF146F;
   label values P4AGEDVY PUF146F;
   label values P4AGEEM PUF146F;
   label values P4AGEEMM PUF146F;
   label values P4AGEEMU PUF146F;
   label values P4AGEEMY PUF146F;
   label values P4AGEGA PUF146F;
   label values P4AGEGAM PUF146F;
   label values P4AGEGAU PUF146F;
   label values P4AGEGAY PUF146F;
   label values P4AGEHDM PUF146F;
   label values P4AGEHDU PUF146F;
   label values P4AGEHDY PUF146F;
   label values P4AGELD PUF146F;
   label values P4AGELDM PUF146F;
   label values P4AGELDU PUF146F;
   label values P4AGELDY PUF146F;
   label values P4AGEOC PUF146F;
   label values P4AGEOCM PUF146F;
   label values P4AGEOCU PUF146F;
   label values P4AGEOCY PUF146F;
   label values P4AGEOR PUF146F;
   label values P4AGEORM PUF146F;
   label values P4AGEORU PUF146F;
   label values P4AGEORY PUF146F;
   label values P4AGEOT PUF146F;
   label values P4AGEOTM PUF146F;
   label values P4AGEOTU PUF146F;
   label values P4AGEOTY PUF146F;
   label values P4AGEPC PUF146F;
   label values P4AGEPCM PUF146F;
   label values P4AGEPCU PUF146F;
   label values P4AGEPCY PUF146F;
   label values P4AGESA PUF146F;
   label values P4AGESAM PUF146F;
   label values P4AGESAU PUF146F;
   label values P4AGESAY PUF146F;
   label values P4AGESDF PUF146F;
   label values P4AGESDM PUF146F;
   label values P4AGESDU PUF146F;
   label values P4AGESDY PUF146F;
   label values P4AGESPC PUF146F;
   label values P4AGESPM PUF146F;
   label values P4AGESPU PUF146F;
   label values P4AGESPY PUF146F;
   label values P4AGHCM1 PUF146F;
   label values P4AGHCM2 PUF146F;
   label values P4AGHCU1 PUF146F;
   label values P4AGHCY1 PUF146F;
   label values P4AGSVM1 PUF146F;
   label values P4AGSVU1 PUF146F;
   label values P4AGSVY1 PUF146F;
   label values P4AGVIM1 PUF146F;
   label values P4AGVIU1 PUF146F;
   label values P4AGVIY1 PUF146F;
   label values P4AIDEAR PUF146F;
   label values P4AIDREG PUF146F;
   label values P4AIDSCH PUF146F;
   label values P4AIDSHT PUF146F;
   label values P4AIDWHS PUF146F;
   label values P4ALIMPM PUF146F;
   label values P4ALIMPU PUF146F;
   label values P4ALIMPY PUF146F;
   label values P4ARABIC PUF146F;
   label values P4ARIMPM PUF146F;
   label values P4ARIMPU PUF146F;
   label values P4ARIMPY PUF146F;
   label values P4ATTSCH PUF146F;
   label values P4AUTSM PUF146F;
   label values P4AUTSPC PUF146F;
   label values P4AWAIT PUF146F;
   label values P4AWAITG PUF146F;
   label values P4BIPOLR PUF146F;
   label values P4BRALLE PUF146F;
   label values P4BTHPLC PUF146F;
   label values P4BTRSCH PUF146F;
   label values P4CAPDIS PUF146F;
   label values P4CHEW PUF146F;
   label values P4CHROTH PUF146F;
   label values P4CITIZN PUF146F;
   label values P4CLDFRM PUF146F;
   label values P4CLEFT PUF146F;
   label values P4CMV PUF146F;
   label values P4CNTRYB PUF146F;
   label values P4COAGEM PUF146F;
   label values P4COAGEU PUF146F;
   label values P4COAGEY PUF146F;
   label values P4COCHER PUF146F;
   label values P4COCHLE PUF146F;
   label values P4COCHRG PUF146F;
   label values P4COCHSH PUF146F;
   label values P4COCHWH PUF146F;
   label values P4COGNTV PUF146F;
   label values P4CPDEMP PUF146F;
   label values P4CPDOTH PUF146F;
   label values P4CPDREL PUF146F;
   label values P4CPDSOC PUF146F;
   label values P4CPDTCF PUF146F;
   label values P4CREOLE PUF146F;
   label values P4CTRNUM PUF146F;
   label values P4CWKEND PUF146F;
   label values P4DAMAGE PUF146F;
   label values P4DEAF PUF146F;
   label values P4DEPRESS PUF146F;
   label values P4DESCHR PUF146F;
   label values P4DEVDLY PUF146F;
   label values P4DOCTRT_1 PUF146F;
   label values P4DOCTRT_2 PUF146F;
   label values P4DR1REM PUF146F;
   label values P4DR1REU PUF146F;
   label values P4DR1REY PUF146F;
   label values P4DRREHA PUF146F;
   label values P4DTHCM1 PUF146F;
   label values P4DTHCM2 PUF146F;
   label values P4DTHCY1 PUF146F;
   label values P4DTHCY2 PUF146F;
   label values P4DYSCLC PUF146F;
   label values P4DYSLXA PUF146F;
   label values P4EARDRM PUF146F;
   label values P4EARSCK PUF146F;
   label values P4EARWX PUF146F;
   label values P4EASTEUR PUF146F;
   label values P4EMODIS PUF146F;
   label values P4EVICT PUF146F;
   label values P4FARSI PUF146F;
   label values P4FLDNER PUF146F;
   label values P4FLPNO PUF146F;
   label values P4FORCLS PUF146F;
   label values P4FRENCH PUF146F;
   label values P4GENANX PUF146F;
   label values P4GENES PUF146F;
   label values P4GERMAN PUF146F;
   label values P4GREEK PUF146F;
   label values P4HDINJY PUF146F;
   label values P4HMONG PUF146F;
   label values P4HOMEVT PUF146F;
   label values P4HRGSRV PUF146F;
   label values P4HRLSDK PUF146F;
   label values P4HROTHR PUF146F;
   label values P4HRSSCH PUF146F;
   label values P4HSGEF_1 PUF146F;
   label values P4HSGEF_2 PUF146F;
   label values P4HVELEN PUF146F;
   label values P4ILLNES PUF146F;
   label values P4IMPLNT PUF146F;
   label values P4ITALN PUF146F;
   label values P4JAPNES PUF146F;
   label values P4KCHIR PUF146F;
   label values P4KDECN PUF146F;
   label values P4KETLO PUF146F;
   label values P4KFLSH PUF146F;
   label values P4KNODR PUF146F;
   label values P4KOREAN PUF146F;
   label values P4KOTHR PUF146F;
   label values P4KTONS PUF146F;
   label values P4KTUBE PUF146F;
   label values P4LASTYY PUF146F;
   label values P4LIMPYR PUF146F;
   label values P4LOCMED1 PUF146F;
   label values P4LRNDIS PUF146F;
   label values P4MALFRM PUF146F;
   label values P4MEDAD PUF146F;
   label values P4MEDAN PUF146F;
   label values P4MEDANL PUF146F;
   label values P4MEDAU PUF146F;
   label values P4MEDAUL PUF146F;
   label values P4MEDBI PUF146F;
   label values P4MEDBIL PUF146F;
   label values P4MEDBR PUF146F;
   label values P4MEDBRL PUF146F;
   label values P4MEDCD PUF146F;
   label values P4MEDCDL PUF146F;
   label values P4MEDDC PUF146F;
   label values P4MEDDCL PUF146F;
   label values P4MEDDE PUF146F;
   label values P4MEDDEL PUF146F;
   label values P4MEDDL PUF146F;
   label values P4MEDDLL PUF146F;
   label values P4MEDDV PUF146F;
   label values P4MEDDVL PUF146F;
   label values P4MEDEM PUF146F;
   label values P4MEDEML PUF146F;
   label values P4MEDGA PUF146F;
   label values P4MEDGAL PUF146F;
   label values P4MEDLAD PUF146F;
   label values P4MEDLD PUF146F;
   label values P4MEDLDL PUF146F;
   label values P4MEDLHD PUF146F;
   label values P4MEDOC PUF146F;
   label values P4MEDOCL PUF146F;
   label values P4MEDOR PUF146F;
   label values P4MEDORL PUF146F;
   label values P4MEDOTL PUF146F;
   label values P4MEDPC PUF146F;
   label values P4MEDPCL PUF146F;
   label values P4MEDSA PUF146F;
   label values P4MEDSAL PUF146F;
   label values P4MEDSDF PUF146F;
   label values P4MEDSDL PUF146F;
   label values P4MEDSPC PUF146F;
   label values P4MEDSPL PUF146F;
   label values P4MIDEST PUF146F;
   label values P4NATVAM PUF146F;
   label values P4NHROTH PUF146F;
   label values P4NOISE PUF146F;
   label values P4NPDEMP PUF146F;
   label values P4NPDOTH PUF146F;
   label values P4NPDREL PUF146F;
   label values P4NPDSOC PUF146F;
   label values P4NPDTNF PUF146F;
   label values P4NRVDF PUF146F;
   label values P4OCCPTH PUF146F;
   label values P4OCD PUF146F;
   label values P4OPPDEF PUF146F;
   label values P4ORTHOP PUF146F;
   label values P4OTHANX PUF146F;
   label values P4OTHDIA PUF146F;
   label values P4OTHLNG PUF146F;
   label values P4OTHSRV PUF146F;
   label values P4OTOTXC PUF146F;
   label values P4PACISL PUF146F;
   label values P4PHYSTH PUF146F;
   label values P4PNCDIS PUF146F;
   label values P4POLISH PUF146F;
   label values P4PORTUG PUF146F;
   label values P4PRNTSP PUF146F;
   label values P4PROF_1 PUF146F;
   label values P4PROF_2 PUF146F;
   label values P4PSYCSV PUF146F;
   label values P4PVTUTR PUF146F;
   label values P4REASL1 PUF146F;
   label values P4REASL10 PUF146F;
   label values P4REASL11 PUF146F;
   label values P4REASL12 PUF146F;
   label values P4REASL13 PUF146F;
   label values P4REASL14 PUF146F;
   label values P4REASL15 PUF146F;
   label values P4REASL16 PUF146F;
   label values P4REASL17 PUF146F;
   label values P4REASL18 PUF146F;
   label values P4REASL19 PUF146F;
   label values P4REASL2 PUF146F;
   label values P4REASL20 PUF146F;
   label values P4REASL21 PUF146F;
   label values P4REASL22 PUF146F;
   label values P4REASL23 PUF146F;
   label values P4REASL24 PUF146F;
   label values P4REASL25 PUF146F;
   label values P4REASL3 PUF146F;
   label values P4REASL4 PUF146F;
   label values P4REASL5 PUF146F;
   label values P4REASL6 PUF146F;
   label values P4REASL7 PUF146F;
   label values P4REASL8 PUF146F;
   label values P4REASL9 PUF146F;
   label values P4RIMPYR PUF146F;
   label values P4RPDEMP PUF146F;
   label values P4RPDREL PUF146F;
   label values P4RPDSOC PUF146F;
   label values P4RPDTNF PUF146F;
   label values P4SAFER PUF146F;
   label values P4SCHRWK PUF146F;
   label values P4SELFCA PUF146F;
   label values P4SENSDF PUF146F;
   label values P4SEPANX PUF146F;
   label values P4SGNLNG PUF146F;
   label values P4SIGNLG PUF146F;
   label values P4SOASIA PUF146F;
   label values P4SOCWRK PUF146F;
   label values P4SPCCLS PUF146F;
   label values P4SPCHTH PUF146F;
   label values P4SPEECH PUF146F;
   label values P4SURGRY PUF146F;
   label values P4SVSMO PUF146F;
   label values P4SVSYR PUF146F;
   label values P4SWALLO PUF146F;
   label values P4TINCTH_I PUF146F;
   label values P4TRMBRI PUF146F;
   label values P4VIETNM PUF146F;
   label values P4VISBLN PUF146F;
   label values P4VISCLR PUF146F;
   label values P4VISCRS PUF146F;
   label values P4VISMO PUF146F;
   label values P4VISRET PUF146F;
   label values P4VISSRV PUF146F;
   label values P4VISYR PUF146F;
   label values P4WRHAID PUF146F;
   label values P4WSTEUR PUF146F;
   label values P4YRCOME PUF146F;
   label values P5ATCAMP PUF146F;
   label values P5AWAIT PUF146F;
   label values P5CAPDIS PUF146F;
   label values P5CENTRC PUF146F;
   label values P5CLDFRM PUF146F;
   label values P5CMV PUF146F;
   label values P5DEAF PUF146F;
   label values P5DESCHR PUF146F;
   label values P5EARDRM PUF146F;
   label values P5EARSCK PUF146F;
   label values P5EARWX PUF146F;
   label values P5FLDNER PUF146F;
   label values P5GENES PUF146F;
   label values P5HDINJY PUF146F;
   label values P5HOMZIP PUF146F;
   label values P5HRLSDK PUF146F;
   label values P5HROTHR PUF146F;
   label values P5ILLNES PUF146F;
   label values P5KANLG PUF146F;
   label values P5KCHIR PUF146F;
   label values P5KDECN PUF146F;
   label values P5KETLO PUF146F;
   label values P5KFLSH PUF146F;
   label values P5KNODR PUF146F;
   label values P5KOTHR PUF146F;
   label values P5KTONS PUF146F;
   label values P5KTUBE PUF146F;
   label values P5NMDTUT PUF146F;
   label values P5NMHTUT PUF146F;
   label values P5NMWTUT PUF146F;
   label values P5NOISE PUF146F;
   label values P5NRVDF PUF146F;
   label values P5OCCTRP PUF146F;
   label values P5OTHPLA PUF146F;
   label values P5OTHTRP PUF146F;
   label values P5OTOTXC PUF146F;
   label values P5PHYTRP PUF146F;
   label values P5PSYSRV PUF146F;
   label values P5SCHSRV PUF146F;
   label values P5SMENGL PUF146F;
   label values P5SMSCNUM PUF146F;
   label values P5SMSCUN PUF146F;
   label values P5SPCTRP PUF146F;
   label values P5SURGRY PUF146F;
   label values P5TUTENGL PUF146F;
   label values P5TUTFRNGL PUF146F;
   label values P5TUTMTH PUF146F;
   label values P5TUTOTH PUF146F;
   label values P5TUTREA PUF146F;
   label values P5TUTSCI PUF146F;
   label values P5WRHAID PUF146F;
   label values P61REHAM PUF146F;
   label values P61REHAU PUF146F;
   label values P61REHAY PUF146F;
   label values P6ABNRML PUF146F;
   label values P6ADCNTC PUF146F;
   label values P6ADD PUF146F;
   label values P6ADHA PUF146F;
   label values P6ADPHEM PUF146F;
   label values P6AFRLNG PUF146F;
   label values P6AGEADD PUF146F;
   label values P6AGEADM PUF146F;
   label values P6AGEADU PUF146F;
   label values P6AGEADY PUF146F;
   label values P6AGEAHD PUF146F;
   label values P6AGEAN PUF146F;
   label values P6AGEANM PUF146F;
   label values P6AGEANU PUF146F;
   label values P6AGEANY PUF146F;
   label values P6AGEAU PUF146F;
   label values P6AGEAUM PUF146F;
   label values P6AGEAUU PUF146F;
   label values P6AGEAUY PUF146F;
   label values P6AGEBI PUF146F;
   label values P6AGEBIM PUF146F;
   label values P6AGEBIU PUF146F;
   label values P6AGEBIY PUF146F;
   label values P6AGEBR PUF146F;
   label values P6AGEBRM PUF146F;
   label values P6AGEBRU PUF146F;
   label values P6AGEBRY PUF146F;
   label values P6AGECD PUF146F;
   label values P6AGECDM PUF146F;
   label values P6AGECDU PUF146F;
   label values P6AGECDY PUF146F;
   label values P6AGEDC PUF146F;
   label values P6AGEDCM PUF146F;
   label values P6AGEDCU PUF146F;
   label values P6AGEDCY PUF146F;
   label values P6AGEDE PUF146F;
   label values P6AGEDEM PUF146F;
   label values P6AGEDEU PUF146F;
   label values P6AGEDEY PUF146F;
   label values P6AGEDL PUF146F;
   label values P6AGEDLM PUF146F;
   label values P6AGEDLU PUF146F;
   label values P6AGEDLY PUF146F;
   label values P6AGEDV PUF146F;
   label values P6AGEDVM PUF146F;
   label values P6AGEDVU PUF146F;
   label values P6AGEDVY PUF146F;
   label values P6AGEEM PUF146F;
   label values P6AGEEMM PUF146F;
   label values P6AGEEMU PUF146F;
   label values P6AGEEMY PUF146F;
   label values P6AGEGA PUF146F;
   label values P6AGEGAM PUF146F;
   label values P6AGEGAU PUF146F;
   label values P6AGEGAY PUF146F;
   label values P6AGEHDM PUF146F;
   label values P6AGEHDU PUF146F;
   label values P6AGEHDY PUF146F;
   label values P6AGELD PUF146F;
   label values P6AGELDM PUF146F;
   label values P6AGELDU PUF146F;
   label values P6AGELDY PUF146F;
   label values P6AGEOC PUF146F;
   label values P6AGEOCM PUF146F;
   label values P6AGEOCU PUF146F;
   label values P6AGEOCY PUF146F;
   label values P6AGEODF PUF146F;
   label values P6AGEODM PUF146F;
   label values P6AGEODU PUF146F;
   label values P6AGEODY PUF146F;
   label values P6AGEOR PUF146F;
   label values P6AGEORM PUF146F;
   label values P6AGEORU PUF146F;
   label values P6AGEORY PUF146F;
   label values P6AGEOT PUF146F;
   label values P6AGEOTM PUF146F;
   label values P6AGEOTU PUF146F;
   label values P6AGEOTY PUF146F;
   label values P6AGEPC PUF146F;
   label values P6AGEPCM PUF146F;
   label values P6AGEPCU PUF146F;
   label values P6AGEPCY PUF146F;
   label values P6AGESA PUF146F;
   label values P6AGESAM PUF146F;
   label values P6AGESAU PUF146F;
   label values P6AGESAY PUF146F;
   label values P6AGESDF PUF146F;
   label values P6AGESDM PUF146F;
   label values P6AGESDU PUF146F;
   label values P6AGESDY PUF146F;
   label values P6AGESPC PUF146F;
   label values P6AGESPM PUF146F;
   label values P6AGESPU PUF146F;
   label values P6AGESPY PUF146F;
   label values P6AGHCM1 PUF146F;
   label values P6AGHCM2 PUF146F;
   label values P6AGHCU1 PUF146F;
   label values P6AGHCU2 PUF146F;
   label values P6AGHCY1 PUF146F;
   label values P6AGHCY2 PUF146F;
   label values P6AGVIM1 PUF146F;
   label values P6AGVIU1 PUF146F;
   label values P6AGVIY1 PUF146F;
   label values P6AIDEAR PUF146F;
   label values P6AIDREG PUF146F;
   label values P6AIDSCH PUF146F;
   label values P6AIDSHT PUF146F;
   label values P6AIDWHS PUF146F;
   label values P6ALIMPM PUF146F;
   label values P6ALIMPU PUF146F;
   label values P6ALIMPY PUF146F;
   label values P6AMCNTC PUF146F;
   label values P6AMPHEM PUF146F;
   label values P6ARABIC PUF146F;
   label values P6ARIMPM PUF146F;
   label values P6ARIMPU PUF146F;
   label values P6ARIMPY PUF146F;
   label values P6AUTSM PUF146F;
   label values P6AUTSPC PUF146F;
   label values P6AWAIT PUF146F;
   label values P6AWAITG PUF146F;
   label values P6BDAGEM PUF146F;
   label values P6BIPOLR PUF146F;
   label values P6BMAGEM PUF146F;
   label values P6BTHPLC PUF146F;
   label values P6BTRSCH PUF146F;
   label values P6CAPDIS PUF146F;
   label values P6CENTRC PUF146F;
   label values P6CHEW PUF146F;
   label values P6CHROTH PUF146F;
   label values P6CITIZN PUF146F;
   label values P6CLDFRM PUF146F;
   label values P6CLEFT PUF146F;
   label values P6CLSFAM PUF146F;
   label values P6CMV PUF146F;
   label values P6CNTRYB PUF146F;
   label values P6COAGEM PUF146F;
   label values P6COAGEU PUF146F;
   label values P6COAGEY PUF146F;
   label values P6COCHER PUF146F;
   label values P6COCHLE PUF146F;
   label values P6COCHRG PUF146F;
   label values P6COCHSH PUF146F;
   label values P6COCHWH PUF146F;
   label values P6COGNTV PUF146F;
   label values P6CREOLE PUF146F;
   label values P6CWKEND PUF146F;
   label values P6DAMAGE PUF146F;
   label values P6DEAF PUF146F;
   label values P6DEPRESS PUF146F;
   label values P6DESCHR PUF146F;
   label values P6DEVDLY PUF146F;
   label values P6DO10_1 PUF146F;
   label values P6DO10_2 PUF146F;
   label values P6DO6_1_I PUF146F;
   label values P6DO6_2_I PUF146F;
   label values P6DO7_1_I PUF146F;
   label values P6DO7_2_I PUF146F;
   label values P6DO8_1 PUF146F;
   label values P6DO8_2 PUF146F;
   label values P6DR1REM PUF146F;
   label values P6DR1REU PUF146F;
   label values P6DR1REY PUF146F;
   label values P6DRREHA PUF146F;
   label values P6DTHCM1 PUF146F;
   label values P6DTHCM2 PUF146F;
   label values P6DTHCY1 PUF146F;
   label values P6DTHCY2 PUF146F;
   label values P6DYSCLC PUF146F;
   label values P6DYSLXA PUF146F;
   label values P6EARDRM PUF146F;
   label values P6EARSCK PUF146F;
   label values P6EARWX PUF146F;
   label values P6EASTEUR PUF146F;
   label values P6EMODIS PUF146F;
   label values P6EVICT PUF146F;
   label values P6EVRHRA PUF146F;
   label values P6FARSI PUF146F;
   label values P6FLDNER PUF146F;
   label values P6FLPNO PUF146F;
   label values P6FORCLS PUF146F;
   label values P6FRENCH PUF146F;
   label values P6GENANX PUF146F;
   label values P6GENES PUF146F;
   label values P6GERMAN PUF146F;
   label values P6GREEK PUF146F;
   label values P6HDINJY PUF146F;
   label values P6HEARNO PUF146F;
   label values P6HEARQT PUF146F;
   label values P6HEARWH PUF146F;
   label values P6HEARYL PUF146F;
   label values P6HMONG PUF146F;
   label values P6HOMZIP PUF146F;
   label values P6HRLSDK PUF146F;
   label values P6HROTHR PUF146F;
   label values P6HSSOLD PUF146F;
   label values P6HVELEN PUF146F;
   label values P6ILLNES PUF146F;
   label values P6IMPLNT PUF146F;
   label values P6ITALN PUF146F;
   label values P6JAPNES PUF146F;
   label values P6KCHIR PUF146F;
   label values P6KDECN PUF146F;
   label values P6KETLO PUF146F;
   label values P6KFLSH PUF146F;
   label values P6KNODR PUF146F;
   label values P6KOREAN PUF146F;
   label values P6KOTHR PUF146F;
   label values P6KTONS PUF146F;
   label values P6KTUBE PUF146F;
   label values P6LEFTRL PUF146F;
   label values P6LIMPYR PUF146F;
   label values P6LOCMED1 PUF146F;
   label values P6LOCMED2 PUF146F;
   label values P6LRNDIS PUF146F;
   label values P6MALFRM PUF146F;
   label values P6MEDAD PUF146F;
   label values P6MEDAN PUF146F;
   label values P6MEDANL PUF146F;
   label values P6MEDAU PUF146F;
   label values P6MEDAUL PUF146F;
   label values P6MEDBI PUF146F;
   label values P6MEDBIL PUF146F;
   label values P6MEDBR PUF146F;
   label values P6MEDBRL PUF146F;
   label values P6MEDCD PUF146F;
   label values P6MEDCDL PUF146F;
   label values P6MEDDC PUF146F;
   label values P6MEDDCL PUF146F;
   label values P6MEDDE PUF146F;
   label values P6MEDDEL PUF146F;
   label values P6MEDDL PUF146F;
   label values P6MEDDLL PUF146F;
   label values P6MEDDV PUF146F;
   label values P6MEDDVL PUF146F;
   label values P6MEDEM PUF146F;
   label values P6MEDEML PUF146F;
   label values P6MEDGA PUF146F;
   label values P6MEDGAL PUF146F;
   label values P6MEDHD PUF146F;
   label values P6MEDLAD PUF146F;
   label values P6MEDLD PUF146F;
   label values P6MEDLDL PUF146F;
   label values P6MEDLHD PUF146F;
   label values P6MEDOC PUF146F;
   label values P6MEDOCL PUF146F;
   label values P6MEDODF PUF146F;
   label values P6MEDODL PUF146F;
   label values P6MEDOR PUF146F;
   label values P6MEDORL PUF146F;
   label values P6MEDOT PUF146F;
   label values P6MEDOTL PUF146F;
   label values P6MEDPC PUF146F;
   label values P6MEDPCL PUF146F;
   label values P6MEDSA PUF146F;
   label values P6MEDSAL PUF146F;
   label values P6MEDSDF PUF146F;
   label values P6MEDSDL PUF146F;
   label values P6MEDSPC PUF146F;
   label values P6MEDSPL PUF146F;
   label values P6MIDEST PUF146F;
   label values P6NATVAM PUF146F;
   label values P6NHROTH PUF146F;
   label values P6NOISE PUF146F;
   label values P6NOLEAS PUF146F;
   label values P6NRVDF PUF146F;
   label values P6OCD PUF146F;
   label values P6OPPDEF PUF146F;
   label values P6ORTHOP PUF146F;
   label values P6OTHANX PUF146F;
   label values P6OTHDIA PUF146F;
   label values P6OTHLNG PUF146F;
   label values P6OTOTXC PUF146F;
   label values P6PACISL PUF146F;
   label values P6PAREM1 PUF146F;
   label values P6PAREM2 PUF146F;
   label values P6PNCDIS PUF146F;
   label values P6POLISH PUF146F;
   label values P6PORTUG PUF146F;
   label values P6REASL1 PUF146F;
   label values P6REASL10 PUF146F;
   label values P6REASL11 PUF146F;
   label values P6REASL12 PUF146F;
   label values P6REASL13 PUF146F;
   label values P6REASL14 PUF146F;
   label values P6REASL15 PUF146F;
   label values P6REASL16 PUF146F;
   label values P6REASL17 PUF146F;
   label values P6REASL18 PUF146F;
   label values P6REASL19 PUF146F;
   label values P6REASL2 PUF146F;
   label values P6REASL20 PUF146F;
   label values P6REASL21 PUF146F;
   label values P6REASL22 PUF146F;
   label values P6REASL23 PUF146F;
   label values P6REASL24 PUF146F;
   label values P6REASL25 PUF146F;
   label values P6REASL3 PUF146F;
   label values P6REASL4 PUF146F;
   label values P6REASL5 PUF146F;
   label values P6REASL6 PUF146F;
   label values P6REASL7 PUF146F;
   label values P6REASL8 PUF146F;
   label values P6REASL9 PUF146F;
   label values P6RIMPYR PUF146F;
   label values P6SAFER PUF146F;
   label values P6SCHRWK PUF146F;
   label values P6SELFCA PUF146F;
   label values P6SENSDF PUF146F;
   label values P6SEPANX PUF146F;
   label values P6SIGNLG PUF146F;
   label values P6SLIHRA PUF146F;
   label values P6SOASIA PUF146F;
   label values P6SPEECH PUF146F;
   label values P6STUTER PUF146F;
   label values P6SURGRY PUF146F;
   label values P6SWALLO PUF146F;
   label values P6TINCTH_I PUF146F;
   label values P6TRMBRI PUF146F;
   label values P6VIETNM PUF146F;
   label values P6VISBLN PUF146F;
   label values P6VISCLR PUF146F;
   label values P6VISCRS PUF146F;
   label values P6VISMO PUF146F;
   label values P6VISRET PUF146F;
   label values P6VISYR PUF146F;
   label values P6WSTEUR PUF146F;
   label values P6YRCOME PUF146F;
   label values R2AMINAN PUF146F;
   label values R2ASIAN PUF146F;
   label values R2CDACRD PUF146F;
   label values R2HAWPI PUF146F;
   label values R2SRVMLS PUF146F;
   label values R2WCHCRD PUF146F;
   label values S211TH PUF146F;
   label values S212TH PUF146F;
   label values S2ADANUM PUF146F;
   label values S2AIANN2 PUF146F;
   label values S2AIANNM PUF146F;
   label values S2AMINAN PUF146F;
   label values S2ASIAN PUF146F;
   label values S2ASIAN2 PUF146F;
   label values S2ASIANM PUF146F;
   label values S2BLACK PUF146F;
   label values S2BLACN2 PUF146F;
   label values S2BLACNM PUF146F;
   label values S2BSEDAD PUF146F;
   label values S2BSELEM PUF146F;
   label values S2BSERED PUF146F;
   label values S2BSNOED PUF146F;
   label values S2BSOTHR PUF146F;
   label values S2BSSPED PUF146F;
   label values S2CHRSKL PUF146F;
   label values S2CITYPR PUF146F;
   label values S2DDFIVE PUF146F;
   label values S2DETECT PUF146F;
   label values S2DIOCSK PUF146F;
   label values S2DISTPR PUF146F;
   label values S2GENDER PUF146F;
   label values S2GRADE1 PUF146F;
   label values S2HAWPI PUF146F;
   label values S2HAWPN2 PUF146F;
   label values S2HAWPNM PUF146F;
   label values S2HISP PUF146F;
   label values S2HISPN2 PUF146F;
   label values S2HISPNM PUF146F;
   label values S2KINDER PUF146F;
   label values S2MAGSKL PUF146F;
   label values S2MMFIVE PUF146F;
   label values S2MULTN2 PUF146F;
   label values S2MULTNM PUF146F;
   label values S2NATNON PUF146F;
   label values S2NINTH PUF146F;
   label values S2NOCUTO PUF146F;
   label values S2OTHRNO PUF146F;
   label values S2OTHSCH PUF146F;
   label values S2OTNAIS PUF146F;
   label values S2PARSKL PUF146F;
   label values S2PRE1 PUF146F;
   label values S2PRINHR PUF146F;
   label values S2PRVORS PUF146F;
   label values S2RMMEMP PUF146F;
   label values S2RYYEMP PUF146F;
   label values S2SPDSCH PUF146F;
   label values S2STPROG PUF146F;
   label values S2SYREDD PUF146F;
   label values S2SYRSDD PUF146F;
   label values S2TENTH PUF146F;
   label values S2UNGRAD PUF146F;
   label values S2UNIVER PUF146F;
   label values S2WHITE PUF146F;
   label values S2WHITN2 PUF146F;
   label values S2WHITNM PUF146F;
   label values S2YROUND PUF146F;
   label values S2YYFIVE PUF146F;
   label values S411TH PUF146F;
   label values S412TH PUF146F;
   label values S4ADANUM PUF146F;
   label values S4AIANN2 PUF146F;
   label values S4AIANNM PUF146F;
   label values S4AMINAN PUF146F;
   label values S4ASIAN PUF146F;
   label values S4ASIAN2 PUF146F;
   label values S4ASIANM PUF146F;
   label values S4BLACK PUF146F;
   label values S4BLACN2 PUF146F;
   label values S4BLACNM PUF146F;
   label values S4BSEDAD PUF146F;
   label values S4BSELEM PUF146F;
   label values S4BSERED PUF146F;
   label values S4BSNOED PUF146F;
   label values S4BSOTHR PUF146F;
   label values S4BSSPED PUF146F;
   label values S4CATHOL PUF146F;
   label values S4CHARPN PUF146F;
   label values S4CHRSKL PUF146F;
   label values S4CITYPR PUF146F;
   label values S4DDFIVE PUF146F;
   label values S4DETECT PUF146F;
   label values S4DIOCSK PUF146F;
   label values S4DISTPR PUF146F;
   label values S4GENDER PUF146F;
   label values S4GRADE1 PUF146F;
   label values S4HAWPI PUF146F;
   label values S4HAWPN2 PUF146F;
   label values S4HAWPNM PUF146F;
   label values S4HISP PUF146F;
   label values S4HISPN2 PUF146F;
   label values S4HISPNM PUF146F;
   label values S4MAGSKL PUF146F;
   label values S4MMFIVE PUF146F;
   label values S4MULTN2 PUF146F;
   label values S4MULTNM PUF146F;
   label values S4NATNON PUF146F;
   label values S4NINTH PUF146F;
   label values S4NOCUTO PUF146F;
   label values S4OTHREL PUF146F;
   label values S4OTHRNO PUF146F;
   label values S4OTHSCH PUF146F;
   label values S4OTNAIS PUF146F;
   label values S4PARSKL PUF146F;
   label values S4PRE1 PUF146F;
   label values S4PRINHR PUF146F;
   label values S4PRVORS PUF146F;
   label values S4RDINOG PUF146F;
   label values S4RMMEMP PUF146F;
   label values S4RYYEMP PUF146F;
   label values S4SECOND PUF146F;
   label values S4SOARAB PUF146F;
   label values S4SOFILP PUF146F;
   label values S4SOJAPN PUF146F;
   label values S4SOKORN PUF146F;
   label values S4SOVTNM PUF146F;
   label values S4SPDSCH PUF146F;
   label values S4STPROG PUF146F;
   label values S4SYREDD PUF146F;
   label values S4SYRSDD PUF146F;
   label values S4TENTH PUF146F;
   label values S4TRANSK PUF146F;
   label values S4UNGRAD PUF146F;
   label values S4UNIVER PUF146F;
   label values S4WHITE PUF146F;
   label values S4WHITN2 PUF146F;
   label values S4WHITNM PUF146F;
   label values S4YCHART PUF146F;
   label values S4YROUND PUF146F;
   label values S4YYFIVE PUF146F;
   label values S611TH PUF146F;
   label values S612TH PUF146F;
   label values S67TH PUF146F;
   label values S68TH PUF146F;
   label values S6ADANUM PUF146F;
   label values S6AIANN2 PUF146F;
   label values S6AIANNM PUF146F;
   label values S6AMINAN PUF146F;
   label values S6ASIAN PUF146F;
   label values S6ASIAN2 PUF146F;
   label values S6ASIANM PUF146F;
   label values S6BLACK PUF146F;
   label values S6BLACN2 PUF146F;
   label values S6BLACNM PUF146F;
   label values S6BSEDAD PUF146F;
   label values S6BSELEM PUF146F;
   label values S6BSERED PUF146F;
   label values S6BSNOED PUF146F;
   label values S6BSOTHR PUF146F;
   label values S6BSSPED PUF146F;
   label values S6CATHOL PUF146F;
   label values S6CHARPN PUF146F;
   label values S6CHRSKL PUF146F;
   label values S6CITYPR PUF146F;
   label values S6DETECT PUF146F;
   label values S6DIOCSK PUF146F;
   label values S6DISTPR PUF146F;
   label values S6EARCHC PUF146F;
   label values S6FIFTH PUF146F;
   label values S6FOURTH PUF146F;
   label values S6GENDER PUF146F;
   label values S6GRADE1 PUF146F;
   label values S6HAWPI PUF146F;
   label values S6HAWPN2 PUF146F;
   label values S6HAWPNM PUF146F;
   label values S6HISP PUF146F;
   label values S6HISPN2 PUF146F;
   label values S6HISPNM PUF146F;
   label values S6KINDER PUF146F;
   label values S6MAGSKL PUF146F;
   label values S6MULTN2 PUF146F;
   label values S6MULTNM PUF146F;
   label values S6NATNON PUF146F;
   label values S6NINTH PUF146F;
   label values S6OFFPD2 PUF146F;
   label values S6OFFPDV PUF146F;
   label values S6OTHREL PUF146F;
   label values S6OTHRNO PUF146F;
   label values S6OTHSCH PUF146F;
   label values S6OTNAIS PUF146F;
   label values S6PARSKL PUF146F;
   label values S6PRE1 PUF146F;
   label values S6PRINHR PUF146F;
   label values S6PRKNDR PUF146F;
   label values S6PRVORS PUF146F;
   label values S6REORN2 PUF146F;
   label values S6RMMEMP PUF146F;
   label values S6RYYEMP PUF146F;
   label values S6SECOND PUF146F;
   label values S6SIXTH PUF146F;
   label values S6SOARAB PUF146F;
   label values S6SOFILP PUF146F;
   label values S6SOJAPN PUF146F;
   label values S6SOKORN PUF146F;
   label values S6SOVTNM PUF146F;
   label values S6SPDSCH PUF146F;
   label values S6STPROG PUF146F;
   label values S6SYREDD PUF146F;
   label values S6SYRSDD PUF146F;
   label values S6TENTH PUF146F;
   label values S6THIRD PUF146F;
   label values S6TRANS2 PUF146F;
   label values S6TRANSK PUF146F;
   label values S6UNGRAD PUF146F;
   label values S6UNIVER PUF146F;
   label values S6WHITE PUF146F;
   label values S6WHITN2 PUF146F;
   label values S6WHITNM PUF146F;
   label values S6YCHART PUF146F;
   label values S6YROUND PUF146F;
   label values T2ELLPRB PUF146F;
   label values T2GFTMTH PUF146F;
   label values T2GFTRD PUF146F;
   label values T2WKEND PUF146F;
   label values T3SUMMSC PUF146F;
   label values T4ELLPRB PUF146F;
   label values T4FOCUS PUF146F;
   label values T4KBEFORE PUF146F;
   label values T4KBH2WK PUF146F;
   label values T4KDISCIP PUF146F;
   label values T4KDISORG PUF146F;
   label values T4KEFFORT PUF146F;
   label values T4KELLPRB PUF146F;
   label values T4KEMOPRB PUF146F;
   label values T4KFOCUS PUF146F;
   label values T4KFRQABS PUF146F;
   label values T4KGFTMTH PUF146F;
   label values T4KGFTRD PUF146F;
   label values T4KGRADE PUF146F;
   label values T4KHEALTH PUF146F;
   label values T4KHRCIN PUF146F;
   label values T4KLNGINT PUF146F;
   label values T4KLNGTM PUF146F;
   label values T4KOTHRES PUF146F;
   label values T4KPRGES PUF146F;
   label values T4KSKILL PUF146F;
   label values T4KSPINS PUF146F;
   label values T4KTRCIN PUF146F;
   label values T4KWKEND PUF146F;
   label values T4WKEND PUF146F;
   label values T5_ID PUF146F;
   label values T5SUMMSC PUF146F;
   label values T6_ID PUF146F;
   label values T6ELLPRB PUF146F;
   label values T6FOCUS PUF146F;
   label values T6WKEND PUF146F;
   label values V2AMINAN PUF146F;
   label values V2ASIAN PUF146F;
   label values V2GENDER PUF146F;
   label values V2GRPGEN PUF146F;
   label values V2GRPPNT PUF146F;
   label values V2HAWPI PUF146F;
   label values V2PRMLNG PUF146F;
   label values X12YRRND PUF146F;
   label values X1EXDIS PUF146F;
   label values X1REGION PUF146F;
   label values X2EXDIS PUF146F;
   label values X2REGION PUF146F;
   label values X2SCHBDD PUF146F;
   label values X2SCHEDD PUF146F;
   label values X3EXDIS PUF146F;
   label values X3REGION PUF146F;
   label values X4EXDIS PUF146F;
   label values X4REGION PUF146F;
   label values X4SCHBDD PUF146F;
   label values X4SCHEDD PUF146F;
   label values X4YRRND PUF146F;
   label values X5ASMTDD PUF146F;
   label values X5EXDIS PUF146F;
   label values X5REGION PUF146F;
   label values X6ASMTDD PUF146F;
   label values X6EXDIS PUF146F;
   label values X6REGION PUF146F;
   label values X6SCHBDD PUF146F;
   label values X6SCHEDD PUF146F;
   label values X6YRRND PUF146F;
   label values Y2AFENDU PUF146F;
   label values Y2AFSTRU PUF146F;
   label values Y2AFTER8 PUF146F;
   label values Y2BFENDU PUF146F;
   label values Y2COLHDS PUF146F;
   label values Y2COLLEG PUF146F;
   label values Y2HDSCHG PUF146F;
   label values Y2HDSTRT PUF146F;
   label values Y2NCLNUM PUF146F;
   label values Y2OTHNUM PUF146F;
   label values Y2OVERNT PUF146F;
   label values Y2PHYSIC PUF146F;
   label values Y2T1NUM PUF146F;
   label values Y2TXXNUM PUF146F;
   label values Y2WEEKND PUF146F;
   label values Z2AFENDU PUF146F;
   label values Z2AFSTRU PUF146F;
   label values Z2BFENDU PUF146F;
   label values Z2LNGTCH PUF146F;
   label values Z2TYPREL PUF146F;
   label values P1ADPTDA PUF147F;
   label values P1BIOFTHR PUF147F;
   label values P1CLGDAD PUF147F;
   label values P1FOSDAD PUF147F;
   label values P1FRDDAD PUF147F;
   label values P1GRNDPA PUF147F;
   label values P1LIKDAD PUF147F;
   label values P1NONRDA PUF147F;
   label values P1OTHDAD PUF147F;
   label values P1RESPD PUF147F;
   label values P1SIBDAD PUF147F;
   label values P1SITDAD PUF147F;
   label values P1STPDAD PUF147F;
   label values P1TCHDAD PUF147F;
   label values P1UNCLE PUF147F;
   label values P2CSCRT PUF147F;
   label values P2CSINF PUF147F;
   label values P2CSNOAG PUF147F;
   label values P2CSOTH PUF147F;
   label values P2CSPEN PUF147F;
   label values P2CSWRT PUF147F;
   label values P2PAYREG PUF147F;
   label values P2RECPAY PUF147F;
   label values A1ASPKTM PUF148F;
   label values A1HGHSTD PUF149F;
   label values A4DYSWK PUF14F;
   label values A6DYSWK PUF14F;
   label values A1NATEXM PUF150F;
   label values A1PSPKTM PUF151F;
   label values A4HGHSTD PUF152F;
   label values A6HGHSTD PUF152F;
   label values A4LUNCH PUF159F;
   label values A4NATEXM PUF160F;
   label values A6NATEXM PUF160F;
   label values A4SNTHME PUF161F;
   label values A4TLKPAR PUF162F;
   label values A4TPLYIN PUF163F;
   label values A6TPLYIN PUF163F;
   label values B2HGHSTD PUF164F;
   label values B2NATEXM PUF165F;
   label values P1BDCON PUF166F;
   label values P1BMCON PUF167F;
   label values P1CAMTCH PUF168F;
   label values P1CNUMPK PUF169F;
   label values P1DOW_1 PUF170F;
   label values P1GRD_N1 PUF171F;
   label values P1GRD_N3 PUF172F;
   label values P1HIG_1 PUF173F;
   label values P1HIG_2 PUF174F;
   label values P1HSCALE PUF175F;
   label values P1LANGUA PUF176F;
   label values P1LEGMAR PUF177F;
   label values P1NAMTCH PUF178F;
   label values P1NRNUM PUF179F;
   label values P1NUMNON PUF180F;
   label values P1NUMREL PUF181F;
   label values P1O2NOET PUF182F;
   label values P1RAMTCH PUF183F;
   label values P1RELNUM PUF184F;
   label values P1U2NOET PUF185F;
   label values P1YEARK PUF186F;
   label values P21STSTP PUF187F;
   label values P21STWRD PUF188F;
   label values P2BDCON PUF189F;
   label values P2BMCON PUF190F;
   label values P2DEHEAR PUF191F;
   label values P2DENTIS PUF192F;
   label values P2HIG_1 PUF193F;
   label values P2HIG_2 PUF194F;
   label values P2HSCALE PUF195F;
   label values P2LANGUA PUF196F;
   label values P2OFTLEN PUF197F;
   label values P3LANGUA PUF198F;
   label values P5LANGUA PUF198F;
   label values P4BDCNTC PUF199F;
   label values P6BDCNTC PUF199F;
   label values P6BMCNTC PUF199F;
   label values A4YRBORN PUF19F;
   label values A1ADYSWK PUF1F;
   label values P4BMCNTC PUF200F;
   label values P4CAMTCH PUF201F;
   label values P4DEHEAR PUF202F;
   label values P5DEHEAR PUF202F;
   label values P6DEHEAR PUF202F;
   label values P4DENTIS PUF203F;
   label values P6DENTIS PUF203F;
   label values P4DOW_1 PUF204F;
   label values P6DOW_1 PUF204F;
   label values P6DOW_2 PUF204F;
   label values P4HIG_1_I PUF205F;
   label values P4HIG_2_I PUF206F;
   label values P4HSCALE PUF207F;
   label values P6HSCALE PUF207F;
   label values P4LANGUA PUF208F;
   label values P6LANGUA PUF208F;
   label values P4NAMTCH PUF209F;
   label values B2YRBORN PUF20F;
   label values P4NRNUM PUF210F;
   label values P6CTRNUM PUF210F;
   label values P6NRNUM PUF210F;
   label values P4OFTLEN PUF211F;
   label values P6OFTLEN PUF211F;
   label values P4RELNUM PUF212F;
   label values R2CGEDUC PUF213F;
   label values S2BRKLOC PUF214F;
   label values S2EDLVL PUF215F;
   label values S2RPRTCD PUF216F;
   label values S2SYREMM PUF217F;
   label values S2SYRSMM PUF218F;
   label values P1CHDOBY PUF21F;
   label values S4BRKLOC PUF221F;
   label values S4EDLVL PUF222F;
   label values S6EDLVL PUF222F;
   label values S4INVITE PUF223F;
   label values S6INVITE PUF223F;
   label values S4PTCONF PUF224F;
   label values S6PTCONF PUF224F;
   label values S4RPTCRD PUF225F;
   label values S6RPTCRD PUF225F;
   label values S4SYREMM PUF226F;
   label values S6SYREMM PUF226F;
   label values S4SYRSMM PUF227F;
   label values S6SYRSMM PUF227F;
   label values T2BH2WK PUF228F;
   label values T2GRADE PUF229F;
   label values P1CTRSCH PUF22F;
   label values T2LNGTM PUF230F;
   label values T2NSTNL PUF231F;
   label values T4BH2WK PUF232F;
   label values T6BH2WK PUF232F;
   label values T4LNGTM PUF235F;
   label values T6LNGTM PUF235F;
   label values V2CGEDUC PUF236F;
   label values X12PAR1ED_I PUF237F;
   label values X12PAR2ED_I PUF238F;
   label values X2SCHBMM PUF239F;
   label values P1CURMAR PUF23F;
   label values X2SCHEMM PUF240F;
   label values X3ASMTST PUF241F;
   label values X4ASMTST PUF242F;
   label values X5ASMTST PUF242F;
   label values X6ASMTST PUF242F;
   label values X4PAR1ED_I PUF243F;
   label values X4PAR2ED_I PUF244F;
   label values X4SCHBMM PUF245F;
   label values X4SCHEMM PUF246F;
   label values X6SCHEMM PUF246F;
   label values Y2ACDSUP PUF247F;
   label values P1MRRYYR PUF24F;
   label values P1DOW_2 PUF250F;
   label values T4KACCOM PUF251F;
   label values T4KENNAT PUF252F;
   label values T4KTTABS PUF253F;
   label values T5GRADE PUF254F;
   label values T6GRADE PUF254F;
   label values P6RELNUM PUF255F;
   label values A6TXART PUF256F;
   label values A6TXMUS PUF256F;
   label values A6TXDAN PUF257F;
   label values A6TXTHTR PUF257F;
   label values P6EDBPFT PUF258F;
   label values P6EDBPMT PUF258F;
   label values A6YRBORN PUF259F;
   label values P1MULTIP PUF25F;
   label values S6BNUMCH PUF260F;
   label values S6CNUMCH PUF260F;
   label values S6PTRAYP PUF261F;
   label values P6BMCOB PUF262F;
   label values P6GTTSCH PUF263F;
   label values X5GRDLVL PUF264F;
   label values X6GRDLVL PUF264F;
   label values F5CLASS2 PUF265F;
   label values F6CLASS2 PUF265F;
   label values T6OFT2LN PUF266F;
   label values T6OFTENG PUF266F;
   label values T6OFTOTH PUF267F;
   label values T6TME2LN PUF268F;
   label values T6TMEENG PUF269F;
   label values P1NRCGLG PUF26F;
   label values T6TMEOTH PUF270F;
   label values A6LUNCH PUF271F;
   label values X6SCHBMM PUF273F;
   label values S6PCTFLN_I PUF274F;
   label values X6FRMEAL_I PUF274F;
   label values X6RCETH PUF274F;
   label values IFS4ANUMCH PUF275F;
   label values IFS4NMFRM PUF275F;
   label values IFS4NMRDM PUF275F;
   label values IFS6PCTFLN PUF275F;
   label values IFX4FMEAL PUF275F;
   label values IFX4RMEAL PUF275F;
   label values IFX6FRMEAL PUF275F;
   label values P1PRMLN1 PUF27F;
   label values P1PRMLN2 PUF28F;
   label values P1PRMLNG PUF29F;
   label values A1AHRSDA PUF2F;
   label values P1RELLNG PUF30F;
   label values P1RELMST PUF31F;
   label values P1SCHOOL PUF32F;
   label values P1TCHLNG PUF33F;
   label values P1WKL_1 PUF34F;
   label values P1WKL_2 PUF35F;
   label values P2BDDAYS PUF36F;
   label values P2BDLVMN PUF37F;
   label values P2BDRELS PUF38F;
   label values P2BMDAYS PUF39F;
   label values A1ALGINS PUF3F;
   label values P2BMLVMN PUF40F;
   label values P2BMRELS PUF41F;
   label values P2CHDOBY PUF42F;
   label values P2CURMAR PUF43F;
   label values P2DOCTOR PUF44F;
   label values P2GTTSCH PUF45F;
   label values P2MULTIP PUF46F;
   label values P2PRIMLN PUF47F;
   label values P3CARTYPE PUF48F;
   label values P5CARTYPE PUF48F;
   label values P3CHDOBY PUF49F;
   label values P5CHDOBY PUF49F;
   label values A1DDYSWK PUF4F;
   label values P4CHDOBY PUF50F;
   label values P6CHDOBY PUF50F;
   label values P4CURMAR PUF51F;
   label values P6CURMAR PUF51F;
   label values P4DOCTOR PUF52F;
   label values P6DOCTOR PUF52F;
   label values P4HOUSIT PUF53F;
   label values P6HOUSIT PUF53F;
   label values P2PARCT1 PUF54F;
   label values P2PARCT2 PUF54F;
   label values P4PARCT1 PUF54F;
   label values P6BDCOB PUF54F;
   label values P4PARCT2 PUF55F;
   label values P6PARCT1 PUF55F;
   label values P6PARCT2 PUF55F;
   label values P4PRMLNG PUF56F;
   label values P6PRMLNG PUF56F;
   label values P4RELMST PUF57F;
   label values P6RELMST PUF57F;
   label values P4SCHOOL PUF58F;
   label values P4WKL_1 PUF59F;
   label values A1DHRSDA PUF5F;
   label values P4WKL_2 PUF60F;
   label values R2DOBYY PUF61F;
   label values R2PRGNM3 PUF62F;
   label values R2PRGNM4 PUF63F;
   label values R2PRGNM5 PUF64F;
   label values R2PRMLNG PUF65F;
   label values S2ANUMCH PUF66F;
   label values S2BILINS PUF67F;
   label values S2BILPLL PUF68F;
   label values S2BNUMCH PUF69F;
   label values A1PDYSWK PUF6F;
   label values S2BRTHYR PUF70F;
   label values S2BUSSED PUF71F;
   label values S2CHLDNM PUF72F;
   label values S2CNUMCH PUF73F;
   label values S2DUALIN PUF74F;
   label values S2DUALPL PUF75F;
   label values S2ESLPLL PUF76F;
   label values S2ESLREG PUF77F;
   label values S2FLPRBK PUF78F;
   label values S2FLPRLU PUF79F;
   label values A1PHRSDA PUF7F;
   label values S2FREEBK PUF80F;
   label values S2KINTOT PUF81F;
   label values S2METAYP PUF82F;
   label values S2NUMFRM PUF83F;
   label values S2NUMRDM PUF84F;
   label values S2OUTSID PUF85F;
   label values S2PDBRK PUF86F;
   label values S2PUBSOC PUF87F;
   label values S2RDCBRK PUF88F;
   label values S2RDPRBK PUF89F;
   label values A1PLGINS PUF8F;
   label values S2RDPRLU PUF90F;
   label values S2TOFRLU PUF91F;
   label values S2TOPDLU PUF92F;
   label values S2TORDLU PUF93F;
   label values S2TOTENR PUF94F;
   label values S2TOTPRI PUF95F;
   label values S2YSTCH PUF96F;
   label values S4ANUMCH_I PUF97F;
   label values S6ANUMCH PUF97F;
   label values S4BILINS PUF98F;
   label values S4BILPLL PUF99F;
   label values A1YRBORN PUF9F;
   label values R2ANGRY R2ANGRY;
   label values R2COMPMM R2COMPMM;
   label values R2COMPYY R2COMPYY;
   label values R2DOBMM R2DOBMM;
   label values R2ENJOY R2ENJOY;
   label values R2GENDER R2GENDER;
   label values R2LICREQ R2LICREQ;
   label values R2MISBEH R2MISBEH;
   label values R2MKDIFF R2MKDIFF;
   label values R2NOENRG R2NOENRG;
   label values R2PFEEUN R2PFEEUN;
   label values R2PRGLIC R2PRGLIC;
   label values R2PURPOS R2PURPOS;
   label values R2RELAXD R2RELAXD;
   label values R2RULES R2RULES;
   label values R2TEACH R2TEACH;
   label values R2YNGHRS R2YNGHRS;
   label values S2ABSENT S2ABSENT;
   label values S4ABSENT S2ABSENT;
   label values S6ABSENT S2ABSENT;
   label values S2ACADEM S2ACADEM;
   label values S2ADAFLG S2ADAFLG;
   label values S4ADAFLG S2ADAFLG;
   label values S6ADAFLG S2ADAFLG;
   label values S2AGGBEH S2AGGBEH;
   label values S4AGGBEH S2AGGBEH;
   label values S6AGGBEH S2AGGBEH;
   label values S2AIANF2 S2AIAF2F;
   label values S4AIANF2 S2AIAF2F;
   label values S6AIANF2 S2AIAF2F;
   label values S2AIANFL S2AIANFL;
   label values S4AIANFL S2AIANFL;
   label values S6AIANFL S2AIANFL;
   label values S2ALCOHL S2ALCOHL;
   label values S4ALCOHL S2ALCOHL;
   label values S6ALCOHL S2ALCOHL;
   label values S2ARTOK S2ARTOK;
   label values S2ASIAF2 S2ASIAFF;
   label values S4ASIAF2 S2ASIAFF;
   label values S6ASIAF2 S2ASIAFF;
   label values S2ASIAFL S2ASIAFL;
   label values S4ASIAFL S2ASIAFL;
   label values S6ASIAFL S2ASIAFL;
   label values S2AUDTOK S2AUDTOK;
   label values S2BLACF2 S2BLACFF;
   label values S4BLACF2 S2BLACFF;
   label values S6BLACF2 S2BLACFF;
   label values S2BLACFL S2BLACFL;
   label values S4BLACFL S2BLACFL;
   label values S6BLACFL S2BLACFL;
   label values S2BULLY S2BULLY;
   label values S4BULLY S2BULLY;
   label values S6BULLY S2BULLY;
   label values S2CAFEOK S2CAFEOK;
   label values S2CLASPR S2CLASPR;
   label values S4CLASPR S2CLASPR;
   label values S6CLASPR S2CLASPR;
   label values S2CLSSOK S2CLSSOK;
   label values S2CNSNSS S2CNSNSS;
   label values S4CNSNSS S2CNSNSS;
   label values S6CNSNSS S2CNSNSS;
   label values S2COMPMM S2COMPMM;
   label values S4COMPMM S2COMPMM;
   label values S6COMPMM S2COMPMM;
   label values S2COMPOK S2COMPOK;
   label values S2COMPYY S2COMPYY;
   label values S2CONFLC S2CONFLC;
   label values S4CONFLC S2CONFLC;
   label values S6CONFLC S2CONFLC;
   label values S2CRIME S2CRIME;
   label values S2DISORD S2DISORD;
   label values S4DISORD S2DISORD;
   label values S6DISORD S2DISORD;
   label values S2DRGFRQ S2DRGFRQ;
   label values S4DRGFRQ S2DRGFRQ;
   label values S6DRGFRQ S2DRGFRQ;
   label values S2DRUGS S2DRUGS;
   label values S2DSBLED S2DSBLED;
   label values S2GANGS S2GANGS;
   label values S2GRRETK S2GRRETK;
   label values S2GYMOK S2GYMOK;
   label values S2HAWPFL S2HAWPFL;
   label values S4HAWPFL S2HAWPFL;
   label values S6HAWPFL S2HAWPFL;
   label values S2HAWPF2 S2HAWPFZ;
   label values S4HAWPF2 S2HAWPFZ;
   label values S6HAWPF2 S2HAWPFZ;
   label values S2HISPF2 S2HISPFF;
   label values S4HISPF2 S2HISPFF;
   label values S6HISPF2 S2HISPFF;
   label values S2HISPFL S2HISPFL;
   label values S4HISPFL S2HISPFL;
   label values S6HISPFL S2HISPFL;
   label values S2HVISIT S2HVISIT;
   label values S2IMMATU S2IMMATU;
   label values S2INVITE S2INVITE;
   label values S2INVOLV S2INVOLV;
   label values S4INVOLV S2INVOLV;
   label values S6INVOLV S2INVOLV;
   label values S2KNDRGT S2KNDRGT;
   label values S2KNWNME S2KNWNME;
   label values S4KNWNME S2KNWNME;
   label values S6KNWNME S2KNWNME;
   label values S2LBRYOK S2LBRYOK;
   label values S2MULTF2 S2MULTFF;
   label values S4MULTF2 S2MULTFF;
   label values S6MULTF2 S2MULTFF;
   label values S2MULTFL S2MULTFL;
   label values S4MULTFL S2MULTFL;
   label values S6MULTFL S2MULTFL;
   label values S2MULTOK S2MULTOK;
   label values S2MUSCOK S2MUSCOK;
   label values S2NOPERM S2NOPERM;
   label values S2OVRCRD S2OVRCRD;
   label values S4OVRCRD S2OVRCRD;
   label values S6OVRCRD S2OVRCRD;
   label values S2PLAYOK S2PLAYOK;
   label values S2POLICY S2POLICY;
   label values S2PRNTS S2PRNTS;
   label values S2PTAMT S2PTAMT;
   label values S4PTAMT S2PTAMT;
   label values S6PTAMT S2PTAMT;
   label values S2PTCONF S2PTCONF;
   label values S2SDTEST S2SDTEST;
   label values S2SOCPRO S2SOCPRO;
   label values S2SPPRT S2SPPRT;
   label values S4SPPRT S2SPPRT;
   label values S6SPPRT S2SPPRT;
   label values S2SRVIEP S2SRVIEP;
   label values S2STABNT S2STABNT;
   label values S4STABNT S2STABNT;
   label values S6STABNT S2STABNT;
   label values S2STTEST S2STTEST;
   label values S4STTEST S2STTEST;
   label values S6STTEST S2STTEST;
   label values S2SYREYY S2SYREYY;
   label values S4SYREYY S2SYREYY;
   label values S2SYRSYY S2SYRSYY;
   label values S2T1PREK S2T1PREK;
   label values S2T3PREK S2T3PREK;
   label values S2TARDY S2TARDY;
   label values S4TARDY S2TARDY;
   label values S6TARDY S2TARDY;
   label values S2THEFT S2THEFT;
   label values S4THEFT S2THEFT;
   label values S6THEFT S2THEFT;
   label values S2TNSION S2TNSION;
   label values S2TRNOVR S2TRNOVR;
   label values S4TRNOVR S2TRNOVR;
   label values S6TRNOVR S2TRNOVR;
   label values S2TT1TA S2TT1TA;
   label values S4TT1TA S2TT1TA;
   label values S6TT1TA S2TT1TA;
   label values S2VANDAL S2VANDAL;
   label values S4VANDAL S2VANDAL;
   label values S6VANDAL S2VANDAL;
   label values S2VCANCY S2VCANCY;
   label values S2WEAPON S2WEAPON;
   label values S4WEAPON S2WEAPON;
   label values S6WEAPON S2WEAPON;
   label values S2WHITFL S2WHITFL;
   label values S4WHITFL S2WHITFL;
   label values S6WHITFL S2WHITFL;
   label values S2WHITF2 S2WHTF2F;
   label values S4WHITF2 S2WHTF2F;
   label values S6WHITF2 S2WHTF2F;
   label values S2WLCOME S2WLCOME;
   label values S4WLCOME S2WLCOME;
   label values S6WLCOME S2WLCOME;
   label values S4504NO S4504NO;
   label values S4504NOG S4504NOG;
   label values S4CCLSDE S4CCLSDE;
   label values S6CCLSDE S4CCLSDE;
   label values S4CCLSIN S4CCLSIN;
   label values S6CCLSIN S4CCLSIN;
   label values S4CESLIN S4CESLIN;
   label values S6CESLIN S4CESLIN;
   label values S4CFREEL S4CFREEL;
   label values S6CFREEL S4CFREEL;
   label values S4CSALDE S4CSALDE;
   label values S6CSALDE S4CSALDE;
   label values S4CSALIN S4CSALIN;
   label values S6CSALIN S4CSALIN;
   label values S4CUTCLS S4CUTCLS;
   label values S6CUTCLS S4CUTCLS;
   label values S4ARTOK S4FACSOK;
   label values S4AUDTOK S4FACSOK;
   label values S4CAFEOK S4FACSOK;
   label values S4CLSSOK S4FACSOK;
   label values S4COMPOK S4FACSOK;
   label values S4GYMOK S4FACSOK;
   label values S4LBRYOK S4FACSOK;
   label values S4MULTOK S4FACSOK;
   label values S4MUSCOK S4FACSOK;
   label values S4PLAYOK S4FACSOK;
   label values S6ARTOK S4FACSOK;
   label values S6AUDTOK S4FACSOK;
   label values S6CAFEOK S4FACSOK;
   label values S6CLSSOK S4FACSOK;
   label values S6COMPOK S4FACSOK;
   label values S6GYMOK S4FACSOK;
   label values S6LBRYOK S4FACSOK;
   label values S6MULTOK S4FACSOK;
   label values S6MUSCOK S4FACSOK;
   label values S6PLAYOK S4FACSOK;
   label values S4FUNDDC S4FUNDDC;
   label values S6FUNDDC S4FUNDDC;
   label values S4GIFNO S4GIFNO;
   label values S4GIFNOG S4GIFNOG;
   label values S4IENRLDC S4IENRLDC;
   label values S6IENRLDC S4IENRLDC;
   label values S4IENRLIN S4IENRLIN;
   label values S6IENRLIN S4IENRLIN;
   label values S4MKEAYP S4MKEAYP;
   label values S6MKEAYP S4MKEAYP;
   label values S4MOBINC S4MOBINC;
   label values S6MOBINC S4MOBINC;
   label values S4MTHNED S4MTHNED;
   label values S6MTHNED S4MTHNED;
   label values S4MTHTGT S4MTHTGT;
   label values S6MTHTGT S4MTHTGT;
   label values S4MTINO S4MTINO;
   label values S4MTINOG S4MTINOG;
   label values S4MTYAYP S4MTYAYPF;
   label values S6MTYAYP S4MTYAYPF;
   label values S6504NO S4NOCUTO;
   label values S6504NOG S4NOCUTO;
   label values S6GIFNO S4NOCUTO;
   label values S6GIFNOG S4NOCUTO;
   label values S6MTINO S4NOCUTO;
   label values S6MTINOG S4NOCUTO;
   label values S6PRVSCH S4NOCUTO;
   label values S6RDINO S4NOCUTO;
   label values S6RDINOG S4NOCUTO;
   label values S6SOL2NO S4NOCUTO;
   label values S6SPDNO S4NOCUTO;
   label values S6SPDNOG S4NOCUTO;
   label values S4OPADTM S4OPADTM;
   label values S6OPADTM S4OPADTM;
   label values S4OPDVLP S4OPDVLP;
   label values S6OPDVLP S4OPDVLP;
   label values S4OPTDST S4OPTDST;
   label values S6OPTDST S4OPTDST;
   label values S4OTNEEDDK S4OTNEEDDK;
   label values S6OTNEEDDK S4OTNEEDDK;
   label values S6PTRAYPDK S4OTNEEDDK;
   label values S6PUBCHODK S4OTNEEDDK;
   label values S4PRVSCH S4PRVSCH;
   label values S4PTRAYPDK S4PTRAYPDK;
   label values S4PUBCHODK S4PUBCHODK;
   label values S4RDINO S4RDINO;
   label values S4RDRAYP S4RDRAYPF;
   label values S6RDRAYP S4RDRAYPF;
   label values S4REDNED S4REDNED;
   label values S6REDNED S4REDNED;
   label values S4REDTGT S4REDTGT;
   label values S6REDTGT S4REDTGT;
   label values S4RTLMTH S4RTLMTH;
   label values S4RTLRED S4RTLRED;
   label values S4RTLRIT S4RTLRIT;
   label values S4RTLSOC S4RTLSOC;
   label values S4RTLTME S4RTLTME;
   label values S6RTLTME S4RTLTME;
   label values S4SCHPMC S4SCHPMC;
   label values S6SCHPMC S4SCHPMC;
   label values S4SCIPCT S4SCIPCTF;
   label values S6SCIPCT S4SCIPCTF;
   label values S4SOL2NO S4SOL2NO;
   label values S4SPDNO S4SPDNO;
   label values S4SPDNOG S4SPDNOG;
   label values S4SYRSYY S4SYRSYY;
   label values S4TCHRED S4TCHRED;
   label values S6TCHRED S4TCHRED;
   label values S4WHRIEP S4WHRIEP;
   label values S6WHRIEP S4WHRIEP;
   label values S6RTLMTH S6RTLMTH;
   label values S6RTLRED S6RTLMTH;
   label values S6RTLRIT S6RTLMTH;
   label values S6RTLSOC S6RTLMTH;
   label values T1ADAPTS T1ADAPTS;
   label values T1ATTEN T1ATTEN;
   label values T1BABSBK T1BEZDAC;
   label values T1BAPRRK T1BEZDAC;
   label values T1BEZDAC T1BEZDAC;
   label values T1BEZDSL T1BEZDAC;
   label values T1BFLWIN T1BEZDAC;
   label values T1BGCBLD T1BEZDAC;
   label values T1BGCCLR T1BEZDAC;
   label values T1BNOFIN T1BEZDAC;
   label values T1BPLNAC T1BEZDAC;
   label values T1BSTNO T1BEZDAC;
   label values T1BTRBST T1BEZDAC;
   label values T1BWTTSK T1BEZDAC;
   label values T2BABSBK T1BEZDAC;
   label values T2BAPRRK T1BEZDAC;
   label values T2BEZDAC T1BEZDAC;
   label values T2BEZDSL T1BEZDAC;
   label values T2BFLWIN T1BEZDAC;
   label values T2BGCBLD T1BEZDAC;
   label values T2BGCCLR T1BEZDAC;
   label values T2BNOFIN T1BEZDAC;
   label values T2BPLNAC T1BEZDAC;
   label values T2BSTNO T1BEZDAC;
   label values T2BTRBST T1BEZDAC;
   label values T2BWTTSK T1BEZDAC;
   label values T4BABSBK T1BEZDAC;
   label values T4BAPRRK T1BEZDAC;
   label values T4BEZDAC T1BEZDAC;
   label values T4BEZDSL T1BEZDAC;
   label values T4BFLWIN T1BEZDAC;
   label values T4BGCBLD T1BEZDAC;
   label values T4BGCCLR T1BEZDAC;
   label values T4BNOFIN T1BEZDAC;
   label values T4BPLNAC T1BEZDAC;
   label values T4BSTNO T1BEZDAC;
   label values T4BTRBST T1BEZDAC;
   label values T4BWTTSK T1BEZDAC;
   label values T4KBABSBK T1BEZDAC;
   label values T4KBAPRRK T1BEZDAC;
   label values T4KBEZDAC T1BEZDAC;
   label values T4KBEZDSL T1BEZDAC;
   label values T4KBFLWIN T1BEZDAC;
   label values T4KBGCBLD T1BEZDAC;
   label values T4KBGCCLR T1BEZDAC;
   label values T4KBNOFIN T1BEZDAC;
   label values T4KBPLNAC T1BEZDAC;
   label values T4KBSTNO T1BEZDAC;
   label values T4KBTRBST T1BEZDAC;
   label values T4KBWTTSK T1BEZDAC;
   label values T1CLASS T1CLASS;
   label values T1CLSSFY T1CLSSFY;
   label values T1CMPSEN T1CMPSEN;
   label values T1CMPSTR T1CMPSTR;
   label values T4KCMPSTR T1CMPSTR;
   label values T1COMPMM T1COMPMM;
   label values T1COMPYY T1COMPYY;
   label values T1COMSC T1COMSC;
   label values T4CMSCIN T1COMSC;
   label values T1ERSPSC T1ERSPSC;
   label values T4ERSPSN T1ERSPSC;
   label values T1EXPLN T1EXPLN;
   label values T4EXPLAN T1EXPLN;
   label values T1FIRKDG T1FIRKDG;
   label values T1FOLLOW T1FOLLOW;
   label values T1FRACTN T1FRACTN;
   label values T1GLASS T1GLASS;
   label values T1GRAPH T1GRAPH;
   label values T4GRPHAC T1GRAPH;
   label values T1KEEPS T1KEEPS;
   label values T1LETTER T1LETTER;
   label values T1LIFSCI T1LIFSCI;
   label values T4LIFSCN T1LIFSCI;
   label values T1MEASU T1MEASU;
   label values T1NOMTGP T1NOMTGP;
   label values T1NORDGP T1NORDGP;
   label values T4KNORDGP T1NORDGP;
   label values T4NORDGP T1NORDGP;
   label values T6NORDGP T1NORDGP;
   label values T1OBSRV T1OBSRV;
   label values T4OBSERV T1OBSRV;
   label values T1ORDER T1ORDER;
   label values T1PERSIS T1PERSIS;
   label values T1PHYSCI T1PHYSCI;
   label values T4PHYSCN T1PHYSCI;
   label values T1PRDCT T1PRDCT;
   label values T1PRINT T1PRINT;
   label values T4CONPRN T1PRINT;
   label values T1READS T1READS;
   label values T1RELAT T1RELAT;
   label values T1SCIPRD T1SCIPRD;
   label values T4SCIPRT T1SCIPRD;
   label values T1SHOWS T1SHOWS;
   label values T1SOLVE T1SOLVE;
   label values T1SORTS T1SORTS;
   label values T1STORY T1STORY;
   label values T4INTSTY T1STORY;
   label values T1STRAT T1STRAT;
   label values T1USESTR T1USESTR;
   label values T4KUSESTR T1USESTR;
   label values T1WORKS T1WORKS;
   label values T1WRITE T1WRITE;
   label values T2ABIL T2ABIL;
   label values T4ACCOM T2ACCOM;
   label values T2ADAPTS T2ADAPTS;
   label values T3ADAPTS T2ADAPTS;
   label values T4ADAPTS T2ADAPTS;
   label values T4KADAPTS T2ADAPTS;
   label values T5ADAPTS T2ADAPTS;
   label values T6ADAPTS T2ADAPTS;
   label values T2AFTER T2AFTER;
   label values T4AFTER T2AFTER;
   label values T4KAFTER T2AFTER;
   label values T6AFTER T2AFTER;
   label values T2ATTEN T2ATTEN;
   label values T3ATTEN T2ATTEN;
   label values T4ATTEN T2ATTEN;
   label values T4KATTEN T2ATTEN;
   label values T5ATTEN T2ATTEN;
   label values T6ATTEN T2ATTEN;
   label values T2BEFORE T2BEFORE;
   label values T4BEFORE T2BEFORE;
   label values T6BEFORE T2BEFORE;
   label values T2CMPSEN T2CMPSEN;
   label values T4KCMPSEN T2CMPSEN;
   label values T2CMPST T2CMPST;
   label values T2COMPMM T2COMPMM;
   label values T3COMPMM T2COMPMM;
   label values T4COMPMM T2COMPMM;
   label values T4KCOMPMM T2COMPMM;
   label values T5COMPMM T2COMPMM;
   label values T6COMPMM T2COMPMM;
   label values T2COMPYY T2COMPYY;
   label values T3COMPYY T2COMPYY;
   label values T4KCOMPYY T2COMPYY;
   label values T2ENNAT T2ENNAT;
   label values T4ENNAT T2ENNAT;
   label values T6ENNAT T2ENNAT;
   label values T2FOLLOW T2FOLLOW;
   label values T3FOLLOW T2FOLLOW;
   label values T4FOLLOW T2FOLLOW;
   label values T4KFOLLOW T2FOLLOW;
   label values T5FOLLOW T2FOLLOW;
   label values T6FOLLOW T2FOLLOW;
   label values T2FRACTN T2FRACTN;
   label values T4FRACTN T2FRACTN;
   label values T4KFRACTN T2FRACTN;
   label values T2GRAPH T2GRAPH;
   label values T4KGRAPH T2GRAPH;
   label values T2HRCIN T2HRCIN;
   label values T4HRCIN T2HRCIN;
   label values T6HRCIN T2HRCIN;
   label values T2INFMT T2INFMT;
   label values T4INFMT T2INFMT;
   label values T4KINFMT T2INFMT;
   label values T6INFMT T2INFMT;
   label values T2KEEPS T2KEEPS;
   label values T3KEEPS T2KEEPS;
   label values T4KEEPS T2KEEPS;
   label values T4KKEEPS T2KEEPS;
   label values T5KEEPS T2KEEPS;
   label values T6KEEPS T2KEEPS;
   label values T2LETTER T2LETTER;
   label values T4KLETTER T2LETTER;
   label values T2MEASU T2MEASU;
   label values T4KMEASU T2MEASU;
   label values T4MEASU T2MEASU;
   label values T2NOMTGP T2NOMTGP;
   label values T4KNOMTGP T2NOMTGP;
   label values T4NOMTGP T2NOMTGP;
   label values T6NOMTGP T2NOMTGP;
   label values T2NORD T2NORD;
   label values T2ORDER T2ORDER;
   label values T4KORDER T2ORDER;
   label values T2PARCON T2PARCON;
   label values T4KPARCON T2PARCON;
   label values T4PARCON T2PARCON;
   label values T6PARCON T2PARCON;
   label values T2PARIN T2PARIN;
   label values T4KPARIN T2PARIN;
   label values T4PARIN T2PARIN;
   label values T6PARIN T2PARIN;
   label values T2PERSIS T2PERSIS;
   label values T3PERSIS T2PERSIS;
   label values T4KPERSIS T2PERSIS;
   label values T4PERSIS T2PERSIS;
   label values T5PERSIS T2PERSIS;
   label values T6PERSIS T2PERSIS;
   label values T2PRDCT T2PRDCT;
   label values T4KPRDCT T2PRDCT;
   label values T2PRINT T2PRINT;
   label values T4KPRINT T2PRINT;
   label values T2RTSC T2RATSC;
   label values T4KRTSC T2RATSC;
   label values T4RTSC T2RATSC;
   label values T2READS T2READS;
   label values T4KREADS T2READS;
   label values T2REGCO T2REGCO;
   label values T4KREGCO T2REGCO;
   label values T4REGCO T2REGCO;
   label values T6REGCO T2REGCO;
   label values T2RELAT T2RELAT;
   label values T4KRELAT T2RELAT;
   label values T2RETCL T2RETCL;
   label values T4KRETCL T2RETCL;
   label values T4RETCL T2RETCL;
   label values T6RETCL T2RETCL;
   label values T2RTLAN T2RTLAN;
   label values T4KRTLAN T2RTLAN;
   label values T4RTLAN T2RTLAN;
   label values T2RTMTH T2RTMTH;
   label values T4KRTMTH T2RTMTH;
   label values T4RTMTH T2RTMTH;
   label values T2RTSSS T2RTSSS;
   label values T4KRTSSS T2RTSSS;
   label values T4RTSSS T2RTSSS;
   label values T2SHOWS T2SHOWS;
   label values T3SHOWS T2SHOWS;
   label values T4KSHOWS T2SHOWS;
   label values T4SHOWS T2SHOWS;
   label values T5SHOWS T2SHOWS;
   label values T6SHOWS T2SHOWS;
   label values T2SOLVE T2SOLVE;
   label values T4KSOLVE T2SOLVE;
   label values T2SORTS T2SORTS;
   label values T4KSORTS T2SORTS;
   label values T2SPINS T2SPINS;
   label values T4SPINS T2SPINS;
   label values T2STORY T2STORY;
   label values T4KSTORY T2STORY;
   label values T2STRAT T2STRAT;
   label values T4KSTRAT T2STRAT;
   label values T4STRAT T2STRAT;
   label values T2STRPL T2STRPL;
   label values T4KSTRPL T2STRPL;
   label values T4STRPL T2STRPL;
   label values T6STRPL T2STRPL;
   label values T2TRCIN T2TRCIN;
   label values T4TRCIN T2TRCIN;
   label values T2TTABS T2TTABS;
   label values T4TTABS T2TTABS;
   label values T6TTABS T2TTABS;
   label values T2UNPLA T2UNPLA;
   label values T4KUNPLA T2UNPLA;
   label values T4UNPLA T2UNPLA;
   label values T6UNPLA T2UNPLA;
   label values T2USEST T2USEST;
   label values T2VOLUN T2VOLUN;
   label values T4KVOLUN T2VOLUN;
   label values T4VOLUN T2VOLUN;
   label values T6VOLUN T2VOLUN;
   label values T2WORKS T2WORKS;
   label values T3WORKS T2WORKS;
   label values T4KWORKS T2WORKS;
   label values T4WORKS T2WORKS;
   label values T5WORKS T2WORKS;
   label values T6WORKS T2WORKS;
   label values T2WRITE T2WRITE;
   label values T4KWRITE T2WRITE;
   label values T3COMASS T3COMASS;
   label values T5COMASS T3COMASS;
   label values T3FNOMTGP T3FNOMTGP;
   label values T5FNOMTGP T3FNOMTGP;
   label values T3FNORDGP T3FNORDGP;
   label values T5FNORDGP T3FNORDGP;
   label values T3GRADE T3GRADE;
   label values T3GVSMAS T3GVSMAS;
   label values T5GVSMAS T3GVSMAS;
   label values T3RLVINF T3RLVINF;
   label values T5CMPSES T3RLVINF;
   label values T5CONPRN T3RLVINF;
   label values T5RLVINF T3RLVINF;
   label values T3WRTSKIL T3WRTSKIL;
   label values T5WRTSKIL T3WRTSKIL;
   label values T4CLSSF T4CLSSF;
   label values T4CMPSES T4CMPSES;
   label values T4COINS T4COINS;
   label values T4ESTQNT T4ESTQNT;
   label values T4EXPECT T4EXPECT;
   label values T6EXPECT T4EXPECT;
   label values T4GRADE T4GRADE;
   label values T4IRGVWL T4IRGVWL;
   label values T4KEXPECT T4KEXPECT;
   label values T4LNGINT T4LNGINT;
   label values T4PLCVL T4PLCVL;
   label values T4RD1FLN T4RD1FLN;
   label values T4RD1IND T4RD1IND;
   label values T4REGVWL T4REGVWL;
   label values T4RLVINF T4RLVINF;
   label values T4WHNUM T4WHNUM;
   label values T4WRTSKIL T4WRTSKIL;
   label values T6BDSATN T6BEZDSL;
   label values T6BEZDAC T6BEZDSL;
   label values T6BEZDSL T6BEZDSL;
   label values T6BEZWAT T6BEZDSL;
   label values T6BFLWIN T6BEZDSL;
   label values T6BHTATN T6BEZDSL;
   label values T6BHTSLW T6BEZDSL;
   label values T6BHTTLK T6BEZDSL;
   label values T6BLKARO T6BEZDSL;
   label values T6BPLANS T6BEZDSL;
   label values T6BPYATN T6BEZDSL;
   label values T6BSPQIK T6BEZDSL;
   label values T6BSPTLD T6BEZDSL;
   label values T6OSLFTO T6OSTEAS;
   label values T6OSLIES T6OSTEAS;
   label values T6OSPUSH T6OSTEAS;
   label values T6OSTEAS T6OSTEAS;
   label values T6TSLFTO T6OSTEAS;
   label values T6TSLIES T6OSTEAS;
   label values T6TSPUSH T6OSTEAS;
   label values T6TSTEAS T6OSTEAS;
   label values T6RTMAT T6RTREAD;
   label values T6RTOLAN T6RTREAD;
   label values T6RTREAD T6RTREAD;
   label values T6RTSCI T6RTREAD;
   label values T6RTSOC T6RTREAD;
   label values T6RTWRTE T6RTREAD;
   label values S4ACADEM TF59F;
   label values S4DSBLED TF59F;
   label values S4EACHGR TF59F;
   label values S4IMMATU TF59F;
   label values S4KNDRGT TF59F;
   label values S4NOPERM TF59F;
   label values S4POLICY TF59F;
   label values S4PRNTS TF59F;
   label values S4SDTEST TF59F;
   label values S6ACADEM TF59F;
   label values S6DSBLED TF59F;
   label values S6EACHGR TF59F;
   label values S6IMMATU TF59F;
   label values S6KNDRGT TF59F;
   label values S6NOPERM TF59F;
   label values S6POLICY TF59F;
   label values S6PRNTS TF59F;
   label values S6SDTEST TF59F;
   label values V2ANGRY V2ANGRY;
   label values V2COMPMM V2COMPMM;
   label values V2COMPYY V2COMPYY;
   label values V2DOBMM V2DOBMM;
   label values V2ENJOY V2ENJOY;
   label values V2MISBEH V2MISBEH;
   label values V2MKDIFF V2MKDIFF;
   label values V2NOENRG V2NOENRG;
   label values V2RELAXD V2RELAXD;
   label values V2RULES V2RULES;
   label values V2TEACH V2TEACH;
   label values V2WCHCRD V2WCHCRD;
   label values X_CHSEX_R X_CHSEX;
   label values X_DOBMM_R X_DOBMM;
   label values X12CHGSCH X12CHGSH;
   label values X12CHGTCH X12CHGTH;
   label values X56CHGTCH X12CHGTH;
   label values X12LANGST X12LNGST;
   label values X4LANGST X12LNGST;
   label values X6LANGST X12LNGST;
   label values X12PRIMPK X12PRMPK;
   label values X_RACETH_R X12RACTH;
   label values X_RACETHP_R X12RACTP;
   label values X1ASMTDD X1ASMTDD;
   label values X2ASMTDD X1ASMTDD;
   label values X3ASMTDD X1ASMTDD;
   label values X4ASMTDD X1ASMTDD;
   label values X1CLASS X1CLASS;
   label values X1EDIT X1EDIT;
   label values X4EDIT X1EDIT;
   label values X6EDIT X1EDIT;
   label values X1FLSCRN X1ELLSCR;
   label values X3FLSCRN X1ELLSCR;
   label values X4FLSCRN X1ELLSCR;
   label values X1HPAR1 X1HPAR1F;
   label values X2HPAR1 X1HPAR1F;
   label values X4HPAR1 X1HPAR1F;
   label values X6HPAR1 X1HPAR1F;
   label values X1HPAR2 X1HPAR2F;
   label values X2HPAR2 X1HPAR2F;
   label values X4HPAR2 X1HPAR2F;
   label values X6HPAR2 X1HPAR2F;
   label values X1HPARNT X1HPARNT;
   label values X1KSCTYP X1KSCTYP;
   label values X4SCTYP X1KSCTYP;
   label values X6SCTYP X1KSCTYP;
   label values X1PARDAT X1PARDAT;
   label values X1PAR1EMP X1PR1EMP;
   label values X4PAR1EMP_I X1PR1EMP;
   label values X6PAR1EMP_I X1PR1EMP;
   label values X1PAR1OCC_I X1PR1OCC;
   label values X4PAR1OCC_I X1PR1OCC;
   label values X6PAR1OCC_I X1PR1OCC;
   label values X1PAR1RAC X1PR1RAC;
   label values X4PAR1RAC X1PR1RAC;
   label values X6PAR1RAC X1PR1RAC;
   label values X1PAR2EMP X1PR2EMP;
   label values X4PAR2EMP_I X1PR2EMP;
   label values X6PAR2EMP_I X1PR2EMP;
   label values X1PAR2OCC_I X1PR2OCC;
   label values X4PAR2OCC_I X1PR2OCC;
   label values X6PAR2OCC_I X1PR2OCC;
   label values X1PAR2RAC X1PR2RAC;
   label values X4PAR2RAC X1PR2RAC;
   label values X6PAR2RAC X1PR2RAC;
   label values X1PRIMNW X1PRIMNW;
   label values X1PUBPRI X1PUBPRI;
   label values X1DCCSFLG X1RDGFLG;
   label values X1HGTFLG X1RDGFLG;
   label values X1MTHFLG X1RDGFLG;
   label values X1NRFLG X1RDGFLG;
   label values X1NRGEST X1RDGFLG;
   label values X1RDGFLG X1RDGFLG;
   label values X1WGTFLG X1RDGFLG;
   label values X2DCCSFLG X1RDGFLG;
   label values X2HGTFLG X1RDGFLG;
   label values X2MTHFLG X1RDGFLG;
   label values X2NRFLG X1RDGFLG;
   label values X2NRGEST X1RDGFLG;
   label values X2RDGFLG X1RDGFLG;
   label values X2SCIFLG X1RDGFLG;
   label values X2WGTFLG X1RDGFLG;
   label values X3DCCSFLG X1RDGFLG;
   label values X3HGTFLG X1RDGFLG;
   label values X3MTHFLG X1RDGFLG;
   label values X3NRFLG X1RDGFLG;
   label values X3NRGEST X1RDGFLG;
   label values X3RDGFLG X1RDGFLG;
   label values X3SCIFLG X1RDGFLG;
   label values X3WGTFLG X1RDGFLG;
   label values X4DCCSFLG X1RDGFLG;
   label values X4HGTFLG X1RDGFLG;
   label values X4MTHFLG X1RDGFLG;
   label values X4NRFLG X1RDGFLG;
   label values X4NRGEST X1RDGFLG;
   label values X4RDGFLG X1RDGFLG;
   label values X4SCIFLG X1RDGFLG;
   label values X4WGTFLG X1RDGFLG;
   label values X5HGTFLG X1RDGFLG;
   label values X5MTHFLG X1RDGFLG;
   label values X5NRFLG X1RDGFLG;
   label values X5NRGEST X1RDGFLG;
   label values X5RDGFLG X1RDGFLG;
   label values X5SCIFLG X1RDGFLG;
   label values X5WGTFLG X1RDGFLG;
   label values X6HGTFLG X1RDGFLG;
   label values X6MTHFLG X1RDGFLG;
   label values X6NRFLG X1RDGFLG;
   label values X6NRGEST X1RDGFLG;
   label values X6RDGFLG X1RDGFLG;
   label values X6SCIFLG X1RDGFLG;
   label values X6TQCDAT X1RDGFLG;
   label values X6TQTDAT X1RDGFLG;
   label values X6WGTFLG X1RDGFLG;
   label values X1RESREL X1RESREL;
   label values X1TQCDAT X1TQCDAT;
   label values X1TQTDAT X1TQTDAT;
   label values X12TWIN X1TWIN;
   label values X1BASC X1WECEP;
   label values X2CLASS X2CLASS;
   label values X2EDIT X2EDIT;
   label values X2FLSCRN X2ELLSCR;
   label values X2FSCHST X2FSCHST;
   label values X4FSCHST X2FSCHST;
   label values X2FSADST2 X2FSDS2F;
   label values X4FSADST2 X2FSDS2F;
   label values X2FSSTAT2 X2FSTT2F;
   label values X4FSSTAT2 X2FSTT2F;
   label values X2HPARNT X2HPARNT;
   label values X4HPARNT X2HPARNT;
   label values X6HPARNT X2HPARNT;
   label values X2INCCAT_I X2INCATI;
   label values X4INCCAT_I X2INCATI;
   label values X6INCCAT_I X2INCATI;
   label values X2INSAQ X2INSAQ;
   label values X4INSAQ X2INSAQ;
   label values X6INSAQ X2INSAQ;
   label values X2KENRLS X2KENRLS;
   label values X4ENRLS X2KENRLS;
   label values X6ENRLS X2KENRLS;
   label values X2KSCTYP X2KSCTYP;
   label values X2PARDAT X2PARDAT;
   label values X3PARDAT X2PARDAT;
   label values X5PARDAT X2PARDAT;
   label values X2POVTY X2POVTY;
   label values X2PAR1RAC X2PR1RAC;
   label values X2PAR2RAC X2PR2RAC;
   label values X2PUBPRI X2PUBPRI;
   label values X3PUBPRI X2PUBPRI;
   label values X5PUBPRI X2PUBPRI;
   label values X2RESREL X2RESREL;
   label values X2SCHBYY X2SCHBYY;
   label values X2SCHEYY X2SCHEYY;
   label values X4SCHEYY X2SCHEYY;
   label values X2SETQA X2SETQA;
   label values X4SETQA X2SETQA;
   label values X6SETQA X2SETQA;
   label values X2SETQC X2SETQC;
   label values X4SETQC X2SETQC;
   label values X6SETQC X2SETQC;
   label values X2SPECS X2SPECS;
   label values X4SPECS X2SPECS;
   label values X6SPECS X2SPECS;
   label values X2SPQDAT X2SPQDAT;
   label values X2TQCDAT X2TQCDAT;
   label values X3TQCDAT X2TQCDAT;
   label values X4TQC1DAT X2TQCDAT;
   label values X4TQCKDAT X2TQCDAT;
   label values X5TQCDAT X2TQCDAT;
   label values X2TQSDAT X2TQSDAT;
   label values X2TQTDAT X2TQTDAT;
   label values X4TQT1DAT X2TQTDAT;
   label values X4TQTKDAT X2TQTDAT;
   label values X34CHGTCH X34CHGTCH;
   label values X3DEST X3DEST;
   label values X5DEST X3DEST;
   label values X3FALLSMP X3FALLSMP;
   label values X5FALLSMP X3FALLSMP;
   label values X3GRDLVL X3GRDLVL;
   label values X3SUMVD X3SUMVDF;
   label values X4CLASS2 X4CLASS2F;
   label values X4DEST X4DEST;
   label values X6DEST X4DEST;
   label values X4FSCHRA X4FSCHRAF;
   label values X4FSRAW2 X4FSCHRAF;
   label values X4GRDLVL X4GRDLVL;
   label values X4PARDAT X4PARDAT;
   label values X6PARDAT X4PARDAT;
   label values X4POVTY_I X4POVTY_I;
   label values X6POVTY_I X4POVTY_I;
   label values X4PUBPRI X4PUBPRI;
   label values X6PUBPRI X4PUBPRI;
   label values X4RESREL2 X4RESREL2F;
   label values X6RESREL2 X4RESREL2F;
   label values X4SCHBYY X4SCHBYY;
   label values S6SYRSYY X5ASMTYY;
   label values X5ASMTYY X5ASMTYY;
   label values X5DCCSFLG X5DCCSFLG;
   label values X6DCCSFLG X5DCCSFLG;
   label values X5SUMVD X5SUMVDF;
   label values X6SCHBYY X6SCHBYY;
   label values X6SCHEYY X6SCHEYY;
   label values Y2COMPMM Y2COMPMM;
   label values Y2COMPYY Y2COMPYY;
   label values Y2PFEEUN Y2PFEEUN;
   label values Y2PRGACC Y2PRGACC;
   label values Y2PRGPUB Y2PRGPUB;
   label values Y2PURPOS Y2PURPOS;
   label values Y2WRAPCR Y2WRAPCR;
   label values Y2YNGHRS Y2YNGHRS;
   label values S4HOMVST YN159F;
   label values S4MEETSP YN159F;
   label values S4OUTRCH YN159F;
   label values S4TRANSL YN159F;
   label values S4TRNWRT YN159F;
   label values S6HOMVST YN159F;
   label values S6MEETSP YN159F;
   label values S6OUTRCH YN159F;
   label values S6TRANSL YN159F;
   label values S6TRNWRT YN159F;
   label values A1A2YRK2 YN19F;
   label values A1AARABC YN19F;
   label values A1ACCHNS YN19F;
   label values A1ACFLPN YN19F;
   label values A1ACSPNH YN19F;
   label values A1ACVTNM YN19F;
   label values A1AELL YN19F;
   label values A1AENGIN YN19F;
   label values A1AINDIA YN19F;
   label values A1ALANOT YN19F;
   label values A1AOTLAN YN19F;
   label values A1APR1ST YN19F;
   label values A1ASPNIN YN19F;
   label values A1ATNOOT YN19F;
   label values A1ATSPNH YN19F;
   label values A1D2YRK2 YN19F;
   label values A1DARABC YN19F;
   label values A1DCCHNS YN19F;
   label values A1DCFLPN YN19F;
   label values A1DCJPNS YN19F;
   label values A1DCKRN YN19F;
   label values A1DCSPNH YN19F;
   label values A1DCVTNM YN19F;
   label values A1DELL YN19F;
   label values A1DENGIN YN19F;
   label values A1DINDIA YN19F;
   label values A1DLANOT YN19F;
   label values A1DOTLAN YN19F;
   label values A1DREGK YN19F;
   label values A1DSPNIN YN19F;
   label values A1DTNOOT YN19F;
   label values A1DTSPNH YN19F;
   label values A1P2YRK1 YN19F;
   label values A1P2YRK2 YN19F;
   label values A1PARABC YN19F;
   label values A1PCCHNS YN19F;
   label values A1PCFLPN YN19F;
   label values A1PCSPNH YN19F;
   label values A1PCVTNM YN19F;
   label values A1PELL YN19F;
   label values A1PENGIN YN19F;
   label values A1PINDIA YN19F;
   label values A1PLANOT YN19F;
   label values A1POTLAN YN19F;
   label values A1PPR1ST YN19F;
   label values A1PSPNIN YN19F;
   label values A1PTNOOT YN19F;
   label values A1PTSPNH YN19F;
   label values A2AELL YN19F;
   label values A2DELL YN19F;
   label values A2PELL YN19F;
   label values A4ARABC YN19F;
   label values A4CAFRCN YN19F;
   label values A4CCHNS YN19F;
   label values A4CFLPN YN19F;
   label values A4CFRNCH YN19F;
   label values A4CHNIN YN19F;
   label values A4CJPNS YN19F;
   label values A4CKRN YN19F;
   label values A4CPORTG YN19F;
   label values A4CRUSSN YN19F;
   label values A4CSPNH YN19F;
   label values A4CVTNM YN19F;
   label values A4ENGIN YN19F;
   label values A4INDIA YN19F;
   label values A4LANOT YN19F;
   label values A4SPNIN YN19F;
   label values A4TNOOT YN19F;
   label values A4TSPNH YN19F;
   label values A6ARABC YN19F;
   label values A6CAFRCN YN19F;
   label values A6CCHNS YN19F;
   label values A6CFLPN YN19F;
   label values A6CFRNCH YN19F;
   label values A6CJPNS YN19F;
   label values A6CKRN YN19F;
   label values A6CRUSSN YN19F;
   label values A6CSPNH YN19F;
   label values A6CVTNM YN19F;
   label values A6ENGIN YN19F;
   label values A6INDIA YN19F;
   label values A6LANOT YN19F;
   label values A6SPNIN YN19F;
   label values A6TNOOT YN19F;
   label values A6TSPNH YN19F;
   label values C1BRKFNL YN19F;
   label values C2BRKFNL YN19F;
   label values C3ACTIVE YN19F;
   label values C3ANNOUN YN19F;
   label values C3ANOTHP YN19F;
   label values C3ANOTHS YN19F;
   label values C3BRKFNL YN19F;
   label values C3CLSTIM YN19F;
   label values C3LCHPER YN19F;
   label values C3NOISE YN19F;
   label values C3RECESS YN19F;
   label values C3TIMEI YN19F;
   label values C3TIRED YN19F;
   label values C3WTBRK YN19F;
   label values C4ACTIVE YN19F;
   label values C4ANNOUN YN19F;
   label values C4ANOTHP YN19F;
   label values C4ANOTHS YN19F;
   label values C4BREAKS YN19F;
   label values C4BRKFNL YN19F;
   label values C4CLSTIM YN19F;
   label values C4LCHPER YN19F;
   label values C4NOISE YN19F;
   label values C4RECESS YN19F;
   label values C4TIMEI YN19F;
   label values C4TIRED YN19F;
   label values C4WTBRK YN19F;
   label values C5ACTIVE YN19F;
   label values C5ANNOUN YN19F;
   label values C5ANOTHP YN19F;
   label values C5ANOTHS YN19F;
   label values C5BRKFNL YN19F;
   label values C5CLSTIM YN19F;
   label values C5LCHPER YN19F;
   label values C5NOISE YN19F;
   label values C5RECESS YN19F;
   label values C5TIMEI YN19F;
   label values C5TIRED YN19F;
   label values C5WTBRK YN19F;
   label values C6ACTIVE YN19F;
   label values C6ANNOUN YN19F;
   label values C6ANOTHP YN19F;
   label values C6ANOTHS YN19F;
   label values C6BRKFNL YN19F;
   label values C6CLSTIM YN19F;
   label values C6LCHPER YN19F;
   label values C6NOISE YN19F;
   label values C6RECESS YN19F;
   label values C6TIMEI YN19F;
   label values C6TIRED YN19F;
   label values C6WTBRK YN19F;
   label values P1CONTCC YN19F;
   label values P4CUR_1 YN19F;
   label values P4CUR_10 YN19F;
   label values P4CUR_11 YN19F;
   label values P4CUR_12 YN19F;
   label values P4CUR_13 YN19F;
   label values P4CUR_14 YN19F;
   label values P4CUR_15 YN19F;
   label values P4CUR_16 YN19F;
   label values P4CUR_17 YN19F;
   label values P4CUR_18 YN19F;
   label values P4CUR_19 YN19F;
   label values P4CUR_2 YN19F;
   label values P4CUR_20 YN19F;
   label values P4CUR_21 YN19F;
   label values P4CUR_22 YN19F;
   label values P4CUR_23 YN19F;
   label values P4CUR_24 YN19F;
   label values P4CUR_25 YN19F;
   label values P4CUR_3 YN19F;
   label values P4CUR_4 YN19F;
   label values P4CUR_5 YN19F;
   label values P4CUR_6 YN19F;
   label values P4CUR_7 YN19F;
   label values P4CUR_8 YN19F;
   label values P4CUR_9 YN19F;
   label values P6CUR_1 YN19F;
   label values P6CUR_10 YN19F;
   label values P6CUR_11 YN19F;
   label values P6CUR_12 YN19F;
   label values P6CUR_13 YN19F;
   label values P6CUR_14 YN19F;
   label values P6CUR_15 YN19F;
   label values P6CUR_16 YN19F;
   label values P6CUR_17 YN19F;
   label values P6CUR_18 YN19F;
   label values P6CUR_19 YN19F;
   label values P6CUR_2 YN19F;
   label values P6CUR_20 YN19F;
   label values P6CUR_21 YN19F;
   label values P6CUR_22 YN19F;
   label values P6CUR_23 YN19F;
   label values P6CUR_24 YN19F;
   label values P6CUR_25 YN19F;
   label values P6CUR_3 YN19F;
   label values P6CUR_4 YN19F;
   label values P6CUR_5 YN19F;
   label values P6CUR_6 YN19F;
   label values P6CUR_7 YN19F;
   label values P6CUR_8 YN19F;
   label values P6CUR_9 YN19F;
   label values R2ARTMUS YN19F;
   label values R2BOTHWK YN19F;
   label values R2BRNDEV YN19F;
   label values R2CACFP YN19F;
   label values R2CHDDEV YN19F;
   label values R2COGDEV YN19F;
   label values R2COORD YN19F;
   label values R2CURRIC YN19F;
   label values R2DEGREE YN19F;
   label values R2GROUP YN19F;
   label values R2GUIDNC YN19F;
   label values R2HEALTH YN19F;
   label values R2HOMELS YN19F;
   label values R2INDIVD YN19F;
   label values R2LNGDEV YN19F;
   label values R2LOWINC YN19F;
   label values R2MANAGE YN19F;
   label values R2MIGRNT YN19F;
   label values R2MOTDEV YN19F;
   label values R2NONENG YN19F;
   label values R2OTHSUB YN19F;
   label values R2PARNTS YN19F;
   label values R2PREKKD YN19F;
   label values R2QUALTY YN19F;
   label values R2RELIGS YN19F;
   label values R2SCHLRD YN19F;
   label values R2SOCDEV YN19F;
   label values R2SPECIAL YN19F;
   label values R2STRESS YN19F;
   label values R2TRAING YN19F;
   label values R2USECUR YN19F;
   label values S22YRPLN YN19F;
   label values S2ADDTST YN19F;
   label values S2ASSESO YN19F;
   label values S2AYPIMP YN19F;
   label values S2BRKCLR YN19F;
   label values S2COSTLY YN19F;
   label values S2CUTOFF YN19F;
   label values S2DELAY YN19F;
   label values S2FEWSTD YN19F;
   label values S2GIFNO YN19F;
   label values S2GIFNOG YN19F;
   label values S2HAVEGR YN19F;
   label values S2HOMVST YN19F;
   label values S2INDVDL YN19F;
   label values S2LATEST YN19F;
   label values S2MEETSP YN19F;
   label values S2MTINO YN19F;
   label values S2MTINOG YN19F;
   label values S2NOFACL YN19F;
   label values S2NOSTAF YN19F;
   label values S2NWCURR YN19F;
   label values S2OTHER YN19F;
   label values S2OUTCON YN19F;
   label values S2OUTRCH YN19F;
   label values S2PLACE YN19F;
   label values S2RDINO YN19F;
   label values S2RDINOG YN19F;
   label values S2RECTT3 YN19F;
   label values S2REORGN YN19F;
   label values S2RPLSTF YN19F;
   label values S2SPDNO YN19F;
   label values S2SPDNOG YN19F;
   label values S2STTRAN YN19F;
   label values S2SUPPED YN19F;
   label values S2T1KIND YN19F;
   label values S2T3ENTI YN19F;
   label values S2T3FMLT YN19F;
   label values S2T3HMLG YN19F;
   label values S2T3INCL YN19F;
   label values S2T3KIND YN19F;
   label values S2T3PRDV YN19F;
   label values S2T3PULL YN19F;
   label values S2T3SUMM YN19F;
   label values S2T3XTIM YN19F;
   label values S2TRANSL YN19F;
   label values S2TRNWRT YN19F;
   label values S2TT1 YN19F;
   label values S2TT1CLA YN19F;
   label values S2TT1EXT YN19F;
   label values S2TT1FLS YN19F;
   label values S2TT1INC YN19F;
   label values S2TT1PD YN19F;
   label values S2TT1PO YN19F;
   label values S2TTLSUM YN19F;
   label values S2XTNDYR YN19F;
   label values S42YIMP2 YN19F;
   label values S42YIMPL YN19F;
   label values S4AYPIMP YN19F;
   label values S4BRKCLR YN19F;
   label values S4CAAREA YN19F;
   label values S4COSTLY YN19F;
   label values S4EXTNY2 YN19F;
   label values S4EXTNYR YN19F;
   label values S4FEWSTD YN19F;
   label values S4HAVEGR YN19F;
   label values S4LATEST YN19F;
   label values S4METRTL YN19F;
   label values S4NEWCU2 YN19F;
   label values S4NEWCUR YN19F;
   label values S4NOFACL YN19F;
   label values S4NOIRTL YN19F;
   label values S4NOSTAF YN19F;
   label values S4OFFPD2 YN19F;
   label values S4OFFPDV YN19F;
   label values S4OTHER YN19F;
   label values S4OUTCN2 YN19F;
   label values S4OUTCNS YN19F;
   label values S4RECTT3 YN19F;
   label values S4REORN2 YN19F;
   label values S4REORNZ YN19F;
   label values S4RPLST YN19F;
   label values S4RPLST2 YN19F;
   label values S4RTERTL YN19F;
   label values S4SHPRTL YN19F;
   label values S4SOCHIN YN19F;
   label values S4SOLSPN YN19F;
   label values S4SOOTHR YN19F;
   label values S4SUPLE2 YN19F;
   label values S4SUPLED YN19F;
   label values S4T3ENTI YN19F;
   label values S4T3FMLT YN19F;
   label values S4T3HMLG YN19F;
   label values S4T3INCL YN19F;
   label values S4T3PRDV YN19F;
   label values S4T3PULL YN19F;
   label values S4T3SUMM YN19F;
   label values S4T3XTIM YN19F;
   label values S4TRANS2 YN19F;
   label values S4TRANSF YN19F;
   label values S4TT1 YN19F;
   label values S4TT1CLA YN19F;
   label values S4TT1EXT YN19F;
   label values S4TT1FLS YN19F;
   label values S4TT1INC YN19F;
   label values S4TT1PD YN19F;
   label values S4TT1PO YN19F;
   label values S4TTLPRE YN19F;
   label values S4TTLSUM YN19F;
   label values S62YIMP2 YN19F;
   label values S62YIMPL YN19F;
   label values S6AYPIMP YN19F;
   label values S6CAAREA YN19F;
   label values S6EXTNY2 YN19F;
   label values S6EXTNYR YN19F;
   label values S6HAVEGR YN19F;
   label values S6LP2LNG YN19F;
   label values S6LPOTHR YN19F;
   label values S6LPSENG YN19F;
   label values S6METRTL YN19F;
   label values S6NEWCU2 YN19F;
   label values S6NEWCUR YN19F;
   label values S6NOIRTL YN19F;
   label values S6NOLGPR YN19F;
   label values S6OUTCN2 YN19F;
   label values S6OUTCNS YN19F;
   label values S6RECTT3 YN19F;
   label values S6REORNZ YN19F;
   label values S6RPLST YN19F;
   label values S6RPLST2 YN19F;
   label values S6RTERTL YN19F;
   label values S6SHPRTL YN19F;
   label values S6SOCHIN YN19F;
   label values S6SOLSPN YN19F;
   label values S6SOOTHR YN19F;
   label values S6SUPLE2 YN19F;
   label values S6SUPLED YN19F;
   label values S6T3ENTI YN19F;
   label values S6T3FMLT YN19F;
   label values S6T3HMLG YN19F;
   label values S6T3INCL YN19F;
   label values S6T3PRDV YN19F;
   label values S6T3PULL YN19F;
   label values S6T3SUMM YN19F;
   label values S6T3XTIM YN19F;
   label values S6TRANSF YN19F;
   label values S6TT1 YN19F;
   label values S6TT1CLA YN19F;
   label values S6TT1EXT YN19F;
   label values S6TT1FLS YN19F;
   label values S6TT1INC YN19F;
   label values S6TT1PD YN19F;
   label values S6TT1PO YN19F;
   label values S6TTLPRE YN19F;
   label values S6TTLSUM YN19F;
   label values T2CMBEV YN19F;
   label values T2CMDOW YN19F;
   label values T2CMSW YN19F;
   label values T2DISCIP YN19F;
   label values T2DISORG YN19F;
   label values T2EFFORT YN19F;
   label values T2EMOPRB YN19F;
   label values T2FRQABS YN19F;
   label values T2HEALTH YN19F;
   label values T2OTHRES YN19F;
   label values T2PRGES YN19F;
   label values T2SKILL YN19F;
   label values T3SUMMSH YN19F;
   label values T3SUMOTH YN19F;
   label values T3SUMRLG YN19F;
   label values T3SUMRLI YN19F;
   label values T3SUMRSH YN19F;
   label values T3SUMWSH YN19F;
   label values T4CMBEV YN19F;
   label values T4CMDOW YN19F;
   label values T4CMSW YN19F;
   label values T4DISCIP YN19F;
   label values T4DISORG YN19F;
   label values T4EFFORT YN19F;
   label values T4EMOPRB YN19F;
   label values T4FRQABS YN19F;
   label values T4HEALTH YN19F;
   label values T4KCMBEV YN19F;
   label values T4KCMDOW YN19F;
   label values T4KCMSW YN19F;
   label values T4OTHRES YN19F;
   label values T4PRGES YN19F;
   label values T4SKILL YN19F;
   label values T5SUMMSH YN19F;
   label values T5SUMOTH YN19F;
   label values T5SUMRLG YN19F;
   label values T5SUMRLI YN19F;
   label values T5SUMRSH YN19F;
   label values T5SUMWSH YN19F;
   label values T6CMBEV YN19F;
   label values T6CMDOW YN19F;
   label values T6CMSW YN19F;
   label values T6DISCIP YN19F;
   label values T6DISORG YN19F;
   label values T6EFFORT YN19F;
   label values T6EMOPRB YN19F;
   label values T6FRQABS YN19F;
   label values T6HEALTH YN19F;
   label values T6OTHRES YN19F;
   label values T6PRGES YN19F;
   label values T6SKILL YN19F;
   label values V2ARTMUS YN19F;
   label values V2BRNDEV YN19F;
   label values V2CHDDEV YN19F;
   label values V2COGDEV YN19F;
   label values V2DEGREE YN19F;
   label values V2GUIDNC YN19F;
   label values V2HEALTH YN19F;
   label values V2LNGDEV YN19F;
   label values V2MANAGE YN19F;
   label values V2MOTDEV YN19F;
   label values V2OTHSUB YN19F;
   label values V2PARNTS YN19F;
   label values V2QUALTY YN19F;
   label values V2SCHLRD YN19F;
   label values V2SOCDEV YN19F;
   label values V2STRESS YN19F;
   label values V2USECUR YN19F;
   label values Y2ACADEM YN19F;
   label values Y2ADMMTG YN19F;
   label values Y2AGNOTH YN19F;
   label values Y2BOTHWK YN19F;
   label values Y2CACFP YN19F;
   label values Y2CHURCH YN19F;
   label values Y2COMIND YN19F;
   label values Y2COMMUN YN19F;
   label values Y2CONFSP YN19F;
   label values Y2COORD YN19F;
   label values Y2COUNSL YN19F;
   label values Y2CURRIC YN19F;
   label values Y2DENTAL YN19F;
   label values Y2DEVELP YN19F;
   label values Y2EMERGN YN19F;
   label values Y2ENRICH YN19F;
   label values Y2FLEXIB YN19F;
   label values Y2FNDLOC YN19F;
   label values Y2FNDNCL YN19F;
   label values Y2FNDOTH YN19F;
   label values Y2FNDT1 YN19F;
   label values Y2FNDTXX YN19F;
   label values Y2HEARNG YN19F;
   label values Y2HLPPAR YN19F;
   label values Y2HOMELS YN19F;
   label values Y2INDIVD YN19F;
   label values Y2INTERA YN19F;
   label values Y2LOWINC YN19F;
   label values Y2MIGRNT YN19F;
   label values Y2MTHMTG YN19F;
   label values Y2MULTI YN19F;
   label values Y2NONENG YN19F;
   label values Y2OTHMAT YN19F;
   label values Y2OTHTRN YN19F;
   label values Y2PREKKD YN19F;
   label values Y2PRFLIB YN19F;
   label values Y2PRGFND YN19F;
   label values Y2PRGLIC YN19F;
   label values Y2PRGREL YN19F;
   label values Y2PRGSCH YN19F;
   label values Y2PRIVAT YN19F;
   label values Y2PUBLIC YN19F;
   label values Y2RECREA YN19F;
   label values Y2REGTRN YN19F;
   label values Y2RELIGS YN19F;
   label values Y2RELSCH YN19F;
   label values Y2REMEDL YN19F;
   label values Y2SCHLBL YN19F;
   label values Y2SICKCR YN19F;
   label values Y2SOCIAL YN19F;
   label values Y2SOCSRV YN19F;
   label values Y2SPECIAL YN19F;
   label values Y2SPEECH YN19F;
   label values Y2SRVMLS YN19F;
   label values Y2STLOCL YN19F;
   label values Y2SUPER YN19F;
   label values Y2TRAING YN19F;
   label values Y2VISION YN19F;
   label values P11STEAR YN1RDK9F;
   label values P1ADPTMA YN1RDK9F;
   label values P1AFRLNG YN1RDK9F;
   label values P1AIA_10 YN1RDK9F;
   label values P1AIA_11 YN1RDK9F;
   label values P1AIA_12 YN1RDK9F;
   label values P1AIA_13 YN1RDK9F;
   label values P1AIA_14 YN1RDK9F;
   label values P1AIA_15 YN1RDK9F;
   label values P1AIA_16 YN1RDK9F;
   label values P1AIA_17 YN1RDK9F;
   label values P1AIA_18 YN1RDK9F;
   label values P1AIA_19 YN1RDK9F;
   label values P1AIA_20 YN1RDK9F;
   label values P1AIA_21 YN1RDK9F;
   label values P1AIA_22 YN1RDK9F;
   label values P1AIA_23 YN1RDK9F;
   label values P1AIA_24 YN1RDK9F;
   label values P1AIA_25 YN1RDK9F;
   label values P1AIA_3 YN1RDK9F;
   label values P1AIA_4 YN1RDK9F;
   label values P1AIA_5 YN1RDK9F;
   label values P1AIA_6 YN1RDK9F;
   label values P1AIA_7 YN1RDK9F;
   label values P1AIA_8 YN1RDK9F;
   label values P1AIA_9 YN1RDK9F;
   label values P1ANYAID YN1RDK9F;
   label values P1ASN_10 YN1RDK9F;
   label values P1ASN_11 YN1RDK9F;
   label values P1ASN_12 YN1RDK9F;
   label values P1ASN_13 YN1RDK9F;
   label values P1ASN_14 YN1RDK9F;
   label values P1ASN_15 YN1RDK9F;
   label values P1ASN_16 YN1RDK9F;
   label values P1ASN_17 YN1RDK9F;
   label values P1ASN_18 YN1RDK9F;
   label values P1ASN_19 YN1RDK9F;
   label values P1ASN_20 YN1RDK9F;
   label values P1ASN_21 YN1RDK9F;
   label values P1ASN_22 YN1RDK9F;
   label values P1ASN_23 YN1RDK9F;
   label values P1ASN_24 YN1RDK9F;
   label values P1ASN_25 YN1RDK9F;
   label values P1ASN_3 YN1RDK9F;
   label values P1ASN_4 YN1RDK9F;
   label values P1ASN_5 YN1RDK9F;
   label values P1ASN_6 YN1RDK9F;
   label values P1ASN_7 YN1RDK9F;
   label values P1ASN_8 YN1RDK9F;
   label values P1ASN_9 YN1RDK9F;
   label values P1AUNT YN1RDK9F;
   label values P1BIOLE2 YN1RDK9F;
   label values P1BIOMTHR YN1RDK9F;
   label values P1BLK_10 YN1RDK9F;
   label values P1BLK_11 YN1RDK9F;
   label values P1BLK_12 YN1RDK9F;
   label values P1BLK_13 YN1RDK9F;
   label values P1BLK_14 YN1RDK9F;
   label values P1BLK_15 YN1RDK9F;
   label values P1BLK_16 YN1RDK9F;
   label values P1BLK_17 YN1RDK9F;
   label values P1BLK_18 YN1RDK9F;
   label values P1BLK_19 YN1RDK9F;
   label values P1BLK_20 YN1RDK9F;
   label values P1BLK_21 YN1RDK9F;
   label values P1BLK_22 YN1RDK9F;
   label values P1BLK_23 YN1RDK9F;
   label values P1BLK_24 YN1RDK9F;
   label values P1BLK_25 YN1RDK9F;
   label values P1BLK_3 YN1RDK9F;
   label values P1BLK_4 YN1RDK9F;
   label values P1BLK_5 YN1RDK9F;
   label values P1BLK_6 YN1RDK9F;
   label values P1BLK_7 YN1RDK9F;
   label values P1BLK_8 YN1RDK9F;
   label values P1BLK_9 YN1RDK9F;
   label values P1BREECH YN1RDK9F;
   label values P1CBEFOR YN1RDK9F;
   label values P1CEVER YN1RDK9F;
   label values P1CFTER YN1RDK9F;
   label values P1CHGCTR YN1RDK9F;
   label values P1CHGNR YN1RDK9F;
   label values P1CHGREL YN1RDK9F;
   label values P1CHINES YN1RDK9F;
   label values P1CLGMOM YN1RDK9F;
   label values P1CMPOTH YN1RDK9F;
   label values P1CPHDIS YN1RDK9F;
   label values P1CPREK YN1RDK9F;
   label values P1CSAMEK YN1RDK9F;
   label values P1CTRLOK YN1RDK9F;
   label values P1CTRST YN1RDK9F;
   label values P1CWEEK YN1RDK9F;
   label values P1DIRSAM YN1RDK9F;
   label values P1DISTRS YN1RDK9F;
   label values P1DO1_1 YN1RDK9F;
   label values P1DO1_2 YN1RDK9F;
   label values P1DO2_1 YN1RDK9F;
   label values P1DO2_2 YN1RDK9F;
   label values P1DO3_1 YN1RDK9F;
   label values P1DO3_2 YN1RDK9F;
   label values P1DO4_1 YN1RDK9F;
   label values P1DO4_2 YN1RDK9F;
   label values P1DO5_1 YN1RDK9F;
   label values P1DO5_2 YN1RDK9F;
   label values P1DO6_1 YN1RDK9F;
   label values P1DO6_2 YN1RDK9F;
   label values P1DO7_1 YN1RDK9F;
   label values P1DO7_2 YN1RDK9F;
   label values P1DYSFUN YN1RDK9F;
   label values P1EARACH YN1RDK9F;
   label values P1EARINF YN1RDK9F;
   label values P1EASTEUR YN1RDK9F;
   label values P1ENGTOO YN1RDK9F;
   label values P1ENR_1 YN1RDK9F;
   label values P1ENR_2 YN1RDK9F;
   label values P1FOSMOM YN1RDK9F;
   label values P1FRDMOM YN1RDK9F;
   label values P1FSTAM2 YN1RDK9F;
   label values P1GRNDMA YN1RDK9F;
   label values P1HPI_10 YN1RDK9F;
   label values P1HPI_11 YN1RDK9F;
   label values P1HPI_12 YN1RDK9F;
   label values P1HPI_13 YN1RDK9F;
   label values P1HPI_14 YN1RDK9F;
   label values P1HPI_15 YN1RDK9F;
   label values P1HPI_16 YN1RDK9F;
   label values P1HPI_17 YN1RDK9F;
   label values P1HPI_18 YN1RDK9F;
   label values P1HPI_19 YN1RDK9F;
   label values P1HPI_20 YN1RDK9F;
   label values P1HPI_21 YN1RDK9F;
   label values P1HPI_22 YN1RDK9F;
   label values P1HPI_23 YN1RDK9F;
   label values P1HPI_24 YN1RDK9F;
   label values P1HPI_25 YN1RDK9F;
   label values P1HPI_3 YN1RDK9F;
   label values P1HPI_4 YN1RDK9F;
   label values P1HPI_5 YN1RDK9F;
   label values P1HPI_6 YN1RDK9F;
   label values P1HPI_7 YN1RDK9F;
   label values P1HPI_8 YN1RDK9F;
   label values P1HPI_9 YN1RDK9F;
   label values P1HSP_10 YN1RDK9F;
   label values P1HSP_11 YN1RDK9F;
   label values P1HSP_12 YN1RDK9F;
   label values P1HSP_13 YN1RDK9F;
   label values P1HSP_14 YN1RDK9F;
   label values P1HSP_15 YN1RDK9F;
   label values P1HSP_16 YN1RDK9F;
   label values P1HSP_17 YN1RDK9F;
   label values P1HSP_18 YN1RDK9F;
   label values P1HSP_19 YN1RDK9F;
   label values P1HSP_20 YN1RDK9F;
   label values P1HSP_21 YN1RDK9F;
   label values P1HSP_22 YN1RDK9F;
   label values P1HSP_23 YN1RDK9F;
   label values P1HSP_24 YN1RDK9F;
   label values P1HSP_25 YN1RDK9F;
   label values P1HSP_3 YN1RDK9F;
   label values P1HSP_4 YN1RDK9F;
   label values P1HSP_5 YN1RDK9F;
   label values P1HSP_6 YN1RDK9F;
   label values P1HSP_7 YN1RDK9F;
   label values P1HSP_8 YN1RDK9F;
   label values P1HSP_9 YN1RDK9F;
   label values P1HSPKCN YN1RDK9F;
   label values P1HSPKNR YN1RDK9F;
   label values P1HSPKRL YN1RDK9F;
   label values P1LIKMOM YN1RDK9F;
   label values P1LIVNON YN1RDK9F;
   label values P1LOK_1 YN1RDK9F;
   label values P1LOK_2 YN1RDK9F;
   label values P1MARRY YN1RDK9F;
   label values P1MECON YN1RDK9F;
   label values P1MRUPT YN1RDK9F;
   label values P1NAFTER YN1RDK9F;
   label values P1NBEFOR YN1RDK9F;
   label values P1NONRMA YN1RDK9F;
   label values P1NPREK YN1RDK9F;
   label values P1NREVER YN1RDK9F;
   label values P1NWEEK YN1RDK9F;
   label values P1NWKEND YN1RDK9F;
   label values P1O23EP YN1RDK9F;
   label values P1O2ANLG YN1RDK9F;
   label values P1O2ANTI YN1RDK9F;
   label values P1O2DROP YN1RDK9F;
   label values P1O2TUBE YN1RDK9F;
   label values P1OTHMOM YN1RDK9F;
   label values P1PAY_2 YN1RDK9F;
   label values P1PROLNG YN1RDK9F;
   label values P1RAFTER YN1RDK9F;
   label values P1RBEFOR YN1RDK9F;
   label values P1RESPM YN1RDK9F;
   label values P1REVER YN1RDK9F;
   label values P1RPREK YN1RDK9F;
   label values P1RWEEK YN1RDK9F;
   label values P1RWKEND YN1RDK9F;
   label values P1SIBMOM YN1RDK9F;
   label values P1SITMOM YN1RDK9F;
   label values P1SPANSH YN1RDK9F;
   label values P1STPMOM YN1RDK9F;
   label values P1TAK_1 YN1RDK9F;
   label values P1TAK_2 YN1RDK9F;
   label values P1TCHMOM YN1RDK9F;
   label values P1TRN_1 YN1RDK9F;
   label values P1TRN_2 YN1RDK9F;
   label values P1U23EP YN1RDK9F;
   label values P1U2ANLG YN1RDK9F;
   label values P1U2ANTI YN1RDK9F;
   label values P1U2DROP YN1RDK9F;
   label values P1U2TUBE YN1RDK9F;
   label values P1VAC_1 YN1RDK9F;
   label values P1VAC_2 YN1RDK9F;
   label values P1WHT_10 YN1RDK9F;
   label values P1WHT_11 YN1RDK9F;
   label values P1WHT_12 YN1RDK9F;
   label values P1WHT_13 YN1RDK9F;
   label values P1WHT_14 YN1RDK9F;
   label values P1WHT_15 YN1RDK9F;
   label values P1WHT_16 YN1RDK9F;
   label values P1WHT_17 YN1RDK9F;
   label values P1WHT_18 YN1RDK9F;
   label values P1WHT_19 YN1RDK9F;
   label values P1WHT_20 YN1RDK9F;
   label values P1WHT_21 YN1RDK9F;
   label values P1WHT_22 YN1RDK9F;
   label values P1WHT_23 YN1RDK9F;
   label values P1WHT_24 YN1RDK9F;
   label values P1WHT_25 YN1RDK9F;
   label values P1WHT_3 YN1RDK9F;
   label values P1WHT_4 YN1RDK9F;
   label values P1WHT_5 YN1RDK9F;
   label values P1WHT_6 YN1RDK9F;
   label values P1WHT_7 YN1RDK9F;
   label values P1WHT_8 YN1RDK9F;
   label values P1WHT_9 YN1RDK9F;
   label values P1WRKDY1 YN1RDK9F;
   label values P1WRKDY2 YN1RDK9F;
   label values P21EARWR YN1RDK9F;
   label values P2ADLTSV YN1RDK9F;
   label values P2AIA_1 YN1RDK9F;
   label values P2AIA_10 YN1RDK9F;
   label values P2AIA_11 YN1RDK9F;
   label values P2AIA_12 YN1RDK9F;
   label values P2AIA_13 YN1RDK9F;
   label values P2AIA_14 YN1RDK9F;
   label values P2AIA_15 YN1RDK9F;
   label values P2AIA_16 YN1RDK9F;
   label values P2AIA_17 YN1RDK9F;
   label values P2AIA_18 YN1RDK9F;
   label values P2AIA_19 YN1RDK9F;
   label values P2AIA_20 YN1RDK9F;
   label values P2AIA_21 YN1RDK9F;
   label values P2AIA_22 YN1RDK9F;
   label values P2AIA_23 YN1RDK9F;
   label values P2AIA_24 YN1RDK9F;
   label values P2AIA_25 YN1RDK9F;
   label values P2AIA_3 YN1RDK9F;
   label values P2AIA_4 YN1RDK9F;
   label values P2AIA_5 YN1RDK9F;
   label values P2AIA_6 YN1RDK9F;
   label values P2AIA_7 YN1RDK9F;
   label values P2AIA_8 YN1RDK9F;
   label values P2AIA_9 YN1RDK9F;
   label values P2ANYLNG YN1RDK9F;
   label values P2ARTPRG YN1RDK9F;
   label values P2ASN_1 YN1RDK9F;
   label values P2ASN_10 YN1RDK9F;
   label values P2ASN_11 YN1RDK9F;
   label values P2ASN_12 YN1RDK9F;
   label values P2ASN_13 YN1RDK9F;
   label values P2ASN_14 YN1RDK9F;
   label values P2ASN_15 YN1RDK9F;
   label values P2ASN_16 YN1RDK9F;
   label values P2ASN_17 YN1RDK9F;
   label values P2ASN_18 YN1RDK9F;
   label values P2ASN_19 YN1RDK9F;
   label values P2ASN_20 YN1RDK9F;
   label values P2ASN_21 YN1RDK9F;
   label values P2ASN_22 YN1RDK9F;
   label values P2ASN_23 YN1RDK9F;
   label values P2ASN_24 YN1RDK9F;
   label values P2ASN_25 YN1RDK9F;
   label values P2ASN_3 YN1RDK9F;
   label values P2ASN_4 YN1RDK9F;
   label values P2ASN_5 YN1RDK9F;
   label values P2ASN_6 YN1RDK9F;
   label values P2ASN_7 YN1RDK9F;
   label values P2ASN_8 YN1RDK9F;
   label values P2ASN_9 YN1RDK9F;
   label values P2BDACTV YN1RDK9F;
   label values P2BDCONF YN1RDK9F;
   label values P2BDMISS YN1RDK9F;
   label values P2BDOPNH YN1RDK9F;
   label values P2BDVOL YN1RDK9F;
   label values P2BFCARE YN1RDK9F;
   label values P2BFHOME YN1RDK9F;
   label values P2BFNDHP YN1RDK9F;
   label values P2BFOTHR YN1RDK9F;
   label values P2BFRELV YN1RDK9F;
   label values P2BFREST YN1RDK9F;
   label values P2BFRVHP YN1RDK9F;
   label values P2BFSCHL YN1RDK9F;
   label values P2BFTOSC YN1RDK9F;
   label values P2BIOMRY YN1RDK9F;
   label values P2BLK_1 YN1RDK9F;
   label values P2BLK_10 YN1RDK9F;
   label values P2BLK_11 YN1RDK9F;
   label values P2BLK_12 YN1RDK9F;
   label values P2BLK_13 YN1RDK9F;
   label values P2BLK_14 YN1RDK9F;
   label values P2BLK_15 YN1RDK9F;
   label values P2BLK_16 YN1RDK9F;
   label values P2BLK_17 YN1RDK9F;
   label values P2BLK_18 YN1RDK9F;
   label values P2BLK_19 YN1RDK9F;
   label values P2BLK_20 YN1RDK9F;
   label values P2BLK_21 YN1RDK9F;
   label values P2BLK_22 YN1RDK9F;
   label values P2BLK_23 YN1RDK9F;
   label values P2BLK_24 YN1RDK9F;
   label values P2BLK_25 YN1RDK9F;
   label values P2BLK_3 YN1RDK9F;
   label values P2BLK_4 YN1RDK9F;
   label values P2BLK_5 YN1RDK9F;
   label values P2BLK_6 YN1RDK9F;
   label values P2BLK_7 YN1RDK9F;
   label values P2BLK_8 YN1RDK9F;
   label values P2BLK_9 YN1RDK9F;
   label values P2BMACTV YN1RDK9F;
   label values P2BMCONF YN1RDK9F;
   label values P2BMMISS YN1RDK9F;
   label values P2BMOPNH YN1RDK9F;
   label values P2BMVOL YN1RDK9F;
   label values P2CCINHS YN1RDK9F;
   label values P2CHDAGE YN1RDK9F;
   label values P2CHIEAT YN1RDK9F;
   label values P2CHIEVR YN1RDK9F;
   label values P2CHSKIP YN1RDK9F;
   label values P2CITIZN YN1RDK9F;
   label values P2CMDIAG YN1RDK9F;
   label values P2CPREK YN1RDK9F;
   label values P2CUR_10 YN1RDK9F;
   label values P2CUR_11 YN1RDK9F;
   label values P2CUR_12 YN1RDK9F;
   label values P2CUR_13 YN1RDK9F;
   label values P2CUR_14 YN1RDK9F;
   label values P2CUR_15 YN1RDK9F;
   label values P2CUR_16 YN1RDK9F;
   label values P2CUR_17 YN1RDK9F;
   label values P2CUR_18 YN1RDK9F;
   label values P2CUR_19 YN1RDK9F;
   label values P2CUR_20 YN1RDK9F;
   label values P2CUR_21 YN1RDK9F;
   label values P2CUR_22 YN1RDK9F;
   label values P2CUR_23 YN1RDK9F;
   label values P2CUR_24 YN1RDK9F;
   label values P2CUR_25 YN1RDK9F;
   label values P2CUR_3 YN1RDK9F;
   label values P2CUR_4 YN1RDK9F;
   label values P2CUR_5 YN1RDK9F;
   label values P2CUR_6 YN1RDK9F;
   label values P2CUR_7 YN1RDK9F;
   label values P2CUR_8 YN1RDK9F;
   label values P2CUR_9 YN1RDK9F;
   label values P2CUTML YN1RDK9F;
   label values P2DIFFH3 YN1RDK9F;
   label values P2EARKAC YN1RDK9F;
   label values P2EATLES YN1RDK9F;
   label values P2ENGTOO YN1RDK9F;
   label values P2EVALCO YN1RDK9F;
   label values P2EVCUT2 YN1RDK9F;
   label values P2EVREVL YN1RDK9F;
   label values P2EVSPNK YN1RDK9F;
   label values P2F2WKNP YN1RDK9F;
   label values P2FSATSC YN1RDK9F;
   label values P2FSLKWK YN1RDK9F;
   label values P2FSOTHR YN1RDK9F;
   label values P2FSWKPD YN1RDK9F;
   label values P2HEVAL YN1RDK9F;
   label values P2HOMEVT YN1RDK9F;
   label values P2HPI_1 YN1RDK9F;
   label values P2HPI_10 YN1RDK9F;
   label values P2HPI_11 YN1RDK9F;
   label values P2HPI_12 YN1RDK9F;
   label values P2HPI_13 YN1RDK9F;
   label values P2HPI_14 YN1RDK9F;
   label values P2HPI_15 YN1RDK9F;
   label values P2HPI_16 YN1RDK9F;
   label values P2HPI_17 YN1RDK9F;
   label values P2HPI_18 YN1RDK9F;
   label values P2HPI_19 YN1RDK9F;
   label values P2HPI_20 YN1RDK9F;
   label values P2HPI_21 YN1RDK9F;
   label values P2HPI_22 YN1RDK9F;
   label values P2HPI_23 YN1RDK9F;
   label values P2HPI_24 YN1RDK9F;
   label values P2HPI_25 YN1RDK9F;
   label values P2HPI_3 YN1RDK9F;
   label values P2HPI_4 YN1RDK9F;
   label values P2HPI_5 YN1RDK9F;
   label values P2HPI_6 YN1RDK9F;
   label values P2HPI_7 YN1RDK9F;
   label values P2HPI_8 YN1RDK9F;
   label values P2HPI_9 YN1RDK9F;
   label values P2HRGSRV YN1RDK9F;
   label values P2HSP_10 YN1RDK9F;
   label values P2HSP_11 YN1RDK9F;
   label values P2HSP_12 YN1RDK9F;
   label values P2HSP_13 YN1RDK9F;
   label values P2HSP_14 YN1RDK9F;
   label values P2HSP_15 YN1RDK9F;
   label values P2HSP_16 YN1RDK9F;
   label values P2HSP_17 YN1RDK9F;
   label values P2HSP_18 YN1RDK9F;
   label values P2HSP_19 YN1RDK9F;
   label values P2HSP_20 YN1RDK9F;
   label values P2HSP_21 YN1RDK9F;
   label values P2HSP_22 YN1RDK9F;
   label values P2HSP_23 YN1RDK9F;
   label values P2HSP_24 YN1RDK9F;
   label values P2HSP_25 YN1RDK9F;
   label values P2HSP_3 YN1RDK9F;
   label values P2HSP_4 YN1RDK9F;
   label values P2HSP_5 YN1RDK9F;
   label values P2HSP_6 YN1RDK9F;
   label values P2HSP_7 YN1RDK9F;
   label values P2HSP_8 YN1RDK9F;
   label values P2HSP_9 YN1RDK9F;
   label values P2HUNGRY YN1RDK9F;
   label values P2IMPAIR YN1RDK9F;
   label values P2INTRNT YN1RDK9F;
   label values P2KANLG YN1RDK9F;
   label values P2KANTI YN1RDK9F;
   label values P2KDROP YN1RDK9F;
   label values P2KN2TT YN1RDK9F;
   label values P2KNOIN YN1RDK9F;
   label values P2LEGLN3 YN1RDK9F;
   label values P2LENSE YN1RDK9F;
   label values P2LIMITW YN1RDK9F;
   label values P2LOSEWT YN1RDK9F;
   label values P2LRNPRG YN1RDK9F;
   label values P2LUNCHS YN1RDK9F;
   label values P2NOMONY YN1RDK9F;
   label values P2NOTEAT YN1RDK9F;
   label values P2NPREK YN1RDK9F;
   label values P2NRBKHS YN1RDK9F;
   label values P2OCCPTH YN1RDK9F;
   label values P2OTHDIA YN1RDK9F;
   label values P2OTHSRV YN1RDK9F;
   label values P2PARTNR YN1RDK9F;
   label values P2PHYSTH YN1RDK9F;
   label values P2PRBART YN1RDK9F;
   label values P2PREMAT YN1RDK9F;
   label values P2PRNTSP YN1RDK9F;
   label values P2PSYCSV YN1RDK9F;
   label values P2PVTUTR YN1RDK9F;
   label values P2RBKIHS YN1RDK9F;
   label values P2RECDIA YN1RDK9F;
   label values P2RECFRE YN1RDK9F;
   label values P2RECSPE YN1RDK9F;
   label values P2REQFS YN1RDK9F;
   label values P2RLUNCH YN1RDK9F;
   label values P2RPNDHP YN1RDK9F;
   label values P2RPREK YN1RDK9F;
   label values P2RPRVHP YN1RDK9F;
   label values P2RSVTPY YN1RDK9F;
   label values P2SOCWRK YN1RDK9F;
   label values P2SPCCLS YN1RDK9F;
   label values P2SPCHTH YN1RDK9F;
   label values P2STILLR YN1RDK9F;
   label values P2STUTER YN1RDK9F;
   label values P2THERAP YN1RDK9F;
   label values P2TLKLD YN1RDK9F;
   label values P2TLKSFT YN1RDK9F;
   label values P2TVRUL2 YN1RDK9F;
   label values P2TVRUL3 YN1RDK9F;
   label values P2TVRULE YN1RDK9F;
   label values P2VIDEXC YN1RDK9F;
   label values P2VISAST YN1RDK9F;
   label values P2VISFAR YN1RDK9F;
   label values P2VISGLS YN1RDK9F;
   label values P2VISIO2 YN1RDK9F;
   label values P2VISLAZ YN1RDK9F;
   label values P2VISNEA YN1RDK9F;
   label values P2VISOTH YN1RDK9F;
   label values P2VISSRV YN1RDK9F;
   label values P2WHT_1 YN1RDK9F;
   label values P2WHT_10 YN1RDK9F;
   label values P2WHT_11 YN1RDK9F;
   label values P2WHT_12 YN1RDK9F;
   label values P2WHT_13 YN1RDK9F;
   label values P2WHT_14 YN1RDK9F;
   label values P2WHT_15 YN1RDK9F;
   label values P2WHT_16 YN1RDK9F;
   label values P2WHT_17 YN1RDK9F;
   label values P2WHT_18 YN1RDK9F;
   label values P2WHT_19 YN1RDK9F;
   label values P2WHT_20 YN1RDK9F;
   label values P2WHT_21 YN1RDK9F;
   label values P2WHT_22 YN1RDK9F;
   label values P2WHT_23 YN1RDK9F;
   label values P2WHT_24 YN1RDK9F;
   label values P2WHT_25 YN1RDK9F;
   label values P2WHT_3 YN1RDK9F;
   label values P2WHT_4 YN1RDK9F;
   label values P2WHT_5 YN1RDK9F;
   label values P2WHT_6 YN1RDK9F;
   label values P2WHT_7 YN1RDK9F;
   label values P2WHT_8 YN1RDK9F;
   label values P2WHT_9 YN1RDK9F;
   label values P2WICCHD YN1RDK9F;
   label values P2WICMOM YN1RDK9F;
   label values P2WRGLNG YN1RDK9F;
   label values P3AMUSPK YN1RDK9F;
   label values P3ARTMUS YN1RDK9F;
   label values P3BEACHS YN1RDK9F;
   label values P3CMPACA YN1RDK9F;
   label values P3CMPART YN1RDK9F;
   label values P3CMPCPT YN1RDK9F;
   label values P3CMPMPA YN1RDK9F;
   label values P3CMPSPT YN1RDK9F;
   label values P3CMPSUP YN1RDK9F;
   label values P3LRGCTY YN1RDK9F;
   label values P3OTHPLA YN1RDK9F;
   label values P3PLYCRT YN1RDK9F;
   label values P3SMART YN1RDK9F;
   label values P3SMCMPT YN1RDK9F;
   label values P3SMMATH YN1RDK9F;
   label values P3SMMUSI YN1RDK9F;
   label values P3SMREAD YN1RDK9F;
   label values P3SMSCI YN1RDK9F;
   label values P3STHLIB YN1RDK9F;
   label values P3WPAREN YN1RDK9F;
   label values P3WRELAT YN1RDK9F;
   label values P3ZOOS YN1RDK9F;
   label values P4ADLTSV YN1RDK9F;
   label values P4AIA_1 YN1RDK9F;
   label values P4AIA_10 YN1RDK9F;
   label values P4AIA_11 YN1RDK9F;
   label values P4AIA_12 YN1RDK9F;
   label values P4AIA_13 YN1RDK9F;
   label values P4AIA_14 YN1RDK9F;
   label values P4AIA_15 YN1RDK9F;
   label values P4AIA_16 YN1RDK9F;
   label values P4AIA_17 YN1RDK9F;
   label values P4AIA_18 YN1RDK9F;
   label values P4AIA_19 YN1RDK9F;
   label values P4AIA_20 YN1RDK9F;
   label values P4AIA_21 YN1RDK9F;
   label values P4AIA_22 YN1RDK9F;
   label values P4AIA_23 YN1RDK9F;
   label values P4AIA_24 YN1RDK9F;
   label values P4AIA_25 YN1RDK9F;
   label values P4AIA_3 YN1RDK9F;
   label values P4AIA_4 YN1RDK9F;
   label values P4AIA_5 YN1RDK9F;
   label values P4AIA_6 YN1RDK9F;
   label values P4AIA_7 YN1RDK9F;
   label values P4AIA_8 YN1RDK9F;
   label values P4AIA_9 YN1RDK9F;
   label values P4ANYLNG YN1RDK9F;
   label values P4ASN_1 YN1RDK9F;
   label values P4ASN_10 YN1RDK9F;
   label values P4ASN_11 YN1RDK9F;
   label values P4ASN_12 YN1RDK9F;
   label values P4ASN_13 YN1RDK9F;
   label values P4ASN_14 YN1RDK9F;
   label values P4ASN_15 YN1RDK9F;
   label values P4ASN_16 YN1RDK9F;
   label values P4ASN_17 YN1RDK9F;
   label values P4ASN_18 YN1RDK9F;
   label values P4ASN_19 YN1RDK9F;
   label values P4ASN_20 YN1RDK9F;
   label values P4ASN_21 YN1RDK9F;
   label values P4ASN_22 YN1RDK9F;
   label values P4ASN_23 YN1RDK9F;
   label values P4ASN_24 YN1RDK9F;
   label values P4ASN_25 YN1RDK9F;
   label values P4ASN_3 YN1RDK9F;
   label values P4ASN_4 YN1RDK9F;
   label values P4ASN_5 YN1RDK9F;
   label values P4ASN_6 YN1RDK9F;
   label values P4ASN_7 YN1RDK9F;
   label values P4ASN_8 YN1RDK9F;
   label values P4ASN_9 YN1RDK9F;
   label values P4ASSOC_1 YN1RDK9F;
   label values P4ASSOC_2 YN1RDK9F;
   label values P4ATTENB YN1RDK9F;
   label values P4ATTENP YN1RDK9F;
   label values P4ATTENS YN1RDK9F;
   label values P4BACH_1 YN1RDK9F;
   label values P4BACH_2 YN1RDK9F;
   label values P4BGHTHOS YN1RDK9F;
   label values P4BLK_1 YN1RDK9F;
   label values P4BLK_10 YN1RDK9F;
   label values P4BLK_11 YN1RDK9F;
   label values P4BLK_12 YN1RDK9F;
   label values P4BLK_13 YN1RDK9F;
   label values P4BLK_14 YN1RDK9F;
   label values P4BLK_15 YN1RDK9F;
   label values P4BLK_16 YN1RDK9F;
   label values P4BLK_17 YN1RDK9F;
   label values P4BLK_18 YN1RDK9F;
   label values P4BLK_19 YN1RDK9F;
   label values P4BLK_20 YN1RDK9F;
   label values P4BLK_21 YN1RDK9F;
   label values P4BLK_22 YN1RDK9F;
   label values P4BLK_23 YN1RDK9F;
   label values P4BLK_24 YN1RDK9F;
   label values P4BLK_25 YN1RDK9F;
   label values P4BLK_3 YN1RDK9F;
   label values P4BLK_4 YN1RDK9F;
   label values P4BLK_5 YN1RDK9F;
   label values P4BLK_6 YN1RDK9F;
   label values P4BLK_7 YN1RDK9F;
   label values P4BLK_8 YN1RDK9F;
   label values P4BLK_9 YN1RDK9F;
   label values P4CBEFOR YN1RDK9F;
   label values P4CFTER YN1RDK9F;
   label values P4CHGCTR YN1RDK9F;
   label values P4CHGNR YN1RDK9F;
   label values P4CHGREL YN1RDK9F;
   label values P4CHGRESPREL YN1RDK9F;
   label values P4CHGSPSPREL YN1RDK9F;
   label values P4CHIEAT YN1RDK9F;
   label values P4CHIEVR YN1RDK9F;
   label values P4CHINES YN1RDK9F;
   label values P4CHSKIP YN1RDK9F;
   label values P4CMDIAG YN1RDK9F;
   label values P4CRT_N3 YN1RDK9F;
   label values P4CTRLOK YN1RDK9F;
   label values P4CUTML YN1RDK9F;
   label values P4CWEEK YN1RDK9F;
   label values P4DIFFH3 YN1RDK9F;
   label values P4DIVORCE YN1RDK9F;
   label values P4DO1_1_I YN1RDK9F;
   label values P4DO1_2_I YN1RDK9F;
   label values P4DO2_1_I YN1RDK9F;
   label values P4DO2_2_I YN1RDK9F;
   label values P4DO3_1_I YN1RDK9F;
   label values P4DO3_2_I YN1RDK9F;
   label values P4DO4_1_I YN1RDK9F;
   label values P4DO4_2_I YN1RDK9F;
   label values P4DO5_1_I YN1RDK9F;
   label values P4DO5_2_I YN1RDK9F;
   label values P4DO6_1 YN1RDK9F;
   label values P4DO6_2 YN1RDK9F;
   label values P4DO7_1 YN1RDK9F;
   label values P4DO7_2 YN1RDK9F;
   label values P4EARKAC YN1RDK9F;
   label values P4EATLES YN1RDK9F;
   label values P4EMPCHG_1_I YN1RDK9F;
   label values P4EMPCHG_2_I YN1RDK9F;
   label values P4ENGTOO YN1RDK9F;
   label values P4ENR_1 YN1RDK9F;
   label values P4ENR_2 YN1RDK9F;
   label values P4EVALCO YN1RDK9F;
   label values P4EVALIS YN1RDK9F;
   label values P4EVCUT2 YN1RDK9F;
   label values P4HEARNO YN1RDK9F;
   label values P4HEARQT YN1RDK9F;
   label values P4HEARWH YN1RDK9F;
   label values P4HEARYL YN1RDK9F;
   label values P4HEVAL YN1RDK9F;
   label values P4HLPENGHWK YN1RDK9F;
   label values P4HPI_1 YN1RDK9F;
   label values P4HPI_10 YN1RDK9F;
   label values P4HPI_11 YN1RDK9F;
   label values P4HPI_12 YN1RDK9F;
   label values P4HPI_13 YN1RDK9F;
   label values P4HPI_14 YN1RDK9F;
   label values P4HPI_15 YN1RDK9F;
   label values P4HPI_16 YN1RDK9F;
   label values P4HPI_17 YN1RDK9F;
   label values P4HPI_18 YN1RDK9F;
   label values P4HPI_19 YN1RDK9F;
   label values P4HPI_20 YN1RDK9F;
   label values P4HPI_21 YN1RDK9F;
   label values P4HPI_22 YN1RDK9F;
   label values P4HPI_23 YN1RDK9F;
   label values P4HPI_24 YN1RDK9F;
   label values P4HPI_25 YN1RDK9F;
   label values P4HPI_3 YN1RDK9F;
   label values P4HPI_4 YN1RDK9F;
   label values P4HPI_5 YN1RDK9F;
   label values P4HPI_6 YN1RDK9F;
   label values P4HPI_7 YN1RDK9F;
   label values P4HPI_8 YN1RDK9F;
   label values P4HPI_9 YN1RDK9F;
   label values P4HSP_10 YN1RDK9F;
   label values P4HSP_11 YN1RDK9F;
   label values P4HSP_12 YN1RDK9F;
   label values P4HSP_13 YN1RDK9F;
   label values P4HSP_14 YN1RDK9F;
   label values P4HSP_15 YN1RDK9F;
   label values P4HSP_16 YN1RDK9F;
   label values P4HSP_17 YN1RDK9F;
   label values P4HSP_18 YN1RDK9F;
   label values P4HSP_19 YN1RDK9F;
   label values P4HSP_20 YN1RDK9F;
   label values P4HSP_21 YN1RDK9F;
   label values P4HSP_22 YN1RDK9F;
   label values P4HSP_23 YN1RDK9F;
   label values P4HSP_24 YN1RDK9F;
   label values P4HSP_25 YN1RDK9F;
   label values P4HSP_3 YN1RDK9F;
   label values P4HSP_4 YN1RDK9F;
   label values P4HSP_5 YN1RDK9F;
   label values P4HSP_6 YN1RDK9F;
   label values P4HSP_7 YN1RDK9F;
   label values P4HSP_8 YN1RDK9F;
   label values P4HSP_9 YN1RDK9F;
   label values P4HUNGRY YN1RDK9F;
   label values P4INCSAM YN1RDK9F;
   label values P4JOBTRN_1 YN1RDK9F;
   label values P4JOBTRN_2 YN1RDK9F;
   label values P4KANLG YN1RDK9F;
   label values P4KANTI YN1RDK9F;
   label values P4KDROP YN1RDK9F;
   label values P4KN2TT YN1RDK9F;
   label values P4LEGLN3 YN1RDK9F;
   label values P4LENSE YN1RDK9F;
   label values P4LESSEXP YN1RDK9F;
   label values P4LOK_1_I YN1RDK9F;
   label values P4LOK_2_I YN1RDK9F;
   label values P4LOSEWT YN1RDK9F;
   label values P4LUNCHS YN1RDK9F;
   label values P4MEDHD YN1RDK9F;
   label values P4MEDOT YN1RDK9F;
   label values P4MSTR_1 YN1RDK9F;
   label values P4MSTR_2 YN1RDK9F;
   label values P4MVOTHER YN1RDK9F;
   label values P4NAFTER YN1RDK9F;
   label values P4NBEFOR YN1RDK9F;
   label values P4NEARJOB YN1RDK9F;
   label values P4NICERHOS YN1RDK9F;
   label values P4NOMONY YN1RDK9F;
   label values P4NOTEAT YN1RDK9F;
   label values P4NWEEK YN1RDK9F;
   label values P4NWKEND YN1RDK9F;
   label values P4OJTCRNT_1 YN1RDK9F;
   label values P4OJTCRNT_2 YN1RDK9F;
   label values P4PARTNR YN1RDK9F;
   label values P4PAY_1_I YN1RDK9F;
   label values P4PAY_2_I YN1RDK9F;
   label values P4PRBART YN1RDK9F;
   label values P4PTCONF YN1RDK9F;
   label values P4RAFTER YN1RDK9F;
   label values P4RBEFOR YN1RDK9F;
   label values P4RECDIA YN1RDK9F;
   label values P4RECFRE YN1RDK9F;
   label values P4RECSPE YN1RDK9F;
   label values P4RLUNCH YN1RDK9F;
   label values P4RPDOTH YN1RDK9F;
   label values P4RSVTPY YN1RDK9F;
   label values P4RWEEK YN1RDK9F;
   label values P4RWKEND YN1RDK9F;
   label values P4SPANSH YN1RDK9F;
   label values P4STILLR YN1RDK9F;
   label values P4STUTER YN1RDK9F;
   label values P4TAK_1 YN1RDK9F;
   label values P4TAK_2 YN1RDK9F;
   label values P4THERAP YN1RDK9F;
   label values P4TLKLD YN1RDK9F;
   label values P4TLKSFT YN1RDK9F;
   label values P4TRN_1 YN1RDK9F;
   label values P4TRN_2 YN1RDK9F;
   label values P4TRTASTHMA YN1RDK9F;
   label values P4TUTENGL YN1RDK9F;
   label values P4TUTLAN YN1RDK9F;
   label values P4TUTMTH YN1RDK9F;
   label values P4TUTOTH YN1RDK9F;
   label values P4TUTREA YN1RDK9F;
   label values P4TUTSCI YN1RDK9F;
   label values P4VAC_1_I YN1RDK9F;
   label values P4VAC_2_I YN1RDK9F;
   label values P4VISAST YN1RDK9F;
   label values P4VISFAR YN1RDK9F;
   label values P4VISGLS YN1RDK9F;
   label values P4VISIO2 YN1RDK9F;
   label values P4VISLAZ YN1RDK9F;
   label values P4VISNEA YN1RDK9F;
   label values P4VISOTH YN1RDK9F;
   label values P4VOCTECH_1 YN1RDK9F;
   label values P4VOCTECH_2 YN1RDK9F;
   label values P4VOLSCH YN1RDK9F;
   label values P4WHT_1 YN1RDK9F;
   label values P4WHT_10 YN1RDK9F;
   label values P4WHT_11 YN1RDK9F;
   label values P4WHT_12 YN1RDK9F;
   label values P4WHT_13 YN1RDK9F;
   label values P4WHT_14 YN1RDK9F;
   label values P4WHT_15 YN1RDK9F;
   label values P4WHT_16 YN1RDK9F;
   label values P4WHT_17 YN1RDK9F;
   label values P4WHT_18 YN1RDK9F;
   label values P4WHT_19 YN1RDK9F;
   label values P4WHT_20 YN1RDK9F;
   label values P4WHT_21 YN1RDK9F;
   label values P4WHT_22 YN1RDK9F;
   label values P4WHT_23 YN1RDK9F;
   label values P4WHT_24 YN1RDK9F;
   label values P4WHT_25 YN1RDK9F;
   label values P4WHT_3 YN1RDK9F;
   label values P4WHT_4 YN1RDK9F;
   label values P4WHT_5 YN1RDK9F;
   label values P4WHT_6 YN1RDK9F;
   label values P4WHT_7 YN1RDK9F;
   label values P4WHT_8 YN1RDK9F;
   label values P4WHT_9 YN1RDK9F;
   label values P4WRGLNG YN1RDK9F;
   label values P51EARWR YN1RDK9F;
   label values P5AMUSPK YN1RDK9F;
   label values P5ARTMUS YN1RDK9F;
   label values P5BEACHS YN1RDK9F;
   label values P5CHDAGE YN1RDK9F;
   label values P5CMPACA YN1RDK9F;
   label values P5CMPART YN1RDK9F;
   label values P5CMPCPT YN1RDK9F;
   label values P5CMPMPA YN1RDK9F;
   label values P5CMPSPT YN1RDK9F;
   label values P5CMPSUP YN1RDK9F;
   label values P5DIFFH3 YN1RDK9F;
   label values P5EARKAC YN1RDK9F;
   label values P5HEVAL YN1RDK9F;
   label values P5KANTI YN1RDK9F;
   label values P5KDROP YN1RDK9F;
   label values P5KN2TT YN1RDK9F;
   label values P5LRGCTY YN1RDK9F;
   label values P5PLYCRT YN1RDK9F;
   label values P5SMART YN1RDK9F;
   label values P5SMCMPT YN1RDK9F;
   label values P5SMMATH YN1RDK9F;
   label values P5SMMUSI YN1RDK9F;
   label values P5SMREAD YN1RDK9F;
   label values P5SMSCI YN1RDK9F;
   label values P5STHLIB YN1RDK9F;
   label values P5WPAREN YN1RDK9F;
   label values P5WRELAT YN1RDK9F;
   label values P5ZOOS YN1RDK9F;
   label values P6ADLTSV YN1RDK9F;
   label values P6AIA_1 YN1RDK9F;
   label values P6AIA_10 YN1RDK9F;
   label values P6AIA_11 YN1RDK9F;
   label values P6AIA_12 YN1RDK9F;
   label values P6AIA_13 YN1RDK9F;
   label values P6AIA_14 YN1RDK9F;
   label values P6AIA_15 YN1RDK9F;
   label values P6AIA_16 YN1RDK9F;
   label values P6AIA_17 YN1RDK9F;
   label values P6AIA_18 YN1RDK9F;
   label values P6AIA_19 YN1RDK9F;
   label values P6AIA_20 YN1RDK9F;
   label values P6AIA_21 YN1RDK9F;
   label values P6AIA_22 YN1RDK9F;
   label values P6AIA_23 YN1RDK9F;
   label values P6AIA_24 YN1RDK9F;
   label values P6AIA_25 YN1RDK9F;
   label values P6AIA_3 YN1RDK9F;
   label values P6AIA_4 YN1RDK9F;
   label values P6AIA_5 YN1RDK9F;
   label values P6AIA_6 YN1RDK9F;
   label values P6AIA_7 YN1RDK9F;
   label values P6AIA_8 YN1RDK9F;
   label values P6AIA_9 YN1RDK9F;
   label values P6ANYCOV YN1RDK9F;
   label values P6ANYLNG YN1RDK9F;
   label values P6ASN_1 YN1RDK9F;
   label values P6ASN_10 YN1RDK9F;
   label values P6ASN_11 YN1RDK9F;
   label values P6ASN_12 YN1RDK9F;
   label values P6ASN_13 YN1RDK9F;
   label values P6ASN_14 YN1RDK9F;
   label values P6ASN_15 YN1RDK9F;
   label values P6ASN_16 YN1RDK9F;
   label values P6ASN_17 YN1RDK9F;
   label values P6ASN_18 YN1RDK9F;
   label values P6ASN_19 YN1RDK9F;
   label values P6ASN_20 YN1RDK9F;
   label values P6ASN_21 YN1RDK9F;
   label values P6ASN_22 YN1RDK9F;
   label values P6ASN_23 YN1RDK9F;
   label values P6ASN_24 YN1RDK9F;
   label values P6ASN_25 YN1RDK9F;
   label values P6ASN_3 YN1RDK9F;
   label values P6ASN_4 YN1RDK9F;
   label values P6ASN_5 YN1RDK9F;
   label values P6ASN_6 YN1RDK9F;
   label values P6ASN_7 YN1RDK9F;
   label values P6ASN_8 YN1RDK9F;
   label values P6ASN_9 YN1RDK9F;
   label values P6ATTENB YN1RDK9F;
   label values P6ATTENP YN1RDK9F;
   label values P6ATTENS YN1RDK9F;
   label values P6BGHTHOS YN1RDK9F;
   label values P6BLK_1 YN1RDK9F;
   label values P6BLK_10 YN1RDK9F;
   label values P6BLK_11 YN1RDK9F;
   label values P6BLK_12 YN1RDK9F;
   label values P6BLK_13 YN1RDK9F;
   label values P6BLK_14 YN1RDK9F;
   label values P6BLK_15 YN1RDK9F;
   label values P6BLK_16 YN1RDK9F;
   label values P6BLK_17 YN1RDK9F;
   label values P6BLK_18 YN1RDK9F;
   label values P6BLK_19 YN1RDK9F;
   label values P6BLK_20 YN1RDK9F;
   label values P6BLK_21 YN1RDK9F;
   label values P6BLK_22 YN1RDK9F;
   label values P6BLK_23 YN1RDK9F;
   label values P6BLK_24 YN1RDK9F;
   label values P6BLK_25 YN1RDK9F;
   label values P6BLK_3 YN1RDK9F;
   label values P6BLK_4 YN1RDK9F;
   label values P6BLK_5 YN1RDK9F;
   label values P6BLK_6 YN1RDK9F;
   label values P6BLK_7 YN1RDK9F;
   label values P6BLK_8 YN1RDK9F;
   label values P6BLK_9 YN1RDK9F;
   label values P6CBEFOR YN1RDK9F;
   label values P6CFTER YN1RDK9F;
   label values P6CHGRESPREL YN1RDK9F;
   label values P6CHGSPSPREL YN1RDK9F;
   label values P6CHINES YN1RDK9F;
   label values P6CMDIAG YN1RDK9F;
   label values P6CTRLOK YN1RDK9F;
   label values P6CWEEK YN1RDK9F;
   label values P6DIFFH3 YN1RDK9F;
   label values P6DIVORCE YN1RDK9F;
   label values P6DO1_1_I YN1RDK9F;
   label values P6DO1_2_I YN1RDK9F;
   label values P6DO2_1_I YN1RDK9F;
   label values P6DO2_2_I YN1RDK9F;
   label values P6DO3_1_I YN1RDK9F;
   label values P6DO3_2_I YN1RDK9F;
   label values P6DO4_1_I YN1RDK9F;
   label values P6DO4_2_I YN1RDK9F;
   label values P6DO5_1_I YN1RDK9F;
   label values P6DO5_2_I YN1RDK9F;
   label values P6DO9_1 YN1RDK9F;
   label values P6DO9_2 YN1RDK9F;
   label values P6EARKAC YN1RDK9F;
   label values P6EMPCHG_1_I YN1RDK9F;
   label values P6EMPCHG_2_I YN1RDK9F;
   label values P6ENGTOO YN1RDK9F;
   label values P6EVALCO YN1RDK9F;
   label values P6EVALIS YN1RDK9F;
   label values P6HEVAL YN1RDK9F;
   label values P6HPI_1 YN1RDK9F;
   label values P6HPI_10 YN1RDK9F;
   label values P6HPI_11 YN1RDK9F;
   label values P6HPI_12 YN1RDK9F;
   label values P6HPI_13 YN1RDK9F;
   label values P6HPI_14 YN1RDK9F;
   label values P6HPI_15 YN1RDK9F;
   label values P6HPI_16 YN1RDK9F;
   label values P6HPI_17 YN1RDK9F;
   label values P6HPI_18 YN1RDK9F;
   label values P6HPI_19 YN1RDK9F;
   label values P6HPI_20 YN1RDK9F;
   label values P6HPI_21 YN1RDK9F;
   label values P6HPI_22 YN1RDK9F;
   label values P6HPI_23 YN1RDK9F;
   label values P6HPI_24 YN1RDK9F;
   label values P6HPI_25 YN1RDK9F;
   label values P6HPI_3 YN1RDK9F;
   label values P6HPI_4 YN1RDK9F;
   label values P6HPI_5 YN1RDK9F;
   label values P6HPI_6 YN1RDK9F;
   label values P6HPI_7 YN1RDK9F;
   label values P6HPI_8 YN1RDK9F;
   label values P6HPI_9 YN1RDK9F;
   label values P6HSP_10 YN1RDK9F;
   label values P6HSP_11 YN1RDK9F;
   label values P6HSP_12 YN1RDK9F;
   label values P6HSP_13 YN1RDK9F;
   label values P6HSP_14 YN1RDK9F;
   label values P6HSP_15 YN1RDK9F;
   label values P6HSP_16 YN1RDK9F;
   label values P6HSP_17 YN1RDK9F;
   label values P6HSP_18 YN1RDK9F;
   label values P6HSP_19 YN1RDK9F;
   label values P6HSP_20 YN1RDK9F;
   label values P6HSP_21 YN1RDK9F;
   label values P6HSP_22 YN1RDK9F;
   label values P6HSP_23 YN1RDK9F;
   label values P6HSP_24 YN1RDK9F;
   label values P6HSP_25 YN1RDK9F;
   label values P6HSP_3 YN1RDK9F;
   label values P6HSP_4 YN1RDK9F;
   label values P6HSP_5 YN1RDK9F;
   label values P6HSP_6 YN1RDK9F;
   label values P6HSP_7 YN1RDK9F;
   label values P6HSP_8 YN1RDK9F;
   label values P6HSP_9 YN1RDK9F;
   label values P6INTRNT YN1RDK9F;
   label values P6KANLG YN1RDK9F;
   label values P6KANTI YN1RDK9F;
   label values P6KDROP YN1RDK9F;
   label values P6KN2TT YN1RDK9F;
   label values P6LENSE YN1RDK9F;
   label values P6LESSEXP YN1RDK9F;
   label values P6LOK_1_I YN1RDK9F;
   label values P6LOK_2_I YN1RDK9F;
   label values P6LUNCHS YN1RDK9F;
   label values P6MEETTM YN1RDK9F;
   label values P6MVOTHER YN1RDK9F;
   label values P6NAFTER YN1RDK9F;
   label values P6NBEFOR YN1RDK9F;
   label values P6NEARJOB YN1RDK9F;
   label values P6NICERHOS YN1RDK9F;
   label values P6NWEEK YN1RDK9F;
   label values P6NWKEND YN1RDK9F;
   label values P6OTHEXC YN1RDK9F;
   label values P6OTHHIT YN1RDK9F;
   label values P6OTHTEA YN1RDK9F;
   label values P6PARTNR YN1RDK9F;
   label values P6PAY_1_I YN1RDK9F;
   label values P6PAY_2_I YN1RDK9F;
   label values P6PRBART YN1RDK9F;
   label values P6PRIMRL YN1RDK9F;
   label values P6PRVCOV YN1RDK9F;
   label values P6PTCONF YN1RDK9F;
   label values P6PUBCOV YN1RDK9F;
   label values P6RAFTER YN1RDK9F;
   label values P6RBEFOR YN1RDK9F;
   label values P6RECDIA YN1RDK9F;
   label values P6RECSPE YN1RDK9F;
   label values P6RELIAC YN1RDK9F;
   label values P6RSVTPY YN1RDK9F;
   label values P6RWEEK YN1RDK9F;
   label values P6RWKEND YN1RDK9F;
   label values P6SINGLL YN1RDK9F;
   label values P6SPANSH YN1RDK9F;
   label values P6TAK_1 YN1RDK9F;
   label values P6TAK_2 YN1RDK9F;
   label values P6TLKLD YN1RDK9F;
   label values P6TLKSFT YN1RDK9F;
   label values P6TRTASTHMA YN1RDK9F;
   label values P6TUTLAN YN1RDK9F;
   label values P6TUTMTH YN1RDK9F;
   label values P6TUTOTH YN1RDK9F;
   label values P6TUTREA YN1RDK9F;
   label values P6TUTSCI YN1RDK9F;
   label values P6VAC_1_I YN1RDK9F;
   label values P6VAC_2_I YN1RDK9F;
   label values P6VISAST YN1RDK9F;
   label values P6VISFAR YN1RDK9F;
   label values P6VISGLS YN1RDK9F;
   label values P6VISIO2 YN1RDK9F;
   label values P6VISLAZ YN1RDK9F;
   label values P6VISNEA YN1RDK9F;
   label values P6VISOTH YN1RDK9F;
   label values P6VOLSCH YN1RDK9F;
   label values P6WHT_1 YN1RDK9F;
   label values P6WHT_10 YN1RDK9F;
   label values P6WHT_11 YN1RDK9F;
   label values P6WHT_12 YN1RDK9F;
   label values P6WHT_13 YN1RDK9F;
   label values P6WHT_14 YN1RDK9F;
   label values P6WHT_15 YN1RDK9F;
   label values P6WHT_16 YN1RDK9F;
   label values P6WHT_17 YN1RDK9F;
   label values P6WHT_18 YN1RDK9F;
   label values P6WHT_19 YN1RDK9F;
   label values P6WHT_20 YN1RDK9F;
   label values P6WHT_21 YN1RDK9F;
   label values P6WHT_22 YN1RDK9F;
   label values P6WHT_23 YN1RDK9F;
   label values P6WHT_24 YN1RDK9F;
   label values P6WHT_25 YN1RDK9F;
   label values P6WHT_3 YN1RDK9F;
   label values P6WHT_4 YN1RDK9F;
   label values P6WHT_5 YN1RDK9F;
   label values P6WHT_6 YN1RDK9F;
   label values P6WHT_7 YN1RDK9F;
   label values P6WHT_8 YN1RDK9F;
   label values P6WHT_9 YN1RDK9F;
   label values S47TH YN59F;
   label values S48TH YN59F;
   label values S4ADLTLT YN59F;
   label values S4BIESCH YN59F;
   label values S4EARCHC YN59F;
   label values S4FIFTH YN59F;
   label values S4FMILIT YN59F;
   label values S4FOURTH YN59F;
   label values S4KINDER YN59F;
   label values S4MTGCAR YN59F;
   label values S4OFFESL YN59F;
   label values S4ORIENT YN59F;
   label values S4PRKNDR YN59F;
   label values S4PRNTNG YN59F;
   label values S4REGPSK YN59F;
   label values S4SCISRV YN59F;
   label values S4SECURT YN59F;
   label values S4SIXTH YN59F;
   label values S4THIRD YN59F;
   label values S4UNIFRM YN59F;
   label values S6ADLTLT YN59F;
   label values S6BIESCH YN59F;
   label values S6FMILIT YN59F;
   label values S6MTGCAR YN59F;
   label values S6OFFESL YN59F;
   label values S6ORIENT YN59F;
   label values S6PRNTNG YN59F;
   label values S6REGPSK YN59F;
   label values S6SCISRV YN59F;
   label values S6SECURT YN59F;
   label values S6UNIFRM YN59F;
   label values A1ARTARE YN9F;
   label values A1BKSCHN YN9F;
   label values A1BKSENG YN9F;
   label values A1BKSFRN YN9F;
   label values A1BKSOTH YN9F;
   label values A1BKSSPN YN9F;
   label values A1BOTHCL YN9F;
   label values A1CLSSMN YN9F;
   label values A1COMPAR YN9F;
   label values A1DEVLP YN9F;
   label values A1DRAMAR YN9F;
   label values A1EARLY YN9F;
   label values A1ELEM YN9F;
   label values A1ESL YN9F;
   label values A1FULDAY YN9F;
   label values A1HALFAM YN9F;
   label values A1HALFPM YN9F;
   label values A1HMEVST YN9F;
   label values A1INFOHO YN9F;
   label values A1INKNDR YN9F;
   label values A1INTSRV YN9F;
   label values A1LISTNC YN9F;
   label values A1MATHAR YN9F;
   label values A1MTHDMA YN9F;
   label values A1MTHDRD YN9F;
   label values A1MTHDSC YN9F;
   label values A1MULTGR YN9F;
   label values A1NONENG YN9F;
   label values A1PLAYAR YN9F;
   label values A1PRNTOR YN9F;
   label values A1READAR YN9F;
   label values A1RSPINT YN9F;
   label values A1SCIAR YN9F;
   label values A1SHRTN YN9F;
   label values A1SPECED YN9F;
   label values A1STAGGR YN9F;
   label values A1VSTK YN9F;
   label values A1WATRSA YN9F;
   label values A1WRTCNT YN9F;
   label values A2BOTHCL YN9F;
   label values A2CHKLST YN9F;
   label values A2CNSLT YN9F;
   label values A2COLLEG YN9F;
   label values A2DEVWEB YN9F;
   label values A2FDBACK YN9F;
   label values A2FOLIO YN9F;
   label values A2FULDAY YN9F;
   label values A2HALFAM YN9F;
   label values A2HALFPM YN9F;
   label values A2NONENG YN9F;
   label values A2OBSERV YN9F;
   label values A2PRFCON YN9F;
   label values A2PRGRPT YN9F;
   label values A2SRPCRD YN9F;
   label values A2STDSCO YN9F;
   label values A2TECH YN9F;
   label values A2WRKSHP YN9F;
   label values A4BKSENG YN9F;
   label values A4BKSSPN YN9F;
   label values A4BNCHM YN9F;
   label values A4CHKLST YN9F;
   label values A4DATBEH YN9F;
   label values A4DATMTH YN9F;
   label values A4DATRD YN9F;
   label values A4DEVLP YN9F;
   label values A4EARLY YN9F;
   label values A4ELL YN9F;
   label values A4ESL YN9F;
   label values A4FOLIO YN9F;
   label values A4MSATRSK YN9F;
   label values A4MULTGR YN9F;
   label values A4NONENG YN9F;
   label values A4OTLAN YN9F;
   label values A4PRGRPT YN9F;
   label values A4PROFDVLP YN9F;
   label values A4PUBRES YN9F;
   label values A4RSATRSK YN9F;
   label values A4SEATRSK YN9F;
   label values A4SPECED YN9F;
   label values A4SRPCRD YN9F;
   label values A4STDSCR YN9F;
   label values A6BKSENG YN9F;
   label values A6BKSSPN YN9F;
   label values A6BNCHM YN9F;
   label values A6CHKLST YN9F;
   label values A6DATBEH YN9F;
   label values A6DATMTH YN9F;
   label values A6DATRD YN9F;
   label values A6DEVLP YN9F;
   label values A6EARLY YN9F;
   label values A6ELL YN9F;
   label values A6ESL YN9F;
   label values A6FOLIO YN9F;
   label values A6MSATRSK YN9F;
   label values A6MULTGR YN9F;
   label values A6NONENG YN9F;
   label values A6OTLAN YN9F;
   label values A6PRGRPT YN9F;
   label values A6PROFDVLP YN9F;
   label values A6PUBRES YN9F;
   label values A6RSATRSK YN9F;
   label values A6SEATRSK YN9F;
   label values A6SPECED YN9F;
   label values A6SRPCRD YN9F;
   label values A6STDSCR YN9F;
   label values B2CLSSMN YN9F;
   label values B2DEVLP YN9F;
   label values B2EARLY YN9F;
   label values B2ELEM YN9F;
   label values B2ESL YN9F;
   label values B2INTSRV YN9F;
   label values B2MTHDMA YN9F;
   label values B2MTHDRD YN9F;
   label values B2MTHDSC YN9F;
   label values B2RSPINT YN9F;
   label values B2SPECED YN9F;
   label values C1DISRUP YN9F;
   label values C1INTRUP YN9F;
   label values C1OBSERV YN9F;
   label values C1PRESNT YN9F;
   label values C1SPASMT YN9F;
   label values C2DISRUP YN9F;
   label values C2INTRUP YN9F;
   label values C2OBSERV YN9F;
   label values C2PRESNT YN9F;
   label values C2SPASMT YN9F;
   label values C3DISRUP YN9F;
   label values C3INTRUP YN9F;
   label values C3NENGHM YN9F;
   label values C3OBSERV YN9F;
   label values C3PRESNT YN9F;
   label values C3SPASMT YN9F;
   label values C4DISRUP YN9F;
   label values C4INTRUP YN9F;
   label values C4NENGHM YN9F;
   label values C4OBSERV YN9F;
   label values C4PRESNT YN9F;
   label values C4SPASMT YN9F;
   label values C5DISRUP YN9F;
   label values C5INTRUP YN9F;
   label values C5OBSERV YN9F;
   label values C5PRESNT YN9F;
   label values C6DISRUP YN9F;
   label values C6INTRUP YN9F;
   label values C6OBSERV YN9F;
   label values C6PRESNT YN9F;
   label values P1RESPER YN9F;
   label values R2ACADEM YN9F;
   label values R2AFTER8 YN9F;
   label values R2BLACK YN9F;
   label values R2CGCRED YN9F;
   label values R2CHDHOM YN9F;
   label values R2COURSE YN9F;
   label values R2ENRICH YN9F;
   label values R2FLEXIB YN9F;
   label values R2HISP YN9F;
   label values R2HLPPAR YN9F;
   label values R2MT1CHD YN9F;
   label values R2OTHHOM YN9F;
   label values R2OTHLOC YN9F;
   label values R2OTHPRF YN9F;
   label values R2OVERNT YN9F;
   label values R2RECREA YN9F;
   label values R2REMEDL YN9F;
   label values R2SUPER YN9F;
   label values R2WEEKND YN9F;
   label values R2WHITE YN9F;
   label values R2YRHOME YN9F;
   label values S27TH YN9F;
   label values S28TH YN9F;
   label values S2ADLTLT YN9F;
   label values S2AFTSCH YN9F;
   label values S2B4SCH YN9F;
   label values S2BIESCH YN9F;
   label values S2CATHOL YN9F;
   label values S2CHCESK YN9F;
   label values S2DECROL YN9F;
   label values S2EARCHC YN9F;
   label values S2EAREYE YN9F;
   label values S2ENG2ND YN9F;
   label values S2FIFTH YN9F;
   label values S2FMILIT YN9F;
   label values S2FOURTH YN9F;
   label values S2FUNDLV YN9F;
   label values S2HLFDAY YN9F;
   label values S2INCROL YN9F;
   label values S2LANAST YN9F;
   label values S2LANAVL YN9F;
   label values S2LANKIN YN9F;
   label values S2LSSINC YN9F;
   label values S2MOBILE YN9F;
   label values S2MTGCAR YN9F;
   label values S2NETAST YN9F;
   label values S2NETAVL YN9F;
   label values S2NETKIN YN9F;
   label values S2ORIENT YN9F;
   label values S2OTHREL YN9F;
   label values S2PRKNDR YN9F;
   label values S2PRNTNG YN9F;
   label values S2RDITST YN9F;
   label values S2REGSKL YN9F;
   label values S2SCISRV YN9F;
   label values S2SECOND YN9F;
   label values S2SECURT YN9F;
   label values S2SIXTH YN9F;
   label values S2SPD504 YN9F;
   label values S2SPDIEP YN9F;
   label values S2THIRD YN9F;
   label values S2TRANSK YN9F;
   label values S2TSHORT YN9F;
   label values S2UNIFRM YN9F;
   label values S2USDABR YN9F;
   label values S2USDALN YN9F;
   label values S4AFTSCH YN9F;
   label values S4B4SCH YN9F;
   label values S4CSLYFZ YN9F;
   label values S4ELIQDS YN9F;
   label values S4ELRTL YN9F;
   label values S4ENG2ND YN9F;
   label values S4MN4ITS YN9F;
   label values S4MN4TSG YN9F;
   label values S4OFFVIS YN9F;
   label values S4OFHEAR YN9F;
   label values S4PSMBHV YN9F;
   label values S4PSMMDT YN9F;
   label values S4PSMMTH YN9F;
   label values S4PSMRED YN9F;
   label values S4PSMUDT YN9F;
   label values S4PSTBEH YN9F;
   label values S4RTLUSE YN9F;
   label values S4SOL2NF YN9F;
   label values S4SOL2NS YN9F;
   label values S4USDABR YN9F;
   label values S4USDALN YN9F;
   label values S6AFTSCH YN9F;
   label values S6B4SCH YN9F;
   label values S6CSLYFZ YN9F;
   label values S6ELIQDS YN9F;
   label values S6ELRTL YN9F;
   label values S6ENG2ND YN9F;
   label values S6MN4ITS YN9F;
   label values S6MN4TSG YN9F;
   label values S6OFFVIS YN9F;
   label values S6OFHEAR YN9F;
   label values S6PSMBHV YN9F;
   label values S6PSMMDT YN9F;
   label values S6PSMMTH YN9F;
   label values S6PSMRED YN9F;
   label values S6PSMUDT YN9F;
   label values S6PSTBEH YN9F;
   label values S6RTLUSE YN9F;
   label values S6SOL2NF YN9F;
   label values S6SOL2NS YN9F;
   label values T2IEP YN9F;
   label values T2RCLTH YN9F;
   label values T2SEDSV YN9F;
   label values T2SGMTH YN9F;
   label values T2SGRDG YN9F;
   label values T2TCHCN YN9F;
   label values T2TTRMT YN9F;
   label values T2TTRRD YN9F;
   label values T4GFTMTH YN9F;
   label values T4GFTRD YN9F;
   label values T4IEP YN9F;
   label values T4KIEP YN9F;
   label values T4KRCLTH YN9F;
   label values T4KSEDSV YN9F;
   label values T4KSGMTH YN9F;
   label values T4KSGRDG YN9F;
   label values T4KTCHCN YN9F;
   label values T4KTCMTH YN9F;
   label values T4KTCRD YN9F;
   label values T4KTCSCI YN9F;
   label values T4KTCSS YN9F;
   label values T4KTTRMT YN9F;
   label values T4KTTRRD YN9F;
   label values T4RCLTH YN9F;
   label values T4SEDSV YN9F;
   label values T4SGMTH YN9F;
   label values T4SGRDG YN9F;
   label values T4TCHCN YN9F;
   label values T4TCMTH YN9F;
   label values T4TCRD YN9F;
   label values T4TCSCI YN9F;
   label values T4TCSS YN9F;
   label values T4TTRMT YN9F;
   label values T4TTRRD YN9F;
   label values T6GFTMTH YN9F;
   label values T6GFTRD YN9F;
   label values T6IEP YN9F;
   label values T6RCLTH YN9F;
   label values T6SEDSV YN9F;
   label values T6SGMTH YN9F;
   label values T6SGRDG YN9F;
   label values T6TCHCN YN9F;
   label values T6TCMTH YN9F;
   label values T6TCRD YN9F;
   label values T6TCSCI YN9F;
   label values T6TCSS YN9F;
   label values T6TTRMT YN9F;
   label values T6TTRRD YN9F;
   label values V2BLACK YN9F;
   label values V2CDACRD YN9F;
   label values V2CGCRED YN9F;
   label values V2COURSE YN9F;
   label values V2GRPACT YN9F;
   label values V2GRPAGE YN9F;
   label values V2GRPCHS YN9F;
   label values V2GRPDEP YN9F;
   label values V2GRPINT YN9F;
   label values V2GRPOTH YN9F;
   label values V2GRPRDM YN9F;
   label values V2GRPSKL YN9F;
   label values V2GRPTOG YN9F;
   label values V2HISP YN9F;
   label values V2OTHPRF YN9F;
   label values V2WHITE YN9F;
   label values X_AMINAN_R YN9F;
   label values X_ASIAN_R YN9F;
   label values X_BLACK_R YN9F;
   label values X_HAWPI_R YN9F;
   label values X_HISP_R YN9F;
   label values X_MULTR_R YN9F;
   label values X_WHITE_R YN9F;
   label values X12CAREPK YN9F;
   label values X12MOMAR YN9F;
   label values X1FIRKDG YN9F;
   label values X2DISABL YN9F;
   label values X2DISABL2 YN9F;
   label values X4DISABL YN9F;
   label values X4DISABL2 YN9F;
   label values X6DISABL YN9F;
   label values X6DISABL2 YN9F;
   label values Z2AFTER8 YN9F;
   label values Z2CMPAVL YN9F;
   label values Z2FOLDER YN9F;
   label values Z2INHOME YN9F;
   label values Z2LIVCHD YN9F;
   label values Z2OTHCHD YN9F;
   label values Z2OVERNT YN9F;
   label values Z2RELATE YN9F;
   label values Z2WEEKND YN9F;
   label values P1AIA_1 YNRDK9F;
   label values P1AIA_2 YNRDK9F;
   label values P1ANYLNG YNRDK9F;
   label values P1ASN_1 YNRDK9F;
   label values P1ASN_2 YNRDK9F;
   label values P1BLK_1 YNRDK9F;
   label values P1BLK_2 YNRDK9F;
   label values P1BRSFED YNRDK9F;
   label values P1CHOOSE YNRDK9F;
   label values P1CTRNOW YNRDK9F;
   label values P1DELCMP YNRDK9F;
   label values P1FINANC YNRDK9F;
   label values P1FSTAMP YNRDK9F;
   label values P1HPI_1 YNRDK9F;
   label values P1HPI_2 YNRDK9F;
   label values P1HSP_1 YNRDK9F;
   label values P1HSP_2 YNRDK9F;
   label values P1KCNTCT YNRDK9F;
   label values P1KLATE YNRDK9F;
   label values P1KPREP YNRDK9F;
   label values P1KPRGRM YNRDK9F;
   label values P1METCHR YNRDK9F;
   label values P1NBIFSP YNRDK9F;
   label values P1NICU YNRDK9F;
   label values P1NRNOW YNRDK9F;
   label values P1PARTNR YNRDK9F;
   label values P1PAY_1 YNRDK9F;
   label values P1PREMAT YNRDK9F;
   label values P1RELNOW YNRDK9F;
   label values P1TANF YNRDK9F;
   label values P1WHT_1 YNRDK9F;
   label values P1WHT_2 YNRDK9F;
   label values P1WICCHD YNRDK9F;
   label values P1WICMOM YNRDK9F;
   label values P2ACADAT YNRDK9F;
   label values P2AIA_2 YNRDK9F;
   label values P2ARTLSN YNRDK9F;
   label values P2ASN_2 YNRDK9F;
   label values P2ATHLET YNRDK9F;
   label values P2ATTENB YNRDK9F;
   label values P2ATTENP YNRDK9F;
   label values P2ATTENS YNRDK9F;
   label values P2BKSTOR YNRDK9F;
   label values P2BLK_2 YNRDK9F;
   label values P2BROSIS YNRDK9F;
   label values P2CALISNC YNRDK9F;
   label values P2CANTGT YNRDK9F;
   label values P2CLUB YNRDK9F;
   label values P2CONCRT YNRDK9F;
   label values P2COVER YNRDK9F;
   label values P2CRAFTS YNRDK9F;
   label values P2CUR_1 YNRDK9F;
   label values P2CUR_2 YNRDK9F;
   label values P2DANCE YNRDK9F;
   label values P2DANCLS YNRDK9F;
   label values P2DIFSWA YNRDK9F;
   label values P2DRAMA YNRDK9F;
   label values P2EARKIN YNRDK9F;
   label values P2EMOTDF YNRDK9F;
   label values P2EXRCSE YNRDK9F;
   label values P2FSTAMP YNRDK9F;
   label values P2FUNDRS YNRDK9F;
   label values P2GRPSPT YNRDK9F;
   label values P2HITAPO YNRDK9F;
   label values P2HITBCK YNRDK9F;
   label values P2HITCHO YNRDK9F;
   label values P2HITDIS YNRDK9F;
   label values P2HITFUN YNRDK9F;
   label values P2HITIGN YNRDK9F;
   label values P2HITOTH YNRDK9F;
   label values P2HITPRV YNRDK9F;
   label values P2HITSPK YNRDK9F;
   label values P2HITTO YNRDK9F;
   label values P2HITWAR YNRDK9F;
   label values P2HITYEL YNRDK9F;
   label values P2HOMECM YNRDK9F;
   label values P2HPI_2 YNRDK9F;
   label values P2INDSPT YNRDK9F;
   label values P2LGNOTE YNRDK9F;
   label values P2LIBRAR YNRDK9F;
   label values P2MARTL YNRDK9F;
   label values P2MEETTM YNRDK9F;
   label values P2MUSEUM YNRDK9F;
   label values P2MUSIC YNRDK9F;
   label values P2NOCARE YNRDK9F;
   label values P2NONENG YNRDK9F;
   label values P2NOTRAN YNRDK9F;
   label values P2NOTWEL YNRDK9F;
   label values P2PARADV YNRDK9F;
   label values P2PARINT YNRDK9F;
   label values P2PERFRM YNRDK9F;
   label values P2PLYGRD YNRDK9F;
   label values P2PTCONF YNRDK9F;
   label values P2RECSPT YNRDK9F;
   label values P2RELIAC YNRDK9F;
   label values P2SAFEGO YNRDK9F;
   label values P2SCHLBK YNRDK9F;
   label values P2SCHLLU YNRDK9F;
   label values P2SERVCO YNRDK9F;
   label values P2SIGHT YNRDK9F;
   label values P2SPORT YNRDK9F;
   label values P2TANF YNRDK9F;
   label values P2THINGS YNRDK9F;
   label values P2TUITIO YNRDK9F;
   label values P2VISION YNRDK9F;
   label values P2VOLSCH YNRDK9F;
   label values P2VOLWRK YNRDK9F;
   label values P2WHT_2 YNRDK9F;
   label values P2ZOO YNRDK9F;
   label values P3DONCMP YNRDK9F;
   label values P3RCVLCAR YNRDK9F;
   label values P3SUMBK YNRDK9F;
   label values P3SUMSCH YNRDK9F;
   label values P3TUTOR YNRDK9F;
   label values P41EARWR YNRDK9F;
   label values P4ACDACT YNRDK9F;
   label values P4AFRDHM YNRDK9F;
   label values P4AIA_2 YNRDK9F;
   label values P4ARTLSN YNRDK9F;
   label values P4ASN_2 YNRDK9F;
   label values P4ASTHMA YNRDK9F;
   label values P4ATHLET YNRDK9F;
   label values P4BLK_2 YNRDK9F;
   label values P4CLUB YNRDK9F;
   label values P4COVER YNRDK9F;
   label values P4CTRNOW YNRDK9F;
   label values P4DRAMA YNRDK9F;
   label values P4EARKIN YNRDK9F;
   label values P4EMOTDF YNRDK9F;
   label values P4FSTAMP YNRDK9F;
   label values P4HMCOMP YNRDK9F;
   label values P4HPI_2 YNRDK9F;
   label values P4LGNOTE YNRDK9F;
   label values P4LIBBST YNRDK9F;
   label values P4MUSIC YNRDK9F;
   label values P4NRNOW YNRDK9F;
   label values P4PERFRM YNRDK9F;
   label values P4RELNOW YNRDK9F;
   label values P4SCHLBK YNRDK9F;
   label values P4SCHLLU YNRDK9F;
   label values P4SIGHT YNRDK9F;
   label values P4TANF YNRDK9F;
   label values P4TUTREG YNRDK9F;
   label values P4VISION YNRDK9F;
   label values P4WHT_2 YNRDK9F;
   label values P5DONCMP YNRDK9F;
   label values P5EARKIN YNRDK9F;
   label values P5RCVLCAR YNRDK9F;
   label values P5SUMBK YNRDK9F;
   label values P5SUMSCH YNRDK9F;
   label values P5TUTOR YNRDK9F;
   label values P61EARWR YNRDK9F;
   label values P6ACDACT YNRDK9F;
   label values P6AIA_2 YNRDK9F;
   label values P6ARTLSN YNRDK9F;
   label values P6ASN_2 YNRDK9F;
   label values P6ASTHMA YNRDK9F;
   label values P6ATHLET YNRDK9F;
   label values P6BLK_2 YNRDK9F;
   label values P6CANTGT YNRDK9F;
   label values P6CLUB YNRDK9F;
   label values P6CONCRT YNRDK9F;
   label values P6CTRNOW YNRDK9F;
   label values P6DIFSCH YNRDK9F;
   label values P6DRAMA YNRDK9F;
   label values P6EARKIN YNRDK9F;
   label values P6EMOTDF YNRDK9F;
   label values P6FSTAMP YNRDK9F;
   label values P6HMCOMP YNRDK9F;
   label values P6HPI_2 YNRDK9F;
   label values P6LIBBST YNRDK9F;
   label values P6MOVED YNRDK9F;
   label values P6MUSEUM YNRDK9F;
   label values P6MUSIC YNRDK9F;
   label values P6NOCARE YNRDK9F;
   label values P6NOTRAN YNRDK9F;
   label values P6NOTWEL YNRDK9F;
   label values P6NRNOW YNRDK9F;
   label values P6PERFRM YNRDK9F;
   label values P6RELNOW YNRDK9F;
   label values P6SAFEGO YNRDK9F;
   label values P6SIGHT YNRDK9F;
   label values P6TANF YNRDK9F;
   label values P6THINGS YNRDK9F;
   label values P6TUTREG YNRDK9F;
   label values P6VISION YNRDK9F;
   label values P6WHT_2 YNRDK9F;
   label values P6ZOO YNRDK9F;
   label values Z2ACTIVE Z2ACTIVE;
   label values Z2ADLACT Z2ADLACT;
   label values Z2AGUNIT Z2AGUNIT;
   label values Z2ARTCFT Z2ARTCFT;
   label values Z2BUILD Z2BUILD;
   label values Z2CMPGAM Z2CMPGAM;
   label values Z2COMPMM Z2COMPMM;
   label values Z2COMPYY Z2COMPYY;
   label values Z2COOKNG Z2COOKNG;
   label values Z2DAYSCM Z2DAYSCM;
   label values Z2DRAMA Z2DRAMA;
   label values Z2EXERCS Z2EXERCS;
   label values Z2GAMES Z2GAMES;
   label values Z2HOMWRK Z2HOMWRK;
   label values Z2MUSIC Z2MUSIC;
   label values Z2NOTV Z2NOTV;
   label values Z2NOWTCH Z2NOWTCH;
   label values Z2OUTDPL Z2OUTDPL;
   label values Z2READNG Z2READNG;
   label values Z2SCIENC Z2SCIENC;
   label values Z2SKILLS Z2SKILLS;
   label values Z2SOCIAL Z2SOCIAL;
   label values Z2STORY Z2STORY;
   label values Z2TEAMSP Z2TEAMSP;
   label values Z2TRIPS Z2TRIPS;
   label values Z2TUTOR Z2TUTOR;
   label values Z2WRITNG Z2WRITNG;
   label values Z2WTCHTV Z2WTCHTV;
   label values Z2WTCHVD Z2WTCHVD;

save "`derived_dir'/eclsk_2011_master.dta", replace;
