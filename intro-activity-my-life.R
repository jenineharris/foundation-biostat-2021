###########################################
# Project title: My life in months
# Purpose: Plot where I've lived by the month
# Author: Jenine 
# Edit date: August 27, 2020
# Data: No external data files used
###########################################

# STEP 1: TYPE IN DATA

# the eras of my life (choose 10 or fewer)
# CHANGE THIS CODE TO YOUR ERAS
era <- c("Eugene, Oregon", 
         "Corvallis, Oregon", 
         "Eugene, Oregon 2",
         "Avignon, France", 
         "Eugene, Oregon 3",
         "Washington DC", 
         "Eugene, Oregon 4", 
         "Bend, Oregon", 
         "St. Louis, Missouri")

# the months I spent in each era (same number and order as eras)
# CHANGE THIS CODE TO YOUR MONTHS
months <- c(213, 
            21, 
            18,
            4, 
            12, 
            16, 
            67, 
            12, 
            245) 

# STEP 2: MAKE THE GRAPH

##############################
# GRAPH OPTION 1: THE WAFFLE (some operating systems don't like this package)
# open the waffle package (install first through Tools menu)
library(package = "waffle")

# the waffle plot requires the data to be in a table
# combine the vectors into a table
my_life <- as.table(setNames(object = months, nm = era))
my_life 

# make a waffle plot with each column showing 1 year
# MAKE SURE THE NUMBER OF COLORS IS THE SAME AS THE NUMBER OF 
# ERAS
# (OPTIONAL) CHANGE COLORS USING COLORBREWER2.ORG
waffle(parts = my_life, rows = 12, 
       colors = c("#a6cee3",
                  "#1f78b4",
                  "#b2df8a",
                  "#33a02c",
                  "#fb9a99",
                  "#e31a1c",
                  "#fdbf6f",
                  "#ff7f00",
                  "#cab2d6"))

###############################
# GRAPH OPTION 2: THE BAR GRAPH 
# open the tidyverse package (install first through Tools menu)
library(package = "tidyverse")

# the bar plot needs a data frame rather than a table
# combine the vectors into a data frame
my_life_df <- data.frame(era, months)
my_life_df$era <- factor(my_life_df$era, levels = my_life_df$era)

# make the plot
my_life_df %>% 
  ggplot(aes(x = era, y = months, fill = era)) +
  geom_col() +
  coord_flip() +
  theme_minimal() 

# WHEN FINISHED EDITING, HIGHLIGHT THE CODE AND CLICK "RUN"

