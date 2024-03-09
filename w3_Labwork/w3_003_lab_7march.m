syms t s

%F=1/s;
%F=1/(s-2);
%F=1/(2*s-1);
%F=2/(s^5);
%F=1/(s^2 + 3);
F=(s-1)/((s-1)^2 - 25);

% We have applied the laplace transormation to those funtions and saw what
% they did on the matlab enviroment

f=ilaplace(F,s,t)