clc
clear

n = input('n = ');
if ( n < 0 )
    error('n say�s� 0 dan k���k olamaz');
end

f = 1;
for i=2:n
    f = f * i;
end
fprintf('%d! = %d \n',n,f);