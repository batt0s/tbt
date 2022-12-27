function [liste] = kabarcik_siralama(liste)
n = length(liste);
    for i=1:n
        for j=n:-1:i+1
            if ( liste(j) < liste(j-1) )
                gecici = liste(j);
                liste(j) = liste(j-1);
                liste(j-1) = gecici;
            end            
        end        
    end
end