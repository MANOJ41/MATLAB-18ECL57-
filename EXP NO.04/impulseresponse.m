clc;
close all;
clear all;
N=input('Length of response required=');
b=[1]; %x[n] coefficient
a=[1,-1,0.9]; %y coefficients
%impulse input
h=[1,zeros(1,N-1)];
%time vector for plotting
n=0:1:N-1;
%impulse response
y=filter(b,a,h);
%plot the waveforms
subplot(2,1,1);
stem(n,h);
title('impulse input');
xlabel('n');
ylabel('impulse');
subplot(2,1,2);
stem(n,y);
title('impulse response');
xlabel('n');
ylabel('y(n)');