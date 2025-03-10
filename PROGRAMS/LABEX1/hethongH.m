%cach 1
n = 0:4;
x = [1 2 3 0 0];
x1 = [x 0 0];
x2 = [0 x 0];
x3 = [0 0 x];
y = (x1 + x2 + x3)/3;
figure;
stem(n,y(1:5));
%cach 2
M = 3;
n1 = 0:4;
num = ones(1,4);
dem = 1;
y1 = filter(num,dem,x)/M;
figure;
stem (n,y1);

n = linspace(0,2*pi,11)