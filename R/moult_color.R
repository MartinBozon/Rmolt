#Rmolt for molt graph
#set the color in function of the percentage value
#' moult_color
#' @title{moult_color}
#' @name moult_color
#' @param i a value to run the loop
#' @param data a data table to choose the color
#' @return color of the feather
#' @export


moult_color <- function(i,data){
  C1<-C2<-C3<-C4<-C5<-C6<-C7<-C8 <- NULL
  if(data[i,2]==0){
    feather = C1
  }
  if (data[i,2]>=0.100001 & data[i,2]<=0.25){
    feather = C4
  }
  if (data[i,2]>=0.00001 & data[i,2]<=0.05){
    feather = C2
    }
  if (data[i,2]>=0.0500001 & data[i,2]<=0.10){
  feather = C3
    }
  if (data[i,2]>=0.251 & data[i,2]<=0.50){
    feather = C5
    }
  if (data[i,2]>=0.5000001 & data[i,2]<=0.75){
    feather = C6
    }
  if (data[i,2]>=0.7500001 & data[i,2]<=0.90){
    feather = C7
    }
  if (data[i,2]>=0.9000001){
    feather = C8
   }

  feather <<- feather
}
