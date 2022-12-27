clc
clear
ay = upper(input('Bir ay giriniz = ','s'));

switch ay
    case {'1','OCAK','3','5','MAYÝS','MAYIS','7','8','10','12'}
        fprintf('31 Gün \n');
    case {'4','6','9','11'}
        fprintf('30 Gün \n');
    case {'2','ÞUBAT','SUBAT'}
        yil = input('Hangi Yýl = ');
        if ( mod(yil,4) == 0)
            if ( mod(yil,100) == 0)
                if ( mod(yil,400) == 0 )
                    fprintf('29 Gün \n');
                else
                    fprintf('28 Gün \n');
                end
            else
                fprintf('29 Gün \n');
            end
        else
            fprintf('28 Gün \n');
        end
        
        
    otherwise
        fprintf('Yanlýþ ay seçimi \n');
end