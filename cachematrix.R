## Put comments here that give an overall description of what your
## functions do

## This function stores a matrix's inverse values
## is like a "InverseMatrix" Class in OOP

#This function is like a 'Matrix Class'
makeCacheMatrix <- function(x = matrix()) {
    #this would be an attribute in OOP
    i <- NULL
    #initializes the 'instance' of this class
    set<-function(new){
        x<<-new
        inverse<<-NULL
    }
    #returns the original matrix
    get<-function(){
        x
    }
    #save in 'cache' the given argument
    setinverse<-function(inverse){
        i<<-inverse
    }
    #return the cached inverse
    getinverse<-function() i
    #set this functions to be used outside this function
    list(set=set,get=get,setinverse=setinverse,getinverseean=getinverse)
}


## This function calculates the inverse of a matrix using the previous 
## function.

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inverse)){
        #if the value already in cache, return it!
        print("Returning cached inverse")
        return (inverse);
    }
    #if its null, then calculate the inverse
    matrix <- x$get()
    inverse <- solve(matrix)
    x$setinverse(inverse)
    #and return it
    print("Return Calculated inverse")
    inverse
}
