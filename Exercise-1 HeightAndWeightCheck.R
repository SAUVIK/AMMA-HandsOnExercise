library(datasets)
average_height <- mean(women[[1]])
average_weight <- mean(women[[2]])
condition_for_height_check <- women[[1]]>average_height
condition_for_weight_check <- women[[2]]>average_weight
table_value <-condition_for_weight_check[condition_for_weight_check==condition_for_height_check]
table(table_value)
