clc;
clear all;
close all;
x1=[1,2,3,4];
X1 =fft (x1);
en1 = sum(x1.^2);
en2= (1/4)* (sum(abs(X1).^2));
if (en1==en2)
 disp('Parevals theorem proved');
 disp('Energy=');
 disp(en2);

end