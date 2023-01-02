# TBT MATLAB Ders 6
**08/11/2022 - Güz Dönemi 7. Hafta**

**İçerik Listesi**
Sınav öncesi ders olduğu için sadece örnek çözüldü.

**Örnek**: Kullanıcıdan istenilen satır ve sütun sayısına karşılık adresleri belirtilerek bir matris oluşturun.
```matlab
x = input('Satır sayısı = ');
y = input('Sütun sayısı = ');

M = [];

for i=1:x
    for j=1:y
        fprintf('[%d,%d] = ', i, j);
        M(i,j) = input('');
    end
end

disp(M);
```

**Not**: `transpose(M)` veya `M'` ile bir matrisin transpozunu bulabilirsiniz.
**Not**: `isprime()` fonksiyonu ile bir sayının asal olup olmadığı anlaşılabilir.

**Örnek**: 13x21 lik elemanları asal sayılar olan bir matrisin 3. sütünundaki elemanlar toplamı ile 2. satır elemanlar toplamı farkı
```matlab
x = 13;
y = 21;
k = 2;
M = [];

for i=1:x
    for j=1:y
        while 1
            if isprime(k)
                M(i,j) = k;
                k = k + 1;
                break
            else
                k = k + 1;
            end
        end
    end
end

sum(M(:,3))-sum(M(2,:))
```

**Örnek**: Satır ve sütun sayısı kullanıcıdan istenilen ve 0 ile 15 arasında rastgele tamsayı değerler alan bir matris oluşturun. Daha sonra oluşan matristeki 0ların yerlerini ve sayısını bulan bir program yazınız.
```matlab
boyut = input('Boyut ([x,y]) = ');
x = boyut(1);
y = boyut(2);

M = randi([0,15], x, y);

s = 0;

for i=1:x
    for j=1:y
        if M(i,j) == 0
            s = s + 1;
            fprintf('M(%d,%d) değeri 0\n', i, j);
        end
    end
end

fprintf('%d tane 0 var.\n', s);
```

**Örnek**: `transpose()` fonksiyonu kullanmadan kullanıcının girdiği matrisin transpozunu alınız.
```matlab
M = input('M = \n');

T = [];

[x,y] = size(M);

for i=1:y
    for j=1:x
        T(i,j) = M(j,i);
    end
end

disp(T);
```

**Örnek**: Kullanıcının girdiği sayının mükemmel olup olmadığını bulan program.
```matlab
x = input('x = ');

bolenler = [];

for i=1:x-1
    if mod(x,i) == 0
        bolenler = [bolenler, i];
    end
end

if sum(bolenler) == x 
    fprintf('Mükemmel sayı\n');
else
    fprintf('Mükkemmel sayı değil\n');
end
```

**Örnek**: 1den 999a kadar bütün mükemmel sayıların toplamı.
```matlab
m_liste = [];
for x=1:999
    bolenler = [];
    for i=1:x-1
        if mod(x,i) == 0
            bolenler = [bolenler, i];
        end
    end
    if sum(bolenler) == x 
        m_liste = [m_liste, x];
    end
end
sum(m_liste)
```

[< Önceki](ders5.md) | [Sonraki >](ders7.md)