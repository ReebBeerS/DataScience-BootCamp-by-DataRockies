# add_two_nums() function
add_two_nums <- function(val1, val2) {
  return(val1 + val2) #return --> optional 
}

# cube() function
cube <- function(base, power=3) {
  return(base ** power)
}

# count_ball() function
balls <- c("red", "red", "blue", "green",
           "green", "green", "green", "red")

count_ball <-function(balls){
  sum(balls == "red")
}

count_ball <- function(balls, color) {
  sum(balls == color)
}

#in {} เป็นbody function ที่ต้องการ