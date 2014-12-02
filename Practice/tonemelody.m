%C = 1046.52;
%D = 1174.659;
%E = 1318.51;
%F = 1396.913;
%G = 1567.982;
%A = 1760;
%B = 1975.533;

C3 = 131;
D3 = 139;
E3 = 165;
F3 = 175;
G3 = 196;
A3 = 220;
B3 = 247;
C4 = 262;
D4 = 294;

t = 0.25;

%tone = [B 0 A 0 G 0 A 0 B 0 B 0 B 0 A 0 A 0 A 0 B 0 DD 0 DD]; 
tone = [C4 0 G3 0 G3 0 A3 0 G3 0 B3 0 C4];
toneduration = [t 0.15 t/2 0.05 t/2 0.05 t 0.1 t 2*t t 0.1 t];
%toneduration = [2*t 0.1 t 0.05 t 0.05 t 0.1 t 0.02 t 0.02 2*t 0.1 t 0.02 t 0.02 2*t 0.1 t 0.02 t 0.02 2*t]; 
length(tone);
length(toneduration);

fs = 20000;

 xt = zeros(1, sum(toneduration)*fs+2);
 
 n1=1;
 for i = 1:length(tone)
     tt = 0:1/fs:toneduration(i);
     y= square(2*pi*tone(i)*tt);
     n2=n1 + length(y)-1;
     xt(n1:n2) = xt(n1:n2) + y;
     n1 = n2;
 end
 
 soundsc(xt, fs);
