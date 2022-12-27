function [liste] = secmeli_siralama(liste)
    n = length(liste);
    for i=1:n
        min = i;
        for j=i+1:n
            if ( liste(j) <liste(min) )
                min = j;
            end
        end
        gecici = liste(i);
        liste(i) = liste(min);
        liste(min) = gecici;       
    end
end