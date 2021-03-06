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
    setinv <- function(inverse) invm <<- inverse
    getinv <- function() invm
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
  }


## Write a short comment describing this function
 
cacheSolve <- function(x, ...) {
  invm <- x$getinv()
  if(!is.null(invm)){
    message("succes cache data")
    return(invm)
  }
  data <- x$get()
  invm <- solve(invm)
  invm
}

        ## Return a matrix that is the inverse of 'x'
