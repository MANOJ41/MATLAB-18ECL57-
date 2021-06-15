clc;
clear all;
close all;
x1=[1 2 3 2 1 3 4]
n1=-3:3 
x2=[ 2 -3 4 -1 0 1]
n2=-1:4
ybegin=n1(1)+n2(1);
yend=n1(length(x1))+n2(length(x2));
ny=[ybegin:yend];
y=conv(x1,x2);
disp('linear con of x1 & x2 is y=');
disp(y);
subplot (2,1,1);
stem(ny,y);
xlabel('time index n');
ylabel('amplitude ');
title('convolution output');
subplot(2,2,3);
stem(n1,x1);
xlabel('time index n');
ylabel('amplitude ');
title('plot of x1');
subplot(2,2,4);
stem(n2,x2);
xlabel('time index n');
ylabel('amplitude ');
title('plot of x2');