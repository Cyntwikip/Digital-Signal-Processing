% (c) Cyntwikip

clear;  %clear variables.

load('dsplab3.mat');    %load the file
%Note that this file contains a single vector named x1.
%x1 = [........]

b = (1/5)*ones(1,5);    %5-point moving average filter
x = filter(b,1,x1);   %just use 1...
%subplot(2,2,1); plot(x1);
%subplot(2,2,2); plot(y);

b = (1/2)*ones(1,2);    %2-point moving average filter
y = filter(b,1,x1);

b = (1/10)*ones(1,10);    %10-point moving average filter
z = filter(b,1,x1);

subplot(2,2,1); plot(x1);
title('Input Signal');
subplot(2,2,2); plot(x);
title('5-point moving average filter');
subplot(2,2,3); plot(y);
title('2-point moving average filter');
subplot(2,2,4); plot(z);
title('10-point moving average filter');
