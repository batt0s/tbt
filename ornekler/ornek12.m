clc
clear
n = input('n = ');

tic;
toplam = 0;
for i=1:1:n
   toplam = toplam + i; 
end
fprintf('Toplam = %d \n',toplam);
toc;

tic;
toplam = 0;
i = 1;
while ( i <= n )
    toplam = toplam + i;
    i = i + 1;
end
fprintf('Toplam = %d \n',toplam);
toc;