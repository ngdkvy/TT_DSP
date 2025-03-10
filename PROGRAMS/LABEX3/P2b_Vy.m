clf;
n = -10 : 40;
s = [zeros(1,10) ones(1,41)];
num2 = [1 -2 6];
den2 = [1 1/4 5/4];
y2 = filter(num2,den2,s);
stem(y2);
xlabel('Time index n'); ylabel('Amplitude');
title('System 2'); grid;