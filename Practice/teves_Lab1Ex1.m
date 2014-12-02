A = [1 1/2; 1/3 1/4; 1/5 1/6];
B = [5 -2];
C = [4 5/4 3/4; 1 2 3];


A1 = A*C;
B1 = A + C';
%C1 = B*A +C'*A; not working
%D1 = (2*C - 6*A')*B'; not working
E1 = A*A' + C'*C;
