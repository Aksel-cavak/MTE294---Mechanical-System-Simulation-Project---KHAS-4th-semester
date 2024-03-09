clear all
close all
clc

syms x(t) 

eq=10*diff(x,2)+70*diff(x)+100*x==200
dx=diff(x);



sol=dsolve(eq,x(0)==0,dx(0)==0);

fplot(sol,[0,3])
