clc
clear
% kullanýcýdan istenilen yarýçap deðeri için bir dairenin 
% çevresini ve alanýný bulan program yazýnýz.

r = input('Yarýçap deðerini giriniz = ');

cevre = 2*pi*r;
alan = pi*r^2;

fprintf('Çevre \t = %f \nAlan \t = %f \n',cevre,alan);


