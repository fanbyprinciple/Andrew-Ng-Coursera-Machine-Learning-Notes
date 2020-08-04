## Support vector machine
Notes: https://www.coursera.org/learn/machine-learning/resources/Es9Qo

### Optimisation objective

![](svm.png)

### Large Margin intuition

C controls how much the optimisation is affected by the outliers.

### mathematics begind large margin classfication

Why the best boundary is chosen
![](decision_boundary.png)

### Kernels 1

Is there somebetter representation thna the higher order polunomials

### Kernel 2

we choose as many landmarks as there are training sets.

### Using an svm

if we don'tspecify any kernel then it will take every function f to be a landmark and theta0 + theta1*x1 + theta2 *x2... as the kernel function

use feature scaling before using gaussian kernel.

NOt all similary functions were created equal, some diverge insteadof converging. Then we have a technical condition called mercer theoram to sat

1. Polinomial kernel.
2. String kernel, chi-square

Multi class classification
one vs all or using off the shelf multi class

logistic vs SVM

if n >= m , logistic
if n is small and m is intermediate
if n is small and m is large then use more features witohut


# Exercises

![](dataset.png)

![](affect_of_c.png)

![](dataset2.png)

![](decision_boundary_d2.gif)

![](dataset3.png)

![](decision_boundary_d3.png)

Need to modify for value of C and sigma.