
# a
college <- read.csv("https://www.statlearning.com/s/College.csv")
View(college)

# b
rownames(college) <- college[, 1]
View(college)

college <- college[, -1]
View(college)

# c

# i. summarize
summary(college)

## ii. pairs
pairs(college[ , 2:10])
