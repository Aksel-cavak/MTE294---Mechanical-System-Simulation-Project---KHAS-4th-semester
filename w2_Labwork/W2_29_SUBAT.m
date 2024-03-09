clear all
clc

syms N(t);
K=0.2; 

eq=diff(N(t))==K*N;

sol=dsolve(eq);