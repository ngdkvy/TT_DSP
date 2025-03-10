%Program P1
n = -30:30;
expfunc = 3*exp(-abs(n)/14);
arg = 200*pi*n;
a = expfunc.*cos(arg);
u3 = abs(n) >= 3;
u11 = abs(n) >= 11;
u20 = abs(n) >= 20;
u26 = abs(n) >= 26;
unitstep = u3 - u11 + u20 - u26;
res = a.*unitstep;
plot(n,u3);
axis([-30 30 -3 3]);
grid;