n = 0:5;
x = [1 2 3 -1 -2 -3];
h = [1 -2 1 0 3 -1];
y = conv(x,h);
m = 0:length(y) - 1;
subplot (2, 1, 1);
stem (m, y);
y1 = filter(h,1,x);
subplot(2, 1, 2)
u = 0:length(y1) - 1
stem(u,y1);
