# DATA STRUCTURES - LISTS

# Lists stores data of all types
# It can store numeric, character, vectors, data frames, arrays etc.

# Lists are created with the "list" function.
# Each argument in "list" becomes an element of the list.

list(1,2,3) #creates a three element list. Each argument is an element of the list
list(c(1,2,3)) #Creates a list with single element which is a vector with 3 numbers
list1 = list(c(1,2,3), 3:7) #Creates list with two elements. First is a vector with 3 elements and other is a sequence from 3 to 7
list1

(list1 = list(c(1,2,3), 3:7)) #Writing it in small braces will automatically display the contents of the list

x = 10:1 
y = -4:5 
q = c("Hockey","Football","Baseball","Curlin","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer") #Assigning values to q

thedf = data.frame(x,y,q) #This creates a 10*3 data frame(10 rows & 3 columns) with x,y,q as the variables or column names
thedf #Executing the dataframe to view its contents


# Two Element list
list(thedf, 1:10) # First element is data.frame and next is 10 element vector

# Three element list
list2 = list(thedf, 1:10, list1) #First element is dataframe, second is vector with 10 elements and third is a list with 2 vectors
list2

#Naming List 
names(list2)= c("data.frame", "vector","list") #Element columns can be named in lists as well like in dataframes
names(list2)
list2
#Naming using "Name-Value" pair
list3 = list(TheDataFrame = thedf, TheVector = 1:10, TheList = list1) #Instead of usinf name function to assign it can also be done directly by assigning a name to the variable created
names(list3)
list3

emptylist = vector(mode='list', length = 5) # Creating an empty list
emptylist


# Accessing individual element of a list - Double Square Brackets
list2[[1]] #Access first element of list 2 which is dataframe
list2[["data.frame"]] #Can be accessed using the name assigned

# LENGTH OF LIST
length(list2) 
names(list2)
list2
