% Program Q350
% Evaluation of the DTFT 
clf;
% Compute the frequency samples of the DTFT
num = [2 5 9 5 3];
den = [5 45 2 1 1];
L = input('L: ');
[g t]=impz(num,den,L);
stem(t,g);
title('First 50 samples of impulse response');
xlabel('Time Index n');
ylabel('h[n]');

