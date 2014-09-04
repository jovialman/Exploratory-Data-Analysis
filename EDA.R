# check the working directory
getwd()

# importing data
data <- read.csv("bank-data.csv", header = T)

# let us explore the data set a bit
View(data)  # allows us to view the data set
names(data)  # names of the variables 
dim(data)  # dimension (number of rows and columns)
str(data)  # structure of the data set
class(data)  # type of data
head(data, n = 5)  # displays the first 5 rows 
tail(data, n = 5)  # displays the last 5 rows

# testing for missing values
is.na(data)

# loading required libraries
library(Hmisc)
library(pastecs)
library(psych)

# summary statistics for the whole data set
summary(data)

# subsetting the required variables
var <- c("age", "marital", "education", "housing")
eda_data <- data[var]
names(eda_data)

# summary statistics for the age variable
summary(eda_data$age)
fivenum(eda_data$age)
describe(eda_data$age)
stat.desc(eda_data$age)

# graphical techniques
# histogram
hist(eda_data$age,
     main = "Histogram of Age",
     xlab = "Age in Years")

# boxplot
boxplot(eda_data$age,
        main = toupper("Boxplot of Age"),
        ylab = "Age in years",
        col = "blue")

# kernel density plot
d <- density(eda_data$age)
plot(d)
plot(d, main = "Kernel density of Age")
polygon(d, col = "red", border = "blue")

