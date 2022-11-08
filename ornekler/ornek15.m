clc
clear

n = input('n = ');
toplam = 0;
for i=1:1:n
    if ( mod(i,2) == 1 )
        toplam = toplam + i;
    end
end
fprintf('Sonuc = %d \n',toplam);