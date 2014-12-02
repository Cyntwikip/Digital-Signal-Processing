%C = 1046.52;
%D = 1174.659;
%E = 1318.51;
%F = 1396.913;
%G = 1567.982;
%A = 1760;
%B = 1975.533;

C = 523.251;
D = 587.33;
E = 659.255;
F = 698.456;
G = 783.991;
A = 880;
B = 987.767;
CC = 1046.502;
DD = 1174.659;

t = 0.25;

tone = [B 0 A 0 G 0 A 0 B 0 B 0 B 0 A 0 A 0 A 0 B 0 DD 0 DD]; 
toneduration = [2*t 0.1 t 0.05 t 0.05 t 0.1 t 0.02 t 0.02 2*t 0.1 t 0.02 t 0.02 2*t 0.1 t 0.02 t 0.02 2*t]; 
length(tone);
length(toneduration);

fs = 10000;

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



%t = 0:1/fs:0.3;

%i = 1;
%for i=1:length(tune)
%    y = sin(2*pi*tone(i)*t);
%    sound(y, fs); %fs is responsible for the duration
%end

