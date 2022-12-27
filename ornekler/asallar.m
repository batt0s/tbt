function liste = asallar(n)
liste = [];
for i=1:n-1
    if ( asal_mi(i) )
        liste = [liste,i];
    end
end
end