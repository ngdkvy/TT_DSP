% n = 0:49;
% num = [1 -4 3];
% dem = [1 0 -2];
% u = n -1>= 1;
% x = (1/2).^n.*u;
% h1 = freqz(num, dem, x);
% plot(n,abs(h1));grid

% QUESTION 1:
% clf;
% w = -4*pi:8*pi/511:4*pi;
% num = [1 7 26 59 87 78 36];den = [36 78 87 59 26 7 1];
% zplane(num,den);

% QUESTION 2:
% clf;
% w = -4*pi:8*pi/511:4*pi;
% num1 = [0.0736 0.2208 0.2208 0.0736];
% den1  = [1 -0.9761 0.8568 -0.2919];
% G1 = freqz(num1, den1, w);
% num2 = [0.0417 0.07675 0.1203 0.1203 0.0767 0.0417];
% den2 = [1 -1.8499 2.5153 -1.9106 0.9565 -0.234];
% G2 = freqz(num2, den2, w);
% subplot(2,2,1)
% plot(w/pi,real(G1));grid
% title('Real part of G1(e^{j\omega})')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% subplot(2,2,3)
% plot(w/pi,imag(G1));grid
% title('Imaginary part of G1(e^{j\omega})')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% 
% subplot(2,2,2)
% plot(w/pi,real(G2));grid
% title('Real part of G2(e^{j\omega})')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% subplot(2,2,4)
% plot(w/pi,imag(G2));grid
% title('Imaginary part of G2(e^{j\omega})')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% pause
% subplot(2,2,1)
% plot(w/pi,abs(G1));grid
% title('Magnitude Spectrum |G1(e^{j\omega})|')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% subplot(2,2,3)
% plot(w/pi,angle(G1));grid
% title('Phase Spectrum arg[G1(e^{j\omega})]')
% xlabel('\omega /\pi');
% ylabel('Phase in radians');
% 
% subplot(2,2,2)
% plot(w/pi,abs(G2));grid
% title('Magnitude Spectrum |G2(e^{j\omega})|')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% subplot(2,2,4)
% plot(w/pi,angle(G2));grid
% title('Phase Spectrum arg[G2(e^{j\omega})]')
% xlabel('\omega /\pi');
% ylabel('Phase in radians');

% Question 1
% clf;
% n = -5:20;
% d = [zeros(1,2) -2 zeros(1,23)];
% u = n>= 4;
% w = pi/12;
% arg = pi/6;
% x = d - (-4/3).^n.*u + 3*sin(w*n-arg);
% stem(n,x);
% xlabel('Time index n');ylabel('Amplitude');
% title('P1');
% % axis([-5 20 0]);
% energy = sum(abs(x).^2);
% disp('Energy: ');
% disp(energy);

% Question 2
% clf;
% fs = 15000;      
% fmin = 200;     
% Tmin = 1 / fmin; 
% t = 0:1/fs:3*Tmin;
% A = 1; 
% f1 = 200;       
% f2 = 1500;       
% f3 = 3200;    
% f4 = 4500; 
% x= A * (sin(2*pi*f1*t) + sin(2*pi*f2*t) + sin(2*pi*f3*t) + sin(2*pi*f4*t));
% ns = 0:1/fs:3*Tmin;
% xs = A* (sin(2*pi*f1*ns) + sin(2*pi*f2*ns) + sin(2*pi*f3*ns) + sin(2*pi*f4*ns));
% x_zoh = repelem(xs, floor(fs/1000)); 
% figure;
% hold on;
% plot(t, x, 'b', 'LineWidth', 1.5); 
% stem(ns, xs, 'r', 'LineWidth', 1.5); 
% stairs(ns, xs, 'g', 'LineWidth', 1.5);
% xlabel('Time index n');ylabel('Amplitude');
% title('CT signal, naturally sampled signal, and flat-top sampled');
% legend('CT signal', 'naturally sampled signal', 'flat-top sampled');
% grid on;
% hold off;

% Question 3
% clf;
% n = 0: 49;
% w = -4*pi:8*pi/511:4*pi;
% num1 = [1 3/2 1/2];
% den1 = [1 1 1/4];
% 
% num2 = [1 -3/2 1];
% den2 = [1 1/4 1/2];
% u = n>= 1;
% x = (-1/2).^n.*u;
% y1 = filter(num1,den1,x);
% y = filter(num2,den2,y1);
% stem(n,y);
% xlabel('Time index n'); ylabel('Amplitude');
% title('LTI systems'); grid;

% Question 4
% clf;
% n = 0: 49;
% w = -4*pi:8*pi/511:4*pi;
% num1 = [1 3/2 1/2];
% den1 = [1 1 1/4];
% 
% num2 = [1 -3/2 1];
% den2 = [1 1/4 1/2];
% h1 = freqz(num1, den1, w);
% h2 = freqz(num2, den2, w);
% h = h1.*h2;
% subplot(2,1,1)
% plot(w/pi,real(h));grid
% title('Real part of H(e^{j\omega})')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% subplot(2,1,2)
% plot(w/pi,imag(h));grid
% title('Imaginary part of H(e^{j\omega})')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% pause
% subplot(2,1,1)
% plot(w/pi,abs(h));grid
% title('Magnitude Spectrum |H(e^{j\omega})|')
% xlabel('\omega /\pi');
% ylabel('Amplitude');
% subplot(2,1,2)
% plot(w/pi,angle(h));grid
% title('Phase Spectrum arg[H(e^{j\omega})]')
% xlabel('\omega /\pi');
% ylabel('Phase in radians');
% pause
% figure;
% hold on;
% zplane(num1,den1);
% zplane(num2,den2);
% axis([-1 1 -1 1]);

% Question 5
clf;
n = 0: 49;
N = 50;
w = -4*pi:8*pi/511:4*pi;
num1 = [1 3/2 1/2];
den1 = [1 1 1/4];
num2 = [1 -3/2 1];
den2 = [1 1/4 1/2];

p1 = roots(den1);
p2 = roots(den2);
check1 = all(abs(p1) < 1);
check2 = all(abs(p2) < 1);
if ((check1 && check2))
    input('System is stable');
else
    input('System is unstable');
end

x1 = [1 0 0 0 0];
x2 = [0 1 0 0 0]; 
y1 = filter(num1, den1, x1);
y2 = filter(num2, den2, x2);
y = filter(num1, den1, x1 + x2);

if (y == (y1 + y2))
    input('The system is linear');
else
    input('The system is not linear');
end

D = 1;
xd = [0 0 1 0 0];
yd = filter(num1, den1, xd);
yd1 = filter(num1, den1, circshift(x1, D));
if (yd == circshift(y1, D))
    input('The system is time invariance');
else
    input('The system is not time invariance');
end
