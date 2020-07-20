cacheInverse <- function(x, ...){ ##Second Function of Assignment
  m <- x$getInverse()
  
  if(!is.null(m)) { ##Checking for already present data
    
    message("getting cached data")
    return(m)
    
  }
  
  data <- x$get()   ##Setting if cache data not found
  m <- Inverse(data, ...)
  x$setInverse(m)
  m
}