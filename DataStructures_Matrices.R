# DATA STRUCTURES - MATRICES

#Creating a matrix
A = matrix(1:10,nrow = 5) #Creates 5*2 matrix. Value after ',' is for number of rows
A
B = matrix(21:30,5) #Creates 5*2 matrix
B
C = matrix(21:40,2) #Creates 2*10 matrix
C

nrow(A) #Gives no. of rows in Matrix A
ncol(C) #Gives no. of columns in Matrix C
dim(A) #Dimensions of Matrix A

A + B #Sum of Matrices A&B
A*B #Product of Matrices A&B. 
#In R matrices are slightly different from the general matrices. For product of two matrices it multiplies elements in corresponding positions
#A*C gives an error. For multiplication they must be of same dimensions

A == B #Checks if Matrices A&B are equal

#Matrix Multiplication (the one we know of)
A %*% t(B) #5*2 x 2*5 gives 5*5. Matrix multiplication symbol is %*%

colnames(A) #Gives the col names of matrix A
colnames(A) = c("Col1","Col2") #Assigning col names for matrix A
colnames(A)
rownames(A) #Checks row names of A
rownames(A) = c("row1","row2","row3","row4","row5") #Assigning row names to A
rownames(A)
colnames(B) = c("One","Two") 
rownames(B) = c("1","2","3","4","5")
colnames(C) = LETTERS[1:10]
rownames(C) = c("Top","Bottom")
colnames(A)
rownames(A)
colnames(B)
rownames(B)
colnames(C)
rownames(C)