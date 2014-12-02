% (c) Cyntwikip

clear;  %clear variables.

%%

% Input Signal

n = 0:100;

% input signal
x_in = 256*(rem(n, 50)<10);

subplot(2,3,1);
stem(x_in);
axis([0 75 0 300]);
title('Input Signal');

b = [1 -.9];

%w = zeros(0,100);

w = filter(b,1,x_in);

% filter
%for i=2:length(n)
%    w(i) = x_in(i) - (0.9 * x_in(i-1));
%end

subplot(2,3,2);
stem(w);
axis([0 75 0 300]);
title('Filter');

% output signal
x_out = filter(b,1,w);

subplot(2,3,3);
stem(x_out);
axis([0 75 -300 300]);
%axis([0 75 -200000 200000]);
title('Output Signal');

%%

%Restoration Filter

r = 0.9;
M = 22;
l = 0:M;
b = r.^l;   

%for i=0:M
    %b = sum(r^l .* w(n-l);
%end

%filter
y = filter(b,1,w);
%y = filter(b,1,w);

subplot(2,3,4);
stem(y);
axis([0 75 -300 300]);
title('Restored Signal');

%%

%%

%Worst-Case Error

D = max(y-x_in);

%C = max(x_in, y);
%C = max(y - x_in);
%C = max(y) - x_in;
C = y-x_in;
subplot(2,3,5);
stem(C);
axis([0 50 -50 300]);
title('Worst-Case Error');


%%
