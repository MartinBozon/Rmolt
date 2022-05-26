### print the percentages box
#' percentage
#' @title{percentage}
#' @name percentage
#' @export

percentage <- function() {

  a <-0
  b <- 1
  c <- 0.5
  d <- 15
  e <- 1.2

  C1 <-polygon (x=c(0+e, 0+e, 1+e, 1+e, 0.5+e),
                y=c(46, 48, 48, 46, 46),
                col="white")
  C1 <<-"white"
  text(2.3, 50, "0%",cex=0.7)

  C2 <-polygon (x=c(a+e*2, e*2+a, e*2+b, e*2+b, e*2+c),
                y=c(46, 48, 48, 46, 46),
                col="gray90")
  C2 <<-"gray90"
  text(2.3+e, 50, "5%",cex=0.7)

  C3 <-polygon (x=c(a+e*3, e*3+a, e*3+b, e*3+b, e*3+c),
                y=c(46, 48, 48, 46, 46),
                col="gray80")
  C3 <<-"gray80"
  text(2.3+e*2, 50, "10%",cex=0.7)

  C4 <-polygon (x=c(a+e*4, e*4+a, e*4+b, e*4+b, e*4+c),
                y=c(46, 48, 48, 46, 46),
                col="lightyellow3")
  C4 <<-"lightyellow3"
  text(2.3+e*3, 50, "25%",cex=0.7)

  C5 <-polygon (x=c(a+e*5, e*5+a, e*5+b, e*5+b, e*5+c),
                y=c(46, 48, 48, 46, 46),
                col="gray57")
  C5 <<-"gray57"
  text(2.3+e*4, 50, "50%",cex=0.7)

  C6 <-polygon (x=c(a+e*6, e*6+a, e*6+b, e*6+b, e*6+c),
                y=c(46, 48, 48, 46, 46),
                col="gray37")
  C6 <<-"gray37"
  text(2.3+e*5, 50, "75%",cex=0.7)

  C7 <-polygon (x=c(a+e*7, e*7+a, e*7+b, e*7+b, e*7+c),
                y=c(46, 48, 48, 46, 46),
                col="gray20")
  C7 <<-"gray20"
  C8 <-polygon (x=c(a+e*8, e*8+a, e*8+b, e*8+b, e*8+c),
                y=c(46, 48, 48, 46, 46),
                col="gray0")
  C8 <<-"gray0"
  text(2.3+e*6, 50, "90%",cex=0.7)
  text(2.3+e*7, 50, "100%",cex=0.7)
}
