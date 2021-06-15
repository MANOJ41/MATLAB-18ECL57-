clc;
close all;
clear all;
N=input('Length of response required=');
b=[1]; %x[n] coefficient
a=[1,-1,0.9]; %y coefficients
h=[ones(1,N)]; %step input
n=0:1:N-1; %time vector for plotting
y=filter(b,a,h) %step response
%plot the waveforms
subplot(2,1,1);
stem(n,h);
title('step input');
xlabel('n');
ylabel('u(n)');
subplot(2,1,2);
stem(n,y);
title('step response');
xlabel('n');
ylabel('y(n)');