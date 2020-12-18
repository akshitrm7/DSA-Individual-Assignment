# FUNCTIONS IN R

#Creating a Division function
divider = function(x,y){
  result = x/y
  print(result)
}
divider(75,25) #Executing the function

#Multiplication Function
multiply = function(a,b){
  c = a*b
  print(c)
}
multiply(15,8) #Running multiply function

#Variables are case sensitive
M = 7
m = 10
M*m 

#Concatenation & Arrays
f = c(1,2,3,4,5) #Storing multiple values in single variable
f+4 # Adding 4 to 'f' will add 4 to all the values stored in 'f'
d = f/4 #Storing values in variable 'd'
d
f+d #Sum of 'f' and 'd'
ls() #Gives all the variables created in this session
rm(d) #Removes variable 'd'
rm(list = ls()) #Removes all created variables
ls()
