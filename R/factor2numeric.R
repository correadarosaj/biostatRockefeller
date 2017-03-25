#' Convert factor into numeric variable
#' @description A function that will transform a factor into a numeric variable
#' @param x: a vector that has a factor variable
#' @examples
#' fx<-c('0','1','2','a')
#' factor2numeric(fx)

factor2numeric<-function(x){

  x<-as.numeric(as.character(x))
return(x)
}

