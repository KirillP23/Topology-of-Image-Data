# Topology-of-Image-Data
The idea is to represent different types of motion as topological manifolds of its images.

Python script generate_angle generates a csv file containing the image data.

R script TDA_analysis manipulates the csv data by applying the diffusion map on the data set 
  and plugging it into ripsDiag() function of TDA package.
  
R script generates a (relatively) noise-free Persistent Diagam of the set of points, 
  which in turn allows us to recognize the type of a manifold.
