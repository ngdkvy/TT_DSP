% Program P1_4
% Generation of a sinusoidal sequence
n = 0:50;   
f = 0.08;            
phase = pi/2;          
A = 2.5;            
arg = 2*pi*f*n - phase; 
x = A*cos(arg);
clf;            % Clear old graph
stem(n,x);      % Plot the generated sequence
axis([0 40 -2.8 2.8]);
grid; 
title('Sinusoidal Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
