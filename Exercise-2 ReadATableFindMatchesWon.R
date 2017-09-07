#Read a table from wiki link and find number of matches won by india
library(htmltab)
table <- htmltab("https://en.wikipedia.org/wiki/India–Pakistan_cricket_rivalry",2)
number_of_matches_won_India <- table$ODI[3]
