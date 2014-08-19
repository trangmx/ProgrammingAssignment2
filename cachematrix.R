## Put comments here that give an overall description of what your
## functions do

## Create a special matrix object with get, set a matrix and get, set its inverse

makeCacheMatrix <- function(x = matrix()) {
        im <- NULL
        set <- function(y) {
                x <<- y
                im <<- NULL
        }
        get <- function() x
        setim <- function(inverseMatrix) im <<- inverseMatrix
        getim <- function() im
        
        list(set = set, get = get,
             setim = setim,
             getim = getim)

}


## Calculate and cache a matrix's inverse 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im <- x$getim()
        if (!is.null(im)) {
                message("getting cached data")
                return(im)
        }
        matrix <- x$get()
        im <- solve(matrix)
        x$setim(im)
        im
}
