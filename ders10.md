# TBT MATLAB Ders 9
**27/12/2022 - Güz Dönemi 14 Hafta**

**İçerik Listesi**
- [[#`nargin`|`nargin`]]
- [[#`nargout`|`nargout`]]
- [[#`varargin`|`varargin`]]
- [[#`varargout`|`varargout`]]



## `nargin`
`nargin` size fonksiyona verilen parametre sayısını verir.

```matlab
function sonuc = fonk3(x,y)
    if ( nargin == 2)
        sonuc = 5;
    elseif ( nargin == 1)
        sonuc = 6;
    else
        sonuc = 7;
    end
end
```

```
>> fonk3()
ans = 7
>> fonk3(1)
ans = 6
>> fonk3(1,2)
ans = 5
```


## `nargout`
`nargout` size yapılan çıkış parametresi sayısı verir.

```matlab
function sonuc = fonk3(x,y)
    if ( nargin == 2)
        sonuc = 5;
    elseif ( nargin == 1)
        sonuc = 6;
    else
        sonuc = 7;
    end
    sonuc = nargout;
end
```

```
>> fonk3()
ans = 0
>> x = fonk3()
x = 1
```


## `varargin`
`varargin` size giriş yapılan değişkenleri verir.

```matlab
function sonuc = fonk3(varargin)
    if ( nargin == 2)
        sonuc = 5;
    elseif ( nargin == 1)
        sonuc = 6;
    else
        sonuc = 7;
    end
    sonuc = varargin;
end
```

```
>> A = fonk3(1,2)
A = ...
>> A{1}
ans = 1
>> A{2}
ans = 2
```


## `varargout`
`varargout` size çıkış yapılan tüm değişkenleri verir.

```matlab
function [varargout] = fonk3(varargin)
    if ( nargin == 2)
        sonuc = 5;
    elseif ( nargin == 1)
        sonuc = 6;
    else
        sonuc = 7;
    end
    varargout{1} = sonuc
end
```

```
>> x = fonk3(1)
varargout =
{
  [1,1] = 6
}

x = 6
```


**Örnek**: Kullanıcının girdiği tüm sayıların toplamını bulan bir fonksiyon yazınız.

```matlab
function sonuc = topla (varargin)
    sonuc = 0;
    for i=1:nargin
        sonuc = sonuc + varargin{i};
    end
end
```

- `isnumeric`: Girilen değerin sayı olup olmadığını kontrol eder. Üstteki fonksiyonda kullanıcının karakter girmesine önlem olarak kullanılabilir.

```matlab
function sonuc = topla (varargin)
    sonuc = 0;
    for i=1:nargin
	    if ( isnumeric(varargin{i}) )
	        sonuc = sonuc + varargin{i};
        end
    end
end
```


**Örnek**: Kullanıcının girdiği sayıların toplamını bulan fonksiyon, birden fazla çıktı istiyorsa sırasına göre kuvvetini verecek.

```matlab
function [varargout] = topla2 (varargin)
    sonuc = 0;
    for i=1:nargin
        if ( isnumeric(varargin{i}) )
            sonuc = sonuc + varargin{i};
        end
    end

    for j=1:nargout
        varargout{j} = sonuc^j;
    end
end
```


**Örnek**: $x$ ve $y$ birbirinden farklı olmak üzere $|x| + |y| \le 3$ sağlayan $x$ ve $y$ ikililerini ekrana yazan bir program yazınız.

```matlab
function ornek1()
    for x=-3:3
        for y=-3:3
            if ( x ~= y)
                if ( abs(x) + abs(y) <= 3 )
                    fprintf('(%2d, %2d)\n', x, y);
                end
            end
        end
    end
end
```


**Örnek**: Faktöriyel bulan fonksiyon

```matlab
function sonuc = faktoriyel(n)
    if n < 0
        error('n negatif olamaz');
    end

    sonuc = n;
    if n == 0
        sonuc = 1;
    else
        sonuc = sonuc * faktoriyel(n-1);
    end

end
```


**Örnek**: Girilen kelimenin polindrom olup olmadığını bulan fonksiyon.

```matlab
function sonuc = pal(kelime)
    boyut = length(kelime);
    yari = fix(boyut/2);

    sonuc = true;

    for i=0:yari
        if ( kelime(i+1) ~= kelime(boyut-i) )
            sonuc = false;
            break;
        end
    end
end
```

- Başka bir yöntem
```matlab
function sonuc = pal(kelime)
    sonuc = all(kelime == fliplr(kelime));
end
```

[< Önceki](ders9.md) 