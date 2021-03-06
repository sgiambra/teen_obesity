set more off
adopath + ../../../lib/stata/gslab_misc/ado
adopath + ../../../lib/third_party/stata_tools
preliminaries, loadglob("../../../lib/python/obesity/input_params.txt")

local raw_data_dir = "${GoogleDrive}/raw_data/nhis/ipums"
local base_dir     = "${GoogleDrive}/base/nhis/ipums"

clear
quietly infix                  ///
  int     year        1-4      ///
  long    serial      5-10     ///
  int     strata      11-14    ///
  int     psu         15-17    ///
  str     nhishid     18-31    ///
  long    hhweight    32-37    ///
  byte    region      38-39    ///
  int     metro       40-42    ///
  byte    msasize     43-44    ///
  str     nhispid     45-60    ///
  str     hhx         61-66    ///
  str     fmx         67-68    ///
  str     px          69-70    ///
  double  perweight   71-82    ///
  double  sampweight  83-91    ///
  long    fweight     92-97    ///
  byte    astatflg    98-98    ///
  byte    cstatflg    99-99    ///
  byte    pernum      100-101  ///
  double  supp2wt     102-110  ///
  long    sub77wt     111-115  ///
  byte    age         116-117  ///
  byte    sex         118-118  ///
  byte    birthmo     119-120  ///
  int     birthyr     121-124  ///
  int     racea       125-127  ///
  double  bmicalc     128-131  ///
  double  bmi         132-135  ///
  int     bmikid      136-139  ///
  int     sldayr      140-142  ///
  using "`raw_data_dir'/nhis_00001.dat"

replace bmicalc    = bmicalc    / 10
replace bmi        = bmi        / 100

format perweight  %12.0f
format sampweight %9.0f
format supp2wt    %9.0f
format bmicalc    %4.1f
format bmi        %4.2f

label var year       `"Survey year"'
label var serial     `"Sequential Serial Number, Household Record"'
label var strata     `"Stratum for variance estimation"'
label var psu        `"Primary sampling unit (PSU) for variance estimation"'
label var nhishid    `"NHIS Unique identifier, household"'
label var hhweight   `"Household weight, final annual"'
label var region     `"Region of residence"'
label var metro      `"Metropolitan residence"'
label var msasize    `"Size of MSA"'
label var nhispid    `"NHIS Unique Identifier, person"'
label var hhx        `"Household number (from NHIS)"'
label var fmx        `"Family number (from NHIS)"'
label var px         `"Person number of respondent (from NHIS)."'
label var perweight  `"Final basic annual weight"'
label var sampweight `"Sample Person Weight"'
label var fweight    `"Final annual family weight"'
label var astatflg   `"Sample adult flag"'
label var cstatflg   `"Sample child flag"'
label var pernum     `"Person number within family (from reformatting)"'
label var supp2wt    `"Supplemental Person Weight 2"'
label var sub77wt    `"One-third subsample weight for 1977"'
label var age        `"Age"'
label var sex        `"Sex"'
label var birthmo    `"Month of birth"'
label var birthyr    `"Year of birth"'
label var racea      `"Main Racial Background (Pre-1997 Revised OMB Standards), self-reported or interv"'
label var bmicalc    `"Body Mass Index, calculated from publicly released height and weight variables"'
label var bmi        `"Body mass index"'
label var bmikid     `"Body mass index of child"'
label var sldayr     `"School loss days, past 12 months"'

label define region_lbl 01 `"Northeast"'
label define region_lbl 02 `"North Central/Midwest"', add
label define region_lbl 03 `"South"', add
label define region_lbl 04 `"West"', add
label define region_lbl 08 `"NO DATA IN ROUND"', add
label define region_lbl 09 `"Unknown"', add
label values region region_lbl

