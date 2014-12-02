%Sampling Rate
fs = 44100;
t = 0:1/fs:1;
freq = 500;
x = sin(2*pi*freq*t) + sin(2*pi*(2*freq)*t);
plot(t, x);
sound(x);

%FFT
X1 = fft(x);
plot(abs(X1));