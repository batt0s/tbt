clc
clear
toplam = 0;
while (true)
    n = input('Pozitif bir say� giriniz = ');
    if ( n < 0 )
        break
    end
    toplam = toplam + n;
end
fprintf('Girilen say�lar�n toplam� = %d \n',toplam);