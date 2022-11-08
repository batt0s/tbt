clc
clear

satis_adedi = input('Satýþ adedi = ');
fprintf('-------------------------- \n');

if (satis_adedi < 0 )
    error('satýþ adedi 0 dan küçük olamaz');
end

if ( satis_adedi < 5 )
    maas = 5500 + satis_adedi * 450;
else
    maas = 6500 + 5*475 + (satis_adedi-5)*575;
end
fprintf('Maaþ = %g \n',maas);