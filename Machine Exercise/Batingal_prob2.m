num = [2 5 9 5 3];
den = [5 45 2 1 1];

[z,p,k] = tf2zp(num,den);

disp('Zeros are at');disp(z);
disp('Poles are at');disp(p);
disp('Gain Constant');disp(k);

radius=abs(p);
disp('Radius of the poles'); disp(radius);

zplane(num,den);

sos = zp2sos(z,p,k);
disp('Factored form');disp(sos);