clc;
clear all;
close all;
x = input('Type in the reference sequence = ');
y = input('Type in the second sequence = ');
% Compute the correlation sequence
[r,lag]=xcorr(x,y);
disp('Cross correlation output is =');
disp(r);
subplot(2,2,1)
stem(x);
title('sequence 1');
subplot(2,2,2)
stem(y);
title('sequence 2');
subplot(2,2,3:4)
stem(lag,r);
xlabel('Lag index');
ylabel('Amplitude');
