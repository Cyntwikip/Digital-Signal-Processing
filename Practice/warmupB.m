% (c) Cyntwikip

clear;  %clear variables.

%%
%n = 0:11;   %why is it 0:11? To see that the function below becomes 0 at 11.
n = 0:10;

%for debugging....
%b = 0.9^0;
%b = (0.9.^0) .* (heaviside(0) - heaviside(0-10));
%b = (0.9.^0) .* 1;
%b = (heaviside(0) - heaviside(0-10));
%c = heaviside(0);
%d = heaviside(-10);

%heaviside: if x<0 -> 0. if x=0 -> 1/2. if x>0 -> 1.
%c = 0.9.^n;
%d = heaviside(n) - heaviside(n-10);
%e = heaviside(10) - heaviside(10-10);   %ohhhh!!! 10-10 = 0. heaviside makes 0 into 1/2... TAKE NOTE!
zerohandler = (1 + (n==0) + (n==10));  %handles cases where n might become 0 because heaviside makes them 1/2 instead of 1.
x = (0.9.^n) .* (heaviside(n) - heaviside(n-10)) .* zerohandler;
%x(1) = (0.9.^0);    % which is 1 and it is x(1) coz matlab starts at 1.
%subplot(2,2,1);
%stem(x);

h = (n==0)-(0.9.*(n==1));   %Impulse: ?(n) -> (n==0), ?(n-1) -> (n==1).
%subplot(2,2,2);
%stem(h);

y = conv(x,h); %convolve
%subplot(2,2,3);
%stem(1:length(y),y);
%plot(1:length(y),y);
%axis([0 15 -.2 1.2]);


subplot(2,2,1); stem(x); axis([0 12 0 1]);  %input signal
title('Input Signal');
subplot(2,2,2); stem(h); axis([0 12 -1 1]);  %impulse response
title('Impulse Response');
subplot(2,2,3); stem(y); axis([0 15 -0.5 1.2]);  %convolved function
title('Convolved Signal');
subplot(2,2,4); plot(y); axis([0 15 -0.5 1.2]);  %convolved function
title('Output');

%%