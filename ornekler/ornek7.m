clc
clear

sayi = input('Say� = ');

if ( 0 <= sayi && sayi < 9 )
    fprintf('Sonuc = %f \n',sqrt(sayi)+log(sayi));
else
    fprintf('Say� yanl�� aral�kta \n');
    %error('Say� yanl�� aral�kta ');
    return
end
fprintf('------------------------------\n');
