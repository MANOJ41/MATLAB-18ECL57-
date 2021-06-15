x = input('Type in the reference sequence = ');
% Compute the correlation sequence
[r,lag]=xcorr(x,x);
disp('auto correlation output is =');
disp(r);
stem(lag,r);
xlabel('Lag index');
ylabel('Amplitude');