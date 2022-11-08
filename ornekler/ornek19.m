clc
clear

toplam = 0;
for i=2:15
    f = 1;
    for j=1:i
        f = f * j;
    end
    toplam = toplam + 1/f;
    %toplam = toplam + 1/factorial(i);
end

fprintf('Sonuc = %g \n',toplam);