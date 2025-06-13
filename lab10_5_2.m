Xk=[(6),(-2-2*i),(2),(-2+2*i)];
N=4;
n=[0:1:N-1];
k=[0:1:N-1];
WN=exp(-j*2*pi/N);
nk=n'*k;
WNnk=WN.^(-nk);
xn=(Xk*WNnk)/N
