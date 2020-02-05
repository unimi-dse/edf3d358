\name{Modeldf}
\alias{Modedf}
\title{Model dataframe}

\description{Since the Get_Ticker function produce as output xts objects to let the possibility for further more application of time series analysis, we transform it in a df to approach to the ggplot2 interface, more friendly to dataframe}

\usage{MYdf <- Modeldf(dataset)
}
\arguments{dataset}

\value{df }

\author{LDS}

\examples{ MYdf<- Modeldf(Res)
The function is currently defined as
function (NameTckr)
{
    Modeldf <- function(z){
new <- data.frame(z)
new$Date <- rownames(new)
new$Date <- as.Date(new$Date)
return(new)
}

}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ TRY }% use one of  RShowDoc("KEYWORDS")
\keyword{ Modeldf() }% __ONLY ONE__ keyword per line
