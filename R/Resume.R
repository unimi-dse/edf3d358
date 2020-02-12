Resume<- function(x, y){
  Title1 <-Get_Ticker("x")
  Title2 <- Get_Ticker("y")
                               Stocks <- merge(x, y)
                               Clean <- na.omit(Stocks)
  return(Clean)
}

