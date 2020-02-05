RollingMean <- function(z){
  Rolling_mean <- zoo::rollapply(z,
                                 width = 2,
                                 FUN = mean)
  return(Rolling_mean)
}
