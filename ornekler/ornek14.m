clc
clear

n = input('n = ');
if ( n < 0 )
    error('n sayýsý 0 dan küçük olamaz');
end

f = 1;
for i=2:n
    f = f * i;
end
fprintf('%d! = %d \n',n,f);