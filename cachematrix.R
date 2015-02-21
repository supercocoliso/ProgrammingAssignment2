## Functions to invert a matrix. The inverse is cached instead of compute it repeatedly.


## Builder for matrix object. It is actually a list of functions:
##  set: sets the matrix
##  get: gets the matrix
##  setinverse: sets the inverted matrix
##  getinverse: gets the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(data) {
		x <<- data
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse)

}


## This function accepts a matrix object and returns the inverted matrix
## It first tests if the inverted matrix is present in the object.
##  If present, it does not calculate it again.
##  If absent, it calculates the inverted matrix and it stores it in the matrix object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("Getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}


## The following code contains and example of how to use this functions:
# data <- makeCacheMatrix(matrix(runif(16),nrow=4))
# cat("\nMatrix:\n")
# print(data$get())
# cat("\nInverting matrix...\n")
# cacheSolve(data)
# cat("\nInverting matrix again...\n")
# cacheSolve(data)
# cat("\nInverted matrix:\n")
# print(data$getinverse())

