% Program Q1_26
n=1:100;
x = -2 + (2+2)*rand(100,1);
stem(n,x);
title('Q1.26');
xlabel('Time index n');
ylabel('Value');
axis([1 100 -2.2 2.2]);
