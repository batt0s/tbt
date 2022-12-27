function sonuc = f(n)
if ( n < 0 )
    error('n sayisi negatif olamaz');
end
sonuc = n;
if ( n == 0 )
    sonuc = 1;
else
    sonuc = sonuc * f(n-1);
end
end