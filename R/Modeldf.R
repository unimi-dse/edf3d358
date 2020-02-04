Modeldf <- function(z){
new <- data.frame(z)
new$Date <- rownames(new)
new$Date <- as.Date(new$Date)
return(new)
}

