# TBT MATLAB Ders 3 
**18/10/2022 - Güz dönemi 4. hafta**

**İçerik Listesi**
- [[#Aritmetik ve Mantıksal Operatörler|Aritmetik ve Mantıksal Operatörler]]
- [[#Koşullu Durumlar|Koşullu Durumlar]]
		- [[#*Örnek*: Kullanıcıdan istenilen sayının karesini ve sayı sıfırdan büyükse karekökünü bulan program.|*Örnek*: Kullanıcıdan istenilen sayının karesini ve sayı sıfırdan büyükse karekökünü bulan program.]]
		- [[#*Örnek*: Kullanıcıdan istenilen sayını eğer 0dan küçükse karesini, değilse karekökünü bulan program.|*Örnek*: Kullanıcıdan istenilen sayını eğer 0dan küçükse karesini, değilse karekökünü bulan program.]]
		- [[#*Örnek*: Kullanıcı tarafından girilen bir sayı $0 \le x < 9$ biçminde ise $\sqrt{x} + ln(x)$ değerini hesaplayan, sayı bu aralıkta değil ise ekrana "Sayı yanlış aralıkta" mesajını veren bir program yazınız.|*Örnek*: Kullanıcı tarafından girilen bir sayı $0 \le x < 9$ biçminde ise $\sqrt{x} + ln(x)$ değerini hesaplayan, sayı bu aralıkta değil ise ekrana "Sayı yanlış aralıkta" mesajını veren bir program yazınız.]]
		- [[#*Örnek*: Bir araç satış firmasında çalışan personel için maaş hesabı yapılmak istenmektedir. Buna göre aylık satış adedi 5'ten az ise 5500₺ sabit maaş ve satılan her araç için 450₺ prim verilmektedir. Satılan araç adedi 5 veya daha fazla ise 6500₺ sabit maaş ve satılan ilk 5 araç için araç başına 475₺ prim, 5'ten sonraki her araç için 575₺ prim verilmektedir. Buna göre satış adedi verilen personelin maaşını bulan program yapınız.|*Örnek*: Bir araç satış firmasında çalışan personel için maaş hesabı yapılmak istenmektedir. Buna göre aylık satış adedi 5'ten az ise 5500₺ sabit maaş ve satılan her araç için 450₺ prim verilmektedir. Satılan araç adedi 5 veya daha fazla ise 6500₺ sabit maaş ve satılan ilk 5 araç için araç başına 475₺ prim, 5'ten sonraki her araç için 575₺ prim verilmektedir. Buna göre satış adedi verilen personelin maaşını bulan program yapınız.]]
		- [[#*Örnek*: Kullanıcıdan alınan 3 sayının en küçüğünü bulan program.|*Örnek*: Kullanıcıdan alınan 3 sayının en küçüğünü bulan program.]]
		- [[#*Örnek*: Gelir vergisinin aşağıdaki kurallara göre alındığını varsayalım.|*Örnek*: Gelir vergisinin aşağıdaki kurallara göre alındığını varsayalım.]]



## Aritmetik ve Mantıksal Operatörler
`=` işareti atama için kullanılırken `==` "eşit mi" gibi bir anlama gelir. \
6, 6ya eşit mi?
```
>>> 6 == 6
ans =
	logical
	1
```
6, 5e eşit mi?
```
>>> 6 == 5
ans =
	logical
	0
```
2, 3e eşit değil mi?
```
>>> 2 ~= 3
ans = 
	logical
	1
```

| Operatör  | Anlam  | 
|---|---|
| == | Eşittir  |   
| ~= | Eşit değildir  |  
| < | Küçüktür  |  
| > | Büyüktür |
| <= | Küçük eşittir |
| >= | Büyük eşittir |
| && (`and()`) | Ve |
| \|\| (`or()`) | Veya |
| xor()  | Koşullu veya (ya da) |
**Not** : && ve \|\| işaretleri sadece skalerler için kullanılır. Eğer vektörler (diziler) için kullanmak isterseniz & ve \| kullanmanız gerekir. Aynı zamanda `and()` ve `or()` fonksiyonlarını da kullanabilirsiniz. \
String karşılaştırmak için unutmamak gereken şey "" ın skaler gibi '' vektör gibi işler.
```
'abc' == 'def' 
0 0 0 

"abc" == "def"
0
```

## Koşullu Durumlar
![Görsel: Akış diyagramları ile if else ](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.educba.com%2Facademy%2Fwp-content%2Fuploads%2F2019%2F08%2FIf-Else-Statement-Flow-Diagram-2.png&f=1&nofb=1&ipt=6be0f477956ab59f93758a25ec9a76dfed28cc1a402bddba36b18c97676e0aa8&ipo=images)

```
if (kosul)
	islem1
else
	islem2
end
```
`kosul` doğru ise islem1 çalışır. `kosul` yanlış ise islem2 çalışır.

#### *Örnek*: Kullanıcıdan istenilen sayının karesini ve sayı sıfırdan büyükse karekökünü bulan program.
```
clc
clear

sayi = input('Sayı = ');
kare = sayi^2;
fprintf('Sayı = %d\nKaresi = %d', sayi, kare);
if (sayi > 0)
	kok = sqrt(sayi);
	fprintf('Karekökü = %d\n', kok);
end
fprintf('\n');
```

#### *Örnek*: Kullanıcıdan istenilen sayını eğer 0dan küçükse karesini, değilse karekökünü bulan program.
```
clc
clear
sayi = input('Sayı = ');
if (sayi < 0)
	kare = sayi^2;
	fprintf('%d sayısının karesi %d', sayi, kare);
else
	kok = sqrt(sayi);
	fprintf('%d sayısının karekökü %d', sayi, kok);
end
fprintf('\n');
```

#### *Örnek*: Kullanıcı tarafından girilen bir sayı $0 \le x < 9$ biçminde ise $\sqrt{x} + ln(x)$ değerini hesaplayan, sayı bu aralıkta değil ise ekrana "Sayı yanlış aralıkta" mesajını veren bir program yazınız.

```
clc
clear
sayi = input('Sayı = ');
if (sayi >= 0 && sayi < 9)
	islem = sqrt(sayi) + log(sayi)
else
	fprintf('Sayı yanlış aralıkta\n');
end
```
**Not**: Hata vermek için `fprintf()` yerine `error()` kullanarak hata verilebilir.
```
clc
clear
sayi = input('Sayı = ');
if (sayi >= 0 && sayi < 9)
	islem = sqrt(sayi) + log(sayi)
else
	error('Sayı yanlış aralıkta\n');
end
```

#### *Örnek*: Bir araç satış firmasında çalışan personel için maaş hesabı yapılmak istenmektedir. Buna göre aylık satış adedi 5'ten az ise 5500₺ sabit maaş ve satılan her araç için 450₺ prim verilmektedir. Satılan araç adedi 5 veya daha fazla ise 6500₺ sabit maaş ve satılan ilk 5 araç için araç başına 475₺ prim, 5'ten sonraki her araç için 575₺ prim verilmektedir. Buna göre satış adedi verilen personelin maaşını bulan program yapınız.
```
clc
clear
satis = input('Satış adedi = ');

if (satis < 0 )
	error('Satış adedi 0dan küçük olamaz!');
end

if (satis < 5)
	maas = 5500 + satis*450;
else
	maas = 6500 + 5*450 + (satis-5)*575;
end
fprintf('Maaş = %d', maas);
```

#### *Örnek*: Kullanıcıdan alınan 3 sayının en küçüğünü bulan program.
```
clc
clear
sayi1 = input('1. sayı = ');
sayi2 = input('2. sayı = ');
sayi3 = input('3. sayı = ');
if (sayi1 <= sayi2)
	if (sayi1 <= sayi3)
		ek = sayi1;
	else
		ek = sayi2;
	end
else
	if (sayi2 <= sayi3)
		ek = sayi2;
	else 
		ek = sayi3;
	end
end
fprintf('En küçük %d', ek);
```

![Görsel: If Elseif Else akış diyagramı](https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Ftutlane.com%2Fimages%2Fswift%2Fswift-if-else-if-statement-algorithm-diagram.png&f=1&nofb=1&ipt=d6a7d334f4fcac8ebadbf6d1c298c6c24cad82673bb762bad406bdc1819d71bd&ipo=images)

Aynı örneği `elseif` kullanarak çözelim.

```
clc
clear
sayi1 = input('1. sayı = ');
sayi2 = input('2. sayı = ');
sayi3 = input('3. sayı = ');
if (sayi1 <= sayi2 && sayi1 <= sayi3)
	ek = sayi1;
elseif (sayi2 <= sayi1 && sayi2 <= sayi3)
	ek = sayi2;
else 
	ek = sayi3;
end
fpritf('En küçük %d', ek);
``` 

Başka bir yol.
```
clc
clear
sayi1 = input('1. sayı = ');
sayi2 = input('2. sayı = ');
sayi3 = input('3. sayı = ');
fprintf('En küçük %d', min([sayi1,sayi2,sayi3]))
```

#### *Örnek*: Gelir vergisinin aşağıdaki kurallara göre alındığını varsayalım.
$gelir \le 150.000 \rightarrow$ vergi oranı %25 \
$gelir \le 300.000 \rightarrow$ vergi oranı %30 \
$gelir \le 600.000 \rightarrow$ vergi oranı %35 \
$gelir \le 1.200.000 \rightarrow$ vergi oranı %40 \
$gelir > 1.200.000 \rightarrow$ vergi oranı %50 \
**Buna göre yıllık geliri verilen firmanın ödemesi gereken vergiyi hesaplayan matlab programı yazınız. (gelir=2.000.000?)**
```
clc
clear

g = input('Yıllık gelir = ');

if (g <= 0)
	v = 0;
	fprintf('İşlem: Vergi kontrolü');
elseif (g <= 150)
	v = g*0.25;
elseif (g <= 300)
	v = 150*0.25 + (g-150)*0.30;
elseif (g <= 600)
	v = 150*0.25 + 150*0.30 + (g-300)*0.35;
elseif (g <= 1200)
	v = 150*0.25 * 150*0.30 * 300*0.35 + (g-600)*0.40;
else (g > 1200)
	v = 150*0.25 * 150*0.30 * 300*0.35 + 600*0.40 + (g-600)*0.50;
end

fprintf('Vergi = %g\n', v); 
```

[< Önceki](ders2) | [Sonraki >](ders4)