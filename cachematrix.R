## Cache the inverse Matrix

## this function create an object that cache the inverve matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
      x <<- y
      inverse <<- NULL
    }
    get <- function() x
    set_inverse <- function(solve) inverse <<- solve
    get_inverse <- function() inverse
    list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
  
}


## This function calculate the inverse matrix for the object defined above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$get_inverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$set_inverse(inverse)
  inverse      
}
