z=[0.3; 2.5; -0.2+1i*0.4; -0.2-1i*0.4;];
p=[0.5; -0.75; 0.6+1i*0.7; 0.6-1i*0.7;];
disp(z);
disp(p);
k= 3.9;
[num,den]=zp2tf(z,p,k);
disp('Zeros are at');disp(z);
disp('Poles are at');disp(p);
disp('Gain Constant');disp(k);

radius=abs(p);
disp('Radius of the poles');disp(radius);

zplane(num,den)

sos = zp2sos(z,p,k);
disp('Factored form');disp(sos);