clc
clear
% x = input('Satır sayısı = ');
% y = input('Sütun sayısı = ');

x = 13;
y = 21;

M = [];
p=2;

for i=1:x
    for j=1:y
        %fprintf('M(%d,%d) = ',i,j);
        % M(i,j) = input('');                
        for k=p:inf
            if ( isprime(k) )
                M(i,j) = k;
                p = k + 1;
                break;
            end
        end
    end
end
disp(M);
sum(M(:,3)) - sum(M(2,:))
