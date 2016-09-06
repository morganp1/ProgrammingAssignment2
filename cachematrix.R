## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##create inverse variable
inv <- NULL
}
##cre-te data variable that is original matrix
data <- 0

makeCacheMatrix <- function(x = matrix()) {
        set <- function(y) {
                data <<- y
                inv <<- NULL
        }

        get <- function() {
                data
        }
        
        setInverse <- function(inv) {
                inv <<- inv 
        }
        
        getInverse <- function() {
                inv
        }
        
        set(x)
        
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
        
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
cacheSolve <- function(m, ...) {}
        ## Return a matrix that is the inverse of 'x'
        cachedInverse <- m$getInverse()        

        
        ## if there is cached data
        if (!is.null(cachedInverse)) {
                print("Cached Data")
                return(cachedInverse)
        
        }
      
        temp = m$get()
        inverse_temp = solve(temp)
        m$setInverse(inverse_temp)
        print("Uncached Data")
        inverse_temp
        }
