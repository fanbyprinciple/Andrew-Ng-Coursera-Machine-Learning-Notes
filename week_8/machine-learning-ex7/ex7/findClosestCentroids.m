function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%

#for i=1:size(X,1),
#  min_cost = (centroids(1) - X(i)).^2;
#  min = 1;
#  for j=1:K,
#    c = (centroids(j) - X(i)).^2;
#    if (c < min_cost)
#      min = j;
#      min_cost = c;
#    endif
#  endfor
#  idx(i) = centroids(min);
#endfor

for i = 1:length(X)
  minDist = Inf;
  for j = 1:K
    dist = norm(X(i,:) - centroids(j,:)).^2;
    
    if dist < minDist
      minDist = dist;
      idx(i) = j;
    endif
  endfor
endfor



% =============================================================

end

