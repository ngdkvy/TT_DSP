% Program Q351
% Evaluation of the DTFT 
% Compute the frequency samples of the DTFT
clf;
% initialize
num = [2 5 9 5 3];
den = [5 45 2 1 1];
% partial fraction expansion
[r p k] = residuez(num,den)