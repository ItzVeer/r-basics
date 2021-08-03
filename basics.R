# R progrramming - 
#   Data types

#   Variable Types
#   •	character – Strings
#   •	integer – Integers
#   •	numeric – Integers + Fractions
#   •	factor – Categorical variable where each level is a category
#   •	logical – Boolean
#   •	complex – Complex numbers

v <- TRUE 
print(class(v))
# "logical"

v <- 23.5
print(class(v))
# "numeric"

v <- 2L
print(class(v))
# "integer"

v <- 2+5i
print(class(v))
# "complex"

v <- "TRUE"
print(class(v))
# "character"


v <- charToRaw("Hello")
print(v)
print(class(v))
print(mode(v))


if(class(v) == 'raw'){
  print("Inside if loop")
}

# Arthematic operations
# Sum
sumOfWholeNo = 10 + 43
print(sumOfWholeNo)

# Difference
diffrenceOfNo = 20 -43
print(diffrenceOfNo)

# product
productOfNo = 130 * 450
print(productOfNo)

# dividend
dividendOfNo = 239/21
print(dividendOfNo)

# squaring the number
squaredNumber = 4 ** 3
print(squaredNumber)

# variable is removed
rm(squaredNumber)
print(squaredNumber)
help(print)

# reassigning the variable
squaredNumber = 20
print(squaredNumber)

# getting examples
example(print)

example(class)

# storing data in the array
arrayOfInteger = c(1,2,3,16,27,33,41,32,67,100,-1,0,-2,-15)
arrayOfInteger < 50

randomNumberArr = c(11,23,13,43,51,63,57,81,95,101)
randomNumberArr > 35

# AND operator
randomNumberArr > 20 & randomNumberArr < 35

# OR operator
randomNumberArr < 20 | randomNumberArr > 35

# Division
# Dividend = (quotient * divisor) + reminder
#  it gives quotient
16 %/% 4

# it gives reminder
16 %% 4
21 %% 5

# with decimal response
21 / 5

# without decimal response
21 %/% 5

numberEg = 27

if(numberEg %% 2 == 0){
  print('Number is even')
}else{
  print('number is odd')
}




