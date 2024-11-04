count_solutions <- 0
for (a in 1:10) {
  for (b in 1:(10 - a)) {
    c <- 10 - a - b
    if (c > 0) {
      count_solutions <- count_solutions + 1
    }
  }
}