## Put comments here that give an overall description of what your
## functions do
##first function create  a special matrix that can cache its inverse
## second function checks if inverse is present in cache or not.If present then returned else calculated and cached and returned
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function
##function to check if inverse present in cache or not and calculate store and return inverse if not present
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
