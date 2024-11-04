
box <- c(rep("white", 10), rep("black", 6), rep("red", 4), rep("blue", 15))

simulate_draws <- function(box, draws, n, replace) {
  
  all_results <- vector("list", n)
  
  for (i in 1:n) {
    draw <- sample(box, draws, replace = replace)
    all_results[[i]] <- draw
  }
  
  
  results <- unlist(all_results)
  freq_table <- table(results) / (n * draws)  
  return(freq_table)
}


set.seed(42) 
n_values <- c(10, 100, 1000)

for (n in n_values) {
 
  freq_with_replacement <- simulate_draws(box, draws = 15, n = n, replace = TRUE)
  barplot(freq_with_replacement, main = paste("Со враќање, n =", n), ylim = c(0, 1), col = c("white", "black", "red", "blue"))
  
 
  freq_without_replacement <- simulate_draws(box, draws = 15, n = n, replace = FALSE)
  barplot(freq_without_replacement, main = paste("Без враќање, n =", n), ylim = c(0, 1), col = c("white", "black", "red", "blue"))
}