clc
clear
M = input('M = ');
T = [];

[x,y] = size(M);

for i=1:y
    for j=1:x
        T(i,j) = M(j,i);
    end
end
disp(T);
