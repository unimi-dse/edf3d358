\name{Plot_Ticker}
\alias{Plot_Ticker()}
\title{Plot stocks saved in a dataframe}

\description{require tidyverse and tidyquant. apply the ggplot function to plot geometric line. Draw two stocks and their trends}

\usage{pl <- Plot_Ticker(MYdf, MYdf$Ticker1Closeprice,  MYdf$Ticker2Closeprice)
 pl}
\arguments{saved dataframe, df$ClosePrice1, df$ClosePrice2}

\value{plot}

\references{ggplot2}

\author{LDS}

\examples{ pl <- Plot_Ticker(MYdf, MYdf$BTC.USD.Close, MYdf$ETH.USD.Close)
 pl

The function is currently defined as
function #required library tidyverse e tydiquant
{
Plot_Ticker<- function(Dataset,Tckr1,Tckr2){
 p <- ggplot2::ggplot(Dataset, aes(Date))

 p +
  geom_line(aes(y = Tckr1, colour = "Ticker1"),group =1) +
  geom_line(aes(y = Tckr2, colour = "Ticker2"), group =1) +
  ylab("Close Price") +
 xlim(as.Date(c("1/1/2015", "1/1/2019"), format= %d/%m/%Y))
}}}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ TRY }
\keyword{ Plot_Ticker() }% __ONLY ONE__ keyword per line
