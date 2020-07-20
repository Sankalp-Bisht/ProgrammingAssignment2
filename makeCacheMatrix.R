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
  
