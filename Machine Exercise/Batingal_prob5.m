L = input('Numebr of samples = ');

num = [2 5 9 5 3];
den = [5 45 2 1 1];

[a,b] = impz(num, den,L);

subplot(2,2,1)
stem(b,real(a))
title('Real Part of g[n]')
xlabel('Samples');ylabel('Magnitude')
grid on
subplot(2,2,2)
stem(b, imag(a))
title('Imaginary Part of g[n]')
xlabel('Samples');ylabel('Magnitude')
grid on