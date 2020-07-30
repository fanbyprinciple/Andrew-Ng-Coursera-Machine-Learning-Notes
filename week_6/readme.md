## Decididng what to try next

Debugging wehn given a large number of errors in the predictions -
1. we cantake more samples
2. Try a smaller set of features
3. polynomial features add
4. increasing or devreasing lambda.

## Evaluating a hypothesis

1. deviding them into training and validation sets
2. to avoid oerfitting keeping the training error to beloew and test error tobe 
3. steps : learn parameter theta from yraining data,
compute thte test error
compute tthe misclassification

![](test_set_error.png)

## Model selection and validation

1. In model seelection we also choose a value d whichc is s adegree of polynomial.
instead we use a 60 20 20 split between training cross validation and test set

## Diagnosing Bias vs Variance

![](high_variance_vs_high_bias.png)

## Regularisaton vs bias and variance

High regularisation means that underfittings high bias,low means overfitting high variance.

## Learning curves
Effect oof increasing the training parameters on:

High bias
![](high_bias_increase_m.png)

High variance
![](high_variance_increase_m.png)

## Deciding what to do in case of  overfitting and underfitting

    Getting more training examples: Fixes high variance

    Trying smaller sets of features: Fixes high variance

    Adding features: Fixes high bias

    Adding polynomial features: Fixes high bias

    Decreasing λ: Fixes high bias

    Increasing λ: Fixes high variance.

## Failed test:

suspect questions:
![](suspect_questions.png)

# Exercise :

The problem:
![](water_level.png)

Wrong regression:
![](bad_regression.png)

Wrong training curve by me:
![](wrong_training.png)


