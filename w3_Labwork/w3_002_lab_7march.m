syms t s 
f=t^2-2*cos(2*t)+exp(-3*t)+7
F=laplace(f,t,s);

pretty(F)