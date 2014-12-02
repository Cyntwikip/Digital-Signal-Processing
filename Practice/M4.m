%30
    fs = 30;
    s = 0:1/fs:1;
    f = 12;
    y = sin(2*pi*f*s);
    q = -fs/2:fs/2;
    plot(q,y);
    
    ffty = abs(fft(y));
    plot(q, ffty);
    
    fftshifty = fftshift(ffty);
    plot(q, fftshifty);

% 12    
    fs = 12;
    s = 0:1/fs:1;
    f = 12;
    y = sin(2*pi*f*s);
    q = -fs/2:fs/2;
    plot(q,y);
    
    ffty = abs(fft(y));
    plot(q, ffty);
    
    fftshifty = fftshift(ffty);
    plot(q, fftshifty);