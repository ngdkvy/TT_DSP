clf;

num11 = [1 -0.2 0.8];
den11 = [1 2 5];
num12 = [1 -0.5 3];
den12 = [1 -5 7];
subplot(2,1,1);
hold on;
zplane(num11, den11);
zplane(num12, den12);
axis([-10 10 -3 3]);
num2 = [1 -2 6];
den2 = [1 1/4 5/4];
subplot(2,1,2);
zplane(num2, den2);


