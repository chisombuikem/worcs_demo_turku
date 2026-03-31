# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)

df <- read.csv("penguins.csv", stringsAsFactors = TRUE) 

head(df)

df[["island"]] <- NULL ## make columns disappear 

## descriptives of variables
descriptives(df) 

## ADD DATA TO REPOSITORY 
open_data(df) 

## TEST IF THE UPLOAD TO REPOSITORY WORKS
rm(df)

load_data()  ## brings back original data 

## PUSH TO GITHUB
##worcs::git_update("prepared my data") - run on console
