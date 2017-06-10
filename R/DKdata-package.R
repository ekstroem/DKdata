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



#' Danish national soccer players
#'
#' Players on the Danish national soccer team. The dataset consists of all
#' players who have been picked to play on the men's senior A-team, their
#' position, date-of-birth, goals and matches.
#'
#'
#' @name soccer
#' @docType data
#' @format A data frame with 799 observations on the following 5 variables.
#' \describe{ \item{name}{a factor with names of the players}
#' \item{DoB}{a Date. The date-of-birth of the player}
#' \item{position}{a factor with levels \code{Forward} \code{Defender}
#' \code{Midfielder} \code{Goalkeeper}} \item{matches}{a numeric
#' vector. The number of A matches played by the player} \item{goals}{a
#' numeric vector. The number of goals scored by the player in A matches} }
#' @source Data collected from the player database of DBU on May 7th, 2017.
#' See \url{http://www.dbu.dk} for more information.
#' @keywords datasets
#' @examples
#'
#' data(soccer)
#'
#' birthmonth <- as.numeric(format(soccer$DoB, "%m"))
#' birthyear <- as.numeric(format(soccer$DoB, "%Y"))
#'
#'
NULL



#' Spurious Correlations
#'
#' Time series from 2001 to 2015 for a number of random (mostly) Danish statistics
#' to illustrate spurious correlations,
#'
#' @name spurious
#' @docType data
#' @format A data frame with 15 observations on the following 12 variables.
#' \describe{
#' \item{\code{Aar}}{The year}
#' \item{\code{Biografer}}{The number of movie theatres in Denmark}
#' \item{\code{Vaskemaskiner}}{The percentage of homes with a washing machine}
#' \item{\code{Skilsmisser}}{The number of divorces}
#' \item{\samp{Storebælt}}{Investments related to Storebæltsforbindelen (mio DKK)}
#' \item{\samp{Levendefødte}}{The number of live children born}
#' \item{\code{Udvandrede}}{The number of emigrants}
#' \item{\code{tvspots}}{The turn-over on tv commercials (1000 DKK).}
#' \item{\code{Stog}}{Transportation by S-trains (1000 individuals)}
#' \item{\samp{Årsmiddeltemperatur}}{The average yearly temperature}
#' \item{\code{Peter}}{The number of newborns given the name Peter}
#' \item{\samp{Brøndby}}{The ranking of the Brøndby football club in the football league}
#' }
#' @source Data collected from Statistics Denmark, Wikipedia, and various web pages
#' @keywords datasets
#' @examples
#'
#' data(spurious)
#'
#' cor(spurious)
#'
#'
NULL
