%Plot :)

%line vector with a slope of 5 starting at 0.
elements = [0:5:495];
time = [0:99];
plot(time, elements)
amplitude = [0:5:495];
%figure(1);
subplot(2,2,1);
plot(time, amplitude)
hold on;
xlabel('time'); ylabel('amplitude');
title('Line Vector');

%sinusoid with a frequency of 10Hz.
time = [0:0.001:1];    % sampling intervals... [<base>:<interval>:<end>]
y = sin(2*pi*10*time);  % output sine wave = sin(2pi*<frequency>*<sampling intervals>)
%figure(2);
subplot(2,2,2);
plot (time, y)
hold on;
xlabel('time'); ylabel('amplitude');
title('Sinusoid');


%vector with alternating 1s and 0s.
length = 100;
vec = 1:length;
time = 1:length;

for i = 1:length
    vec(i) = mod(i, 2);  % x mod y --> mod(x, y)
end
%figure(3);
subplot(2,2,3);
stem(time, vec)
hold on;
xlabel('time'); ylabel('amplitude');
title('Alternating 1s and 0s');


%vector with alternating 1s and 0s.
%Fs = 1000;           % sampling frequency in Hz (you can change it)
%Ts = 1/Fs;          % sampling interval
%Tot_time = 100;             % total time in seconds (you can change it)
%width = 2;                 % width of NRZ pulse in seconds (you can change it)
%time = 0:Ts:Tot_time-Ts;    % time on x-axis
%modulous = mod(time, width);   
%signal = ((modulous<width/2)); 
%figure(3);
%stem(time,signal);                 % plots the signal versus time
%axis([0 Tot_time -0.5 1.5]);       % adjusts the range of x-axis and y-axis 


