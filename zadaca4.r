
simulate_experiment <- function(n) {
  
  white <- rep(4, 6)
  black <- rep(4, 6)
  
  for (i in 1:n) {
    
    box_index <- sample(1:6, 1)
    

    coin_flip <- sample(c("heads", "tails"), 1)
    
    if (coin_flip == "heads") {  # Петка
      if (box_index > 1 && white[box_index] > 0) {
        white[box_index] <- white[box_index] - 1
        white[box_index - 1] <- white[box_index - 1] + 1
      }
    } else {  
      if (box_index < 6 && black[box_index] > 0) {
        black[box_index] <- black[box_index] - 1
        black[box_index + 1] <- black[box_index + 1] + 1
      }
    }
  }

  probabilities <- white / (white + black)
  return(probabilities)
}

set.seed(42) 
prob_10 <- simulate_experiment(10)
prob_100 <- simulate_experiment(100)
prob_1000 <- simulate_experiment(1000)


cat("Веројатност за бело топче после 10 изведувања:", prob_10, "\n")
cat("Веројатност за бело топче после 100 изведувања:", prob_100, "\n")
cat("Веројатност за бело топче после 1000 изведувања:", prob_1000, "\n")