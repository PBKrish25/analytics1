#Modeling
#Linear regression- Simple, multiple
#y-x1(SLR);y~ x1+x2...(MLR)
#y- Dependent variable, x-Independent variable


head(women)
#y-weight, x=height
#co-relation -gives strength and direction of relationship, varying on a scale of 0 to 1
cor(women$height,women$weight)
#co-variance -tells about direction of relationship
cov(women$height,women$weight) #direction is +ve .i.e height increases, weight increases
plot(women$height, women$weight)
#lm performs linear modelling
fit1=lm(weight~height, data=women)
summary(fit1)
#F stats p value<<0.05: Linear model exists
#at least 1 Independent Variable is significant in predicting DV
#Multiple Rsquare value =.991, also called Co-efficient of distribution
#only 1 IV, use multiple Rsquare: multiple IV, adjusted Rsquare
#Rsquare= ,991 indicates 99% of variation is explained by x or 99% increase in weight is only due to height
#y=mx + c: y = -87 + 3.45 *height
range(women$height)
#can only do interpolation but not extrapolation(can't predict for the future, only internally)
#*** codes are there for indicating degree of relationship (more the ***, greater the relationship)
women$weight
women$height
( y = -87 + 3.45 *women$height)
#predicted values for actual heights
fitted(fit1)
?fitted
residuals(fit1) #difference between predicted and actual weights
summary(fit1)
summary(residuals(fit1))
summary(students$marks1)
(newdata1=data.frame(height=c(60.4,55.9)))
(p1=predict(fit1, newdata = newdata1, type= 'response'))
cbind(newdata1, p1)

#summarizing the above
fit2=lm(weight~height, data = women)
summary(fit2)
(p2=predict(fit2, newdata=data.frame(height=c(61,72,78.9)), type= 'response'))
?predict
#
#check for assumptions of linear regression
plot(fit1)
plot(fit2)

