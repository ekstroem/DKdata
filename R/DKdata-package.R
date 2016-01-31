#' Collection of miscellaneous useful and semi-useful functions
#'
#' Collection of miscellaneous useful and semi-useful functions and add-on
#' functions that enhances a number of existing packages and provides In
#' particular in relation to statistical genetics
#'
#' \tabular{ll}{ Package: \tab MESS\cr Type: \tab Package\cr Version: \tab
#' 1.0\cr Date: \tab 2012-03-29\cr License: \tab GPL-2\cr } % ~~ An overview of
#' how to use the package, including the most important ~~ % ~~ functions ~~
#'
#' @name MESS
#' @aliases MESS-package MESS
#' @docType package
#' @useDynLib MESS
#' @importFrom Rcpp sourceCpp
#' @author Claus Ekstrom \email{claus@@rprimer.dk}\cr Maintainer: Claus Ekstrom
#' \email{claus@@rprimer.dk}
#' @references Ekstrom, C. (2011). The R Primer. Chapman & Hall.
#' @keywords package
NULL


#' Danish live births and deaths
#'
#' Monthly live births and deaths in Denmark from January 1901 to March 2013.
#'
#'
#' @name bdstat
#' @docType data
#' @format A data frame with 1356 observations on the following 4 variables.
#' \describe{ \item{year}{a numeric vector giving the month}
#' \item{month}{a numeric vector giving the year}
#' \item{births}{a numeric vector. The number of births for the given
#' month and year} \item{dead}{a numeric vector. The number of deaths
#' for the given month and year} }
#' @source Data were obtained from the StatBank from Danmarks Statistik, see
#' \url{http://www.statbank.dk}.
#' @keywords datasets
#' @examples
#'
#' data(bdstat)
#'
#' plot(bdstat$year + bdstat$month/13, bdstat$birth, type="l")
#'
#'
#' # Create table of births
#' # Remove year 2013 as it is incomplete
#' btable <- xtabs(births ~ year + month, data=bdstat, subset=(year<2013))
#'
#' # Compute yearly birth frequencies per month
#' btable.freq <- prop.table(btable, margin=1)
#'
#'
#'
NULL





#' Bee data. Number of different types of bees caught.
#'
#' Number of different types of bees caught in plates of different colours.
#' There are four locations and within each location there are three replicates
#' consisting of three plates of the three different colours (yellow, white and
#' blue). Data are collected at 5 different dates over the summer season. Only
#' data from one date available until data has been published.
#'
#'
#' @name bees
#' @docType data
#' @format A data frame with 72 observations on the following 7 variables.
#' \describe{ \item{Locality}{a factor with levels \code{Havreholm}
#' \code{Kragevig} \code{Saltrup} \code{Svaerdborg}. Four different localities
#' in Denmark.} \item{Replicate}{a factor with levels \code{A} \code{B}
#' \code{C}} \item{Color}{a factor with levels \code{Blue} \code{White}
#' \code{Yellow}. Colour of plates} \item{Time}{a factor with levels
#' \code{july1} \code{july14} \code{june17} \code{june3} \code{june6}. Data
#' collected at different dates in summer season. Only one day is present in
#' the current data frame until the full data has been released.}
#' \item{Type}{a factor with levels \code{Bumblebees} \code{Solitary}.
#' Type of bee.} \item{Number}{a numeric vector. The response variable
#' with number of bees catched.} \item{id}{a numeric vector. The id of
#' the clusters (each containg three plates).} }
#' @source Data were kindly provided by Casper Ingerslev Henriksen, Department
#' of Agricultural Sciences, KU-LIFE. Added by Torben Martinussen
#' <tma@@life.ku.dk>
#' @keywords datasets
#' @examples
#'
#' data(bees)
#' model <- glm(Number ~ Locality + Type*Color,
#'              family=poisson, data=bees)
#'
NULL





