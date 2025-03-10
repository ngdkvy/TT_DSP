clf;
n = 0: 40;
w = 0:8*pi/511:2*pi;
A = 2;
num11 = [1 -0.2 0.8];
den11 = [1 2 5];
num12 = [1 -0.5 3];
den12 = [1 -5 7];
y11 = filter(num11,den11,w);
y1 = filter(num12,den12,y11);
subplot(2,2,1);
stem(y1);
xlabel('Time index n'); ylabel('Amplitude');
title('Arg of system 1'); grid;

num2 = [1 -2 6];
den2 = [1 1/4 5/4];
y2 = filter(num2,den2,x);
subplot(2,2,3);
stem(y2);
xlabel('Time index n'); ylabel('Amplitude');
title('Arg of System 2'); grid;

y11 = filter(num11,den11,A);
y1 = filter(num12,den12,y11);
subplot(2,2,2);
stem(y1);
xlabel('Time index n'); ylabel('Amplitude');
title('Amplitude of system 1'); grid;

num2 = [1 -2 6];
den2 = [1 1/4 5/4];
y2 = filter(num2,den2,A);
subplot(2,2,4);
stem(y2);
xlabel('Time index n'); ylabel('Amplitude');
title('Amplitude of System 2'); grid;
