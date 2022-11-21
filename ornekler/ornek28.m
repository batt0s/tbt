clc
clear
% x = input('Sat�r say�s� = ');
% y = input('S�tun say�s� = ');

x = 13;
y = 21;

M = [];
p=2;

for i=1:x
    for j=1:y
        %fprintf('M(%d,%d) = ',i,j);
        % M(i,j) = input('');   
            k = p        
        while 1
            if ( isprime(k) )
                M(i,j) = k;
                p = k + 1;
                break;
            end
            k = k+1;
        end
    end
end
disp(M);
sum(M(:,3)) - sum(M(2,:))
