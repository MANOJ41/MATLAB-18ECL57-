clc;
clear all;
close all;
x=[1 2 3 4];
h=[1 2 3 4];
N=max(length(x),length(h));
%Compute the output
for n=0:N-1
y(n+1)=0;
for k=0:N-1
i=mod((n-k),N);
if i<0
i=i+N;
end
y(n+1)=y(n+1)+h(k+1)*x(i+1);
end
end
disp('circular convolution of x & h is y=');
disp(y);
%plot
n1=0:N-1;
stem(n1,y);
title('Circular convolution output y(n)');
grid on;