white <- 2
black <- 8
total <- white + black


while (total <= 20) {

  prob_black <- black / total
  print( total)
  print(prob_black)
  white <- white + 1
  black <- black + 1
  total <- white + black
}