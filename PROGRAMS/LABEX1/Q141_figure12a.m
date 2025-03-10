% Program P1_41_Figure_1.2a
% Generation of a sinusoidal sequence
n = 0:50;   
f = 0.05;            
phase = 0;          
A = 2;   
arg = 2*pi*f*n - phase; 
x = A*sawtooth(arg);
clf;            % Clear old graph
stem(n,x);      % Plot the generated sequence
axis([0 50 -2.2 2.2]);
grid; 
title('Sinusoidal Sequence Figure 1.2 a');
xlabel('Time index n');
ylabel('Amplitude');
axis;
