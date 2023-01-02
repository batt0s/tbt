# TBT MATLAB Ders 4
**25/10/2022 - Güz dönemi 5. hafta**

**İçerik Listesi**
- [[#Döngüler|Döngüler]]
	- [[#Döngüler#for Döngüsü|for Döngüsü]]
	- [[#Döngüler#while Döngüsü|while Döngüsü]]


## Döngüler
### for Döngüsü
```matlab
for i=baslangic:artis_m:bitis
	deyimler
end
```
baslangic değerinden başlayarak i yi artis_m kadar artırarak bitis e kadar gider ve her bir artırmada içindeki deyimler işlenir.
### while Döngüsü
```matlab
while (kosul)
	deyimler
end
```
kosul doğru olduğu sürece deyimler çalışır.

**Örnek**: 1den kullanıcının girdiği sayıya kadar olan sayıların toplamını hesaplayan program.
for döngüsü kullanarak:
```matlab
n = input('n = ');
toplam = 0;
for i=1:1:n
	toplam = toplam + i;
end
fprintf('Toplam = %d\n', toplam);
```
while döngüsü kullanarak:
```matlab
n = input('n = ');
toplam = 0;
i = 1;
while (i <= n )
    toplam = toplam + i;
    i = i + 1;
end
fprintf('Toplam = %d\n', toplam);
```

**Örnek**: $\sum_{n=1}^{100} \frac{sin²(n)}{n²}$ değerini hesaplayan program.
```matlab
toplam = 0;
for i=1:1:100
    toplam = toplam + ((sin(i)^2)/i^2);
end
fprintf('Toplam = %d\n', toplam);
```

**Örnek**: Kullanıcının girdiği bir n değeri için $n!$ değerini hesaplayan Matlab programını yazınız.
```matlab
n = input('n = ');
if (n<0)
	error('n sayısı sıfırdan küçük olamaz.');
end

fac = 1;
for i=1:n
    fac = fac * i;
end
fprintf('%d! = %d\n', n, fac);
```

**Örnek**: 1den kullanıcının girdiği bir değere kadar tek sayıların toplamını bulan program.
```matlab
n = input('n = ');
t = 0;
for i=1:2:n
    t = t + i;
end
fprintf('Toplam = %d\n', t);
```

**Örnek**: 1den kullanıcının girdiği bir değere kadar 3e veya 4e bölünmeyen sayıların toplamını bulan program yazınız.
```matlab
n = input('n = ');
toplam = 0;
for i=1:n
    if ( (mod(i,3) ~= 0) && (mod(i,4) ~= 0) )
        toplam = toplam + i;
    end
end
fprintf('Toplam = %d\n', toplam);
```

**Örnek**: 10₺nin yıllık %30 faiz ile 50₺yi geçtiği veya eşit olduğu ilk yılı ve paranın kaç ₺ olduğunu bulan bir Matlab programı yazınız.
```matlab
para = 10;
yil = 0;

while (para < 50)
    yil = yil + 1;
    para = para + (para*0.3);
end

fprintf('%d yıl %g TL\n', yil, round(para,2));
```

**Örnek**: Çarpım tablosu.
```matlab
for i=1:10
    for j=1:10
        fprintf('%5d', i*j);
    end
    fprintf('\n');
end
```

**Örnek**: $\frac{1}{2!} + \frac{1}{3!} + \frac{1}{4!} + ... + \frac{1}{15!}$ işlemini hesaplayan programı yazınız.
```matlab
toplam = 0;

for i=2:15
    fac = 1;
    for j=1:i
        fac = fac * j;
    end
    toplam = toplam + 1/fac;
end

fprintf('%g', toplam);
```

[< Önceki](ders3.md) | [Sonraki >](ders5.md)