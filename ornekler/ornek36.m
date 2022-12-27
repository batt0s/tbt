clc
clear
A = input('A = ');
i = 1;
while(true)
    try
        A(i);
    catch
        sonuc = i-1;
        break;
    end
    i = i+1;
end
disp(sonuc);