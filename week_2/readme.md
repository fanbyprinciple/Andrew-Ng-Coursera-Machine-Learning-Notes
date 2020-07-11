## Multivariate  linear regression

1. Multiple x variables for a single y.
we take x0 as 1

2. Gradient descent for multiple variables
Refer to notebook.

conveniently gradient descen t for multiple variables also comes to the same formula

`thetaj = thetaj - sigma 1tom ((sigma 0ton (thetai*xi) - yj)^2) * xj`


3. IMportance of featur scaling we need to make sure that all features are of the same scale otherwise it willl take a long time to converge to the local minimum

rule of thumb is that the features scale must be between -1 and 1

for that either you can  do feature scaling which is simply deviding values by range

or Mean normalisation 
`x1 = x1 - u1/ s1`
where u1 is the averagevalue of xin the training set
and s1 is the range max - min or the standard deviation
 Mean normalisation also results with changing the mean of the x values as zero



4. Debuggin the gradient descent 
plot the cost function with the numbe rof iterations
ifthe curve y is going down then its good itherwise iterations are not helping the gradient descent to converge.

If its not converging then make sure you take a smaller value of alpha or your function is just wrong

next link :
https://www.coursera.org/learn/machine-learning/supplement/TnHvV/gradient-descent-in-practice-ii-learning-rate