n = 0 : 1 : 25;
hn = (0.6).^n;
un = (n<0).*0 + (n>=0).*1;
xn = cos(n.*pi/6).*un;
yn = conv(hn,xn);
stem(0 : length(yn)-1, yn);
xlabel('n');
ylabel('y[n]');
