#R PREPROCESSOR
#import datasets

dataset = read.csv('Data.csv') 
# dataset = dataset[,2:3] #<-for future templates when only getting specific indexs

# take missing age
# dataset$Age = ifelse(is.na(dataset$Age), 
#                      ave(dataset$Age, FUN = function(x) mean(x,na.rm = TRUE)),
#                      dataset$Age)
# 
# dataset$Salary = ifelse(is.na(dataset$Salary), 
#                      ave(dataset$Salary, FUN = function(x) mean(x,na.rm = TRUE)),
#                      dataset$Salary)


#encoding catagroical data
# dataset$Country = factor(dataset$Country,
#                          levels = c('France', 'Spain', 'Germany'),
#                          label = c(1,2,3))
# dataset$Purchased = factor(dataset$Purchased,
#                          levels = c('No', 'Yes'),
#                          label = c(0,1))

#splitting training and test sets
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = .8) # split is for training
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#scaling
# training_set[,2:3] = scale(training_set[,2:3]) #transform factors into numeric , lable is jsut numeric
# test_set[,2:3] = scale(test_set[,2:3])

#IMPORT >SPLIT> SCALE(SOMETIMES)->PREPROCESS


