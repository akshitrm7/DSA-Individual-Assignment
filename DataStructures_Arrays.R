# DATA STRUCTURES - ARRAYS

#Arrays - n dimensional vector
#First element is Row(R), Second element is Column(C) & Remaining elements are called Outer Dimensions(OD)

a = array(1:12, dim=c(2,3,2)) #Total Elements = R x C x OD
a
a[1,,] #Accessing elements from Row1 & elements of all columns and all outer dimensions
a[1, ,] #Accessing all elements from Row 1, all columns, all outer dimensions & build C x OD (R x C)
a[1, ,1] #Accessing all elements from Row 1, all columns & first outer dimension 
a[, ,1] #Accessing all rows, all columns & first outer dimension

# Array with Four Outer Dimensions (OD)
a_4D = array(1:32, dim=c(2,4,4))
a_4D
a_4D [1, ,] #Accessing all elements from Row1 and all other columns and outer dimensions
a_4D[1, ,1] #Accessing elements of Row1 and first outer dimensions and all columns 
a[, ,1] #Accessing all elements of rows and columns and first outer dimension
