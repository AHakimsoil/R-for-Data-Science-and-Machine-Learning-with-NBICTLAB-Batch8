#vectors in R- Vectors are 1-dimensional data structures that contain only one type of data (eg. all entries must have the same mode). To create a vector in R one can use the function c()
# Vectors is a data structure 
#Creating a vector using the c() command

student.height = c(60, 69, 55, 62)
student_height = c(60, 69, 55, 62)
student.height

#checking the class of the vector of student.height
 
is.numeric(student.height)
is.logical(student.height)

# R automatically converts numeric to text 
#when you have a text item in the the vector

class(student.height)

b = c(5, 8, 2, "sv") # autoconversion of data type
class(b)
b

is.numeric(b)
is.character(b)


#we can convert data types
#For example from numeric to character

a = c(1, 2, 3, 4, 5, 6, 9)
class(a)
is.numeric(a)
as.character(a)   #to convert a numeric to character
class(a)
a= as.character(a) #storage of as.character (a) into a and then changes to character
class(a)

# logical operator TRUE and FALSE when converted
# to numeric TRUE converts to 1, 
# and FALSE converts to zero

d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

# converting numeric to logical
# those numeric are 1 converted to TRUE, and Zero will convert to FALSE
# 1 or any number other than zero convert to TRUE and Zero only will be FALSE

d
class(d)
d = as.logical(d)
d

e = c(1, 0, 0, 1, 0, 23, -7, 0)
e = as.logical(e)
e

# Creating sequential vector
# Creating a vector starting from 1 to 10

my_seq = c(1:10)
my_seq
my_seq = c(1:100)
my_seq
my_seq = c(1:50, 80, 99, 88, 60, 77, 71, 77, 61, 92, 97)
my_seq

# Creating a sequential vector using the seq() function

new_seq = c(seq(1,10))
new_seq

#sequence in steps of 3

new_seq = c(seq(1,10, by=3))
new_seq

#vectors can have character

names = c("Elias", "Mahfuza", "Chaitali", "Ashraf", "wrtfr")
names
class(names)
names[2]
names[1:2]
names[3:4]


# Assigning names to vector values

my_values = c(4, 7, 9, 11)
names(my_values) = c("a", "b", "c", "d")
my_values
my_values["c"]

#close




