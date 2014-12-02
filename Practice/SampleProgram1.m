% Discrete-Time Fourier Transform Computation
%
% Read in the desired number of frequency samples

k=input('Number of frequency points - ');
% Read in the numerator and denominator coefficients
num=input('Numerator coefficients - ' );
den=input('Denominator coefficients - ' );
% Compute the frequency response/Evaluate Z Transform on unit circle
w= 0:pi/(k-1):pi;
h= freqz(num,den,w);
%Plot the frequency response
subplot(2,2,1)
plot(w/pi,real(h));grid
title('Real Part')
xlabel('\omega/\pi'); ylabel('Amplitude')
subplot(2,2,2)
plot(w/pi, imag(h));grid
title('Imaginary Part')
xlabel('\omega/\pi'); ylabel('Amplitude')
subplot(2,2,3)
plot(w/pi, abs(h));grid
title('Magnitude Spectrum')
xlabel('\omega/\pi'); ylabel('Magnitude')
subplot(2,2,4)
plot(w/pi, angle(h));grid
title('Phase Spectrum')
xlabel('\omega/\pi'); ylabel('Phase, radians')