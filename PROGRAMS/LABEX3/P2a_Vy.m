clf;
n = 0 : 30;
N = 30;
num11 = [1 -0.2 0.8];
den11 = [1 2 5];
num12 = [1 -0.5 3];
den12 = [1 -5 7];
y11 = impz(num11,den11,N);
y1 = filter(num12,den12,y11);
subplot(2,1,1);
stem(y1);
xlabel('Time index n'); ylabel('Amplitude');
title('System 1'); grid;

num2 = [1 -2 6];
den2 = [1 1/4 5/4];
y2 = impz(num2,den2,N);
subplot(2,1,2);
stem(y2);
xlabel('Time index n'); ylabel('Amplitude');
title('System 2'); grid;

% Cau 1: 2d - 2
% a 2  - 1
% b 1.5 - 1.5
% c 2 - 1.5
% d. 1.5 - 0
% e 1 - 1