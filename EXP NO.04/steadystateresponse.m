clc;
close all;
clear all;
N=input('Length of response required=');
b=[1]; % x(n) coefficient
a=[1,-0.8]; % y(n) coefficients
n=0:1:N-1; %time vector
h=cos(0.05*pi*n); % sinusoidal input
y=filter(b,a,h) %steady state response
%plot the waveforms
subplot(2,1,1);
stem(n,h);
title('steady state input');
xlabel('n');
ylabel('u(n)');
subplot(2,1,2);
stem(n,y);
title('steady state response');
xlabel('n');
ylabel('y(n)');