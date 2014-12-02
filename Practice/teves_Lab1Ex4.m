%Convolution

%time = -20:1:20;

%function output = teves_Lab1Ex4(v, w) 
    %time = -20:1:20;
    
%    output = cconv(v, w); %--> easy way of doing convolution
    %plot(output) --> to plot the vector
%end

function y = teves_Lab1Ex4(x, h) 
x2=h; 
lx=length(x); 
lh=length(h); 
if lx>lh 
x2=[x2 zeros(1,lx-lh)]; 
else 
x=[x zeros(1,lh-lx)]; 
end 
y=zeros(1,lx+lh-1); 
x=fliplr(x); 
for i=1:length(y) 
if i<=length(x) 
y(i)=sum(x(1,length(x)-i+1:length(x)).*x2(1,1:i)); 
else 
j=i-length(x); 
y(i)=sum(x(1,1:length(x)-j).*x2(1,j+1:length(x2))); 
end 
end 
