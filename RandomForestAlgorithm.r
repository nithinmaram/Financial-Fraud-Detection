library(readr)
library(unbalanced)
library(dplyr)
library(caret)
library(randomForest)
library(magrittr)
library(pROC)
library(stringi)
set.seed(1234)

creditData <- read.csv("C:/project/creditcard.csv")
glimpse(creditData)
creditData$Class <- factor(creditData$Class)
train <- creditData[1:150000, ]
test <- creditData[150001:284807, ]
train %>%
  select(Class) %>%
  group_by(Class) %>%
  summarise(count = n()) %>%
  glimpse

test %>%
  select(Class) %>%
  group_by(Class) %>%
  summarise(count = n()) %>%
  glimpse
rfModel <- randomForest(Class ~ . , data = train)
test$predicted <- predict(rfModel, test)
