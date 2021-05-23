#' take as input a vector vec and an integer n. 
#' It should take a random sample of size n from vec, 
#' then calculate and return the mean of that subsample.
#'
#' @param n An integer
#' @param vec A vector
#'
#' @return an int, mean of subsample
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


sample_mean <- function(vec, n){
  sub_sample <- sample(vec, n, replace = TRUE)
  return (mean(sub_sample))
}