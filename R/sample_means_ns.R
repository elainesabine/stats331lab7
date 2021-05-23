#' Perform the many_sample_means process 
#' for each of the values in the ns vector. 
#'
#' @param vec A vector
#' @param reps An integer
#' @param ns A vector of ns
#'
#' @return a dataframe of calling many_sample_means
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


sample_means_ns <- function(vec, reps, ns){
  result <- map(ns, ~many_sample_means(vec, .x, reps))
  dataframe <- as.data.frame(result)
  dataframe <- data.frame(sample_mean=unlist(dataframe))
  dataframe$n <- rep(ns,len=nrow(dataframe))
  rownames(dataframe) <- 1:nrow(dataframe)
  return (dataframe)
}