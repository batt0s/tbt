clc
clear
n = input('n = ');
s = num2str(n);
toplam = 0;
for i=1:length(s)
    toplam = toplam + str2double(s(i));
end
fprintf('Toplam = %d \n',toplam);
    
