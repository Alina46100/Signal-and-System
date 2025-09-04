t = -2:0.1:4;
x1 = 4*cos(4*t);
x2 = 2*sin(2*t - pi/4);
z = x1 + x2;
plot(t,z)
xlabel('t(s)');
ylabel('z(t)');