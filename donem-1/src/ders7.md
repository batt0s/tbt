# TBT MATLAB Ders 7
**06/12/2022 - Güz Dönemi 11. Hafta**

**İçerik Listesi**
- [[#switch-case Yapısı|switch-case Yapısı]]
- [[#try-catch Yapısı|try-catch Yapısı]]
- [[#lambda Fonksiyonu|lambda Fonksiyonu]]


## switch-case Yapısı
```matlab
switch durum
	case durum1
		deyim1
	case durum2
		deyim2
	...
	otherwise
		deyimn
end
```

**Örnek:** Kullanıcıdan istenilen bir ayın kaç günden oluştuğunu bulan bir program yapınız.
```matlab
n = input('Bir ay giriniz: ');
switch n
    case {1,3,5,7,8,10,12}
        fprintf('31 Gün\n');
    case {2}
        yil = input('Hangi yıl: ');
        if mod(yil,4) == 0
            if (mod(yil,100) == 0)
                if (mod(yil,400) == 0)
                    fprintf('29 Gün\n');
                else
                    fprintf('28 Gün\n');
                end
            else
                fprintf('29 Gün\n');
            end
        else
            fprintf('28 Gün\n');
        end
    case {4,6,9,11}
        fprintf('30 Gün\n');
    otherwise
        fprintf('Lütfen geçerli bir ay giriniz.\n');
end
```

## try-catch Yapısı
```matlab
try
	deyim1
catch
	deyim2
end
```

try-catch yapısında deyim1'i çalıştırmayı dener ve eğer deyim1 hata verirse deyim2 çalıştırılır.

Eğer hatayı bir değişkene atamak isterseniz catch den sonra değişken ismi yazabilirsiniz.
```matlab
try
	deyim1
catch me
	deyim2
end
```

**Örnek:** Kullanıcıdan istenilen bir dizinin eleman sayısını (length, size, numel fonksiyonlarını kullanmadan) bulan bir program yazınız.
```matlab
A = input('A = ');
i = 1;
while 1
    try
        A(i);
        i = i + 1;
    catch
        fprintf('Diznin uzunluğu %d\n', i-1);
        break;
    end
end
```

## lambda Fonksiyonu
lambda fonksiyonları kısaltılmış fonksiyon tanımlardır. Bir lambda fonksiyonu `fonk_adi = @(gp) fonk_tanimi` şeklinde tanımalanabilir. Örneğin `kare = @(x) x.^2`. Başka bir örnek olarak parametre almayan fonksiyonlar, `sil = @() clc` olarak tanımlanabilir. Bu fonksiyonları kullanırken parantez boş bırakılır (`sil()` şeklinde). Yine bir fonksiyon birden çok parametre alabilir.

**Örnek:** Aşağıdaki fonksiyonu matlab'a aktarınız.
$$f(x,y,z) = \frac{e^{2x+1}-sin(y)}{2\sqrt{z}+ln(z)}$$
```matlab
f = @(x,y,z) [(exp(2*x+1)-sin(y))/(2*sqrt(z)+log(z))]
```

[< Önceki](ders6.md) | [Sonraki >](ders8.md)