clc
clear

sayi = input('Say� = ');
if ( sayi < 0)
    karesi = sayi^2;
    fprintf('%d say�s�n�n karesi %d \n',sayi,karesi);
else
    karekok = sqrt(sayi);
    fprintf('%d say�s�n�n karekok� %f \n ',sayi,karekok);
end

