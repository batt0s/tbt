clc
clear
liste = [];

for sayi = 100:999
    s = num2str(sayi);
    b1 = str2double(s(1))^3;
    b2 = str2double(s(2))^3;
    b3 = str2double(s(3))^3;
    if ( sayi == b1 + b2 + b3 )
        liste = [liste,sayi];
    end
end
liste
sum(liste)
