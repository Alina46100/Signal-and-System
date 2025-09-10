a=0.75;
o = 0:0.01:2*pi;

x = (1-a^2)./(1-2*a*cos(o)+a^2);
plot(o, abs(x));
xlabel('\Omega')
ylabel('x(\Omega')