\name{Resume}
\alias{Resume()}
\title{Build a single xts object and delete NA values}

\usage{REs <- Resume(BTC, ETH) where BTC e ETH are the variables where I stored my two titles by applying
Get_Ticker(NameTckr)
}
\arguments{varables}

\value{xts object numeric}


\references{GetSymbols, Get_Ticker}

\author{LDS}

\examples{ FTSE <- Get_Ticker("FTSEMIB.MI")
           DOWJones <- Get_Ticker("^DJI")
           REs <- Resume(FTSE, DOWJones)




 The function is currently defined as
function {
Resume <- function(x, y){
  Title1 <-Get_Ticker("x")
  Title2 <- Get_Ticker("y")
                               Stocks <- merge(x, y)
                               Clean <- na.omit(Stocks)
}


}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ TRY }
\keyword{ Resume() }
