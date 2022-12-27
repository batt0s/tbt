clc
clear

% try
%     deyim1
% catch
%     deyim2
% end

A = input('A = ');

try
    S = A*A;
catch me
    S = A.*A;
end
disp(S);