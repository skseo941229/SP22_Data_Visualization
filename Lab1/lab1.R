#Read the data 
data <- read.csv('diabetes.csv')

### LAB1 - Problem1 
#Group1 - underweight 
undergrop <- data[data$BMI<18.5,]
#show the mean of the BMI of underweight men
mean(undergrop$BMI)
#show the median of the BMI of underweight men
median(undergrop$BMI)
#show the standard deviation of the BMI of underweight men
sd(undergrop$BMI)

#Since there is no patient who has under 18.5 bmi NA were printed 

#Group2 - healthy weight
healthygrop <- data[data$BMI>=18.5&data$BMI< 25 ,]

#show the mean of the BMI of healthyweight men
mean(healthygrop$BMI)
#show the median of the BMI of healthyweight men
median(healthygrop$BMI)
#show the standard deviation of the BMI of healthyweight men
sd(healthygrop$BMI)

# healthy weight group : mean (23.8375), median (23.74), sd (0.9894)

#Group3 - overweight
overgrop <- data[data$BMI>=25&data$BMI<30 ,]

#show the mean of the BMI of overweight men
mean(overgrop$BMI)
#show the median of the BMI of overweight men
median(overgrop$BMI)
#show the standard deviation of the BMI of overweight men
sd(overgrop$BMI)

# over weight group : mean (28.49957), median (28.79), sd (1.15)

#Group4 - obesity
obesitygrop <- data[data$BMI>=30 ,]
#show the mean of the BMI of obesityweight men
mean(obesitygrop$BMI)
#show the median of the BMI of obesityweight men
median(obesitygrop$BMI)
#show the standard deviation of the BMI of obesityweight men
sd(obesitygrop$BMI)

#obesity weight group : : mean (33.29737), median (33.05), sd (2.203056)

###Lab1 -Problem 2 
#Group1 - Normal 
Normalgrop <- data[data$HemoglobinA1C.Followup<5.7,]

#show the mean of the HemoglobinA1C.Followup of Normal 
mean(Normalgrop$HemoglobinA1C.Followup)
#show the median of the HemoglobinA1C.Followup of Normal
median(Normalgrop$HemoglobinA1C.Followup)
#show the standard deviation of the HemoglobinA1C.Followup of Normal
sd(Normalgrop$HemoglobinA1C.Followup)

# Normal group : mean (4.8888), median (5.1), sd (0.756112)

#Group2 - prediabete weight
prediabetegrop <- data[data$HemoglobinA1C.Followup>=5.7&data$HemoglobinA1C.Followup<=6.4 ,]

#show the mean of the HemoglobinA1C.Followup of prediabete
mean(prediabetegrop$HemoglobinA1C.Followup)
#show the median of the HemoglobinA1C.Followup of prediabete
median(prediabetegrop$HemoglobinA1C.Followup)
#show the standard deviation of the HemoglobinA1C.Followup of prediabete
sd(prediabetegrop$HemoglobinA1C.Followup)

# prediabete group : mean (5.983673) median(6), sd (0.2173198)

#Group3 - diabeteweight
diabetegrop <- data[data$HemoglobinA1C.Followup>=6.5,]

#show the mean of the HemoglobinA1C.Followup of diabeteweight men
mean(diabetegrop$HemoglobinA1C.Followup)
#show the median of the HemoglobinA1C.Followup of diabeteweight men
median(diabetegrop$HemoglobinA1C.Followup)
#show the standard deviation of the HemoglobinA1C.Followup of diabeteweight men
sd(diabetegrop$HemoglobinA1C.Followup)

# diabete group : mean (9.061576), median (8.7), sd (1.833879)

