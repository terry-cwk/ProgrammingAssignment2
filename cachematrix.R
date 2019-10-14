## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  set <- function(y) {
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setmat <- function(inverse) invm <<- inverse
  getmat <- function() invm
  list(set = set, get = get,
       setmat = setmat,
       getmat = getmat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invm <- x$getmat()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(data, ...)
  x$setmat(invm)
  invm
        ## Return a matrix that is the inverse of 'x'
}
