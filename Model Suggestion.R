library(tidyverse)
library(Ecdat)

Airline2=Airline

j=2
k=1
for (k in 1:8) {
  OUT=NULL
  for (j in 1:6) {
    OUT=c(OUT,lag(Airline2$cost[Airline2$airline==j],k))
  }
  Airline2 = cbind(Airline2,OUT)
}

names(Airline2)[7:14]=paste("cost",1:8,sep="-")

#Each Country 1-14 days. backdrop coefficient.make a dataset
#death and case to predict the case
#Try different model
#Use arounding countries to predict