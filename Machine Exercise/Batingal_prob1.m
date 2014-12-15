num = [2 5 9 5 3];
den = [5 45 2 1 1];

w = -pi:pi/500;pi;
h = freqz(num,den,w);

subplot(2,2,1)
plot(w/pi,real(h));grid
title('Real part')
xlabel('\omega/\pi'); ylabel('Amplitude')
subplot(2,2,2)
plot(w/pi,imag(h));grid
title('Imaginary part')
xlabel('\omega/\pi'); ylabel('Amplitude')
subplot(2,2,3)
plot(w/pi,abs(h));grid
title('Magnitude Spectrum')
xlabel('\omega/\pi'); ylabel('Magnitude')
subplot(2,2,4)
plot(w/pi,angle(h));grid
title('Phase Spectrum')
xlabel('\omega/\pi'); ylabel('Phase, radians')