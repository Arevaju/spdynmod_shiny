#' Plot abundance maps of plant communities.
#' 
#' A more detailed description of what the function is and how
#' it works. It may be a paragraph that should not be separated
#' by any spaces. 
#'
#' @param year year to plot (from 1984 to 2008)
#'
#' @return by default plots the final plant communities map (year = 2008).
#'
#' @keywords keywords
#'
#' @export
#' 
#' @examples
#' R code here showing how your function works

plot_maps<-function(year = 2008) { 

i <- (year-1984)*4

if(i==0){i = 1}

print(paste('year = ',year))

brks <- seq(0, 30, by=1) 
nb <- length(brks)-1 
#i<-96

par(mfrow=c(2,2))

plot(raster(matrix(nr = nr, nc = nc, out[i, 2:(NN+1)])),breaks=brks, col=rev(terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Salt marsh")

plot(raster(matrix(nr = nr, nc = nc, out[i, (NN+2):(2*NN+1)])),breaks=brks, col=rev(terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Salt steppe")

plot(raster(matrix(nr = nr, nc = nc, out[i, (2*NN+2):(3*NN+1)])),breaks=brks, col=rev(terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Reed beds")


plot(raster(matrix(nr = nr, nc = nc, out[i, (3*NN+2):(4*NN+1)])),breaks=brks, col=rev(terrain.colors(nb)), lab.breaks=brks, zlim=c(0,30),main="Bare soil")
}
