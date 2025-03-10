% Program Q1.28
n=0:30;
f=0.1;
A = 4*rand;
phi = 2*pi*rand;
arg = 2*pi*f*n + phi;
x = A*cos(arg);
stem(n, x);
axis([0 31 -4.5 4.5]);
title('Sinusoidal Sequence with Random Amplitude and Phase');
xlabel('Time index n');
ylabel('Amplitude');
grid;
axis;