library('TDA') 
library('diffusionMap')
library('plot3D')

data_matrix=read.csv('~/Python/Fixed_center_N=4000_size=50_f=0.8.csv', sep=',',header=FALSE)/255
distance_mat <- dist(data_matrix)
diffusion_dist <- diffuse(distance_mat,maxdim=20)
plot(diffusion_dist)
diffusion_dist <- diffusion_dist[[1]]

Diag <- ripsDiag(diffusion_dist, dist = 'euclidean', maxdimension = 1, 
                 maxscale = 4,library = 'Dionysus', printProgress = TRUE)
#Diag <- ripsDiag(distance_mat, dist = 'arbitrary', maxdimension = 1, maxscale = 3,library = 'PHAT', printProgress = TRUE)
plot(Diag[["diagram"]])

