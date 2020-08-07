# Unsupervised learning

## Introduction
It is a clustering algorithm.

## K means algorithm

Takesa parameter K which is the numberof clusters
over training set X1 x2 x3 upto xm

Randomly initialise K cluster centroids mu1 mu2 and muk

Repeat {
    for i=1:m,
        C(i) = index(from 1 to k) of cluster centroid closest to x(i)
        C(i) is the value that minimises ||x(i) - mu(k)||.^ 2
        thisis the cluster assignment set
    for k=1:K
        mu(k) = average of points assigned to cluster k
    move the cluser
    mu(k) = average(all x(i) in teh cluster)/number of x(i)

}   

We eliminate the cluster if the cluster is wrongly assigned.
g\

## Optimisation objective

K means optimisation objective
c(i) = index of clister to which the example x(i) is currently assigned

mu(k) = ckuster centroid k
muc(i) = cluster centroid of cluster to which example x(i) has been assigned

the objective is to minimise 
1/m sum[1 to m](X(i) - muc(i)).^2

## Random initialisation

in this we randomly inita=ialise K means and compute the ost function and then choose the random value with lowest cost function

## choosing the umber of cluster

elbow method where the cost function is least
evaluate K means on a metric on how well it works on a later purpose

## Dimensionality reduction

### Motivation data compression

reducing the number of features by finding the correlation between the data

Suppose we apply dimensionality reduction to a dataset of m examples {x(1),x(2),…,x(m)}\{x^{(1)}, x^{(2)}, \dots, x^{(m)}\}{x(1),x(2),…,x(m)}, where x(i)∈Rnx^{(i)}\in\mathbb{R}^nx(i)∈Rn. As a result of this, we will get out:
A lower dimensional dataset {z(1),z(2),…,z(m)}\{z^{(1)}, z^{(2)},\dots, z^{(m)}\}{z(1),z(2),…,z(m)} of m examples where z(i)∈Rkz^{(i)} \in \mathbb{R}^kz(i)∈Rk for some value of kkk and k≤nk\leq nk≤n. 

### MOtivation data visualisation

helps to plot data better


Next video :
https://www.coursera.org/learn/machine-learning/lecture/GBFTt/principal-component-analysis-problem-formulation

