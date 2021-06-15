clc;
clear all;
close all;
lp=input('enter the passband ripple:');
ls=input('enter the stopband ripple:');
fp=input('enter the passband frequency:');
fs=input('enter the stopband frequency:');
f=input('enter the sampling frequency:');
beta=input('enter the beta value');
wp=2*fp/f;
ws=2*fs/f;
num=-20*log10(sqrt(lp*ls))-13;
sum=14.6*(fs-fp)/f;
n=ceil(num/sum);
n1=n+1;
if(rem(n,2))
 N=0;
 n1=n;
 n=n-1;
end
y=kaiser(n1,beta);

%low pass filter
b=fir1(n,wp,y);
[h,o]= freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,1);
plot(o/pi,m)
ylabel('gain in db');
xlabel('(a)normalised freq');
grid on;

%high pass filter
b=fir1(n,wp,'high',y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,2);
plot(o/pi,m)
ylabel('gain in db');
xlabel('(b)normalised freq');
grid on;

%bandpass filter
wn=[wp,ws];
b=fir1(n,wn,y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,3);
plot(o/pi,m)
ylabel('gain in db');
xlabel('(c)normalised freq');
grid on;

%band stop filter
b=fir1(n,wn,'stop',y);
[h,o]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,4);
plot(o/pi,m)
ylabel('gain in db');
xlabel('(d)normalised freq');
grid on;