#' Blood clotting for 158 rats
#'
#' Blood clotting activity (PCA) is measured for 158 Norway rats from two
#' locations just before (baseline) and four days after injection of an
#' anticoagulant (bromadiolone). Normally this would cause reduced blood
#' clotting after 4 days compared to the baseline, but these rats are known to
#' possess anticoagulent resistence to varying extent. The purpose is to relate
#' anticoagulent resistence to gender and location and perhaps weight. Dose of
#' injection is, however, admistered according to weight and gender.
#'
#'
#' @name clotting
#' @docType data
#' @format A data frame with 158 observations on the following 6 variables.
#' \describe{ \item{rat}{a numeric vector} \item{locality}{a
#' factor with levels \code{Loc1} \code{Loc2}} \item{sex}{a factor with
#' levels \code{F} \code{M}} \item{weight}{a numeric vector}
#' \item{PCA0}{a numeric vector with percent blood clotting activity at
#' baseline} \item{PCA4}{a numeric vector with percent blood clotting
#' activity on day 4} }
#' @source Ann-Charlotte Heiberg, project at The Royal Veterinary and
#' Agricultural University, 1999. \cr Added by Ib M. Skovgaard <ims@@life.ku.dk>
#' @keywords datasets
#' @examples
#'
#'  data(clotting)
#'  dim(clotting)
#'  head(clotting)
#'  day0= transform(clotting, day=0, pca=PCA0)
#'  day4= transform(clotting, day=4, pca=PCA4)
#'  day.both= rbind(day0,day4)
#'  m1= lm(pca ~ rat + day*locality + day*sex, data=day.both)
#'  anova(m1)
#'  summary(m1)
#'  m2= lm(pca ~ rat + day, data=day.both)
#'  anova(m2)
#' ## Log transformation suggested.
#' ## Random effect of rat.
#' ## maybe str(clotting) ; plot(clotting) ...
#'
NULL





#' Average yearly summer air temperature for Tasiilaq, Greenland
#'
#' Average yearly summer (June, July, August) air temperature for Tasiilaq,
#' Greenland
#'
#'
#' @name greenland
#' @docType data
#' @format A data frame with 51 observations on the following 2 variables.
#' \describe{ \item{year}{year} \item{airtemp}{average air
#' temperature (degrees Celcius)} }
#' @references Aktuelt Naturvidenskab september 2010. \cr
#' http://aktuelnaturvidenskab.dk/fileadmin/an/nr-4/an4_2010gletscher.pdf
#' @source Data provided by Sebastian Mernild.\cr Originally obtained from
#' http://www.dmi.dk/dmi/index/gronland/vejrarkiv-gl.htm. \cr Added by Claus
#' Ekstrom <ekstrom@@life.ku.dk>
#' @keywords datasets
#' @examples
#'
#' data(greenland)
#' model <- lm(airtemp ~ year, data=greenland)
#' plot(greenland$year, greenland$airtemp, xlab="Year", ylab="Air temperature")
#' abline(model, col="red")
#'
NULL





#' Happiness score and tax rates for 148 countries
#'
#' Dataset on subjective happiness, tax rates, population sizes, continent, and
#' major religion for 148 countries
#'
#'
#' @name happiness
#' @docType data
#' @format A data frame with 148 observations on the following 6 variables.
#' \describe{ \item{country}{a factor with 148 levels that contain the
#' country names} \item{happy}{a numeric vector with the average
#' subject happiness score (on a scale from 0-10)} \item{tax}{a numeric
#' vector showing the tax revenue as percentage of GDP}
#' \item{religion}{a factor with levels \code{Buddhist}
#' \code{Christian} \code{Hindu} \code{Muslim} \code{None} or \code{Other}}
#' \item{continent}{a factor with levels \code{AF}, \code{AS},
#' \code{EU}, \code{NA}, \code{OC}, \code{SA}, corresponding to the continents
#' Africa, Asia, Europe, North America, Ocenaia, South American, respectively}
#' \item{population}{a numeric vector showing the population (in
#' millions)} }
#' @source Data collected by Ellen Ekstroem. \cr Population sizes are from
#' Wikipedia per August 2nd, 2012
#' \url{http://en.wikipedia.org/wiki/List_of_countries_by_population} \cr Major
#' religions are from Wikipedia per August 2nd, 2012
#' \url{http://en.wikipedia.org/wiki/Religions_by_country} \cr Tax rates are
#' from Wikipedia per August 2nd, 2012
#' \url{http://en.wikipedia.org/wiki/List_of_countries_by_tax_revenue_as_percentage_of_GDP}
#' \cr Average happiness scores are from "Veenhoven, R. Average happiness in
#' 148 nations 2000-2009, World Database of Happiness, Erasmus University
#' Rotterdam, The Netherlands". Assessed on August 2nd, 2012 at:
#' \url{http://worlddatabaseofhappiness.eur.nl/hap_nat/findingreports/RankReport_AverageHappiness.php}
#' @keywords datasets
#' @examples
#'
#' data(happiness)
#' with(happiness, symbols(tax, happy, circles=sqrt(population)/8, inches=FALSE, bg=continent))
#'
#' #
#' # Make a prettier image with transparent colors
#' #
#'
#' newcols <- rgb(t(col2rgb(palette())),
#'                alpha=100, maxColorValue=255)
#'
#' with(happiness, symbols(tax, happy, circles=sqrt(population)/8,
#'                 inches=FALSE, bg=newcols[continent],
#'                 xlab="Tax (% of GDP)", ylab="Happiness"))
#'
#' #
#' # Simple analysis
#' #
#' res <- lm(happy ~ religion + population + tax:continent, data=happiness)
#' summary(res)
#'
#'
NULL





