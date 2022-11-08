clc
clear

liste = [12,13,14,15,16];

%% 1. yol
toplam = sum(liste);
fprintf('Toplam = %d \n',toplam);

%% 2. yol
toplam2 = 0;
for i=1:numel(liste) % length, size(A,2)
    toplam2 = toplam2 + liste(i);
end
fprintf('Toplam = %d \n',toplam2);

%% 3. yol
toplam3 = 0;
for x=liste
    toplam3 = toplam3 + x;
end
fprintf('Toplam = %d \n',toplam3);