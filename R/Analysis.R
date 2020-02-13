#' A little analyisis that need to be deeper
#'Calculate the RollingMEan and Analyze keys statistics
#' @param variable (usually, multi table xts)
#'
#' @examples
#' Summary <- Analysis(ClosingPrices)

Analysis <- function(z){
  Rolling_mean <- zoo::rollapply(z,
                                 width = 2,
                                 FUN = mean)
  summary(Rolling_mean)

}
