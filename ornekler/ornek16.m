n = input('n = ');
toplam = 0;
for i=1:1:n
    if ( (mod(i,3) ~= 0) && (mod(i,4) ~= 0 ) )
        toplam = toplam + i;
      %  fprintf('%d - ',i);
    end
end
fprintf('\n Sonuc = %d \n',toplam);