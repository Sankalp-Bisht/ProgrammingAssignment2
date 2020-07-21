#The first function, makeVector creates a special "vector", which is really a list containing a function to

#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean

makeCacheMatrix <- function(mat = matrix()){ ##First Function of Assignment
  
  m=NULL
  
  set <- function(y) { ##set function
      mat <<- y
      m <<- NULL
  }
  
  get <- function(){  ##get function
    mat               ##mat is the variable for matrix
    }
    
  setInverse <- function(inverse){ ##Setting Inverse
      
    m <<- inverse
    }
    
  getInverse <- function(){  ##geting inverse
    m
  }
  
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



#cacheSolve: This function computes the inverse of the special "matrix" returned
#by makeCacheMatrix above. If the inverse has already been calculated (and the 
#matrix has not changed), then the cachesolve should retrieve the inverse from 
#the cache.


cacheSolve <- function(x, ...){ ##Second Function of Assignment
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

  
