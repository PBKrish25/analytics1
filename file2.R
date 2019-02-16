women
?women
?mean
#to seek help, use ?before the function
mtcars
?mtcars
mean(mtcars$mpg)
#function mean:(subset$)
names(mtcars)
#to find name: type name(subset)
mean(mtcars$hp)
colMeans(mtcars)
#to find mean of all columns: type colMeans
rowMeans(mtcars)
#for row means: type rowMeans
head(mtcars,1)
?head(mtcars,1)
head(mtcars)
tail(mtcars)
tail(mtcars,1)
#for finding first row or last row, use head and tail resp.
hist(mtcars$mpg)
#for histogram, use hist
hist(mtcars$mpg, breaks=3)
#vectors
x=c(1,2,5,7)
x
class(x)
x1=c(2L, 8L)
x1
class(x1)
class(mtcars)
#class is used to define the type of vector
x3=c('a', 'B','dhiraj')
x3
x4=c(TRUE, FALSE, T, F)
x4
#we can use c to create different types of data
x5=1:10000000
x5
x6<-2 #another way of assign; other is =(<- is the same as =)
(x7 = rnorm(10000000))
length(x7)
mean(x7)
sd(x7)
plot(density(x7))
hist(x7)
hist(x7, freq = F)
points(density(x7))
#the above is for over lapping 2 types of data- here, histogram and bar graphs
(x8=rnorm(100,mean=60,sd=10))
hist(x8)
hist(x8, freq = F)
points(density(x8))  

library(e1071)
y
library(e1071)
#install library,type library(number) and execute command
kurtosis(x8)#kurtosis - to find sharpness of the curve
skewness(x8)


x9=runif(100,30,90)
#created 100 uniformly distributed values between 30 to 60
?runif
trunc(x9) #removes decimal places
round(x9,1) #1 decimal point
floor(x9) #integer value lower than the decimal
ceiling(x9)# integer value higher than decimal
x10=ceiling(x9)
x10
x9
mean(x10)
median(x10)
sort(x10)
sort(x10, decreasing = T) #to sort data in decreasing order
#to filter data
x10 [x10>60]#use square brackets for > or<
x10[1:10]#first 10 values by position
x10[20:30]#values between 20 and 30 by position
x10[-c(1:20)]# values after removing first 20 values
x10[c(1,5,7)]#obtaining values 1,5,7 by position

#matrices
m1=matrix(1:24,nrow = 6) #define matrix by specifying values and rows
#no need to specify columns
m1
dim(m1)# dimensions of the matrix (rows, columns)
m2=matrix(1:56, ncol = 8)
m2
m3=matrix(1:24, ncol = 6, byrow = T)
#to change the order of filling from column to row-wise
m3
colnames(m3)=month.abb[1:6]
#to assign names to the columns
m3
rownames(m3)=paste('Product', 1:4, sep = '_')
#to assign names to rows and also use seperator(paste is used to concicanate)
m3
rowMeans(m3)
colMeans(m3)
m1
m1[ , 1:2]
m3
m3[ ,1:2]#to show values of only columns 1 and 2 
m3[1:2, ]
colMeans(m3[c(1,3), ])#means of selected rows 1,3
m3[ ,c('Apr', 'Jun')]# display values of columns Apr and Jun
max(m3)
min(m3)
range(m3)

#question

#data.frame (Combining vectors of same length)
n=30
rollno. =1:30
(rollno. =paste('F',1:30,sep = '_'))
(name=paste('Student',1:30,sep = '&'))

(gender=sample(c('M','F'),size=n, replace=T, prob = c(.7,.3)))
#replace is used to assign values M & F to the n values we have defined
#values are assigned randomly
(prob=c(.7,.3))
table(gender)
(gender=sample(c('M','F'),size=n, replace=T, prob = c(.7,.3)))
table(gender)

#set seed
set.seed(1234) #helps to generate the same type of data
(gender=sample(c('M','F'),size=n, replace=T, prob = c(.7,.3)))
table(gender)
(t1=table(gender))
prop.table(t1) #to find proportion F and M

(college= sample(c('SRCC','FMS','IIM'), size = 30, replace = T, prob = c(.4,.3,.3)))
(table(college))
(t2=table(college))
prop.table(t2)


(marks1=round(rnorm(n=n,mean = 60,sd=10),0))
(marks2=round(rnorm(n=n,mean = 55,sd=15)))
#rollno.; name; gender; college; marks1; marks2 (to define data frame)
length(gender)
students=data.frame(rollno., name, gender, college, marks1, marks2)
class(students)
students
students[,c(2,5,6)]
students[,c('name', 'marks1', 'marks2')]
str(students) #structure
summary(students) #summarizes in quantiles
#for categories, it gives the count and for continuous data, the percentages
quantile(students$marks1) #quartile percentages of the data in proportions of 25%
quantile(students$marks1, probs = seq(0,1,.01))
?seq()
#by default, the probs in quantile are 0, .25,.5,.75,1
#probs =seq is used to change the intervals
seq(1,100,3)#values of 1 to 100 in intervals of 3
seq(from=1,to=100,by=3)

#How to convert data from categories or factors to characters
students$name=as.character(students$name)
students$rollno.=as.character(students$rollno.)
str(students)
summary(students)
head(students)
write.csv(students, 'fms.csv', row.names = F)#save file in .csv format by exporting data
students2=read.csv('fms.csv')#import data from .csv file
head(students2)


#students
head(students)
students3=read.csv('fms.csv')
head(students3)
#to find details of students who scored>1 marks
library(dplyr)
students[students$marks1>60,]
students[students$gender=='F',]
students[students$gender=='F' |students$college=='SRCC',]
#either F or SRCC is filtered
#to find highest scores from all colleges
students%>% filter(gender=='M'& marks1>60)
students%>%group_by(gender)%>%summarise(mean(marks1),mean(marks2))
students%>%group_by(college)%>%summarise(max(marks1),max(marks2))
students%>%filter(college=='FMS')%>%select(marks1,marks2)
