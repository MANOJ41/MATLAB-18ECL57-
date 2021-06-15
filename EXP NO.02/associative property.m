clc;
 clear all;
 close all;
 x1=[1 2 3 4];
 x2=[1 2 1 2];
 x3=[3 4 2 1];
y1=conv(x2,x3);
y2=conv(x1,y1);
y3=conv(x1,x2);
y4=conv(y3,x3);
if y2==y4
    disp('associative Property is proved');
 else
 disp('associative Property is not proved');
 end
