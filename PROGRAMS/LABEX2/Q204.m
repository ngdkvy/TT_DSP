% Program P2_1
% Simulation of an M-point Moving Average Filter
% Generate the input signal
n = 0:100;
a = pi/200; % A low-frequency sinusoid
b = 0; % A high frequency sinusoid
arg = a*n.*n + b*n;
x = cos(arg);
% Implementation of the moving average filter
M = input('Desired length of the filter = ');
num = ones(1,M);
y = filter(num,1,x)/M;
% Display the input and output signals
clf;
subplot(2,1,1);
plot(n, x);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Input Signal');
subplot(2,1,2);
plot(n, y);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Output Signal');
axis;
