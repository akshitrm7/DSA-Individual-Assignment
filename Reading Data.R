# READING DATA FROM A FILE

# Reading CSV Files

theURL = "https://www.jaredlander.com/data/Tomato%20First.csv" #Copying the url of the dataset
tomato = read.table(file=theURL,header=TRUE,sep=',') #Reading the dataset
head(tomato) #Head displays first 6 rows of the dataset
tomato #Displaying the entire dataset
Garden = read.table("C:\\Users\\akshi\\Desktop\\IMT\\Term 2\\Data Science and Analytics\\t.test.data.txt",header = TRUE, sep = "") #Reading data from a text file. Entering the path to the file
Garden = read.table(file.choose()) #Command to directly select the file instead of entering the path to the file
head(Garden) #displays the first 6 rows of the data set

#Save the tomato file to memory as r data file
save(tomato, file="C:\\Users\\akshi\\Desktop\\IMT\\Term 2\\Data Science and Analytics\\tomato.rdata")

#Remove rdata file from memory
rm(tomato)
tomato #Checking if it is deleted
load("C:\\Users\\akshi\\Desktop\\IMT\\Term 2\\Data Science and Analytics\\tomato.rdata") #Loading the file 
tomato #Checking if the file has been loaded

