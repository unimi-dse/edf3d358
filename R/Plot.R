#' Plot your Tickers with ggplot2
#' Useful with time series from GetSymbol
#' Closing Prices and date up to date
#' @param dataset, Tickr1, Tickr2
#'
#' @return plot
#'
#' @examples
#' Plot_Ticker(df, df$AAPL.Close, df$IBM.Close)

Plot_Ticker<- function(Dataset,Tckr1,Tckr2){

  p <- ggplot2::ggplot(Dataset, ggplot2::aes(Date))
  x <- p +
    ggplot2::geom_line(ggplot2::aes(y = Tckr1, colour = "Ticker1"),group =1) +
    ggplot2::geom_line(ggplot2::aes(y = Tckr2, colour = "Ticker2"), group =1) +
    ggplot2::ylab("Close Price") +
    ggplot2::xlim(as.Date(c('1/1/2015', '1/1/2019'), format="%d/%m/%Y") )
  return(x)
}
