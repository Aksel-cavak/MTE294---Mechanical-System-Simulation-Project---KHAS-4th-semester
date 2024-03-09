syms t s

F=20/(s*(s^2+7*s+10));


f=ilaplace(F,s,t)