% Türkçe karakterlerle ilgili bir sıkıntı var ama çok sorun olduğunu sanmıyorum.  -batt0s

clc
clear

%% input fonksiyonu
%a = input('a = ')


%% Kullan?c?dan istenilen üç adet say?n?n ortalmas?n? bulan MATLAB program?
% a = input('a = ');
% b = input('b = ');
% c = input('c = ');
% ort = (a+b+c)/3;
% disp(ort);

%% fprintf fonksiyonu bir de?i?kenin de?erini yazd?rmak için % kullan?r
% a = 5;
% b = 22/7;
% c = "OGU";
% d = 'F';
% fprintf('a = %d \t b = %f \nc = %s, d = %c\n', a, b, c, d);

%%
% a = input('a = ');
% b = input('b = ');
% c = input('c = ');
% d = input('d = ');
% x = abs(a^2 - sin(2*b*c) + (d^5)^(1/12));
% disp(x);

%%
% r = input('Yar?çap de?eri = ');
% cevre = 2*pi-r;
% alan = pi*r^2;
% fprintf('Cevre = %f \nAlan = %f\n', cevre, alan);

%% Diziler
% A = [1,2,3,4,5]
% B = [1;2;3;4;5]

% M = randi([1,100],7,8,2)
% sum(M(1,1,:))
% 2 matrisin 1. sat?r 1. sütünlar?ndaki elemanlar? toplam?

%% Kümeler (Hücre Dizisi)
% s = {1,2,3,'a'}
% s(1)
% 1. eleman? olan alt küme
% s{1}
% 1. eleman

% kümeler eleman olarak her ?eyi alabilir

%% Struct lar
ogrenci.no = 123
ogrenci.isim = 'Ali'
