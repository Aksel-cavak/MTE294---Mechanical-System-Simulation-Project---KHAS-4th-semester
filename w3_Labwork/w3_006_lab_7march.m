syms x(t) t s X
Dx=diff(x(t),t);
DDx=diff(x(t),t,t);

m=1;
c=4;
k=53;
f=15;
x0=6;
xdot0=-20;

%by changing this data I can now solve all the stable force , damper,
%spring mass system, andm systems like this can be modeled

eq=m*DDx+c*Dx+k*x(t)==f;     % GENEL FORMÜL damperli yaylı sistem için

EQ=laplace(eq,t,s)

EQ=subs(EQ,[laplace(x(t), t, s)],[X]);
EQ=subs(EQ,[x(0) subs(diff(x(t), t), t, 0)],[x0 xdot0]);

X=solve(EQ, X)
x=ilaplace(X)

pretty(x)

fplot(x)