#' Gene expression from real-time quantitative PCR
#'
#' Gene expression levels from real-time quantitative polymerase chain reaction
#' (qPCR) experiments on two different plant lines. Each line was used for 7
#' experiments each with 45 cycles.
#'
#'
#' @name qpcr
#' @docType data
#' @format A data frame with 630 observations on the following 4 variables.
#' \tabular{lll}{ \code{flour} \tab numeric \tab Fluorescence level\cr
#' \code{line} \tab factor \tab Plant lines \code{rnt} (mutant) and \code{wt}
#' (wildtype)\cr \code{cycle} \tab numeric \tab Cycle number for the
#' experiment\cr \code{transcript}\tab factor \tab Transcript used for the
#' different runs\cr }
#' @references Morant, M. et al. (2010). Metabolomic, Transcriptional, Hormonal
#' and Signaling Cross-Talk in Superroot2. \emph{Molecular Plant}. 3,
#' p.192--211.
#' @source Data provided by Kirsten Jorgensen <kij@@life.ku.dk>. \cr Added by Claus Ekstrom <ekstrom@@life.ku.dk>
#' @keywords datasets
#' @examples
#'
#' data(qpcr)
#'
#' #
#' # Analyze a single run for the wt line, transcript 1
#' #
#' run1 <- subset(qpcr, transcript==1 & line=="wt")
#'
#' model <- nls(flour ~ fmax/(1+exp(-(cycle-c)/b))+fb,
#'              start=list(c=25, b=1, fmax=100, fb=0), data=run1)
#'
#' print(model)
#'
#' plot(run1$cycle, run1$flour, xlab="Cycle", ylab="Fluorescence")
#' lines(run1$cycle, predict(model))
#'
NULL





#' Perception of points in a swarm
#'
#' Five raters were asked to guess the number of points in a swarm for 10
#' different figures (which - unknown to the raters - were each repeated three
#' times).
#'
#' The raters har approximately 10 seconds to judge each picture, and the
#' thought it was 30 different pictures. Before starting the experiment they
#' were shown 6 (unrelated) pictures and were told the number of points in each
#' of those pictures. The SAND column contains the picture id and the true
#' number of points in the swarm.
#'
#' @name rainman
#' @docType data
#' @format A data frame with 30 observations on the following 6 variables.
#' \describe{ \item{SAND}{The true number of points in the swarm. Each
#' picture is replicated thrice} \item{ME}{Ratings from judge 1}
#' \item{TM}{Ratings from judge 2} \item{AJ}{Ratings from judge
#' 3} \item{BM}{Ratings from judge 4} \item{LO}{Ratings from
#' judge 5} }
#' @source Collected by Claus Ekstrom.
#' @keywords datasets
#' @examples
#'
#' data(rainman)
#' long <- data.frame(stack(rainman[,2:6]), figure=factor(rep(rainman$SAND,5)))
#' figind <- interaction(long$figure,long$ind)
#' # Use a linear random effect model from the
#' # lme4 package if available
#' if(require(lme4)) {
#'   model <- lmer(values ~ (1|ind) + (1|figure) + (1|figind), data=long)
#' }
#'
#' #
#' # Point swarms were generated by the following program
#' #
#'
#' set.seed(2) # Original
#' npoints <- sample(4:30)*4
#' nplots <- 10
#' pdf(file="swarms.pdf", onefile=TRUE)
#'
#' s1 <- sample(npoints[1:nplots])
#' print(s1)
#' for (i in 1:nplots) {
#'   n <- s1[i]
#'   set.seed(n)
#'   x <- runif(n)
#'   y <- runif(n)
#'   plot(x,y, xlim=c(-.15, 1.15), ylim=c(-.15, 1.15), pch=20, axes=FALSE,
#'        xlab="", ylab="")
#' }
#' s1 <- sample(npoints[1:nplots])
#' print(s1)
#' for (i in 1:nplots) {
#'   n <- s1[i]
#'   set.seed(n)
#'   x <- runif(n)
#'   y <- runif(n)
#'   plot(y,x, xlim=c(-.15, 1.15), ylim=c(-.15, 1.15), pch=20, axes=FALSE,
#'        xlab="", ylab="")
#' }
#' s1 <- sample(npoints[1:nplots])
#' print(s1)
#' for (i in 1:nplots) {
#'   n <- s1[i]
#'   set.seed(n)
#'   x <- runif(n)
#'   y <- runif(n)
#'   plot(-x,y, xlim=c(-1.15, .15), ylim=c(-.15, 1.15), pch=20, axes=FALSE,
#'        xlab="", ylab="")
#' }
#' dev.off()
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
#' @format A data frame with 805 observations on the following 5 variables.
#' \describe{ \item{name}{a factor with names of the players}
#' \item{DoB}{a Date. The date-of-birth of the player}
#' \item{position}{a factor with levels \code{Forward} \code{Defender}
#' \code{Midfielder} \code{Goalkeeper}} \item{matches}{a numeric
#' vector. The number of A matches played by the player} \item{goals}{a
#' numeric vector. The number of goals scored by the player in A matches} }
#' @source Data collected from the player database of DBU on March 21st, 2014.
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





