### Econ382, Final Project, Loubens Louis ###

# Q1

mort_data = mortality_data[(mortality_data$year >= 1993
                                 & mortality_data$year <= 2015),]

colnames(mort_data)[4:11] = c("mort_data", "prob_death", "ave_length_surv", "num_of_surv", "num_of_deaths", "num_years_lived", "num_years_left", "life_expec") # colnames() to rename columns

mort_data # check if object is generated successfully

str_locate(mort_data$age, "-")[,1]
str_length(mort_data$age)
str_sub(str_length(str_locate(mort_data$age, "-")[,1]))
mort_data$age

# Q7

inc_data = reshape(income_data, varying = names(income_data)[2:24], timevar = "year", sep = ".", direction = "long")


inc_data = inc_data[order(inc_data$state, inc_data$year), ]

inc_data = inc_data[ , -4]
