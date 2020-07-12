function j_value = costFunction(X,theta, y)
  disp('The size of X: ')
  m = size(X, 1)
  predictions = X * theta;
  % the order is also important
  %sqrErrors = (predictions - y).^2
  j_value = 1/(2*m) * sum((X*theta - y).^2)
  % notice the sum
endfunction
