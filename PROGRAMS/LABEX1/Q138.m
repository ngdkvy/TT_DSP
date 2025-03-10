% Program Q1.38
% Generation of a swept frequency sinusoidal sequence
%f=0.1 => 2*pi*f=pi/5
%f=0.3 => 2*pi*f=3pi/5
%n=0 => b=pi/5
%n=100 => 2an+b = 3pi/5 => a = pi/500
n = 0:100;
a = pi/500;
b = pi/5;
arg = a*n.*n + b*n;
x = cos(arg);
clf;				
stem(n, x);
axis([0,100,-1.5,1.5]);
title('Swept-Frequency Sinusoidal Signal');
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;
