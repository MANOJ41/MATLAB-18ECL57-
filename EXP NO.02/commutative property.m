clc;
 clear all;
 close all;
 x1=[1 2 4 4];
 x2=[1 2 7 2];
 y1=conv(x1,x2) 
 y2=conv(x2,x1)
 if y1==y2
 disp('Commutative Property is proved');
 else
 disp('Commutative Property is not proved');
 end