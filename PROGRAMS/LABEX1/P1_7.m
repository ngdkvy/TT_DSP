% Program P1_7
% Generation of a swept frequency sinusoidal sequence
n = 0:100;
a = pi/2/100;
b = 0;
arg = a*n.*n + b*n;
x = cos(arg);
clf;				
plot(n, x);
axis([0,100,-1.5,1.5]);
title('Swept-Frequency Sinusoidal Signal');%tin hieu gom nhiu thanh phan tan so khac nhau
xlabel('Time index n');
ylabel('Amplitude');
grid; axis;
