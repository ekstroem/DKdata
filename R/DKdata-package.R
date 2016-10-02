#' Collection of DKdata
#'
#' Collection of Danish datasets
#'
#' \tabular{ll}{ Package: \tab DKdata\cr Type: \tab Package\cr Version: \tab
#' 1.0\cr Date: \tab 2012-03-29\cr License: \tab GPL-2\cr } % ~~ An overview of
#' how to use the package, including the most important ~~ % ~~ functions ~~
#'
#' @name DKdata
#' @aliases DKdata-package DKdata
#' @docType package
#' @author Claus Ekstrom \email{claus@@rprimer.dk}\cr Maintainer: Claus Ekstrom
#' \email{claus@@rprimer.dk}
#' @keywords package
NULL


#' Precipitation in Copenhagen
#'
#' Information on daily precipitation in Botanisk Have, Copenhagen, Denmark, from 1873 to 2013.
#'
#' 24-hour summed precipitation for Botanisk Have (Botanical Gardens), Copenhagen, coordinates:
#' 55.68N, 12.58E, from 1873 to 2013.
#'
#' @name precip
#' @docType data
#' @format A data frame with 51132 observations on the following 4 variables.
#'   \describe{
#'     \item{\code{year}}{a numeric vector}
#'     \item{\code{month}}{a numeric vector}
#'     \item{\code{day}}{a numeric vector}
#'     \item{\code{precip}}{a numeric vector (in mm)}
#'   }
#' @source \url{http://www.ecad.eu}
#' @references Klein Tank, A.M.G. and Coauthors, 2002. Daily dataset of 20th-century surface air temperature
#' and precipitation series for the European Climate Assessment.  Int. J. of Climatol
#' @keywords datasets
#' @examples
#'
#' data(precip)
#' ##
#' precip$date <- as.Date(paste(precip$year, "/", precip$month, "/", precip$day, sep=""))
#'
NULL

