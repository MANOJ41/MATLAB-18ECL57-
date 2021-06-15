x= -pi : 0.05 : pi;
x1=sinc(x);
xk=fft(x1);
xk2=fftshift(xk);
subplot(2,1,1);
stem(x1);
subplot(2,1,2);
plot(abs(xk2));
