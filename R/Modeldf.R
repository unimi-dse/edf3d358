#' Transform an xts in a dataframe.
#' Useful with time series from GetSymbol
#'Applying getSymbols retrive quotation from Yahoo.Finance and choose the Close Price column.
#' @param xts objects from Yahoo Finance
#'
#' @return datframe
#'
#' @examples
#'df <- Modeldf(ClosingPrices)

Modeldf <- function(z){
  new <- data.frame(z)
  new$Date <- rownames(new)
  new$Date <- as.Date(new$Date)
  return(new)
}
