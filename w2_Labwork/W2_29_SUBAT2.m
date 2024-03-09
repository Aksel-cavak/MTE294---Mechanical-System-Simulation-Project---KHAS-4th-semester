clear all
clc

syms h(t);
K=0.2; 
A=1;

eq=diff(h)==-K/A*(sqrt(h));



sol=dsolve(eq,h(0)==1);

fplot(sol,[0 10]);

%