# TBT MATLAB Ders 9
**20/12/2022 - Güz Dönemi 13 Hafta**

**İçerik Listesi**

## Değişkenleri Yer Değiştirme
`x = 3` ve `y = 2` olsun. Bu iki değişkeni yer değiştirmek için geçici bir değişkene ihtiyaç var.
```
>> x = 3
x = 3
>> y = 2
y = 2
>> g = x
g = 3
>> x = y
x = 2
>> y = g
y = 3
```
Bu şekilde `g` geçici değişkenini kullanarak `x` ve `y` değerlerini değiştirdik. Şimdi bu işlem için bir fonksiyon yazalım.
```matlab
function [x,y] = degistir(x,y)
    gecici = y;
    y = x;
    x = gecici;
end
```
Ve kullanalım.
```
>> x = 3
x = 3
>> y = 2
y = 2
>> [x,y] = degistir(x,y)
x = 2
y = 3
```

## Seçmeli Sıralama (Selection Sort)
Amacımız bir dizinin (vektörün) elemanlarını küçükten büyüğe doğru sıralamak.

```matlab
function [liste] = secmeliSirala(liste)
    lenListe = length(liste);
    for i=1:lenListe
        min = i;
        for j=i+1:lenListe
            if ( liste(j) < liste(min) )
                min = j;
            end
        end
        gecici = liste(i);
        liste(i) = liste(min);
        liste(min)= gecici;
    end
end
```

## Kabarcık Sıralama (Bubble Sort)
Amacımız bir dizinin (vektörün) elemanlarını küçükten büyüğe doğru sıralamak.

```matlab
function [liste] = kabarcikSirala(liste)
    len = length(liste);
    for i=1:len
        for j=len:-1:i+1
            if ( liste(j) < liste(j-1) )
                gecici = liste(j);
                liste(j) = liste(j-1);
                liste(j-1) = gecici;
            end
        end
    end
end
```

## Sınav için bazı notlar

```
>> fix(clock)
ans =

   2022     12     20     12     13      0

>> ceil(-2.99)
ans = -2
>> floor(-2.99)
ans = -3
>> ceil(2.99)
ans = 3
>> floor(2.99)
ans = 2
```

`nargin`: Giriş yapılan parametrelerin sayısı.
`nargout`: Çıkış istenilen parametrelerin sayısı.
`varargin`: Giriş yapılan değişkenler.
`varargout`: Çıkış istenilen tüm değişkenler.

[< Önceki](ders8.md)