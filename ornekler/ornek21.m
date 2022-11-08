clc
clear
toplam = 0;
while (true)
    n = input('Pozitif bir sayý giriniz = ');
    if ( n < 0 )
        break
    end
    toplam = toplam + n;
end
fprintf('Girilen sayýlarýn toplamý = %d \n',toplam);