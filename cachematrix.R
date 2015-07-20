## Coursera, R Programming course
## Programming Assignment 2

## The function creates a cached matrix 
    makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        getMat <- function(y) x
        setInv <- function(invMat) inv <<- invMat
        getInv <- function() inv
        list(getMat=getMat, setInv=setInv, getInv=getInv)
    }

## The function calculates the inverse of the special matrix created by the above function
    cacheSolve <- function(x, ...) {
        inv <- x$getInv()
        if (!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
        data <- x$getMat()
        inv <- solve(data)
        x$setInv(inv)
        inv
    }
