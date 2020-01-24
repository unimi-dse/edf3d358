library(tidyverse)
#get titles from Yahoo Finance
Get_Ticket <- function(x) {
                              getSymbols(x, src = "yahoo", from = "2015-07-30", auto.assign = FALSE)
}  
Tickets <- c("SPY" , "BTC-USD", "ETH-USD", "XRP-USD")
Tickets_close_p <- map(Tickets, Get_Ticket) %>% map(Cl) %>% reduce(merge.xts)
Tickets_close_p
df_total <-Tickets_close_p %>% na.omit()		
dim(df_total)
head(df_total)

#volatilità del titolo 
nonstat_ts_differences_volatility <- function(x,y){#since data are non stationary
diff(df_total, differences = x) 
sec_diff<- diff(diff(df_total))
rolling_SD <- rollapply(sec_diff, width=y, FUN = sd)}
#first values are zero since we took differences
print(funct(x =2,y =3))

