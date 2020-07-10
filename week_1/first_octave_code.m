% The ; denotes we are going back to a new row
A = [1,2,3; 4, 5, 6;7,8,9;10,11,12]

% Initialise a vector
V = [1;2;3]

% Get the dimension of a
[m,n] = size(A)

% we can also store it as
dim_A = size(A)

% Get the dimension of the vector v
dim_v = size(V)

% now lets index into the 2nd row and 3rd column of matrix a
A_23 = A(2,3)

disp(A_23)