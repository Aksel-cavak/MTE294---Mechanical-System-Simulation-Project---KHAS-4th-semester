
[t, x]=ode45(@func,[0 10],[6 0]);
hold on
plot(t,x, '*');

function dxdt=func(t,x);
dxdt=[x(2); 68- (34)*x(1)-6*x(2)];
end