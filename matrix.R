# Matrix 

# Vectors chapter we have learned about the atomic vectors and that they build the base for more complex objects.
# The next level of complexity are arrays and matrices. An array is a multi-dimensional extension of a vector.
# the special case that the array has only two dimensions, this array is also called a matrix.

#   Important aspects of matrices in R:

#   Arrays are based on atomic vectors.
#   A matrix is a special array with two dimensions.
#   Matrices can only contain data of one type (like vectors).
#   Matrices always also have a length (number of elements).
#   In addition to vectors, matrices have an additional dimension attribute (dim()) which vectors don’t have.
#   As vectors, matrices can have names (row and column names; optional attribute).

# To create a matrix containing a constant value of 999L (data = 999L) with two rows (nrow = 2) and three columns (ncol = 3)

(x <- matrix(data = 999L, nrow = 2, ncol = 3))

# We can now check the dimension of the object using dim(). dim() always returns an integer vector with two elements (for matrices). 
# The first corresponds to the number of rows (first dimension), 
# the second entry to the number of columns (second dimension). 

dim(x)


# 
c("rows" = dim(x)[1], "columns" = dim(x)[2])

# matrices always have a length. Matrices are based on atomic vectors, the length is nothing else than the number of elements of the underlying vector. When checking the matrix x from above, which is of dimension  
# 2 × 3 we get 6 as the matrix (and thus the underlying atomic vector) contain 6 elements. This is nothing else than the number of rows times the number of columns.

length(x)  

# or  

nrow(x) * ncol(x)  

# Matrix-to-vector
# As all matrices (and arrays) are based on vectors, we can use explicit coercion to convert them back and forth. 
# Let us take our matrix x and explicit coercion to convert it into a vector (as.vector())

(y <- as.vector(x))
length(y)
typeof(y)
mode(y)

(newMatrix = matrix(randomIntegerVector,  # data
                    nrow = 8,             # number of rows
                    ncol = 2,             # number of columns
                    byrow = TRUE))        # create matrix by rows

(colorMatrix = matrix(favColors, 
                      nrow = 3,
                      ncol = 3,
                      byrow = TRUE))


rName = c ('R1','R2','R3','R4','R5')      
cName = c ('Name','age','class','first-name','last-name')

(seqMatrix = matrix(
  seq(from = 12, to = 300 , by = 12),
  nrow = 5,
  ncol = 5,
  byrow= TRUE,
  dimnames = list(rName,cName)))

( newInt = 10 )

 
# getting rows
(firstRow = seqMatrix[1,])

# getting columns
(firstColumn = seqMatrix[,1])

# getting sub matrix
(subMatrix = seqMatrix[2:3, 3:4])

# 	Return first few rows.
(head(seqMatrix))

# tail()	Return last few rows.
(tail(seqMatrix))

# summary(x)	Numerical summary of the matrix (column-wise).
summary(seqMatrix)

# replacing the values
(seqMatrix[2,3] = 10000)
(seqMatrix)

# replacing the columns and rows

# replacing columns
(seqMatrix[,2] = c(1,2,3,4,5))
(seqMatrix)

# replacing rows

(seqMatrix[1,] = c(1,2,3,4,5))
(seqMatrix)

# replacing the values in the matrix

seqMatrix[seqMatrix == 2] <- 999
(seqMatrix)

# insert column in the matrix
sixColumnMatrix = cbind(seqMatrix,c(0,0,0,0,0))
(sixColumnMatrix)

# insert rows in the matrix
sixRowsMatrix = rbind(seqMatrix, c(0,0,0,0,0))
(sixRowsMatrix)


# Mathematical operations in the matrix

(x <- matrix(1:4, ncol = 2))
# Add 2 to each element
x + 2

x * 1.5        
# Multiply each element by 1.5

# addition of matrix

firstMatrix = matrix(c(1,2,3,4) , nrow = 2, ncol = 2 , byrow = TRUE)
  
secondmatrix = matrix(c(4,3,2,1) , nrow = 2, ncol = 2 , byrow = TRUE)
sumMatrix = firstMatrix + secondmatrix
(sumMatrix)

diffrenceMatrix = firstMatrix - secondmatrix;
(diffrenceMatrix)

productMatrix = firstMatrix * secondmatrix
(productMatrix)

divisionMatrix = firstMatrix / secondmatrix
(divisionMatrix)