my_object <- (2 / 4) * 3

MyVector <- c(1, 2, 3)

My_string_vector <- c("this", "is", "a", "vector")

mean(MyVector)

mean(My_string_vector)

# the index start from 1 not 0
MyVector[1]

# default location
setwd("/home/zixsa/learn_R/learn_R")
load("Coronavirus_Tweets.Rdata")
View(covid_tweets)

# show partition of datafrome
# (name of datafrome + $ + column name + row line number)
View(covid_tweets$tweet_text[3])
