#required library tidyverse e tydiquant
Plot_Ticker<- function(Dataset,Tckr1,Tckr2){


 p <- ggplot2::ggplot(Dataframe, aes(Date))

 x <-  p +
  geom_line(aes(y = Tckr1, colour = "Ticker1"),group =1) +
  geom_line(aes(y = Tckr2, colour = "Ticker2"), group =1) +
  ylab("Close Price") +
 xlim(as.Date(c('1/1/2015', '1/1/2019'), format="%d/%m/%Y") )
return(x)
}

