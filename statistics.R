#Maryam Nematian
#a function that calculates the mean, median, standard deviation, interquartile range, and skew



statistics <- function(x) {
  x <- na.omit(x) #omitting the NAs in dataframe
  mu <- mean(x)
  med <- median(x)
  sd <- sqrt(var(x))
  ir <- IQR(x)
  sk <- skewness(x)
  mystat <- list(mu, med, sd, ir, sk) #making a list in order to be able to return multiple objects
  newnames <- c("mean", "median", "standard deviation", " interquartile range", "skew") 
  names(mystat) <- newnames  #associate each measure value to its respective name
  
  return(mystat)
}

statistics(erie2$TP)
