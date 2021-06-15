clc;
clear all;
close all;
lp=input('Enter the passband attenuation:');
ls=input('Enter the stopband attenuation:');
wp=input('Enter the passband frequency:');
ws=input('Enter the stopband frequency:');
fs=input('Enter the sampling frequency:');
w1=2*wp/fs;
w2=2*ws/fs;
[n]=cheb1ord(w1,w2,lp,ls);
wn=[w1 w2]
[b,a]=cheby1(n,lp,wn);
w=0:0.01:pi;
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
figure(1);
subplot(2,1,1);
title('Butterworth Low Pass Filter');
plot(om/pi,m);
grid on;
ylabel('Gain in db-->');
xlabel('(a)Normalised frequency-->');
subplot(2,1,2);
plot(om/pi,an);
xlabel('(b)Normalised frequency-->');
ylabel('Phase in radians-->');
grid on