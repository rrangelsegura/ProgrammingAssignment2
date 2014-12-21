## Caching the Inverse of a Matrix

##This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(n){
    x <<- n
    inv <<- NULL
  }
  get <- function() x
  setinv <- function (inversa) inv <<- inversa
  getinv <- function () inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if (!is.null(inv)){
    return(inv)
  }
  matrix <- x$get()
  inv <- solve(matrix)
  m$setinv(inv)
  ## Return a matrix that is the inverse of 'x'
  inv
		}
