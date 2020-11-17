This function will create an object that convert a matrix 

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x<<-y
    s<<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get, 
       setsolve = setsolve,
       getsolve = getsolve)
}


The following function invert the matrix crated with the function above
 If the invert matrix has not been calculated the function will calculate this 
  from the data provided

cacheSolve <- function(x, ...) {
  s <- x$getsolve
  if(!is.null(s)){
      message("getting cached data")
      return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setvolve(s)
  s
  ## Return a matrix that is the inverse of 'x'
}
