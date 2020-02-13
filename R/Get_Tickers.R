#' Save into Close Price of Stocks
#'Applying getSymbols retrive quotation from Yahoo.Finance and choose the Close Price column.
#' @param NameTckr Yahoo Finance
#'
#' @return xts object, Stock close price
#'
#' @examples
#' Get_Ticker("IBM")
#' Tickr1 <- Get_Ticker("AAPL") #Check ticker' symbol on Yahoo
#' Tickr2 <- Get_Ticker("FB")
Get_Tickers <- function(NameTckr){
  myEnv<- new.env()
  Data_acq <- quantmod::getSymbols(NameTckr,
                                   src = "yahoo",
                                   index.class = 'Date',
                                   from = "2015/01/01",
                                   env= new.env(),
                                   auto.assign = FALSE)
  CloseP <- Data_acq[,4]
  return(CloseP)
}
