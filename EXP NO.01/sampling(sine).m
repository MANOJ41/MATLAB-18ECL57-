tfinal=0.05;
t=0:0.00005: tfinal;
fmax=input('Enter analog frequency');

%define analog signal for comparison 
xt=sin(2*pi*fmax*t); 

%simulate condition for under sampling i.e., fs1<2*fmax
fs1=1.3*fmax; 
%define the time vector
n1=0:1/fs1:tfinal;
%Generate the under sampled signal 
xn1=cos(2*pi*n1*fmax);
%plot the analog & sampled signals
subplot(3,1,1);
plot(t,xt,'b',n1,xn1,'r*-');
title('Under sampling plot');

 %Condition for Nyquist plot
fs2=2*fmax;
n2=0:1/fs2:tfinal;
xn2=cos(2*pi*fmax*n2);
subplot(3,1,2);
plot(t,xt,'b',n2,xn2,'r*-');
title('Nyquist plot');

%Condition for Oversampling
fs3=10*fmax;  
n3=0:1/fs3:tfinal;
xn3=sin(2*pi*fmax*n3);
subplot(3,1,3);
plot(t,xt,'b',n3,xn3,'r*-');
title('Oversampling plot');
xlabel('time');
ylabel('amplitude');
legend('analog','discrete')