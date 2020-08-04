function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.

# this needs tobe changed
C_check = [0.01,0.03,0.1, 0.3, 1,3, 10, 30];
sigma_check = [0.01,0.03,0.1, 0.3, 1,3, 10, 30];

max_prediction_error = infinity;
for i = 1:size(C_check)(1):
  for j = 1:size(sigma_check)(1):
    predictions = svmPredict(gaussianKernel, Xval);
    
    prediction_error = mean(double(predictions ~= yval);
    
    if (prediction_error <max_prediction_error):
      max_prediction_error = prediction_error;
      C = C_check(i);
      sigma = sigma_check(i);
      
    endif
    
  endfor
endfor

%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
