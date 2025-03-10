n = -10 : 40;
x = [zeros(1,10) 1 zeros(1,40)];
num = [1 2];
den = [1 1/2];
subplot(2, 1, 1);
stem(n,x);
y = filter(num,den, x);
ylabel('Amplitude');
xlabel('Time');
subplot(2, 1, 2)
u = 0:length(y) - 1;
stem(u,y);
ylabel('Amplitude');
xlabel('Time');