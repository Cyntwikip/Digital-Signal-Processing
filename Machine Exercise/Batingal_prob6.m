num = [2 5 9 5 3];
den = [5 45 2 1 1];

[r,p,k] = residue(num,den);

disp('Residues');disp(r);
disp('Poles');disp(p);
disp('Direct terms');disp(k);

[a,b]=impz(num,den);

[c,d]=freqz(num,den);

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
xlabel('\omega/\pi'); ylabel('Magnitude')
grid on
subplot(2,2,4)
plot(d/pi,angle(c))
title('Phase Spectrum of g[n]')
xlabel('\omega/\pi'); ylabel('Phase, radians')
grid on