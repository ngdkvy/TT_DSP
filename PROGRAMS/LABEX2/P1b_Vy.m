%Test
clf;
N = 50;
num = [1 -4 0  1 0];
dem = [1  0 -1  0 -0.25];
x = 5.*N*square(0.2*pi*N).*N;
y1 = filter(num,den,x);
subplot(2,1,1);
stem(N,x);
title('The Response');
xlabel('Time index n'); ylabel('Amplitude'); grid;