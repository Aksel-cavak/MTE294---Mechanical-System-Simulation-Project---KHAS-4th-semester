
%Motion control
SigmaT=20;         %TOTAL value of torque
Im=0.005;     %Moment of inertia of motor 
Is=0.002;          %Moment of inertia of shaft
Il=0.008;     %Moment of inertia of load           kg
omega_zero=0;      %initial angular velocity
teta_zero=0;   %initial angular position
 
t=0:0.01:0.2;
I=Im+Il+Is;   %
alpha= SigmaT/I;       %total value of the moment of inertia
w=(SigmaT/I).*t+omega_zero;
teta=(SigmaT/(2*I)).*t.^2+omega_zero+teta_zero;

plot(t,teta)
