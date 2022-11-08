clc
clear
byt = input('Matrisin boyutu [x,y] = ')
x = byt(1);
y = byt(2);

M = randi([0,15],x,y);

ss = 0;

for i=1:x
    for j=1:y
        if ( M(i,j) == 0 )
            ss = ss + 1;
            fprintf('M(%d,%d) = 0 \n',i,j);
        end
    end
end
disp(M);
disp(ss);
