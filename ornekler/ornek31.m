clc
clear

%x = input('x = ');

m_liste = [];

for x=1:999
    bolenler = [];
    for i=1:x-1
        if ( mod(x,i) == 0 )
            bolenler = [bolenler,i];
        end
    end
    if ( sum(bolenler) == x )
        fprintf('%d sayýsý mükemmel sayýdýr \n',x);
        m_liste = [m_liste,x];
    end
end
disp(m_liste);
disp(sum(m_liste));