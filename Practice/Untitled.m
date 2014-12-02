N = 100;
n = (0:N-1);
x = 5*cos(7*pi*n/16+pi/4)+3*sin(47*pi*n/100+pi/18);

tic;
X = fft(x,N);
toc;

%plot([0:49]*2*pi/N, abs(X));
%%
tic;
N = 100;
X = zeros(1, N);
for k = 1:N
    X(k) = 0;
    for n0 = 1:N
        X(k) = X(k) + x(n0)*exp(-i*2*pi*k*n0/N);
    end
end
toc;
%%
plot([0:N-1]*2*pi/N, abs(X));