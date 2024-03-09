clear all
close all
clc

syms x(t) b a x0

eq=diff(x)==b-a*x;

sol=dsolve(eq, x(0)==x0);