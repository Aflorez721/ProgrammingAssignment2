## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is a function that creates a special “matrix” object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) { ## Defining Function
	## Initialize the inverse property
    inv <- NULL
set <- function( matrix ) {
            m <<- matrix
            inv <<- NULL
    }
    ## This is a Method the get the matrix
    get <- function() {
    	m ## Return the matrix
    }
    
    ## Way to set the inverse of the matrix
    setInverse <- function(inverse) { #### Defining the Function 'setInverse'
        inv <<- inverse
    }

    ## Way to get the inverse of the matrix
    getInverse <- function() { #### Defining the Function 'getInverse'
        ## Back the inverse property
        inv
    }
## Back a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## CacheSolve is a function that compute the inverse of the unique matrix back by "makeCacheMatrix".

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ## Back to a matrix  “m”
         m <- x$getInverse()
         if( !is.null(m) ) {
              message("getting cached data")
              return(m)
          }
        
          ## Compute the inverse via matrix multiplication
          m <- solve(data) 
          ## Set the inverse to the object
          x$setInverse(m)
          ## Coming back the matrix
          m
}
