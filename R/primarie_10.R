

#Rmolt for molt graph
#draw the feathers' graph in function of the percentage values
#' primarie_10
#' @title{primarie_10}
#' @name primarie_10
#' @param i a value to run the loop
#' @param data a data table to choose the color
#' @return a graph
#' @export
#'
primarie_10 <-function(i,data){
  #feather <- NULL
  par(mar = c(0,0,0,0) + 0.1)
  plot(1,1, col = "white", xlab = "", ylab = ""
       ,xlim=c(0,35), ylim=c(6,50),axes= FALSE)


  a <-0
  b <- 1
  c <- 0.5
  d <- 15
  e <- 1.2

  percentage()


  for(i in 1:10) {  #CM

    moult_color(i,data)

    CM <-polygon (x=c(a+e*i, e*i+a, e*i+b, e*i+b, e*i+c),
                  y=c(36, 38, 38, 36, 36),
                  col=feather)
    text(c+e*i, 39, data[i,1],cex=0.7)
  }

  for(i in 11:19) {  #CP

    moult_color(i,data)

    CM <-polygon (x=c(a+e*i, e*i+a, e*i+b, e*i+b, e*i+c),
                  y=c(37, 38, 38, 37, 36),
                  col=feather)
    text(c+e*i, 39, data[i,1],cex=0.7)
  }
  q=1
  for(i in 21:23) {  #Allula

    moult_color(i,data)


    A1 <-polygon(x=c(22, 22, 22.5+q, 23+q, 22.5+q),
                 y=c(39.6+1.2*q, 40.6+1.2*q, 40.6+1.2*q, 40.1+1.2*q, 39.6+1.2*q),
                 col=feather)
    text(21.5, 40.1+1.2*q, data[i,1],cex=0.7)
    q=q+1
  }
  #carpal

  moult_color(i,data)

  CARP <-polygon (x=c(15, 15, 16, 16, 16),
                  y=c(41, 43, 43, 41, 41),
                  col=feather)
  text(15.5, 44, data[20,1],cex=0.7)
  q=0

  for(i in 24:26) {  #Tertiaries

    moult_color(i,data)

    T <-polygon (x=c(2.4+a+e*q, e*q+2.4+a, e*q+2.4+b, e*q+2.4+b, e*q+2.4+c),
                 y=c(22-q*6, 32, 32, 22-q*6, 20-q*6),
                 col=feather)
    text(2.4+c+e*q, 19-q*6, data[i,1],cex=0.7)
    q=q+1
  }
  q=0

  for(i in 27:41) {  #primaries

    moult_color(i,data)

    T <-polygon (x=c(6+a+e*q, e*q+6+a, e*q+6+b, e*q+6+b, e*q+6+c),
                 y=c(15, 32, 32, 15, 13),
                 col=feather)
    text(6+c+e*q, 12, data[i,1],cex=0.7)
    q=q+1
  }

  if(data[i+1,2]==0){   #P10
    feather = "white"
  }
  else if (data[i,2]>=0.00001 & data[i,2]<=0.05){
    feather = "gray80"}
  else if (data[i,2]>=0.0500001 & data[i,2]<=0.10){
    feather = "gray73"}
  else if (data[i,2]>=10.00001 & data[i,2]<=0.25){
    feather = "gray63"}
  else if (data[i,2]>=0.2500001 & data[i,2]<=0.50){
    feather = "gray50"}
  else if (data[i,2]>=0.5000001 & data[i,2]<=0.75){
    feather = "gray28"}
  else if (data[i,2]>=0.7500001 & data[i,2]<=0.90){
    feather = "gray16"}
  else if (data[i,2]>=0.9000001){
    feather = "gray0"}

  P10 <-polygon (x=c(6+a+e*q, e*q+6+a, e*q+b+6, b+e*q+6, 6+c+e*q),
                 y=c(19, 32,32, 19, 17),
                 col=feather)
  text(6+c+e*q, 16, "P10",cex=0.7)




  for(i in 43:48) {  #rectrices

    moult_color(i,data)

    T <-polygon (x=c(10.8+a+e*q, e*q+10.8+a, e*q+10.8+b, e*q+10.8+b, e*q+10.8+c),
                 y=c(15, 32, 32, 15, 13),
                 col=feather)
    text(10.8+c+e*q, 12, data[i,1],cex=0.7)
    q=q+1

  }
}
