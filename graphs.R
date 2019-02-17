#graphs

mtcars
names(mtcars)
table(mtcars$cyl)
table(mtcars$cyl,mtcars$am)
mtcars$mpg
#continuous data-histogram, boxplot
hist(mtcars$mpg)
boxplot(mtcars$mpg, horizontal = T)#for horizontal box plot, use horizontal=T
boxplot(mpg~gear, data = mtcars,col=1:3)#col is colour code, ~ is used for mpg "versus" gear
t1=table(mtcars$gear)
t1
barplot(t1,col = 1:3)
barplot(c(10,3,5))
pie(c(10,3,5))
students
t2=table(students$college)
barplot(t2,col = 1:3)
t3=table(students$gender)
barplot(t3)
pie(t3,col = 3:4)
title('This is bar plot', sub='subtitle')
