X = [3 6 9 6 3 0 0];
%X = [3 6 9 6 3 0 0 0];
A = 1;
B = [1/3 1/3 1/3];
%B = [3 -1 2 1]
Y = filter(B, A, X)

%1 2 3 2 1
%  1 2 3 2 1
%    1 2 3 2 1
%1 3 6 7 6 3 1