#' Gene expression data from two-color dye-swap experiment
#'
#' Gene expression levels from two-color dye-swap experiment on 6 microarrays.
#' Arrays 1 and 2 represent the first biological sample (ie, the first dye
#' swap), 3 and 4 the second, and arrays 5 and 6 the third.
#'
#'
#' @name superroot2
#' @docType data
#' @format A data frame with 258000 observations on the following 5 variables.
#' \describe{ \item{color}{a factor with levels \code{green} \code{red}
#' representing the dye used for the gene expression} \item{array}{a
#' factor with levels \code{1} \code{2} \code{3} \code{4} \code{5} \code{6}
#' corresponding to the 6 arrays} \item{gene}{a factor with 21500
#' levels representing the genes on the arrays} \item{plant}{a factor
#' with levels \code{rnt} \code{wt} for the two types of plants: runts and wild
#' type} \item{signal}{a numeric vector with the gene expression level
#' (normalized but not log transformed)} }
#' @references Morant, M. et al. (2010). Metabolomic, Transcriptional, Hormonal
#' and Signaling Cross-Talk in Superroot2. \emph{Molecular Plant}. 3,
#' p.192--211.
#' @source Data provided by Soren Bak <bak@@life.ku.dk>. \cr Added by Claus
#' Ekstrom <ekstrom@@sund.ku.dk>
#' @keywords datasets
#' @examples
#'
#' data(superroot2)
#' # Select one gene
#' g1 <- superroot2[superroot2$gene=="AT2G24000.1",]
#' model <- lm(log(signal) ~ plant + color + array, data=g1)
#' summary(model)
#'
NULL


#' Earthquakes in 2015
#'
#' Information on earthquakes worldwide in 2015 with a magnitude greater than 3 on the Richteer scale. The variables are just a subset of the variables available at the source
#'
#'
#' @name earthquakes
#' @docType data
#' @format A data frame with 19777 observations on the following 22 variables.
#' \describe{ \item{time}{a factor with time of the earthquake}
#' \item{\code{latitude}}{a numeric vector giving the decimal degrees latitude. Negative values for southern latitudes}
#' \item{\code{longitude}}{a numeric vector giving the decimal degrees longitude. Negative values for western longitudes}
#' \item{\code{depth}}{Depth of the event in kilometers}
#' \item{\code{mag}}{The magnitude for the event}
#' \item{\code{place}}{a factor giving a textual description of named geographic region near to the event. }
#' \item{\code{type}}{a factor with levels \code{earthquake} \code{mining explosion} \code{rock burst}}
#'   }
#' @source \url{http://earthquake.usgs.gov/}
#' @keywords datasets
#' @examples
#'
#' data(earthquakes)
#' with(earthquakes, place[which.max(mag)])
#'
NULL

