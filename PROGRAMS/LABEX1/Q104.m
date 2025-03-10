% Program Q1.4
% Generation of a Unit Sample Sequence 
clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the unit sample sequence
s = [zeros(1,10) ones(1,21)];
% Plot the unit sample sequence
stem(n,s);
xlabel('Time index n');ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-10 20 0 1.2]);
