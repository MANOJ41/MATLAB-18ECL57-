clc;
 clear all;
 close all;
 x1=[1 2 3 4];
 x2=[1 2 1 2];
 x3=[3 4 2 1];
y1=x2+x3;
y2=conv(x1,y1);
y3=conv(x1,x2)+conv(x1,x3);
if y2==y3
    disp('distributive Property is proved');
 else
 disp('distributive Property is not proved');
 end
