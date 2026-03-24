## Put comments here that give an overall description of what your
## functions do

##There are two functions makeCacheMatrix,makeCacheMatrix
##makeCacheMatrix consists of set,get,setinv, getinv
##library(MASS) is used to calculate inverse for non squared as well as square matrices
library(MASS)

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(m){
    x <<- m
    inv <<- NULL
  }
  
  get <- function() x
  
  setInv <- function(a){inv <<- a}
  
  getInv <- function() inv
  
  list(set = set, 
       get = get,
       setInv = setInv, 
       getInv = getInv)

}
## Write a short comment describing this function
##This is used to get the cache data

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  
  if(!is.null(inv)){
    message('Getting Cached inverse...')
    return(inv)
  }else{
    message('Inverse is not cached! Calculating inverse...')
    
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInv(inv)
    inv
  }
  
  
}
#data <- matrix(c(1, 1, 4, 0, 3, 1, 4, 4, 0), nrow=3, ncol=3)


