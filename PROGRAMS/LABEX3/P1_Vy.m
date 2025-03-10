%Vi?t ch??ng trình matlab, có th?i gian n trong kho?ng [-30:30]. tính n?ng
%l??ng c?a x(n) = 3e^(-pi/14).cos(200pi*n)

n = -30: 30;
arg = 200*pi*n;
A = 3*exp(-n/14);
x = A.*cos(arg);
Energy = sum(x.*x);
stem(n,x);
axis([-30 30 min(A) max(A)]);
xlabel('Time index n');ylabel('Amplitude');
disp('Energy =');disp(Energy);