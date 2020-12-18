# DATA TYPES IN R

# Data Types : Nominal, Ordinal, Interval, Ratio (NOIR)
# Self(NOIR); For System: Numeric, Character, Date, Logical, Vector

# DATA TYPES
x = 10
class(x) #Checking class of variable 'x'

#Numeric: Integer, Decimal(float)
i = 5L # L implies i is an integer value
i
class(i)
is.integer(i) #checks if the value stored in a variable is integer. Returns True or False
is.numeric(x) #Checks if value stored is numeric data type

#Character - Categorical Variable (NOMINAL)- Words/string ; Classification(ORDINAL) - (Gender:M/F; Edu Qualification: UG/PG/PhD)
s = "Madrid" #Characters have to be write in quotations
class(s)
#Levels of Classification: Edu Qualification - X,Xii,UG,PG (4 Levels)
#Categorical Variable = NOMINAL
#Classification = ORDINAL

#Logical = TRUE(1)/FALSE(0)
TRUE*5 #True takes the value 5
FALSE*5 #False takes value 0

k = TRUE
class(k) #check class of k
is.logical(k) #checking if K is logical data type

#Date - Starting Date(1970) has a numeric value
#In R - starting date is Jan 1' 1970
#Date format - dd/mm/yyyy
#POSIXct - gives date and time

date1 = as.Date("2020/12/16") #Assigning date to date1 entered in yyyy/mm/dd
date1
class(date1)
as.numeric(date1) #finding the numeric value corresponding to date1

#POSIXct
date2=as.POSIXct("2020/12/16 23:52") #entering value for date2
date2
class(date2) #class of date2
as.POSIXct(date2)
as.numeric(date2) #numeric value of date2
