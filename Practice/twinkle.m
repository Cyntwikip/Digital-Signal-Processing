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
E4 = 330;
F4 = 349;
G4 = 392;
A4 = 440;
B4 = 492;
C5 = 523;
D5 = 587;
E5 = 659;
F5 = 698;
G5 = 784;
A5 = 880;
B5 = 988;
C6 = 1046.52;
D6 = 1174.659;
E6 = 1318.51;
F6 = 1396.913;
G6 = 1567.982;
A6 = 1760;
B6 = 1975.533;


t = 0.5;
in = 0.02;


tone = [C6 0 C6 0 G6 0 G6 0 A6 0 A6 0 G6 0 F6 0 F6 0 E6 0 E6 0 D6 0 D6 0 C6];
toneduration = [t in t in t in t in t in t in 2*t in t in t in t in t in t in t in 2*t];

length(tone);
length(toneduration);

fs = 10000;

%initialize
xt = zeros(1, sum(toneduration)*fs+2);
 
 n1=1;
 for i = 1:length(tone)
     tt = 0:1/fs:toneduration(i);
     y= sin(2*pi*tone(i)*tt);
     n2=n1 + length(y)-1;
     xt(n1:n2) = xt(n1:n2) + y;
     n1 = n2;
 end
 
 soundsc(xt, fs);
