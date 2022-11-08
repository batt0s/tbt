clc
clear
k = 2;

a = input('a = ');
b = input('b = ');
c = input('c = ');
d = input('d = ');

x = abs(a^2 - sin(2*b*c) + d^(5/12));
fprintf('x = %f \n',x);