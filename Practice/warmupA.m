% (c) Cyntwikip

clear;  %clear variables.

%%
% part 1
fs = 30;
t = 0:1/fs:1;
freq = 12; %frequency
y = sin(2*pi*freq*t);  %sinusoid
subplot(2,2,1);
plot(t, y);
%%

%%
% part 2
Y1 = fft(y);
f = -fs/2:fs/2;
subplot(2,2,2);
plot(f, fftshift(abs(Y1)));
%%

%%
% part 3
fs = 12;
t = 0:1/fs:1;
freq = 12; %frequency
y = sin(2*pi*freq*t);  %sinusoid
subplot(2,2,3);
plot(t, y);
%%

%%
% part 4
Y1 = fft(y);
f = -fs/2:fs/2;
subplot(2,2,4);
plot(f, fftshift(abs(Y1)));
%%

