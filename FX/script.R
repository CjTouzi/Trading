source("../tradingfunc.R")
# refer @ http://www.finance-r.com/s/csv_to_xts_conversion/complete/
temp <- list.files(pattern="*.csv")
temp


# test on joining two set of data
df1 <- loadData(temp[[1]])  
head(df1)
str(df1)
names(df1)
df2 <- loadData(temp[[2]])  
head(df2)
names(df2)
df <- rbind(df1,df2)
head(df)
tail(df)
