clc
clear
x = 10;
y = 7;
top = x + y;
ks = 0;
while (top < 52347)
    x = x * 2;
    ks = ks + 1;
    top = x + y;
end
fprintf('%d kez katlanýnca toplam = %d \n',ks,top);
