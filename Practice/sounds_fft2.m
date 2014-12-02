fs = 8000;
t = 0:1/fs:1;

x = 10 +14*cos((200*pi*t)-pi/3) + 8*cos((500*pi*t)+pi/2);
sound(x, fs); %fs is responsible for the duration
plot(t, x);

X1 = fft(x);
plot(abs(X1));

%new
f = -fs/2:fs/2;
plot(f, fftshift(abs(X1)));

%sine
fs = 16000;
t = 0:1/fs:1;

y = cos(1000*pi*t).*sin(10000*pi*t);
sound(y, fs); %fs is responsible for the duration
Y1 = fft(y);
f = -fs/2:fs/2;
plot(f, fftshift(abs(Y1)));

%square
fs = 16000;
t = 0:1/fs:1;

z = square(1000*pi*t);
sound(z, fs); %fs is responsible for the duration
Z1 = fft(z);
f = -fs/2:fs/2;
plot(f, fftshift(abs(Z1)));

%triangle
fs = 16000;
t = 0:1/fs:1;

t = sawtooth(1000*pi*t);
sound(t, fs); %fs is responsible for the duration
T1 = fft(t);
f = -fs/2:fs/2;
plot(f, fftshift(abs(T1)));



