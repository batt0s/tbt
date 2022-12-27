clc
clear

% switch (durum)
%     case durum1
%         deyim1
%     case durum2
%         deyim2
%         ...
%     otherwise
%         deyimn
% end

%%
n = input('1 ile 20 arasýnda bir tamsayý giriniz = ');
switch n
    case {1,3,5,7,9,11,13,15,17,19}
        fprintf('Tek Sayý \n');
    case {2,4,6,8,10,12,14,16,18,20}
        fprintf('Çift Sayý \n');
    otherwise
        fprintf('Sayý istenilen aralýkta deðil \n');
end



%%
if ( mod(n,2) == 0 )
    fprintf('Çift Sayý \n');
else
    fprintf('Tek Sayý \n');
end
    







