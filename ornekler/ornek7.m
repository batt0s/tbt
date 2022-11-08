clc
clear

sayi = input('Sayý = ');

if ( 0 <= sayi && sayi < 9 )
    fprintf('Sonuc = %f \n',sqrt(sayi)+log(sayi));
else
    fprintf('Sayý yanlýþ aralýkta \n');
    %error('Sayý yanlýþ aralýkta ');
    return
end
fprintf('------------------------------\n');
