women
sample(x=1:10,size = .7*10)
sample(x=1:nrow(women), size = .7*nrow(women))
index=sample(x=1:nrow(women), size = .7*nrow(women))
index
women[1,]#index  returns values of row no.s of the values in sample
women[index,]
women[-index,]
train=women[index,]
test=women[-index,]

fit1=lm(weight~height, data=train)
summary(fit1)
p4=predict(fit1, newdata = test, type='response')
cbind(predicted=p4, actual=test$weight, height=test$height)
