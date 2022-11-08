clc
clear

g = input('Yýllýk Gelir = ');
if (g <= 0)
    fprintf('Ýþlem : Vergi Kontrolü \n');
    v = 0;
elseif (g <= 150)
    v = g*0.25;
elseif (g <= 300)
    v = 150*0.25 + (g-150)*0.30;
elseif (g <= 600)
    v = 150*0.25 + 150*0.30 + (g-300)*0.35;
elseif (g <= 1200)
    v = 150*0.25 + 150*0.30 + 300*0.35 + (g-600)*0.40;
else
    v = 150*0.25 + 150*0.30 + 300*0.35 + 600*0.40 + (g-1200)*0.50;
end
fprintf('Vergi = %g \n',v);
    