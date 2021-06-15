clc;
clear all;
close all;
g=input('Enter first sequence ');
h=input('Enter second sequence ');
N1=length(g);
N2=length(h);
N=max(N1,N2);
N3=N1-N2;
if (N3>=0)
    h=[h,zeros(1,N3)];
else
 g=[g,zeros(1,N3)];
end
%Compute the output
for n=0:N-1
y(n+1)=0;
for k=0:N-1
i=mod((n-k),N);
if i<0
i=i+N;
end
y(n+1)=y(n+1)+h(k+1)*g(i+1);
end
end
disp('circular convolution of x & h is y=');
disp(y);
%plot
n1=0:N-1;
stem(n1,y);
title('Circular convolution output y(n)');