syms x(t) t s X
Dx=diff(x(t),t);
DDx=diff(x(t),t,t);

m=1;
c=6;
k=34;
f=68;
x0=0;
xdot0=0;

%DDx=diff(x(t),2)  2 kere t yazmak yerine böyle de yazılabilir

eq=m*DDx+c*Dx+k*x(t)==f;     % GENEL FORMÜL damperli yaylı sistem için

%m c ve k verilerini tanımladık m de x2nokta, c de x1nokta k da nokta yani
%türev yok

EQ=laplace(eq,t,s)

EQ=subs(EQ,[laplace(x(t), t, s)],[X]);
EQ=subs(EQ,[x(0) subs(diff(x(t), t), t, 0)],[x0 xdot0]);

X=solve(EQ, X)
x=ilaplace(X)

pretty(x)
