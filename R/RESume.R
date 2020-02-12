#' Save into Close Price of Stocks
#'#Merge and clean data.
#' @param NameTckr Yahoo Finance
#'
#' @return xts object, Stock close price
#'
#' @examples
#' ClosingPrices <- Resume(Tickr1, Tickr2)

Resume<- function(x, y){
  Title1 <-Get_Tickers("x")
  Title2 <- Get_Tickers("y")
  Stocks <- merge(x, y)
  Clean <- na.omit(Stocks)
}
