% Program P1_2
% Generation of a complex exponential sequence
clf;
c = -(1/12)+(pi/6)*i;
K = 2;
n = 0:40;
x = K*exp(c*n);
subplot(2,1,1);%chia thanh do thi khac nhau
stem(n,real(x));%phan thuc
xlabel('Time index n');ylabel('Amplitude');
title('Real part');
subplot(2,1,2);
stem(n,imag(x));%phan ao
xlabel('Time index n');ylabel('Amplitude');
title('Imaginary part');
