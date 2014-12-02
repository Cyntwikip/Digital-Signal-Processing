%Analysis of Z-Transform
%Definition of numerators and denominator coefficients
num=[5 6 -44 21 32];
den=[5 13 15 18 -12];
%Conversion from rational to Factored form
[z,p,k]=tf2zp(num,den);
disp('Zeros are at');disp(z);
disp('Poles are at');disp(p);
disp('Gain Constant');disp(k);
%Determination of radius of the poles
radius=abs(p);
disp('Radius of the poles');disp(radius);
%Pole Zero Map using numerator and denominator coefficients
zplane(num,den)
%Conversion from factored to second ordered factored
sos=zp2sos(z,p,k)
disp('Second Order Sections');disp(sos);

