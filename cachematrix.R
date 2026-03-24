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
