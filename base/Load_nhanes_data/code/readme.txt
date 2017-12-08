****************************************************************
************************** NHANES III **************************
****************************************************************

Data were loaded to base using following R code

library(SAScii)
library(foreign)

data.file <- "https://wwwn.cdc.gov/nchs/data/nhanes3/1a/exam.dat"
setup.file <- "https://wwwn.cdc.gov/nchs/data/nhanes3/1a/exam.sas"
nhanesiii.df <- read.SAScii(data.file,setup.file,beginline=643)

write.dta(nhanesiii.df, "C:/Users/sgiambra/Google Drive/research projects/obesity/base/nhanes/nhanesiii.dta")