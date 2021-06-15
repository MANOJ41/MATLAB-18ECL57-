clc;
clear all;
close all;
x1=[1,2,3,4];
x2=[1,1,1,1];
a1=1;
a2=1;
term1= a1.*x1 + a2.*x2;
LHS=fft(term1,4)
term2= fft(a1.*x1);
term3 = fft(a2.*x2);
RHS = term2 + term3
if (LHS==RHS)
 disp('Linearity property proved');
 else
 disp ('DFTs are not linear');
end
