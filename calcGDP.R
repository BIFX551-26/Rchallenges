#' calcGDP
#' Calcuate gross domestic product from a dataset
#' 
#' @param dat A data frame containing the following columns: year, country, pop, gdpPercap
#' @param year An integer vector to use in filtering `dat` (default: all years)
#' @param country A character vector to use in filtering `dat` (default: all countries)
#' 
#' @details This function is meant to be used as a helper function when working with the `gapminder` dataset.
#' 
#' @source This function comes from the Functions module of the R for Reproducible Research course by the Software Carpentry Foundation (https://swcarpentry.github.io/r-novice-gapminder/10-functions.html).
#' 
#' @return A filtered version of `dat` with an additional column, `gdp`
calcGDP <- function(dat, year=NULL, country=NULL) {

  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }

  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }

  dat$gdp <- dat$pop * dat$gdpPercap

  return(dat)
}