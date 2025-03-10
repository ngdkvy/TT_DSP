% Question a
% f1 = 1500; f2 = 6000;
% T = 1/gcd(f1, f2);
% t = linspace (0,T,200);
% xt = sin(2*pi*f1*t) + 2*cos(2*pi*f2*t);
% subplot(3,1,1);
% plot(t,xt);
% xlabel('Time index n');ylabel('Amplitude');
% title('Continuous time signal');
% grid;
% 
% % Question b
% fs = 20000;
% Ts = 1/fs;
% ts = 0:Ts:T;
% xts = sin(2*pi*f1*ts) + 2*cos(2*pi*f2*ts);
% subplot(3,1,2);
% stem(ts, xts);
% hold on;
% plot(t,xt,'r--');
% xlabel('Time index n');ylabel('Amplitude');
% title('Naturally-sampled discrete time signal');
% grid;
% 
% % Question c
% subplot(3,1,3);
% stairs(ts,xts);
% hold on;
% plot(t,xt,'r--');
% xlabel('Time index n');ylabel('Amplitude');
% title('Flat-top discrete time signal');
% grid;

n=-2:10;
n1=3:10;
x = [zeros(1,2),3,0,-1,((-1/5).^(n1-1)).*ones(1,8)];
stem(n,x);
xlabel('Time index n');ylabel('Amplitude');