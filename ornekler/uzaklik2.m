function [sonuc] = uzaklik2(n1,n2)
% n1 = [x1,y1] ve n2 = [x2,y2]
% noktalar� aras�ndaki uzakl��� bulan fonksiyon. 
% Kullan�m Bi�imi :
% uzaklik2(n1,n2)
% �rnek :
% n1 = [2,3]; n2= [3,4];
% uzaklik2(n1,n2);
x1 = n1(1);
y1 = n1(2);
% 2. noktay� alal�m
x2 = n2(1);
y2 = n2(2);
sonuc = sqrt((x2-x1)^2 + (y2-y1)^2);
end

