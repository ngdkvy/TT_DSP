% Program P3_1
% Evaluation of the DTFT 
clf;
% Compute the frequency samples of the DTFT
z = [0.3; 2.5; -0.2+0.4*i; -0.2-0.4*i];
p = [0.5; -0.75; 0.6+0.7*i; 0.6-0.7*i];
k = 3.9;
[num den] = zp2tf(z,p,k)

