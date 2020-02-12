#' Get a Ticker: Save into Close Price of Stocks
#'
#' @param NameTckr A string containing Ticker Symbol
#' @return The ClosePrice of the Ticker since the 1/1/2015
#' @examples
#' FTSE <- Get_Ticker("FTSEMIB.MI")
#' BTC <- Get_Ticker("BTC-USD")


Get_Ticker <- function(NameTckr){
  myEnv<- new.env()
  Data_acq <- quantmod::getSymbols(NameTckr,
                                   src = "yahoo",
                                   index.class = 'Date',
                                   from = "2015/01/01",
                                   env= new.env(),
                                   auto.assign = FALSE)
  Data_acq$Date <- as.Date(as.character(Data_acq$Date))
  CloseP <- Data_acq[,4]
}

