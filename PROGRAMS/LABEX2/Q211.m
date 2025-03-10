%Program P2_3
% Generate the input sequences
clf;
n = 0:40;
a = 2;b = -3;
x1 = cos(2*pi*0.1*n);
x2 = cos(2*pi*0.4*n);
x = a*x1 + b*x2;
x3 = [x 0];
x4 = [0 x];
ic = [0 0]; % Set zero initial conditions
y = x4.*x3; % Compute the output y[n]
%yt = a*y1 + b*y2; 
%d = y - yt; % Compute the difference output d[n]
% Plot the outputs and the difference signal
subplot(3,1,1)
stem(n,x1);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
subplot(3,1,2)
stem(n,x2);
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');
subplot(3,1,3)
stem(n,d);
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');
