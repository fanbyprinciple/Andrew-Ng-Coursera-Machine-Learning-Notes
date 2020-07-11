% computingon data

A = [1,3,5; 2,4,6]
A = A'

B = [11, 12; 13, 14; 15, 16]

A.* B

A.^2

who

v = [1; 2; 3]

% element wise operation
1./v
1./A

log(v)
exp(v)

-v
abs(-v)

% incrementing all elements of matrix v
v + ones(length(v),1)

% or we can say
v + 1

a = [1, 2,3]

find(a<3)

a<3

a = magic(3)

[r,c] = find(A >= 7)

max(A, [], 1)

sum(a, 1)
sum(a, 2)

A = magic(9)
A.* eye(9)

A = magic(9)
A_inv = pinv(A)


A * A_inv