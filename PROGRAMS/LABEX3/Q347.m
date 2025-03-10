% Program P3_1
% Evaluation of the DTFT 
clf;
% Compute the frequency samples of the DTFT
w = -4*pi:8*pi/511:4*pi;
num = [2 5 9 5 3];den = [5 45 2 1 1];
[z,p,k] = tf2zpk(num, den);
disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);
% [sos k] = zp2sos(z,p,k);

% ham truyen g(z) = h1(z).h2(z)
% hang 1: tu cua h1, mau cua h1
% hang 2: tu cua h2, mau cua h2
% sos = tf2sos(num, den)
disp('SOS:');
disp(sos);
% disp('k:');
% disp(k);
zplane(z,p);
