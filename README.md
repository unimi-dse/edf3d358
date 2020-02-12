# Stk : Analysis of two stocks' closing prices on YahooFinance
## Get_Tickers, Model xts objects, Summary statistics, ggplot the annual trend.
This Package takes two stocks from [YahooFinance](https://finance.yahoo.com) as xts objects
with their respective *closing price*. It model them as a time series to find the Rollingmean.
Then, to plot both them by a ggplot geometric line, build a dataframe and transform the 
character dates into Date type to observe the annual data trends.
### Installation
```
install the package
devtools::install_github('unimi-dse/edf3d358')
```
### Example
```
library(Stk)
Tickr1 <- Get_Tickers("AAPL") #Check ticker' symbol on Yahoo
Tickr2 <- Get_Tickers("FB")
ClosingPrices <- Resume(Tickr1, Tickr2) #Merge and clean data
Analysis(ClosingPrices) #Perform basic analysis
df <- Modeldf(ClosingPrices) #transofrm data in a data frame to easily plot
Plot_Ticker(df, df$AAPL.Close, df$FB.Close)
```

