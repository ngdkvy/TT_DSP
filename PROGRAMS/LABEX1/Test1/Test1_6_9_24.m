%program test 1

n = 0 : 40;
N = 20;
phase = pi/2;
arg = 2*pi*n/N + phase;
A = 5;
%Sinusoidal Sequence
x = A*sin(arg);
clf;
subplot(2,1,1);
stem (n,x);
grid;
xlabel('Time index n');ylabel('Amplitude');
title('Sinusoidal Sequence');
%Square Sequence
x = A*square(arg);
subplot(2,1,2);
stem (n,x);
axis([0 40 -6 6]);
grid;
xlabel('Time index n');ylabel('Amplitude');
title('Sinusoidal Sequence');
axis([0 40 -6 6]);