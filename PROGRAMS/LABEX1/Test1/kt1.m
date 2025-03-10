%kt l?n 1
%câu a, ?áp ?ng xung
clf;
N = 50;
num = [1 3 0];
dem = [1 -0.3 0.1];
y = impz(num, dem, N);
subplot(3,1,1);
stem(y);
xlabel('Time index n');ylabel('Amplitude');
title('impulse response'); grid;
%?áp ?ng b?c
n = 0:50;
x = [1 zeros(1,50)];
y1 = filter(num, dem, x);
subplot(3,1,2);
stem(n,y1);
xlabel('Time index n');ylabel('Amplitude');
title('Step Response'); grid;