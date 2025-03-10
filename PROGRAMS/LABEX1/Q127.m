% Program Q1.27
clf;
n=0:74;
expected = 0;
variance = 3;
x = sqrt(variance) * randn(1,75) + expected;
stem(n,x);
axis([0 75 -5 5]);
title('Gaussian Random Sequence');
xlabel('Time index n');
ylabel('Amplitude');
grid;
axis;