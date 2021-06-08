options(repr.plot.width=5, repr.plot.height=4)
varImpPlot(rfModel,
           sort = T,
           n.var=10,
           main="Important Variables")
rfModelTrim1 <- randomForest(Class ~  V17, 
                             data = Kccf.train)

test$predictedTrim1 <- predict(rfModelTrim1, Kccf.test)
f1 <- F1_Score(kccf.testc$Class,test$predictedTrim1)
f1


for(i=0;i<n;i++)
{
  rfModelTrim1 <- randomForest(Class ~  V17, 
                               data = train)
  
  test$predictedTrim1 <- predict(rfModelTrim1, test)
  
  F1_1 <- F1_Score(test$Class, test$predictedTrim1)
  F1_1
  
  
  
  
}
