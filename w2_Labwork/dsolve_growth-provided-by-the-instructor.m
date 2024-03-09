clear all
clc

syms N(t)
K=0.35;
eq=diff(N)==K*N;

sol=dsolve(eq,N(0)==1000);

fplot(sol,[0 10]);
