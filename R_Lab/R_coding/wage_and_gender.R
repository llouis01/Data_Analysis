load('wage1000.rda')

attach(data)

str(data)

install.packages("stargazer")

library(stargazer)


## Statistical exploration ##
stargazer(data, title = "Statistical Summary",
                     type = "html", out = "Descriptives.doc") ## above outputs results in a word file

stargazer(data, title = "Statistical Summary",
          type = "text") ## outputs results on console

ols1 <-lm(wage~female+nonwhite+unionmember+education+experience)

ols2 <-lm(wage~female+nonwhite+unionmember+education+experience+I(experience^2))

stargazer(ols1, ols2, title = "OLS Results", type = "html", out = "OLS_Results.doc") # observe results jointly

stargazer(ols1, ols2, title = "OLS Results", type = "text")  # observe results jointly

cor(data[, 5:7]) # correlation between age, experience and education

cor(data[, 1:3])

names(ols1)
names(ols2)

ols1$model

plot(data$wage~experience, col="gold")


coef(ols1)
