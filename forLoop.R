print("Binary search ")

my_array <- c(10 , 20 , 30 , 40  , 50 , 60 , 80 , 90 )


binary_search <- function(arr , target){
   start = 0
   end <- length(arr)
   while(start <= end){
     mid <- floor(start + (end - start)/2)
     if(target == arr[mid]){
       return(paste(" Element found at index : " , mid))
     }else if(target > arr[mid]){
       start <- mid +1
     }else{
       end <- mid -1
     }
   }
   return("Element not found in the array")
   
}

result <- binary_search(my_array , 60)
print(result)