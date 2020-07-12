v=zeros(10,1)

for i=1:10,
  v(i) = 2^i
endfor

i  =1
while i <= 5,
  v(i) = 100
  i =i+1
endwhile

i =1 
while true,
  v(i) = 999
  i = i+1
  if i==6,
    break
  endif
endwhile

v(1) = 2
v

if v(1) == 1,
  disp('The value is onyx')
elseif v(1) == 2,
  disp('The value is doduo')
else
  disp('The value is Victini + 999')
endif

squareThisNumber(5)
% addpath('C:\Users\ang\Desktop\*')

squareAndCubeThisNumber(1771)

