## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates aspecial "matrix" thatcan cache its inverse
## The inverse is given a name as "I"
##The special matrix is named as "x"
makeCacheMatrix <- function(x = matrix()) {
I <- NULL
   set <- function(y) {
   x <<- y
   I <<- NULL
  }

get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set,
     get = get,
     setinverse = setinverse
     getinverse = getinverse
}


## Write a short comment describing this function
## This function computes the inverse of x that is provided by the makeCacheMatrix function above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}

