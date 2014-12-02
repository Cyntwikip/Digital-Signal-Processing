C3 = 131;
C3s = 139;
D3 = 146;
E3 = 165;
F3 = 175;
G3 = 196;
A3 = 220;
B3 = 247;
C4 = 262;
C4s = 277;
D4 = 294;
E4 = 330;
F4 = 349;
F4s = 370;
G4 = 392;
A4 = 440;
B4 = 492;
C5 = 523;
C5s = 554;
D5 = 587;
E5 = 659;
F5 = 698;
F5s = 740;
G5 = 784;
A5 = 880;
B5 = 988;
C6 = 1046.52;
D6 = 1174.659;
E6 = 1318.51;
F6 = 1396.913;
F6s = 1480;
G6 = 1567.982;
A6 = 1760;
B6 = 1975.533;


t = 0.25;
in = 0.01;


%1st part
tone = [A5 F5s G5, A5 F5s G5, A5 A4 B4, C5s D5 E5, F5s G5 F5s];
%tone = [F5s F5s G5 A5, A5 G5 F5s E5, D5 D5 E5 F5s, F5s E5 E5];
%tone = [F6s F6s G6 A6, A6 G6 F6s E6, D6 D6 E6 F6s, F6s E6 E6];
toneduration = [2*t t t, 2*t t t, 2*t t t, t t t, t t t];
toneinterval = in*ones(1, length(tone));

%2nd part
tone2 = [F4s F4s G4 A4, A4 G4 F4s E4, D4 D4 E4 F4s, E4 D4 D4];
toneduration2 = [t t t t, t t t t, t t t t, 1.5*t 0.5*t 2*t];
toneinterval2 = in*ones(1, length(tone2));

%3rd part
tone3 = [E4 E4 F4s D4, E4 F4s G4 F4s D4, E4 F4s G4 F4s E4, D4 E4 A3 F4s];
toneduration3 = [t t t t, t t/2 t/2 t t, t t/2 t/2 t t, t t t 2*t];
toneinterval3 = [in in in in, in in/2 in/2 in in, in in/2 in/2 in in, in in in in];

%4th part
tone4 = [F4s G4 A4, A4 G4 F4s G4 E4, D4 D4 E4 F4s, E4 D4 D4];
toneduration4 = [t t t, t t t t/2 t/2, t t t t, 1.5*t t/2 2*t];
toneinterval4 = [in in in, in in in in/2 in/2, in in in in, in in/2 in];



length(tone);
length(toneduration);

fs = 40000;

%initialize
%xt = zeros(1, sum(toneduration)*fs+2);
%xt = zeros(1, (length(toneduration)*in+sum(toneduration))*fs+2);
%xt = zeros(1, (sum(toneinterval)+sum(toneduration))*fs+2);
tones = sum(toneduration) + sum(toneduration2) + sum(toneduration3) + sum(toneduration4);
intervals = sum(toneinterval) + sum(toneinterval2) + sum(toneinterval3) + sum(toneinterval4);
xt = zeros(1, (tones+intervals)*fs+2);
 
%1st part
n1=1;
for i = 1:length(tone)
   tt = 0:1/fs:toneduration(i);
   y= sin(2*pi*tone(i)*tt);
   n2=n1 + length(y)-1;
   xt(n1:n2) = xt(n1:n2) + y;
   n1 = n2;
   
   %for interval
   tt = 0:1/fs:toneinterval(i);
   y = sin(2*pi*0*tt);
   n2 = n1 + length(y)-1;
   %n2 = n1 + length(tt)-1;
   xt(n1:n2) = xt(n1:n2)+y;
   %xt(n1:n2) = zeros(1, length(tt));
   n1 = n2;
end
 
%2nd part
for i = 1:length(tone2)
   tt = 0:1/fs:toneduration2(i);
   y= sin(2*pi*tone2(i)*tt);
   n2=n1 + length(y)-1;
   xt(n1:n2) = xt(n1:n2) + y;
   n1 = n2;
     
   %for interval
   tt = 0:1/fs:toneinterval2(i);
   y = sin(2*pi*0*tt);
   n2 = n1 + length(y)-1;
   %n2 = n1 + length(tt)-1;
   xt(n1:n2) = xt(n1:n2)+y;
   %xt(n1:n2) = zeros(1, length(tt));
   n1 = n2;
  end
 
%3rd part
for i = 1:length(tone3)
   tt = 0:1/fs:toneduration3(i);
   y= sin(2*pi*tone3(i)*tt);
   n2=n1 + length(y)-1;
   xt(n1:n2) = xt(n1:n2) + y;
   n1 = n2;
   
   %for interval
   tt = 0:1/fs:toneinterval3(i);
   y = sin(2*pi*0*tt);
   n2 = n1 + length(y)-1;
   %n2 = n1 + length(tt)-1;
   xt(n1:n2) = xt(n1:n2)+y;
   %xt(n1:n2) = zeros(1, length(tt));
   n1 = n2;
end
 
%4th part
for i = 1:length(tone4)
   tt = 0:1/fs:toneduration4(i);
   y= sin(2*pi*tone4(i)*tt);
   n2=n1 + length(y)-1;
   xt(n1:n2) = xt(n1:n2) + y;
   n1 = n2;
   
   %for interval
   tt = 0:1/fs:toneinterval4(i);
   y = sin(2*pi*0*tt);
   n2 = n1 + length(y)-1;
   %n2 = n1 + length(tt)-1;
   xt(n1:n2) = xt(n1:n2)+y;
   %xt(n1:n2) = zeros(1, length(tt));
   n1 = n2;
end

soundsc(xt, fs);
