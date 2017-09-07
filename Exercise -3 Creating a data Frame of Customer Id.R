custId <- c(1,2,3,4,5,6,7,8,9,10)
Income <- rnorm(10,mean=250000,sd=75000)
gender <- c(1:10)
random_gender <- sample(gender)
actual_gender <- ifelse(random_gender<=6,"M","F")
random_gender
creating_data_fram <- data.frame("CustomerId"=custId,"Income"=Income,"Gender" <- actual_gender)
creating_data_fram
