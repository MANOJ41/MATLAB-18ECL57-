clc;
clear all;
close all;
x1=[zeros(1,8),ones(1,16),zeros(1,8)];
xk= fft(x1);
xk2= fftshift(xk);
subplot(2,1,1);
stem(x1);
subplot(2,1,2);
plot(abs(xk2));

