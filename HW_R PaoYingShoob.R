com_score <- 0
user_score <- 0

check <- function(user_hand, comp_hand) {
  if (user_hand == "quit") {
    print("End Game")
    return("quit")  # Return "quit" to signal game end
  } else if (user_hand == "love") {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Win Everthing")
    user_score <<- user_score + 1
    return("continue") #Return "continue" to continue the game
  } else if (user_hand == comp_hand) {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Deal. Let's Play Again")
    return("continue") #Return "continue" to continue the game
  } else if ((user_hand == "hammer" & comp_hand == "scissor") |
             (user_hand == "scissor" & comp_hand == "paper") |
             (user_hand == "paper" & comp_hand == "hammer")) {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("You are the Winner!!")
    user_score <<- user_score + 1 # Use <<- to modify global variable
    return("continue") #Return "continue" to continue the game
  } else {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Ahh, You are Lose. Try Again!")
    com_score <<- com_score + 1  # Use <<- to modify global variable
    return("continue") #Return "continue" to continue the game
  }
}

new_game <- function() {
  print("Welcome to the PaoYingShoobpyShhob Game")
  hands <- c("hammer", "scissor", "paper")
  
  while (TRUE) {
    comp_hand <- sample(hands, 1)
    user_hand <- readline("Please choose one option: paper, scissor, hammer, or quit: ")
    result <- check(user_hand, comp_hand)
    
    if (result == "quit") {
      print(paste("Final Scores: User - ", user_score, ", Computer - ", com_score))
      break  # Exit the game loop
    }
    if (result == "continue"){
      print(paste("Current Scores: User - ", user_score, ", Computer - ", com_score))
    }
  }
}