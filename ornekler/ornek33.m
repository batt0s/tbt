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
n = input('1 ile 20 aras�nda bir tamsay� giriniz = ');
switch n
    case {1,3,5,7,9,11,13,15,17,19}
        fprintf('Tek Say� \n');
    case {2,4,6,8,10,12,14,16,18,20}
        fprintf('�ift Say� \n');
    otherwise
        fprintf('Say� istenilen aral�kta de�il \n');
end



%%
if ( mod(n,2) == 0 )
    fprintf('�ift Say� \n');
else
    fprintf('Tek Say� \n');
end
    







