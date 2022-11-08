liste = [];
for x=90:15000
    s = num2str(x);
    toplam = 0;
    for i=1:length(s)
        toplam = toplam + str2double(s(i))^i;
    end
    if ( toplam > x )
        liste = [liste,x];
    end    
end
disp(length(liste));
    
