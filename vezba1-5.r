count_total <- function(box_list) {
  
  total_per_box <- sapply(box_list, sum)
  return(total_per_box)
}

print(count_total(list(c(1, 2), c(2, 1, 1), c(1))))