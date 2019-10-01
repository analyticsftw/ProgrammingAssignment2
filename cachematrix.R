## Put comments here that give an overall description of what your
## functions do

## Stores a matrix and caches its invert
makeCacheMatrix <- function(x = matrix(c(1:4),2,2)) {
  # Pass x as "global variable"
  original_matrix <<- x
  
  # Solve the matrix and cache it
  cached_invert_matrix <<- solve(x)
}


## Write a short comment describing this function

cacheSolve <- function() {
  # Look for original matrix
  x = original_matrix
  # Test whether cached matrix exists
  if (!is.null(cached_invert_matrix)){
    # The matrix exists, return it
    message("Getting matrix invert from cache")
    cached_invert_matrix
  } else {
    # solve the matrix
    message("Solving the matrix")
    solved_matrix <- solve(x)
    solved_matrix
  }
}

