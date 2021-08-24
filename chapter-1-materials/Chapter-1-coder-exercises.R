################PROLOG#####################
# Project: 
# Purpose: 
# Author: 
# Edit date: 
# Data: 2013-2014 NHANES data, codebook at
#       https://www.cdc.gov/nchs/nhanes/index.htm
###########################################

# 1) Open the 2013-2014 NHANES data file saved as nhanes_2013_ch1.csv

# Choose one of the ways of importing data and delete the others 

# import  method 1
# bring in directly from the internet (most reproducible but also most time consuming during the import)
temp <- tempfile(fileext = ".zip")
download.file(url = "https://edge.sagepub.com/system/files/datasets_7.zip", destfile = temp)
nhanes <- read.csv(unz(temp, "Datasets/data/nhanes_2013_ch1.csv"))

# import method 2
# save data file locally on your computer and use the full file path
nhanes <- read.csv("[full file path goes here]/nhanes_2013_ch1.csv")

# import method 3
# save data file locally on your computer and set the working directory
# so you don't need the full file path
# use menu Session -> Set Working Directory -> To Source File Location
# make sure the data file is in the same folder as this code file
# OK TO USE IF NECESSARY, BUT BETTER TO FIGURE OUT ONE OF THE OTHER METHODS
nhanes <- read.csv("nhanes_2013_ch1.csv")


# 2) Examine the data types for DUQ200, RIDAGEYR, and RIAGENDR, and
# fix data types if needed based on the NHANES codebook. 



# 3) Based on the online NHANES codebook, code missing values 
# appropriately for DUQ200, RIDAGEYR, and RIAGENDR.



# 4) Create a bar chart showing the percentage of NHANES participants
# answering yes and no to marijuana use.


# 5) Recode age into a new variable called age.cat with 4 
# categories: 18-29, 30-39, 40-49, 50-59.



# 6) Create a bar chart of marijuana use by age group. 


# 7) Add a prolog and comments to your code.


# 8) Following the R code in your code file, use comments to describe
# what you found. Given what you found and the information in the 
# chapter, what do you predict will happen with marijuana legalization in 
# the next 10 years? Discuss how the omission of older people from the
# marijuana use question for NHANES influenced your prediction. Write your
# prediction and discussion in comments at the end of your code file. 