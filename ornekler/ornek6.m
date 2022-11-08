clc
clear

sayi = input('Sayý = ');
if ( sayi < 0)
    karesi = sayi^2;
    fprintf('%d sayýsýnýn karesi %d \n',sayi,karesi);
else
    karekok = sqrt(sayi);
    fprintf('%d sayýsýnýn karekokü %f \n ',sayi,karekok);
end

