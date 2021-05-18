## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCatchMatrix consists of set, get, setInv, getInv and this function is used to
# calculate the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){            #this sets the value of the matrix
    x <<- y
    inv <<- NULL
  }
get <- function(){x}            #this gets the value of the matrix
setInverse <- function(inverse){inv <<- inverse}
getInverse <- function(){inv}
list(set=set, get=get, setInverse= setInverse, getInverse= getInverse)
}


## Write a short comment describing this function
#this function is used to get the cache data

cacheSolve <- function(x, ...) {      #gets cached data
        inv <- x$getInverse()         #gets inverse of x and assigns to inv
        if(!is.null(inv)){            #checking if inverse is null
          message("getting cached data")
          return(inv)                 #returns inv value

          }
mat <- x$get()
inv <- solve(mat,...)
x$setInverse(inv)                     #calculates inverse value
inv
}

