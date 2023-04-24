
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


### iii. Use the plot() function to produce side-by-side boxplots of Outstate versus Private
str(college)
boxplot(college$Outstate ~ college$Private, col = c("orange", "green"), main = "Outstate versus Private", xlab = "Private", ylab = "Outstate")

#### iv.
Elite <- rep("No", nrow(college))
Elite[college$Top10perc > 50] <- "Yes"
Elite <- as.factor(Elite)
college <- data.frame(college, Elite)

# summary
summary(college$Elite)

# plot function
boxplot(college$Outstate ~ college$Elite, col = c("orange", "green"), main = "Outstate versus Private", xlab = "Private", ylab = "Outstate")
