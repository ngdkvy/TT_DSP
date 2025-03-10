%Program P2
t =0:0.001:2;
A=10;
F=1;
Fs=8;
%question a
x = A*sin(2*pi*F*t);
figure();
plot (t,x);
xlabel('Time');ylabel('Amplitude');
title('The continuous time signal');
axis([-0.2 2.2 -11 11]);
grid;
%question b
n=0:(2*Fs);
xs=A*sin(2*pi*n/Fs);
figure();
stem(n,xs);
axis([-1 17 -11 11]);
xlabel('Time');ylabel('Amplitude');
title('The naturally sampled signal');
%question c
ft = square(2*pi*Fs*t);
ft (ft<0) =0;
s = x.*ft;
figure();
plot (t,s);
grid;
axis([-0.2 2.2 -11 11]);
xlabel('Time');ylabel('Amplitude');
title('The flat-top signal');