# Data types in R
# 1. Numeric-Integer / Floating point 
# 2. String/Character - "Azizul Hakim"/ 'Azizul Hakim'
# 2. Logical

a = 11 #Ctrl+Enter to decelare a variable and store it
b = 7.19
class(a)
class(b)

name = "Azizul Hakim"
print(name)
class(name)

c = "52"
print(c+9)
print(a+9)
class(c)

# Logical Data Type - TRUE, FALSE (T, F)
a > b
class(a>b)
a<b
print(a>b)

x = 19  # = means assignment operator
y = 22-3
print(x == y) # == means equal
print(x!=y) # not eqaul to
print(y>x)
print(y>=x) #either equal or greater than, anyone is true 
print(y<=x)


# logical operator in R
# && logical operatoe
4== 4 && 5 == 5
# && operator only true return comes when both sides are true otherwise in anycase it is false
# || Logical operator
x !=y || x ==y #in any case || operator is true unless both sides are False


#simple mathematical operators in R


z = 6+9-8*(2/3)
print(z)

wa = 4+3-3*2/3
wb = 4+3-3*(2/3)
print(wb)

w = (4+3-3)*2/3
print(w)

y =4^3
print(y)

11/5
11%%5 # modulo operator
11%/%5 # division result without fraction or floating






