# create our first function

greeting <- function() {
  print ("Hello!")
}
# function can call repeat

#name, age => parameter
#"Toy", 25 => Argument
greeting_name <- function(name = "Tong", age = 25) {
  print( paste("Hi", name))
  print( paste("Age:", age))
}

func <- function() {
  greeting()
  greeting_name("Tong")
}
