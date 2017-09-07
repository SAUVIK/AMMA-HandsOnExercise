Customer <- read.table(header=T,text = 'ID Age Sex MarritalStatus Location         
                        1 40 M Married Kolkata
                        2 42 F Single  Kolkata
                        3 20 F Single  Kolkata
                        4 45 M Married Mumbai                    
                        5 65 F Single  Mumbai')
Income <- read.table(header=T,text = 'ID Income        
                        1 1000
                        2 4000
                        4 5000
                        6 9000)
Merged_data <- merge(Customer,Income,all.x=TRUE) #Q.1
#Q.2
Customer_by_Mumbai<- Customer[Customer$Location =="Mumabi",]
Customer_by_Kolkata<- Customer[Customer$Location =="Kolkata",]
mean(Customer_by_Kolkata$Age)
mean(Customer_by_Mumbai$Age)
#Q.3
Customer <- read.table(header=T,text = 'ID Age Sex MarritalStatus Location Manager        
                        1 40 M Married Kolkata Sujan
                        2 42 F Single  Kolkata Sujan
                        3 20 F Single  Kolkata Andy
                        4 45 M Married Mumbai Rand
                        5 65 F Single  Mumbai Rand')
