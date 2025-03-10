% Program P1_41_Figure_1.1a
% Generation of a sinusoidal sequence
n = 0:30;   
f = 0.1;            
phase = 0;          
A = 2.5;   
duty = 60;
arg = 2*pi*f*n - phase; 
x = A*square(arg,duty);
clf;            % Clear old graph
stem(n,x);      % Plot the generated sequence
axis([0 30 -2.8 2.8]);
grid; 
title('Sinusoidal Sequence Figure 1.1 a');
xlabel('Time index n');
ylabel('Amplitude');
axis;
