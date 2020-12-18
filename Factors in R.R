# FACTORS IN R

# Factor vectors - Ordinal data (Ordered categorical)
# Character data type: Nominal(Character); Ordinal(Factor) - character variable with levels
#NOMINAL = CHARACTER = UNORDERED
#ORDINAL = FACTOR = ORDERED

q = c("Hockey", "Football", "Baseball", "Basketball", "Rugby","Soccer","Lacrosse","Curlin","Tennis","Cricket")
q
q2 = c(q,'Hockey', 'Lacrosse','Hockey','Water Polo','Hockey','Lacrosse') #Adding elements to q2
q2 
q2_f = as.factor(q2) #Converting q2 to FACTOR type because it has levels
q2_f #It has 11 Levels. 10 levels in q and one new(water polo) from q2
class(q2) #Checking the class of q2
class(q2_f) #Checking class after converting q2 to factor
as.numeric(q2_f) #Returns position of each element after arranging it in ascending order
