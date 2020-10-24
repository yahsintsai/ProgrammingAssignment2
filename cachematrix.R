## Put comments here that give an overall description of what your functions do

## This function creates a special "matrix" object that can cache its inverse by:
## 1) set the value of the matrix
## 2) get the value of the matrix
## 3) set the value of the inverse matrix
## 4) get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
          x <<- y
          inv <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inv <<- solve # import solve() to inverse matrix
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if (!is.null(inv)){ ## check if inverse matrix exists
          message("getting cached matrix")
          return(n)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv ## return a matrix that is the inverse of 'x'
}
