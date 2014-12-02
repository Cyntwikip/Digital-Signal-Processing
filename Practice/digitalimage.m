% (c) Cyntwikip

clear;  %clear variables.

%Displaying Images

%part A
coins = imread('coins.png');    %loads image
whos;   %values

colormap(gray(256));    %initialization?

imshow('coins.png');    %displays image

%part B
%ww200 = ww(200,:);

vec200 = coins(200,:);  %stores the 200th row of the image
plot(vec200);

%Synthesize a Test Image

%part A
xpix = ones(256,1)*sec(2*pi*(0:255)/64);
imshow(xpix);

%part C
ypix = (ones(400,1)*sec(2*pi*(0:399)/80))';
%ones(400,1) -> 400 is length
%(0:399) -> 399+1 is width

imshow(ypix);

%Sampling of Images
f = 2;    %shrink or enlarge
resized_img = coins(1:f:end, 1:f:end);

subplot(2,2,1);
imshow(xpix);
%plot(vec200);
%imshow(coins);
subplot(2,2,2);
stem(coins);
subplot(2,2,3);
imshow(resized_img);
subplot(2,2,4);
stem(resized_img); %axis([]);
