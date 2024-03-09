syms t s 
f=5*exp(2*t)-t^3;
F=laplace(f,t,s);

pretty(F)