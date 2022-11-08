clc
clear

a = input('a = ');
b = input('b = ');
c = input('c = ');
%% 1.yol
if ( a <= b )
    if ( a <= c )
        ek = a;
    else
        ek = c;
    end
else
    if ( b <= c )
        ek = b;
    else
        ek = c;
    end
end
fprintf('En küçük = %d \n',ek);

%% 2.yol
if ( a <= b && a <= c )
    ek = a;
elseif ( b <= a && b <= c )
    ek = b;
elseif ( c <= a && c <= b )
    ek = c;
end
fprintf('En küçük = %d \n',ek);
%% 3. yol
fprintf('En küçük = %d \n',min([a,b,c]));
    