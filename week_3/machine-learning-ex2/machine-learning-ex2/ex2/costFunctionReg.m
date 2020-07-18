function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

prediction = sigmoid(X * theta);
new_theta= theta;
#lamda = 0
new_theta(1) = [];
# in regularising we dont use theta0
sum_term = -y' * log( prediction ) - ( 1-y' ) * log(1- prediction);
regularising_term = lambda / (2 * m) * sum(new_theta.^2);
J = 1/m * sum_term + regularising_term;

gradient_regularising_term = lambda/m * new_theta;
gradient_regularising_term = [0; gradient_regularising_term];
grad = (1/ m * X' * (prediction - y)).+ gradient_regularising_term;





% =============================================================

end
