clear all
close all
clc

syms x(t)
m=1;
c=1;
k=1;
f=10;

eq=m*diff(x,2)+c*diff(x)+k*x==f;
dx=diff(x);


sol=dsolve(eq, x(0)==3,dx(0)==6);


