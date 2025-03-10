% num =[2 0 1];
% dem = [1 5 4];
% zplane(num, dem); //bieu do cuc
% [z,p,k] = tf2zpk(num, dem); //tim zero, pole, k dua tren ham truyen

%nhap theo cot
% z = [sqrt(2)*j/2;  -sqrt(2)*j/2];
% p = [-1; -4];
% k = 2;
% [num1, dem1] = zp2tf(z,p,k)

%nhap theo hang
% z = [sqrt(2)*j/2  -sqrt(2)*j/2];
% p = [-1 -4];
% k = 2;
% [num1, dem1] = zp2tf(z',p',k)

%nhap theo thu tu giam dan cua mu am
% num =[2 0 0 1];
% dem = [1 5 4];
% [r,p,k] = residuez(num,dem)

% DTFT: tin hieu lien tuc
% % DFT: tin hieu roi rac
% x = [1 2 3 4]
% xk = fft(x)
% yk = fft(x,6)
% y = ifft(yk,6)

% circshift(x,m): ham dich vong

% 
% num = [2 5 9 5 3];den = [5 45 2 1 1];
% [z,p,k] = tf2zpk(num, den);
% [sos k] = zp2sos(z,p,k);
% disp('SOS:');
% disp(sos);
% disp('k:');
% disp(k);

num = [2 5 9 5 3];
den = [5 45 2 1 1];
[r p k] = residuez(num,den)
