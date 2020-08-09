function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

#for i=1:length(K),
#  sum_i = zeros(size(m,1));
#  num_i = 0;
  
#  for j=1:length(idx),
#    if(idx(j) == i)
#      sum_i += X(j);
#      num_i += 1;
#    endif
#  endfor
  
#  centroids = 
  # select from idx where idx is in i
  # sum = sum of all memebers in i
  # number  =  no of idx values
  
#endfor
#mean = 1/number_of_k_class * sum (all_members_of_k_class)


for i=1:K,
  sel = find(idx == i);
  
  if(sel)
    centroids(i,:) = mean(X(sel,:),1);
  endif
  #centroids(i,:) = mean(X(idx ==i,:));

endfor





% =============================================================


end

