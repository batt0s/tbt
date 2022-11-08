clc
clear

toplam = 0;

for i=1:10
    fprintf('%d. sayý = ',i);
    sayi = input('');
    if ( sayi < 0 )
        continue
    end
    toplam = toplam + sayi;
end
fprintf('Sonuc = %d \n',toplam);
    