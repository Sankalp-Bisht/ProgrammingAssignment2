makeCacheMatrix <- function(mat = matrix()){
  
  m=NULL
  
  set <- function(y) {
      mat <<- y
      m <<- NULL
  }
  
  get <- function(){
    mat
    }
    
  setInverse <- function(inverse){
      
    m <<- inverse
    }
    
  getInverse <- function(){
    m
  }
  
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
  }
  