label define metro_lbl 000 `"Non-Interview"'
label define metro_lbl 010 `"MSA, in Central City"', add
label define metro_lbl 020 `"MSA, not in Central City"', add
label define metro_lbl 030 `"Not in MSA"', add
label define metro_lbl 031 `"Non-MSA: Nonfarm"', add
label define metro_lbl 032 `"Non-MSA: Farm"', add
label define metro_lbl 099 `"Unknown"', add
label values metro metro_lbl

label define msasize_lbl 00 `"Non-MSA"'
label define msasize_lbl 10 `"Under 250,000"', add
label define msasize_lbl 11 `"Under 100,000"', add
label define msasize_lbl 12 `"100,000-249,999"', add
label define msasize_lbl 20 `"250,000-999,999"', add
label define msasize_lbl 21 `"250,000-499,999"', add
label define msasize_lbl 22 `"500,000-999,999"', add
label define msasize_lbl 30 `"1,000,000 or more"', add
label define msasize_lbl 31 `"1,000,000-2,499,999"', add
label define msasize_lbl 32 `"2,500,000-4,999,999"', add
label define msasize_lbl 33 `"5,000,000 or more"', add
label values msasize msasize_lbl

label define astatflg_lbl 0 `"NIU"'
label define astatflg_lbl 1 `"Sample adult, has record"', add
label define astatflg_lbl 2 `"Sample adult, no record"', add
label define astatflg_lbl 3 `"Not selected as sample adult"', add
label define astatflg_lbl 4 `"No one selected as sample adult"', add
label define astatflg_lbl 5 `"Armed force member"', add
label define astatflg_lbl 6 `"AF member, selected as sample adult"', add
label values astatflg astatflg_lbl

label define cstatflg_lbl 0 `"NIU"'
label define cstatflg_lbl 1 `"Sample child-has record"', add
label define cstatflg_lbl 2 `"Sample child-no record"', add
label define cstatflg_lbl 3 `"Not selected as sample child"', add
label define cstatflg_lbl 4 `"No one selected as sample child"', add
label define cstatflg_lbl 5 `"Emancipated minor"', add
label values cstatflg cstatflg_lbl

label define sex_lbl 0 `"NIU"'
label define sex_lbl 1 `"Male"', add
label define sex_lbl 2 `"Female"', add
label define sex_lbl 7 `"Unknown - Refused"', add
label define sex_lbl 8 `"Unknown - Not ascertained"', add
label define sex_lbl 9 `"Unknown - Don't know"', add
label values sex sex_lbl

label define birthmo_lbl 00 `"NIU"'
label define birthmo_lbl 01 `"January"', add
label define birthmo_lbl 02 `"February"', add
label define birthmo_lbl 03 `"March"', add
label define birthmo_lbl 04 `"April"', add
label define birthmo_lbl 05 `"May"', add
label define birthmo_lbl 06 `"June"', add
label define birthmo_lbl 07 `"July"', add
label define birthmo_lbl 08 `"August"', add
label define birthmo_lbl 09 `"September"', add
label define birthmo_lbl 10 `"October"', add
label define birthmo_lbl 11 `"November"', add
label define birthmo_lbl 12 `"December"', add
label define birthmo_lbl 97 `"Unknown-refused"', add
label define birthmo_lbl 98 `"Unknown-not ascertained"', add
label define birthmo_lbl 99 `"Unknown-don't know"', add
label values birthmo birthmo_lbl

label define racea_lbl 100 `"White"'
label define racea_lbl 200 `"Black/African-American"', add
label define racea_lbl 300 `"Aleut, Alaskan Native, or American Indian"', add
label define racea_lbl 310 `"Alaskan Native or American Indian"', add
label define racea_lbl 320 `"Alaskan Native/Eskimo"', add
label define racea_lbl 330 `"Aleut"', add
label define racea_lbl 340 `"American Indian"', add
label define racea_lbl 400 `"Asian or Pacific Islander"', add
label define racea_lbl 410 `"Asian"', add
label define racea_lbl 411 `"Chinese"', add
label define racea_lbl 412 `"Filipino"', add
label define racea_lbl 413 `"Korean"', add
label define racea_lbl 414 `"Vietnamese"', add
label define racea_lbl 415 `"Japanese"', add
label define racea_lbl 416 `"Asian Indian"', add
label define racea_lbl 420 `"Pacific Islander"', add
label define racea_lbl 421 `"Hawaiian"', add
label define racea_lbl 422 `"Samoan"', add
label define racea_lbl 423 `"Guamanian"', add
label define racea_lbl 430 `"Other Asian or Pacific Islander"', add
label define racea_lbl 431 `"Other Asian or Pacific Islander (1992-1995)"', add
label define racea_lbl 432 `"Other Asian or Pacific Islander (1996)"', add
label define racea_lbl 433 `"Other Asian or Pacific Islander (1997-1998)"', add
label define racea_lbl 434 `"Other Asian (1999 forward)"', add
label define racea_lbl 500 `"Other Race"', add
label define racea_lbl 510 `"Other Race (1969-1977)"', add
label define racea_lbl 520 `"Other Race (1978)"', add
label define racea_lbl 530 `"Other Race (1979-1991)"', add
label define racea_lbl 540 `"Other Race (1992-1995)"', add
label define racea_lbl 550 `"Other Race (1996)"', add
label define racea_lbl 560 `"Other Race (1997-1998)"', add
label define racea_lbl 570 `"Other Race (1999-2002)"', add
label define racea_lbl 580 `"Primary Race not releasable"', add
label define racea_lbl 600 `"Multiple Race, No Primary Race Selected"', add
label define racea_lbl 610 `"Multiple Race, including Asian, excluding Black and White"', add
label define racea_lbl 611 `"Multiple Race, including Asian and Black, excluding White"', add
label define racea_lbl 612 `"Multiple Race, including Asian and White, excluding Black"', add
label define racea_lbl 613 `"Multiple Race, including Black, excluding Asian and White"', add
label define racea_lbl 614 `"Multiple Race, including Black and White, excluding Asian"', add
label define racea_lbl 615 `"Multiple Race, including White, excluding Asian and Black"', add
label define racea_lbl 616 `"Multiple Race, including Asian, White, and Black"', add
label define racea_lbl 617 `"Multiple Race, excluding Asian, White, and Black"', add
label define racea_lbl 900 `"Unknown"', add
label define racea_lbl 970 `"Unknown-refused"', add
label define racea_lbl 980 `"Unknown-not ascertained"', add
label define racea_lbl 990 `"Unknown (1997forward: Don't know)"', add
label values racea racea_lbl

label define sldayr_lbl 000 `"None"'
label define sldayr_lbl 001 `"1 day"', add
label define sldayr_lbl 002 `"2 days"', add
label define sldayr_lbl 003 `"3 days"', add
label define sldayr_lbl 004 `"4 days"', add
label define sldayr_lbl 005 `"5 days"', add
label define sldayr_lbl 006 `"6 days"', add
label define sldayr_lbl 007 `"7 days"', add
label define sldayr_lbl 008 `"8 days"', add
label define sldayr_lbl 009 `"9 days"', add
label define sldayr_lbl 010 `"10 days"', add
label define sldayr_lbl 011 `"11 days"', add
label define sldayr_lbl 012 `"12 days"', add
label define sldayr_lbl 013 `"13 days"', add
label define sldayr_lbl 014 `"14 days"', add
label define sldayr_lbl 015 `"15 days"', add
label define sldayr_lbl 016 `"16 days"', add
label define sldayr_lbl 017 `"17 days"', add
label define sldayr_lbl 018 `"18 days"', add
label define sldayr_lbl 019 `"19 days"', add
label define sldayr_lbl 020 `"20 days"', add
label define sldayr_lbl 021 `"21 days"', add
label define sldayr_lbl 022 `"22 days"', add
label define sldayr_lbl 023 `"23 days"', add
label define sldayr_lbl 024 `"24 days"', add
label define sldayr_lbl 025 `"25 days"', add
label define sldayr_lbl 026 `"26 days"', add
label define sldayr_lbl 027 `"27 days"', add
label define sldayr_lbl 028 `"28 days"', add
label define sldayr_lbl 029 `"29 days"', add
label define sldayr_lbl 030 `"30 days"', add
label define sldayr_lbl 031 `"31 days"', add
label define sldayr_lbl 032 `"32 days"', add
label define sldayr_lbl 033 `"33 days"', add
label define sldayr_lbl 034 `"34 days"', add
label define sldayr_lbl 035 `"35 days"', add
label define sldayr_lbl 036 `"36 days"', add
label define sldayr_lbl 037 `"37 days"', add
label define sldayr_lbl 038 `"38 days"', add
label define sldayr_lbl 039 `"39 days"', add
label define sldayr_lbl 040 `"40 days"', add
label define sldayr_lbl 041 `"41 days"', add
label define sldayr_lbl 042 `"42 days"', add
label define sldayr_lbl 043 `"43 days"', add
label define sldayr_lbl 044 `"44 days"', add
label define sldayr_lbl 045 `"45 days"', add
label define sldayr_lbl 046 `"46 days"', add
label define sldayr_lbl 047 `"47 days"', add
label define sldayr_lbl 048 `"48 days"', add
label define sldayr_lbl 049 `"49 days"', add
label define sldayr_lbl 050 `"50 days"', add
label define sldayr_lbl 051 `"51 days"', add
label define sldayr_lbl 052 `"52 days"', add
label define sldayr_lbl 053 `"53 days"', add
label define sldayr_lbl 054 `"54 days"', add
label define sldayr_lbl 055 `"55 days"', add
label define sldayr_lbl 056 `"56 days"', add
label define sldayr_lbl 057 `"57 days"', add
label define sldayr_lbl 058 `"58 days"', add
label define sldayr_lbl 059 `"59 days"', add
label define sldayr_lbl 060 `"60 days"', add
label define sldayr_lbl 061 `"61 days"', add
label define sldayr_lbl 062 `"62 days"', add
label define sldayr_lbl 063 `"63 days"', add
label define sldayr_lbl 064 `"64 days"', add
label define sldayr_lbl 065 `"65 days"', add
label define sldayr_lbl 066 `"66 days"', add
label define sldayr_lbl 067 `"67 days"', add
label define sldayr_lbl 068 `"68 days"', add
label define sldayr_lbl 069 `"69 days"', add
label define sldayr_lbl 070 `"70 days"', add
label define sldayr_lbl 071 `"71 days"', add
label define sldayr_lbl 072 `"72 days"', add
label define sldayr_lbl 073 `"73 days"', add
label define sldayr_lbl 074 `"74 days"', add
label define sldayr_lbl 075 `"75 days"', add
label define sldayr_lbl 076 `"76 days"', add
label define sldayr_lbl 077 `"77 days"', add
label define sldayr_lbl 078 `"78 days"', add
label define sldayr_lbl 079 `"79 days"', add
label define sldayr_lbl 080 `"80 days"', add
label define sldayr_lbl 081 `"81 days"', add
label define sldayr_lbl 082 `"82 days"', add
label define sldayr_lbl 083 `"83 days"', add
label define sldayr_lbl 084 `"84 days"', add
label define sldayr_lbl 085 `"85 days"', add
label define sldayr_lbl 086 `"86 days"', add
label define sldayr_lbl 087 `"87 days"', add
label define sldayr_lbl 088 `"88 days"', add
label define sldayr_lbl 089 `"89 days"', add
label define sldayr_lbl 090 `"90 days"', add
label define sldayr_lbl 091 `"91 days"', add
label define sldayr_lbl 092 `"92 days"', add
label define sldayr_lbl 093 `"93 days"', add
label define sldayr_lbl 094 `"94 days"', add
label define sldayr_lbl 095 `"95 days"', add
label define sldayr_lbl 096 `"96 days"', add
label define sldayr_lbl 097 `"97 days"', add
label define sldayr_lbl 098 `"98 days"', add
label define sldayr_lbl 099 `"99 days"', add
label define sldayr_lbl 100 `"100 days"', add
label define sldayr_lbl 101 `"101 days"', add
label define sldayr_lbl 102 `"102 days"', add
label define sldayr_lbl 103 `"103 days"', add
label define sldayr_lbl 104 `"104 days"', add
label define sldayr_lbl 105 `"105 days"', add
label define sldayr_lbl 106 `"106 days"', add
label define sldayr_lbl 107 `"107 days"', add
label define sldayr_lbl 108 `"108 days"', add
label define sldayr_lbl 109 `"109 days"', add
label define sldayr_lbl 110 `"110 days"', add
label define sldayr_lbl 111 `"111 days"', add
label define sldayr_lbl 112 `"112 days"', add
label define sldayr_lbl 113 `"113 days"', add
label define sldayr_lbl 114 `"114 days"', add
label define sldayr_lbl 115 `"115 days"', add
label define sldayr_lbl 116 `"116 days"', add
label define sldayr_lbl 117 `"117 days"', add
label define sldayr_lbl 118 `"118 days"', add
label define sldayr_lbl 119 `"119 days"', add
label define sldayr_lbl 120 `"120 days"', add
label define sldayr_lbl 121 `"121 days"', add
label define sldayr_lbl 122 `"122 days"', add
label define sldayr_lbl 123 `"123 days"', add
label define sldayr_lbl 124 `"124 days"', add
label define sldayr_lbl 125 `"125 days"', add
label define sldayr_lbl 126 `"126 days"', add
label define sldayr_lbl 127 `"127 days"', add
label define sldayr_lbl 128 `"128 days"', add
label define sldayr_lbl 129 `"129 days"', add
label define sldayr_lbl 130 `"130 days"', add
label define sldayr_lbl 131 `"131 days"', add
label define sldayr_lbl 132 `"132 days"', add
label define sldayr_lbl 133 `"133 days"', add
label define sldayr_lbl 134 `"134 days"', add
label define sldayr_lbl 135 `"135 days"', add
label define sldayr_lbl 136 `"136 days"', add
label define sldayr_lbl 137 `"137 days"', add
label define sldayr_lbl 138 `"138 days"', add
label define sldayr_lbl 139 `"139 days"', add
label define sldayr_lbl 140 `"140 days"', add
label define sldayr_lbl 141 `"141 days"', add
label define sldayr_lbl 142 `"142 days"', add
label define sldayr_lbl 143 `"143 days"', add
label define sldayr_lbl 144 `"144 days"', add
label define sldayr_lbl 145 `"145 days"', add
label define sldayr_lbl 146 `"146 days"', add
label define sldayr_lbl 147 `"147 days"', add
label define sldayr_lbl 148 `"148 days"', add
label define sldayr_lbl 149 `"149 days"', add
label define sldayr_lbl 150 `"150 days"', add
label define sldayr_lbl 151 `"151 days"', add
label define sldayr_lbl 152 `"152 days"', add
label define sldayr_lbl 153 `"153 days"', add
label define sldayr_lbl 154 `"154 days"', add
label define sldayr_lbl 155 `"155 days"', add
label define sldayr_lbl 156 `"156 days"', add
label define sldayr_lbl 157 `"157 days"', add
label define sldayr_lbl 158 `"158 days"', add
label define sldayr_lbl 159 `"159 days"', add
label define sldayr_lbl 160 `"160 days"', add
label define sldayr_lbl 161 `"161 days"', add
label define sldayr_lbl 162 `"162 days"', add
label define sldayr_lbl 163 `"163 days"', add
label define sldayr_lbl 164 `"164 days"', add
label define sldayr_lbl 165 `"165 days"', add
label define sldayr_lbl 166 `"166 days"', add
label define sldayr_lbl 167 `"167 days"', add
label define sldayr_lbl 168 `"168 days"', add
label define sldayr_lbl 169 `"169 days"', add
label define sldayr_lbl 170 `"170 days"', add
label define sldayr_lbl 171 `"171 days"', add
label define sldayr_lbl 172 `"172 days"', add
label define sldayr_lbl 173 `"173 days"', add
label define sldayr_lbl 174 `"174 days"', add
label define sldayr_lbl 175 `"175 days"', add
label define sldayr_lbl 176 `"176 days"', add
label define sldayr_lbl 177 `"177 days"', add
label define sldayr_lbl 178 `"178 days"', add
label define sldayr_lbl 179 `"178 days"', add
label define sldayr_lbl 180 `"180 days"', add
label define sldayr_lbl 181 `"181 days"', add
label define sldayr_lbl 182 `"182 days"', add
label define sldayr_lbl 183 `"183 days"', add
label define sldayr_lbl 184 `"184 days"', add
label define sldayr_lbl 185 `"185 days"', add
label define sldayr_lbl 186 `"186 days"', add
label define sldayr_lbl 187 `"187 days"', add
label define sldayr_lbl 188 `"188 days"', add
label define sldayr_lbl 189 `"189 days"', add
label define sldayr_lbl 190 `"190 days"', add
label define sldayr_lbl 191 `"191 days"', add
label define sldayr_lbl 192 `"192 days"', add
label define sldayr_lbl 193 `"193 days"', add
label define sldayr_lbl 194 `"194 days"', add
label define sldayr_lbl 195 `"195 days"', add
label define sldayr_lbl 196 `"196 days"', add
label define sldayr_lbl 197 `"197 days"', add
label define sldayr_lbl 198 `"198 days"', add
label define sldayr_lbl 199 `"199 days"', add
label define sldayr_lbl 200 `"200 days"', add
label define sldayr_lbl 201 `"201 days"', add
label define sldayr_lbl 202 `"202 days"', add
label define sldayr_lbl 203 `"203 days"', add
label define sldayr_lbl 204 `"204 days"', add
label define sldayr_lbl 205 `"205 days"', add
label define sldayr_lbl 206 `"206 days"', add
label define sldayr_lbl 207 `"207 days"', add
label define sldayr_lbl 208 `"208 days"', add
label define sldayr_lbl 209 `"209 days"', add
label define sldayr_lbl 210 `"210 days"', add
label define sldayr_lbl 211 `"211 days"', add
label define sldayr_lbl 212 `"212 days"', add
label define sldayr_lbl 213 `"213 days"', add
label define sldayr_lbl 214 `"214 days"', add
label define sldayr_lbl 215 `"215 days"', add
label define sldayr_lbl 216 `"216 days"', add
label define sldayr_lbl 217 `"217 days"', add
label define sldayr_lbl 218 `"218 days"', add
label define sldayr_lbl 219 `"219 days"', add
label define sldayr_lbl 220 `"220 days"', add
label define sldayr_lbl 221 `"221 days"', add
label define sldayr_lbl 222 `"222 days"', add
label define sldayr_lbl 223 `"223 days"', add
label define sldayr_lbl 224 `"224 days"', add
label define sldayr_lbl 225 `"225 days"', add
label define sldayr_lbl 226 `"226 days"', add
label define sldayr_lbl 227 `"227 days"', add
label define sldayr_lbl 228 `"228 days"', add
label define sldayr_lbl 229 `"229 days"', add
label define sldayr_lbl 230 `"230 days"', add
label define sldayr_lbl 231 `"231 days"', add
label define sldayr_lbl 232 `"232 days"', add
label define sldayr_lbl 233 `"233 days"', add
label define sldayr_lbl 234 `"234 days"', add
label define sldayr_lbl 235 `"235 days"', add
label define sldayr_lbl 236 `"236 days"', add
label define sldayr_lbl 237 `"237 days"', add
label define sldayr_lbl 238 `"238 days"', add
label define sldayr_lbl 239 `"239 days"', add
label define sldayr_lbl 240 `"240 days"', add
label define sldayr_lbl 995 `"Did not go to school"', add
label define sldayr_lbl 996 `"NIU"', add
label define sldayr_lbl 997 `"Unknown-refused"', add
label define sldayr_lbl 998 `"Unknown-not ascertained"', add
label define sldayr_lbl 999 `"Unknown-unknown"', add
label values sldayr sldayr_lbl

save_data "`base_dir'/ipums_nhis.dta", key(nhispid year) replace nopreserve
