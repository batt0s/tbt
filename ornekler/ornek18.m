clc
clear
M = [];
for i=1:10
    for j=1:10
        fprintf('%5d',i*j);
        M(i,j) = i*j;
    end
    fprintf('\n');
end
disp(M);