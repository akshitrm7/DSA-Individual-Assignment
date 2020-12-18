# INTRODUCTION TO VECTORS IN R

#Vectors in R
#Arrays and Matrices
#Arrays - n dimensional collection of similar objects
#Matrices - 2 dimensional collection of similar objects. subset of arrays

v = c(1,2,3,4,5) #vector
s = v*2 #Vector multiplication
s
#Vector is a collection of elements of same type(numeric,character etc.)
#Any operation on a vector is applied to all the elements of the vector
d = v-2 #vector subtraction 
v-d
sqrt(v) #square root of vector 'v'

x = c(1,2,3,4,5,6,7,8,9)
#Vector operations
x+2
x*3
x/4
sqrt(x)

# Sequencing; Using ':'. Create sequence of numbers in either direction
1:10 #Sequence of numbers from 1 to 10
10:1 #Sequence of numbers from 10 to 1
5:-7 #Sequence of numbers from 5 to -7

#Vector Operations of Two Vectors
x = 1:10 #Sequence 1 to 10 stored in x
y = -5:4 #Sequence -5 to 4 stored in y
x+y #sum of two vectors
x-y #difference between two vectors
x*y #Product of two vector
x/y #Division of two vectors
# the number of elements in both vectors must be same for above operations

#Length of vector
length(x) #Tells the numnber of elements in the vector
z = 1:100
z*2
#[1],[30],[59],[88] before start of each line in the console is the index of the first element in that line
length(x)
length(y)

#Unequal length vectors
x+c(1,2) #Shorter vector gets repeated. length of longer vector must be a multiple of the length of the shorter vector
x+c(1,2,3) # even now it adds but gives a warning message

#Comparison of vectors
x<5 #compares each element and returns T/F
x<y #compares corresponding elements
x>=y

# Vector Comparison 'ANY' 'ALL'; Any/all elements of x less than any/all element of y; 
any(x<y) #Checks if any element of x less than corresponding element in y 
a=10:1
b=-4:5
any(a<b) #Checks if any element of a less than b
all(a<b) #Checks if all elements of a less than b

# The "nchar" function also acts on each element of vector
q = c("Hockey", "Football", "Baseball", "Basketball", "Rugby","Soccer","Lacrosse","Curlin","Tennis","Cricket")
nchar(q) #Gives number of characters in each element
nchar(a) #For an integer gives number of digits in the number
length(q) #For a vector the length operator returns number of elements in the vector
#Subscripting: Accessing "individual elements" in vector is done using []
x[1] #First element in vector x
x[6] #Sixth element in vector x
y[3] #Third element in vector y
a[2] #Second element in vector a
q[2] #Second element in vector q
x[2:5] # Values from position 2 to 5
x[c(2,5)] #Values at position 2 & 5
x[c(1:5,9)] #Values from position 1 to 5 and at 9

#Give names to vectors
c(one = 'a', twp = 'y', last = 'r')
#You can name the vector after it has been created as well
w=1:3
w
names(w) = c("a","b","c") #Giving names to vector w
w
