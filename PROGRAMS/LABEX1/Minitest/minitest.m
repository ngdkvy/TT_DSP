% Bieu do 1
n = 0:90;   
f = 1/30;            
phase = 0;          
A = 5;   
arg = 2*pi*f*n - phase; 
x = A*sawtooth(arg,1/2);
clf;        
subplot(2,1,1);
stem(n,x);   
axis([0 90 -5 5]);
grid;
% bieu do 2
f = 1/30;            
phase = 0;          
A = 5;   
arg = 2*pi*f*n - phase; 
x = A*abs(sawtooth(arg,1/2));      
subplot(2,1,2);
stem(n,x);   
axis([0 90 0 5]);
grid;

