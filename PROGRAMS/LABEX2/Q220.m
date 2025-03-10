%Program Q2.20
N = 45;
den = [1 0.71 -0.46 -0.62 ];
num = [0.9 -0.45 0.35 0.002];
y = impz(num,den,N);
% Plot the impulse response
stem(y);
xlabel('Time index n'); ylabel('Amplitude');
title('Impulse Response'); grid;

