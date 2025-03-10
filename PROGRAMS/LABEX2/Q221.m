%Program Q2.21
N = 40;
den = [1 0.71 -0.46 -0.62 ];
num = [0.9 -0.45 0.35 0.002];
x = [1 zeros(1,39)];
y = filter(num,den,x);
% Plot the impulse response
stem(y);
xlabel('Time index n'); ylabel('Amplitude');
title('Impulse Response'); grid;

