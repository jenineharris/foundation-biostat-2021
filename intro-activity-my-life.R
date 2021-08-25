################PROLOG#####################
# Project title: 
# Purpose: 
# Author:  
# Edit date: 
# Data: No external data files used
###########################################


# STEP 1: TYPE IN DATA

# the eras of my life (8 or fewer)
era <- c()

# the number of months I spent in each era (same number and order as eras)
months <- c()


# STEP 2: COMBINE THE DATA INTO A DATA FRAME

# combine the vectors into a data frame
my_life_df <- data.frame(era, months)

# explain to R that the era data should stay in order
my_life_df$era <- factor(my_life_df$era, levels = my_life_df$era)


# STEP 3: MAKE THE GRAPH


# Graph option 1: A bar graph
# open the tidyverse package (install first through Tools menu)
library(package = "tidyverse")

# make the plot
my_life_df %>% 
  ggplot(aes(x = era, y = months)) +
  geom_col() 


# Graph option 2: A waffle plot
# there is a package for making waffle plots
# some combos of R Studio & OS don't like it

# open waffle package (install first through Tools menu)
library(package = "waffle")

# make a waffle plot with each column showing 1 year
waffle(parts = my_life_df, rows = 12)


# Resources for doing more with your waffle and bar--
# Waffle: https://github.com/hrbrmstr/waffle
# Bar: https://ggplot2.tidyverse.org/reference/geom_bar.html
# Colors: https://colorbrewer2.org/
  
  


