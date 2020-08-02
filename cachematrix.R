## Put comments here that give an overall description of what your
## functions do
## Function to cache the inverse of the  matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<-y
    i <<- NULL
}
get <- function()x
setInverse <- function(solveMatrix)
  i <<- solveMatrix
getInverse <- function()i
list(set = set,get=get,setInverse=setInverse,getInverse=getInverse)
}

## Write a short comment describing this function
## Function to compute the inverse of the matrix returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cache data")
    return(i)
  }
  d<- x$get()
  i<-solve(d)
  x$setInverse(i)
  i
}
