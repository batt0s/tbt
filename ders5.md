# TBT MATLAB Ders 5
**01/11/2022 - Güz Dönemi 6. Hafta**

**İçerik Listesi**
- [[#break ve continue|break ve continue]]
	- [[#break ve continue#break|break]]
	- [[#break ve continue#continue|continue]]
- [[#`num2str()` ve `str2double()` fonksiyonları|`num2str()` ve `str2double()` fonksiyonları]]


## break ve continue
Döngünün içerisinde kullanılırlar. 

### break
Break kırmak demektir ve kullanılan yerde döngüyü kırıp döngüden çıkar. 
```
for i=1:10
    break;
    fprintf('%d\n', i);
end
fprintf('Döngü bitti\n');
```
Yukarıdaki kodda döngüye girdiği gibi `break` okuyup döngüyü bitirir ve çıktı sadece "Döngü bitti" olur.

**Örnek**: Kullanıcı negatif bir sayı girinceye kadar kullanıcının girdiği sayıları toplayan, negatif sayı girilince uygulamayı sonlandırıp sayıların toplamını söyleyen bir MATLAB programı yazınız.
```
x = 0;

while 1
    x = input('Pozitif bir sayı giriniz = ');
    if x < 0
        break
    end
    t = t + x;
end

fprintf('Girdiğiniz sayıların toplamı = %d\n', t);
```

### continue
Devam et anlamına gelir. Döngü içerisinde kullanıldığı yerde döngünün o aşamasını atlar.
```
for i=1:10
    continue;
    fprintf('%d', i);
end
fprintf('Döngü bitti\n');
```
Her seferinde continue diyip sonraki aşamaya geçildiği için i yi hiç yazdırmadan döngüyü bitirir.

**Örnek**: Kullanıcıdan 10 adet sayı isteyen ancak sadece pozitif olanların toplamını bulan MATLAB programı yazınız.
```
t = 0;

for i=1:10
    x = input('Pozitif bir sayı giriniz = ');
    if x < 0
        continue
    end
    t = t + x;
end

fprintf('Girdiğiniz pozitif sayıların toplamı = %d\n', t);
```

**Örnek**: $x=10$ ve $y=7$ olarak verilsin. Bu sayıların toplamı 52347den küçük kaldığı müddetçe $x$ sayısı ikiye katlanarak bu iki sayı toplanmaya devam edilmektedir. Döngü bittiğinde $x$ sayısı kaç kez ikiye katlanmış olur?
```
x = 10;
y = 7;
i = 0;
t = x + y;

while t < 52347
    x = x * 2;
    t = x + y;
    i = i + 1;
end

fprintf('x %d kere 2ye katlandı\n', i);
```
(`i` değişkeni kaç kere ikiye katlandığını, `t` değişkeni toplamı ifade ediyor)

## `num2str()` ve `str2double()` fonksiyonları
`num2str()` fonksiyonu verilen sayıyı string e çevirir. `str2double()` fonksiyonu da stringi double a çevirir.

**Örnek**: Kullanıcının girdiği sayının rakamları toplamı.
```
n = input('n = ');
s = num2str(n);
t = 0;

for i=1:length(s)
    t = t + str2double(s(i))
end

fprintf('Basamaklar toplamı = %d\n', t);
```

**Not**: Listenin elemanları toplama
```
liste = [12,13,14,15,16];

%% Yol I
toplam = sum(liste);
fprintf('Toplam = %d \n', toplam);

%% Yol II
toplam = 0;
for i=1:numel(liste)
    toplam = toplam + liste(i);
end
fprintf('Toplam = %d \n', toplam);

%% Yol III
toplam = 0;
for i=liste
    toplam = toplam + i;
end
fprintf('Toplam = %d \n', toplam);
```

**Örnek**: 3 basamaklı sayılar içerisinde basamak değerlerinin 3. kuvvetlerinin toplamı kendisine eşit olan sayılara Armstrong sayısı denir. Buna göre tüm Armstrong sayılarının toplamı kaçtır.
```
l = [];

for i=100:999
    s = num2str(i);
    uctop = 0;
    for j=1:length(s)
        uctop = uctop + (str2double(s(j))^3);
    end
    if uctop == i 
        l = [l, i];
    end
end

fprintf('Armstrong sayılarının toplamı = %d\n', sum(l));
```

[< Önceki](ders4.md) | [Sonraki >](ders6.md)