%Inverse Z-Transform using impz
%definition of numerator and denominator coefficients
num=[0.1+.4*i 5 .05];
den=[1 .9+0.3*i .12];
%Finding the inverse z transform of G(z)
[a,b]=impz(num,den);
%Evaluating on Unit Circle i.e. Fourier Transform
[c,d]=freqz(num,den);
%Plotting of x[n] and it's fourier transform
subplot(2,2,1)
stem(b,real(a))
title('Real Part of g[n]')
xlabel('Samples'); ylabel('Magnitude')
grid on
subplot(2,2,2)
stem(b,imag(a))
title('Imaginary Part of g[n]')
xlabel('Samples'); ylabel('Magnitude')
grid on
subplot(2,2,3)
plot(d/pi,abs(c))
title('Magnitude Spectrum of g[n]')
xlabel('\Omega/\pi'); ylabel('Magnitude')
grid on
subplot(2,2,4)
plot(d/pi,abs(c))
title('Phase Spectrum of g[n]')
xlabel('\Omega/\pi'); ylabel('Phase, radians')
grid on