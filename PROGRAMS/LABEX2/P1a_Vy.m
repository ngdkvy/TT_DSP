%Test
clf;
N = 50;
num = [1 -4 0  1 0];
den = [1  0 -1  0 -0.25];
y1 = impz(num,den,N+1);
parsum = 0;
for k = 1:N+1;
	parsum = parsum + abs(y1(k));
	if abs(y1(k)) < 10^(-6), break, end
end
n = 0:N;
stem(n,y1);
xlabel('Time index n'); ylabel('Amplitude');
disp('Value =');disp(abs(y1(k)));