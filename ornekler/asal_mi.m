function sonuc = asal_mi(n)
    p_bolen = bolenler(n);
    if ( length(p_bolen) == 2)
        sonuc = true;
    else
        sonuc = false;
    end
end

function liste = bolenler(x)
liste = [];
for i=1:x
    if ( mod(x,i) == 0 )
        liste = [liste,i];
    end
end
end