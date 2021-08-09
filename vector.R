# Creating vectors

x <- c(1.5, 1000, 0.1)
print(x)
# creates a numeric vector of length 3 with the three elements 1.5, 1000, and 0.1


y <- c("Austria", "Tyrol", "Innsbruck")
# create vectors of other types, e.g., a character vector with three elements

# c() can be used to combine (one or) multiple elements to a new vector.
z <- c(x, y)
print(z)

length(z)
# gives the length of the vector
# examples

var_x <- c(0.5, 0.6, 0.7)            # double
var_x <- c(TRUE, FALSE, TRUE)        # logical
var_x <- c(T, F, T)                  # logical (!!!)
var_x <- c("a", "b", "c")            # character
var_x <- c(1L, 2L, 3L, 4L)           # integer
var_x <- 15:20                       # integer
var_x <- c(1+0i, 2+4i, 5+2i)         # complex


# Function vector()
# An alternative way to create a vector of a specific type and length is the function vector(). vector() requires two input arguments, namely the type of the vector (or ‘mode’) and the length of the vector.

# Double (numeric) vector of length 5
vector("double", length = 5)

# Character vector of length 3
vector("character", length = 3)


# Numeric sequences
# Regular sequences can be created using the function seq() and its shortcuts seq.int(), seq_along(), and seq_len().

# Equidistant numeric sequence
seq(from = 1.5, to = 2.5, length.out = 5)  # Specify length

seq(from = 4, to = -4, by = -0.5)          # Specify increment/interval

# Explicitly define from/to/by as integers
(x <- seq(from = 10L, to = 100L, by = 10L))

class(x)

# Sequence from 1:4
(x <- 1:4)

class(x)
## [1] "integer"

# Sequence from 30:25 (decreasing)
(y <- 30:25)
## [1] 30 29 28 27 26 25
class(y)
## [1] "integer"

# To be able to use seq_along() we need an object along which we would like to create the integer sequence. Let us assume we have a character vector cities (see below), seq_along() will return a sequence counting from 1 up to the number of elements in names.
# Create character vector 'cities'
cities <- c("Vienna", "Paris", "Berlin", "Rome", "Bern")
seq_along(cities)

# seq_len() simply creates an integer sequence from 1L to n:
seq_len(10)

# Character Sequences: If you need the letters of the alphabet, there are two convenient vectors which are available globally called LETTERS and letters. LETTERS contains the alphabet (no special characters) in upper case letters ("A", "B", …), letters the same in lower case letters ("a", "b", …). This can be used if one just wants to have some random character values.

# First 7 letters of the alphabet (uppercase)
LETTERS[1:7]

# First 7 letters of the alphabet (lowercase)
letters[1:7]

# Replicating elements
# Replicate can be used for all vectors, no matter if they are numeric, integer, character, or logical. The rep() function can be used in different ways:

rep(2L, 5)                # Case (1)
## [1] 2 2 2 2 2

cities <- c("Vienna", "Bern", "Rome")
rep(cities, each = 3)     # Case (2)

rep(cities, times = 3)    # Case (3)

rep(cities, times = c(3, 2, 5))

rep_len(c(4, 5, 6), length.out = 5)    # Resulting vector has length 5
rep_len(c(4, 5, 6), length.out = 9)    # Resulting vector has length 9

# Explicit coercion
# perform explicit coercion where we as users decide in which type/class the data should be converted.

# A range of as.*() functions allows us to explicitly convert values between different classes. E.g., as.character(1.42) will convert the numeric value 1.42 into a character "1.42". A wide range of different as.*() functions exist such as:

#   as.integer()
#   as.numeric()
#   as.character()
#   as.logical()
#   as.matrix()

# let `x` be an integer vector
# with elements 0, 1, 2, 3, 4.
(x <- 0:4)

# Coerce to character
as.character(x)

# Coerce to logical
as.logical(x)

# Missing values
# If R is not able to convert elements, it will return NA

# let `x` be a character vector
(x <- c("a", "b", "c", "d"))

# Coerce to integer
as.integer(x)

#   [1] NA NA NA NA
#   Warning message:
#   NAs introduced by coercion 

# But ...
x <- c("1", "100", "a", "b", "33")
as.integer(x)





