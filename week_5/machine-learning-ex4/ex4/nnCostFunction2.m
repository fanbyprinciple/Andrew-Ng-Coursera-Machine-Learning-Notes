function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m


# y_matrix = eye(num_labels)(y,:);
# expanding y output value to a matrix of single value

a1 = [ones(size(X,1),1), X]; # 5000 * 401

#theta1 has size 25 X 401
#theta2 has size 10 X 26

z2 = a1 * Theta1';

a2 = sigmoid(z2);
a2 = [ones(size(a2,1),1), a2];
a3 = sigmoid(a2 * Theta2');

K = size(a3,2);
y1 = zeros(m, K);
for k = 1:K,
  y1(:,k) = y == k;
end

#one = ones(m, K);
#J = sum(sum(-y1.*log(a3)-(one-y1).*log(one-a3)));
#J = J/m;

#new_t1 = Theta1(:, 2:size(Theta1,2));
#new_t2 = Theta2(:, 2:size(Theta2,2));

#reg_term_1 = sum(sum(new_t1.^2));
#reg_term_2 = sum(sum(new_t2.^2));

#reg_term = (lambda/(2 * m))* (reg_term_1 + reg_term_2);

#J = J + reg_term;


theta1 = Theta1(:,2:size(Theta1,2));%25*400
theta2 = Theta2(:,2:size(Theta2,2)); %10*25
J = J + lambda / 2 / m * (sum(sum(theta1.^2))+ sum(sum(theta2.^2)));


% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.

# m is th enumber of training examples
# n is the number of training features
# h is the number of units in hidden layer NOT including the bias layer
# r is th enumber of output classifications

d3 = a3 - y;
d2 = d3 * theta2 .* sigmoidGradient(z2);

# we are excluding the first column of Theta2 because the hidden layer bias unit has no connection to the input laer so we do not use backpropagation for it.
delta1 = Theta1_grad + d2' * a1;
delta2 = Theta2_grad + d3' * a2;


Theta1_grad = (delta1)/m;
Theta2_grad = (delta2)/m;


% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

# regularised gradients

#new_grad_t1 = Theta1;
#new_grad_t1(:,1) = 0;
#new_grad_t2 = Theta2;
#new_grad_t2(:,1) = 0;

theta1 = [zeros(size(theta1,1),1), theta1];
theta2 = [zeros(size(theta2,1),1), theta2];

Theta1_grad = Theta1_grad + lambda * (theta1)/m;
Theta2_grad = Theta2_grad + lambda * (theta2)/m;


% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
