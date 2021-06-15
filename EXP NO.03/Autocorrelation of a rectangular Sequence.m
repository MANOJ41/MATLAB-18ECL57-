clc;
clear all;
close all;
x=input("type in the reference sequence=");
n=length(x)-1;
r = conv(x,fliplr(x));
disp('autocorrelation sequence r=');
disp(r);
%plot the sequences
subplot(2,1,1)
stem(x);
title('sequence 1');
subplot(2,1,2)
k = -n:n;
stem(k, r);
title('autocorrelation output');
xlabel('Lag index');
ylabel('Amplitude');
