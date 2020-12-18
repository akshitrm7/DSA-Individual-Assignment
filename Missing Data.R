# MISSING DATA NULL & NA

#Missing data plays a crucial role in Computing and Statistics
# R has two types of missing data "NA", "NULL" 
# even though they are similar they behave differently

# NA - Missing Data - Missing value
z = c(1,2,NA,8,3,NA,3)
z
#"is.na" tests each element of a vector for missingness
is.na(z) #Checks if data is missing

z_char = c("Hockey",NA,"Football")
is.na(z_char) #Can be checked for all data types

x=c(1,NA,2)
y=c(1,NULL,2)
x #NA exists withing a vector
y #NULL does not exist within a vector
length(x)
length(y)
# Notice the NULL didnt get stored in "y" 

# Assigning NULL and checking
d = NULL #Assigning NULL to d
is.null(d) #Checking if d is NULL
is.na(x) #Checking if x is NA. All elements are checked
is.null(y)#Checks if y is NULL. Even if a single element is not NULL then y is not NULL
