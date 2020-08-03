## Put comments here that give an overall description of what your
## functions do



## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  greatjaguar<- NULL
  
  set<- function(y){
    x<<-y
    greatjaguar<<-NULL
  }
  
  get<-function()x
  
  setInverse<- function(inverse)greatjaguar<<-inverse
  
  getInverse<- function()greatjaguar
  
  list ( set = set, get = get, setInverse = setInverse, getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  greatjaguar <- x$getInverse()
  
  if (!is.null(greatjaguar)){
    message("getting cached data")
    return(greatjaguar)
  }
  datos<- x$get()
  greatjaguar<-solve(datos, ...)
  x$setInverse(greatjaguar)
  greatjaguar
}
