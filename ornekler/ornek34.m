clc
clear
ay = upper(input('Bir ay giriniz = ','s'));

switch ay
    case {'1','OCAK','3','5','MAY�S','MAYIS','7','8','10','12'}
        fprintf('31 G�n \n');
    case {'4','6','9','11'}
        fprintf('30 G�n \n');
    case {'2','�UBAT','SUBAT'}
        yil = input('Hangi Y�l = ');
        if ( mod(yil,4) == 0)
            if ( mod(yil,100) == 0)
                if ( mod(yil,400) == 0 )
                    fprintf('29 G�n \n');
                else
                    fprintf('28 G�n \n');
                end
            else
                fprintf('29 G�n \n');
            end
        else
            fprintf('28 G�n \n');
        end
        
        
    otherwise
        fprintf('Yanl�� ay se�imi \n');
end