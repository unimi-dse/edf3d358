# TRY : Analysis of two stocks' closing prices on YahooFinance :camel:
## Get_Ticker, Model xts objects, Build dataframe, ggplot the annual trend.
This Package takes two stocks from [YahooFinance](https://finance.yahoo.com) as xts objects
with their respective *closing price*. It model them as a time series to find the Rollingmean.
Then, to plot both them by a ggplot geometric line, build a dataframe and transform the 
character dates into Date type to observe the annual data trends.
### Installation
```
install the package
devtools::install_github('unimi-dse/edf3d358')
```
### Required library

* [Tidyquant](https://cran.r-project.org/web/packages/tidyquant/index.html)
* [Tidyverse](https://www.tidyverse.org/)
### Example
```
Tickr1 <- Get_Ticker("AAPL")
Tickr2 <- Get_Ticker("FB")
ClosingPrices <- Resume(Tickr1, Tickr2)
RM <- RollingMean(ClosingPrices)
df <- Modeldf("ClosingPrices")
Plottt <- Plot_Ticker(df, df$AAPL.Close, df$FB.Close)
```

