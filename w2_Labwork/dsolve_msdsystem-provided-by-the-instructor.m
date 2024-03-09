clear all
close all
clc


syms x(t)
m=5;
c=30;
k=170;
f=340;

eq=m*diff(x,2)+c*diff(x)+k*x==f;
dx=diff(x);

sol=dsolve(eq,x(0)==0,dx(0)==0);