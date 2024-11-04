simulate_game <- function(n) {
  
  wins <- 0
  
  for (i in 1:n) {
    
    box <- c(rep("white", 5), rep("black", 6))
    
   
    stefan_draws <- sample(box, 2, replace = FALSE)
    box <- setdiff(box, stefan_draws)
    
    
    ana_draw <- sample(box, 1)
    
    
    if (ana_draw == "white") {
      wins <- wins + 1
    }
  }
  

  prob_win <- wins / n
  return(prob_win)
}


set.seed(42) 
prob_10 <- simulate_game(10)
prob_100 <- simulate_game(100)
prob_1000 <- simulate_game(1000)

cat("Веројатност дека Ана ќе победи (n = 10):", prob_10, "\n")
cat("Веројатност дека Ана ќе победи (n = 100):", prob_100, "\n")
cat("Веројатност дека Ана ќе победи (n = 1000):", prob_1000, "\n")