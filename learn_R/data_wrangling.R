# install tidyverse make R using easily,
# leaving this line make other people easier
# to know the packages have been installed.
# install.packages("tidyverse")

# show binary packages in your computer
.libPaths()

library(tidyverse)

# tidyverse use tibble which is similar to dataframe, but more easily use
setwd("home/zixsa/learn_R/learn_R")
load("Apple_Mobility_Data.Rdata")
View(apple_data)

# filter through rows
brazil_data <- filter(apple_data, region == "Brazil")
View(brazil_data)

# select column
regions <- select(apple_data, region)
View(regions)

# count transportation_type of apple_data by grouping individual value
transport_types <- count(apple_data, transportation_type)
View(transport_types)

# create dataframe which be sorted by regon in different alphabetical order
alpha_order <- arrange(apple_data, region)
View(alpha_order)

# wide means lots of columns, long means lots of rows
# date with back tick which means name of columns
long_apple_data <- gather(apple_data, key = day, value = mobility_data, `2020-01-13`:`2020-08-20`)
View(long_apple_data)

test_apple_data <- gather(apple_data, key = region, value = day, `2020-01-13`:`2020-08-20`)
View(test_apple_data)
