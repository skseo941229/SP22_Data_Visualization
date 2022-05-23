#If tidyverse hasn't installed, install "tidyverse" library
install.packages("tidyverse")

library(tidyverse)

#Read a csv file and print the data to check
messy <- read_csv("diabetes_messy.csv")
print(messy)

#Handle first problem indicated in Word file
first_clean <- separate(messy,`SBP & BMI`, c("SBP", "BMI")," " )

#Handle second problem indicated in Word file 
second_clean <- separate(first_clean,Age, c("Age")," ")

#Change the type to numeric
second_clean$Age <- as.numeric(second_clean$Age)
second_clean$SBP <- as.numeric(second_clean$SBP)
second_clean$BMI <- as.numeric(second_clean$BMI)

#Part2 
#check missing values in each column  
sum(is.na(second_clean[1]))
sum(is.na(second_clean[2]))
sum(is.na(second_clean[3]))
sum(is.na(second_clean[4]))
sum(is.na(second_clean[5]))
sum(is.na(second_clean[6]))
sum(is.na(second_clean[7]))

sum(is.na(second_clean[8])) 

sum(is.na(second_clean[9]))
sum(is.na(second_clean[10]))
sum(is.na(second_clean[11]))
sum(is.na(second_clean[12]))
sum(is.na(second_clean[13]))
sum(is.na(second_clean[14]))
sum(is.na(second_clean[15]))
sum(is.na(second_clean[16]))
sum(is.na(second_clean[17]))

#Erase unnecessary columns
second_clean <- subset(second_clean, select= -c(8:17))

second_clean$row_num <- seq.int(nrow(second_clean))

ggplot(data=second_clean)+geom_boxplot(mapping=aes(x=row_num, y=HemoglobinA1c.Baseline,group =1))
ggplot(data=second_clean)+geom_boxplot(mapping=aes(x=row_num, y=HemoglobinA1c.Followup,group =1))
ggplot(data=second_clean)+geom_boxplot(mapping=aes(x=row_num, y=Age,group =1))
ggplot(data=second_clean)+geom_boxplot(mapping=aes(x=row_num, y=SBP,group =1))
ggplot(data=second_clean)+geom_boxplot(mapping=aes(x=row_num, y=BMI,group =1))

### Extra Credit
messy <- read_csv("diabetes_messy.csv")

#Cleaning like Part1
table1 <- separate(messy,`SBP & BMI`, c("SBP", "BMI")," " )
table1 <- separate(table1,Age, c("Age")," ")
table1 <- table1[,1:8]

#Extract only necessary part 
mapping <- as.data.frame(t(messy[3:4,10:16]))
mapping <- mapping[-1, ]

#Change colnames
colnames(mapping) <- c('Country','Study_Started')
colnames(table1)[ncol(table1)] <- "Country"

#Merge using lookup table(mapping)
ddata2 = merge(table1,mapping,by="Country", all.x=T)

## In this process, 'Study_Started' column was added. 