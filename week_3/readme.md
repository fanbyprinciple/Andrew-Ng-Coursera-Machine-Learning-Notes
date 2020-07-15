## The need of logistic regression

Logistic regresssion is required mainly because linear regression cannot be used for classifcation because of following reason.
![](bad_classfication.png)

Logistic hypothesis:
![](logistic_hypothesis.png)

Since logistic regression always outputs a probability, we assume if the h(x) >= 0.5 or less than 0.5

Creating decision boundary through g(z) >0 :
![](decision_boundary.png)

Non linear decision boundary
![](non_linear_decision_boundary.png)

cost function:
![](cost_function.png)

finding cost function

plotting it
Plot J(θ)=−1m∑i=1m[y(i)log⁡hθ(x(i))+(1−y(i))log⁡(1−hθ(x(i)))]J(\theta) = -\frac{1}{m}\sum_{i=1}^{m}[y^{(i)}\log h_\theta(x^{(i)}) + (1-y^{(i)})\log(1-h_\theta(x^{(i)}))]J(θ)=−m1​∑i=1m​[y(i)loghθ​(x(i))+(1−y(i))log(1−hθ​(x(i)))] as a function of the number of iterations and make sure J(θ)J(\theta)J(θ) is decreasing on every iteration.

![](cost.png)

A vectorized implementation is:

θ:=θ−αmXT(g(Xθ)−y⃗)\theta := \theta - \frac{\alpha}{m} X^{T} (g(X \theta ) - \vec{y})θ:=θ−mα​XT(g(Xθ)−y
​)

choosing an optimisation algorithm
is of importance



Next video:
https://www.coursera.org/learn/machine-learning/lecture/68Pol/multiclass-classification-one-vs-all