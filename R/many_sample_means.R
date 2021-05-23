#' perform the sample_mean process many times
#' and return a vector of the results.
#'
#' @param n An integer
#' @param vec A vector
#' @param reps An integer
#'
#' @return a vector of the result of calling sample_mean many times
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export


many_sample_means <- function(vec, n, reps){
  return (replicate(reps, sample_mean(vec, n)))
}