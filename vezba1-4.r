
boxes_a <- data.frame(
  Box = 1:3,
  White = c(1, 2, 3),
  Black = c(2, 4, 6),
  Red = c(3, 3, 3)  
)


boxes_a$Total <- boxes_a$White + boxes_a$Black + boxes_a$Red
boxes_a$P_White <- boxes_a$White / boxes_a$Total
boxes_a$P_Black <- boxes_a$Black / boxes_a$Total
boxes_a$P_Red <- boxes_a$Red / boxes_a$Total

print(boxes_a)




boxes_b <- data.frame(
  Box = 1:20,
  White = 1:20,
  Black = 2 * (1:20),
  Red = rep(20, 20) 
)


boxes_b$Total <- boxes_b$White + boxes_b$Black + boxes_b$Red
boxes_b$P_White <- boxes_b$White / boxes_b$Total
boxes_b$P_Black <- boxes_b$Black / boxes_b$Total
boxes_b$P_Red <- boxes_b$Red / boxes_b$Total


print(boxes_b)