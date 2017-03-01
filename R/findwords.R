#' Find indexes and names of columns
#' @description A function that returns the indexes and names of data frame columns with matchings in a vector of keywords
#' @param keywords: a character vector with keywords to be queried
#' @param df: a data frame
#' @examples
#' Random.Normal <-rnorm(10)
#' Random.Poisson <-rpois(10)
#' mydata<-cbind.data.frame(Random.Normal = Random.Normal , Random.Poisson = Random.Poisson)
#' findwords(keywords=c('Random','Poisson'),df = mydata))

findwords<-function(keywords,df){

  # names of the data frame
  names<-names(df)

  # list of indexes
  indexes<-list()

  # a loop to identify the index of the columns
  for (i in 1:length(keywords)){

    indexes[[i]]<-grep(keywords[i],names,ignore.case=T)

    if(i>1){indexes[[i]]<-intersect(indexes[[i]],indexes[[i-1]])}

    }

  # all indexes
  all_indexes = unique(unlist(indexes))

  # column names
  colNames<-names(df)[all_indexes]

return(list(indexes = all_indexes , varnames = colNames))
}

