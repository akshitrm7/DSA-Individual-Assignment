# HYPOTHESIS TESTING 

# T-tests

data(tips, package = "reshape2") #Creating dataset
head(tips) #First 6 rows
str(tips) #Structure of the dataset
write.csv(tips, "C:\Users\akshi\Desktop\IMT\Term 2\Data Science and Analytics\Individual Assignment/tips.csv", row.names = FALSE) #Creating a csv file. row names= false means it will not name the rows as 1 2 3 etc. 

# Gender
unique(tips$sex) #Returns the unique values in a column of the dataset
#Day of the week
unique(tips$day)

#One Sample t-test - ONE GROUP. Two Tail T-test. H0: Mean = 2.5. Ha: Mean not equals 2.5
t.test(tips$tip, alternative = "two.sided", mu=2.5)

#One Sample t-test - Upper Tail. Ho:Mean LE 2.5
t.test(tips$tip, alternative = "greater", mu=2.5)

# Two Sample T-test - TWO GROUP
t.test(tip ~ sex, data = tips, var.equal = TRUE)

#Paired Two-Sample T-Test 
# Dataset: Heights of Father and Son (Package:UsingR)
install.packages("UsingR")
require(UsingR)
head(father.son) #First 6 rows from the dataset
write.csv(father.son, "C:/Users/akshi/Desktop/IMT/Term 2/Data Science and Analytics/Individual Assignment/father_son.csv", row.names = FALSE)
# H0 Null Hypothesis is the difference in height = 0
t.test(father.son$fheight,father.son$sheight,paired=TRUE) #Running t-test on this sample
#H0 is rejected as the p value < Alpha value. 

#ANOVA  - Comparing Multiple Groups
# Tip by the Day of the Week
str(tips) #Structure of the dataset tips
tipAnova = aov(tip ~ day, tips) 
summary(tipAnova) #Gives info on the degrees of freedom, f value, sum of squares and mean of sum of squares
#H0 is accepted. Average tips across 4 days are equal