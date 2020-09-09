## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    # intializing a inverse matrix
    invers_matrix <- NULL
    
    # Method to set Matrix
    
    set_matrix <- function(matrix){
      m <<- matrix
      inverse_matrix <<- NULL
    }
    
    # Method to get the matrix
    
    get_matrix <- function(){
      
      m #just returning the input matrix
    }
    
    # Method to set the inverse of a matrix
    set_inverse <- function(inverse) {
      
      inverse_matrix <<- inverse
    }
    
    # Method to get the inverse of a matrix
    get_inverse <- function(){
      
      inverse_matrix
    }
  
    #Return a list of the methods
    
    list(set = set_matrix, get = get_matrix,
         setInverse = set_inverse,
         getInverse = get_inverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- X$getInverse()
        
        # Simply return the inverse if it is alreday exsisted
        if(!is.null(m)){
          
          message("Getting cached Matrix")
          
          (m)
        }
        
        #Getting the matrix from object 
        
        data <- x$get()
        
        # Caluculating the inverseusing matrix multiplication
        
        m<- solve(data) %*% data
        
        #Set inverse of a matrix
        x$setInverse(m)
        
        #Returning the matrix
        m
}
