#BASIC STATISTICS : MEAN, VARIANCE, CORRELATION, T-TEST

# Generating random sample of size 50 b/w 1 to 100
x = sample(x=1:100,size=50,replace = TRUE) #Replace = true means the same value can be repeated
x #Displays the random samplw. It is stored in a vector


#Arithmetic Mean
mean(x)

# Calculate Mean when Missing Data is found
y = x #Copying x into y
y = sample(x,size=20,replace=FALSE) #selects 20 random numbers from values stored in x
y

mean(y) #Average of y

mean(y, na.rm=TRUE) #This calculates the mean of y after removing any missing values

# Weighted Mean
Grades = c(95,72,87,66)
Weights = c(1/2, 1/4, 1/8, 1/8)
mean(Grades) # Gives Simple Arithmetic mean
weighted.mean(Grades,Weights) #Weighted arithmetic mean

#Variance
var(x)
#Calculating Variance using formula
sum((x-mean(x))^2)/(length(x)-1)

# Standard Deviation
sqrt(var(x)) #Square root of variance
sd(x) #directly using std dev function
sd(y)

# Other Commonly Used Functions
min(x) #Finds the minimum value in x
max(x) #Finds the maximum value in x
median(x) #Finds the median of x

# Summary Statistics
summary(x) #Summary gives info on the min, max value, median, mean, first & third quartile
summary(y)

# Quantiles
quantile(x, probs = c(0.25,0.75)) # Calculates the 25th and 75th quantile. Probs means probability value
quantile(x, probs = c(0.1,0.25,0.5, 0.75,0.99))

# Correlation and Covariance
install.packages("ggplot2")
library(ggplot2)# require(ggplot2)
head(economics)# Built-in dataset in ggplot2 package
cor(economics$pce, economics$psavert) #Correlation between the pce & psavert columns in economics dataset

# Correlation between multiple variables
cor(economics[,c(2,4:6)]) #rows field left blank means will take values from all rows. for columns using combine taking columns 2,4,5,6

# Display Correlation in Different Format!

# Lets install the required package and load them onto this R environment for executing!!!

# Load the "reshape" package
install.packages("reshape2")
require(reshape2)
# Also load the Scales package for some extra plotting features
install.packages("scales")
library(scales)

econCor = cor(economics [ , c(2,4:6)])
# use "melt()" to change into long format
?melt() # Help on melt function
econMelt = melt(econCor, varnames = c("x" ,"y"), value.name = "Correlation")
# Order it according to correlation
econMelt = econMelt[order(econMelt$Correlation),]
# Display the melted data
econMelt

# Plot it with ggplot
# Initialize the plot with x and y on the respective axes
ggplot(econMelt,aes (x=x, y=y),geom_tile(aes(fill = Correlation)),scale_fill_gradient2(low = muted("red"), mid = "white", high = "steelblue",guide = guide_colorbar(ticks=FALSE, barheight=10), limit=c(-1,1), theme_minimal(), labs(x= NULL, y=NULL)))
