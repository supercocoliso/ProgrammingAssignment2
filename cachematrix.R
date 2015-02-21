## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(data) {
		x <<- data
		inverse <<- NULL
	}
	list(set=set)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

test <- function() {
	data <- makeCacheMatrix()
	data$set(matrix(1:16,nrow=4))	
}
