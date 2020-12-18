# DATA STRUCTURES - DATA FRAME

# Dataframe - collection of vectors of equal length
# It is like different columns of same data type. Columns with a vector
# It can store any data type but inside a column(vector) the data type of all elements must be same

#Creating DATAFRAME from vectors

x = 10:1 #Assigning values to x
y = -4:5 #Assigning values to y
length(x) #Checking length of x
length(y) #Checking length of y
q = c("Hockey","Football","Baseball","Curlin","Rugby","Lacrosse","Basketball","Tennis","Cricket","Soccer") #Assigning values to q
length(q) #Checking length of q

thedf = data.frame(x,y,q) #This creates a 10*3 data frame(10 rows & 3 columns) with x,y,q as the variables or column names
thedf #Executing the dataframe to view its contents
str(thedf) #Structure of the dataframe. Gives info about the data types of each vector
q = as.factor(q) #Converting q to factor variable
str(thedf)

thedf = data.frame(First = x, Second = y, Sport = q) #Assigning names to the column names
thedf

#Checking dimensions of the dataframe
nrow(thedf) #Checking number of rows in the dataframe
ncol(thedf) #Checking number of columns in the dataframe
dim(thedf) #Dimension of dataframs. Returns rows*columns
names(thedf) #Returns the names of the columns
names(thedf) [3] #Returns name of the column in the position mentioned in square bracket
rownames(thedf) #Gives serial no. of the rows

#Head and Tail
head(thedf) #Head displays the first 6 rows
tail(thedf) # Tail command displays last six rows
head(thedf, 7) #No. of rows to be displayed can be specified
class(thedf) 

#Accessing Individual Columns using '$'
thedf$Sport #Using $ specific column can be accessed
thedf$First

#Accessing Specific Row and Column
thedf[3,2] #3rd Row & 2nd Column
thedf[3,2:3] #3rd row & 2nd to 3th column
thedf[c(3,5), 2:3] #3rd and 5th row, 2nd and 3rd column
thedf[,3] #All rows and 3rd column
thedf[4,] #4th row of all columns
thedf[,1:2] #All rows of col 1&2
thedf[2:7,] #Rows 2 to 7 of all columns
thedf[,c("First","Sport")] #All rows of col 1&3. Can also be accessed using the col names
thedf[,"Second"] #Single col can also be accessed using col. name
thedf["Second"] #Without mentioning the row, even this returns all rows in the column - second
class(thedf["Second"]) #Even though the vector Second has numeric data once it is part of dataframe, the class of a single column is also a dataframe


newFactor = factor(c("Pennsylvania","New York","New Jersey","New York","Tennessee","Massachusetts","Pennsylvania","New York"))
newFactor #Factors can be directly created

