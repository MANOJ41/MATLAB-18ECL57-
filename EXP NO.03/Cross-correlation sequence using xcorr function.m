clc;
clear all;
close all;
x = input('Type in the reference sequence = ');
y = input('Type in the second sequence = ');
% Compute the correlation sequence
n1 = length(y)-1;
n2 = length(x)-1;
r = conv(x,fliplr(y));
disp('Cross correlation output is =');
disp(r);
subplot(2,2,1)
stem(x);
title('sequence 1');
subplot(2,2,2)
stem(y);
title('sequence 2 ');
subplot(2,2,3)
k = (-n1):n2; %time vector for plotting
stem(k,r);
title("cross correlation");
xlabel('Lag index');
ylabel('Amplitude');
