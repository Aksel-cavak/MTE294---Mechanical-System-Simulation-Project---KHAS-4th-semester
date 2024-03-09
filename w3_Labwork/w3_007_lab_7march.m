%ODE45 function helps us solve ode's like
% 3A+2B=10    y'1= sin2t
%  A+ B=0     y'2= ...

%system of first order differential eq.s


[t, x]=ode45(@func,[0 10],[0 0]);
hold on
plot(t,x, '*');

function dxdt=func(t,x);
dxdt=[x(2); 68- (34)*x(1)-6*x(2)];
end
