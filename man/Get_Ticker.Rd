\name{Get_Ticker}
\alias{Get_Ticker}
\title{Save into Close Price of Stocks}

\description{Applying getSymbols retrive quotation from Yahoo.Finance and choose the Close Price column.}

\usage{x <- Get_Ticker("NameTckr")
Get_Ticker(NameTckr)
}
\arguments{stock symbol}

\value{xts object numeric}


\references{GetSymbols}

\author{LDS}

\examples{ FTSE <- Get_Ticker("FTSEMIB.MI")
           BTC <- Get_Ticker("BTC-USD")



 The function is currently defined as
function (NameTckr)
{
    myEnv <- new.env()
    Data_acq <- quantmod::getSymbols(NameTckr, src = "yahoo",
        index.class = "Date", from = "2015/01/01", env = new.env(),
        auto.assign = FALSE)
    Data_acq$Date <- as.Date(as.character(Data_acq$Date))
    CloseP <- Data_acq[, 4]
  }
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ TRY }% use one of  RShowDoc("KEYWORDS")
\keyword{ Get_Ticker() }% __ONLY ONE__ keyword per line
