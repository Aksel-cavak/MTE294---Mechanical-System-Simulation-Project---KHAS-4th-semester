K=0.2;
N0=3000;
t0=0;

t=0:0.1:10;

N=N0*exp(K*(t-t0));

plot(t,N);

