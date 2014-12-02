load('dsplab3.mat');
x1;

b = (1/5)*ones(1,5);
a = 1;
y = filter(b, a, x1);

subplot(2,2,1); plot(x1);
subplot(2,2,2); plot(y);

b = (1/2)*ones(1,2);
y = filter(b, a, x1);

subplot(2,2,3); plot(x1);
subplot(2,2,4); plot(y);