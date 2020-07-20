cacheInverse <- function(x, ...){
  m <- x$getInverse()
  
  if(!is.null(m)) {
    
    message("getting cached data")
    return(m)
    
  }
  
  data <- x$get()
  m <- Inverse(data, ...)
  x$setInverse(m)
  m
}