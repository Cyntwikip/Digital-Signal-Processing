n = 1:10;
x = 0.9.^n .* (ones(1,10));
h = [1,-0.9];
y = conv(x,h);
subplot(2,2,1); stem(x);
subplot(2,2,2); stem(h);
subplot(2,2,3); stem(y);