clc
clear

toplam = 0;

for n=1:100
    toplam = toplam + sin(n)^2 / n^2;
end

fprintf('Sonuc = %d \n',toplam);