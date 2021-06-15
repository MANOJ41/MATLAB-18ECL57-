clc;
close all;
clear all;
format long
rp=input('enter the passband ripple');
rs=input('enter the stopband ripple');
wp=input('enter the passband frequency');
ws=input('enter the stopband frequency');
fs=input('enter the sampling frequency');
w1=2*wp/fs;
w2=2*ws/fs;
[n]=buttord(w1,w2,rp,rs); disp(n)
wn=[w1,w2];
[b,a]=butter(n,wn,'stop');
w=0:0.01:pi;
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(2,1,1);plot(om/pi,m);
ylabel('gain in db-->');
xlabel('(a) normalised frequency-->');
subplot(2,1,2);plot(om/pi,an);
xlabel('(b) normalised frequency-->');
ylabel('phase in radians-->');
