###########################################
# Project: Chapter 1 Coder Exercises
# Purpose: Practice Chapter 1 Skills
# Author: Jenine 
# Edit date: August 27, 2020
# Data: 2013-2014 NHANES data, codebook at
#       https://www.cdc.gov/nchs/nhanes/index.htm
###########################################

# 1) Open the 2013-2014 NHANES data file saved as nhanes_2013_ch1.csv
# with the materials at edge.sagepub.com/harris1e

# using the full file path
nhanes <- read.csv("~/Box/teaching/Teaching/Fall2020/week-1/data/nhanes_2013_ch1.csv")

# setting the working directory and using a local path
# use menu Session -> Set Working Directory -> To Source File Location
# then use code to the local path (within the same folder as script file)
nhanes <- read.csv("data/nhanes_2013_ch1.csv")


# 2) Examine the data types for DUQ200, RIDAGEYR, and RIAGENDR, and
# fix data types if needed based on the NHANES codebook.



# 3) Based on the online NHANES codebook, code missing values 
# appropriately for DUQ200, RIDAGEYR, and RIAGENDR.



# 4) Create a bar chart showing the percentage of NHANES participants
# answering yes and no to marijuana use.


# 5) Recode age into a new variable called age.cat with 4 
# categories: 18-29, 30-39, 40-49, 50-59.



# 6) Create a bar chart of marijuana use by age group and sex with 
# side-by-side bars. 


# 7) Add a prolog and comments to your code.


# 8) Following the R code in your code file, use comments to describe
# what you found. Given what you found and the information in the 
# chapter, what do you predict will happen with marijuana legalization in 
# the next 10 years? Discuss how the omission of older people from the
# marijuana use question for NHANES influenced your prediction. Write your
# prediction and discussion in comments at the end of your code file. 