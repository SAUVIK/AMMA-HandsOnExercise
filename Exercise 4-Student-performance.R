#Analysis of student performance in Math by dowhttps://archive.ics.uci.edu/ml/datasets/student+performance datasets, unzip to a folder on your system andnloading 
#read the data.
#Q(1) Answer following questions -
#a) What is average Grades for Male and Female students
#b) Which combination of Guardian and Sudent Gender has highest Grades for G1, G2 and G3
#Q(2) Students Absences (variable: absences) can be broken into 4 or 5 groups each group has almost same number of students (hint cut and quantile) and then find average Grades for different level of absence


##########---############

student_mat <- read.csv('/Users/stacy/Downloads/student/student-mat.csv',sep = ";")
student_perf <- read.csv('/Users/stacy/Downloads/student/student-por.csv',sep = ";")
View(student_mat)
View(student_perf)
merged_dataset <- merge(student_mat,student_perf,by = c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
nrow(merged_dataset)
View(merged_dataset)
 males_indices <- merged_dataset$sex == 'M'
female_indices <- merged_dataset$sex == 'F'
male_students <- merged_dataset[males_indices,]
female_students <- merged_dataset[female_indices,]
male_students$total_grade <- male_students$G3.x + male_students$G3.y
female_students$total_grade <- female_students$G3.x + female_students$G3.y

mean(male_students$total_grade )
mean(female_students$total_grade)

#Which combination of Guardian and Sudent Gender has highest Grades for G1, G2 and G3
merged_dataset$G1 = merged_dataset$G1.x+merged_dataset$G1.y
merged_dataset$G2 = merged_dataset$G2.x+merged_dataset$G2.y
merged_dataset$G3 = merged_dataset$G3.x+merged_dataset$G3.y

View(merged_dataset)
k <- max(merged_dataset$G1)
l <- max(merged_dataset$G2)
m <- max(merged_dataset$G3)
G1_highest <- merged_dataset$G1==k
G2_highest <- merged_dataset$G2==l
G3_highest <- merged_dataset$G3==m
merged_dataset[G1_highest,]$guardian.x
merged_dataset[G2_highest,]$guardian.x
merged_dataset[G3_highest,]$guardian.x
