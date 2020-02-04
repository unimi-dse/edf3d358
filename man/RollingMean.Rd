\name{RollingMean}
\alias{RollingMean()}
\title{Find The rolling mean of thw saved titles}

\description{Applysng the rollapply function of the zoo package you can calculate the Rollingmean since we choose FUN = mean}

\usage{R <- RollingMean(xtsobject)}
\arguments{xts symbol}

\value{xts object numeric}


\references{zoo, rollapply, rollingmean, Get_Ticker}

\author{LDS}

\examples{ R <- RollingMean(MYxts)

The function is currently defined as
function (NameTckr)
{
    RollingMean <- function(z){
  Rolling_mean <- zoo::rollapply(z,
                                 width = 2,
                                 FUN = mean)
  return(Rolling_mean)


}
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ TRY }
\keyword{ RollingMean() }
