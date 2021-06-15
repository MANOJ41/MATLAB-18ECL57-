function[xn]=idft(XK,N)
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-j*2*pi/N);
nk=n'*k;
WNnk=WN.^(-nk);
xn=(XK*WNnk)/N;