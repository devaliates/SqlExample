-- left soldan (baştan) belirtilen sayıda karakteri getirir.
select left(adi, 2) from personeller

-- right sağdan (soldan) belirtilen sayıda karakteri getirir.
select right(adi, 3) from personeller

-- upper büyük harfe çevirir.
select upper(adi) from personeller

-- lower küçük harfe çevirir.
select lower(adi) from personeller

-- substring belirtilen indexten itibaren belirtilen sayıda karakter getir.
select substring(soyadi, 3, 2) from personeller

-- ltrim soldan boşlukarı keser
select '          Ali'
select ltrim('         Ali')

-- rtrim sağdaki boşlukarı keser.
select 'Ateş          '
select rtrim('Ateş              ') 

-- reverse tersine çevirir
select reverse(adi) from personeller

-- replace belirtilen ifadeyi, belirtilen ifade ile değiştirir.
select replace('Benim adım Ali', 'Ali', 'Ebru')

-- charIndex belirtilen karakterin veri içinde sıra numarasını verir.
select adi, charIndex('r', adi) from personeller
select musteriAdi, charIndex(' ', musteriadi) from musteriler

-- charindex örnek
-- müşteriler tablosunun musteriAdi kolonunda sadece adlarını çekelim.
select musteriAdi from musteriler
select substring(musteriAdi, 0, charIndex(' ', musteriAdi)) from musteriler

-- musteriler tablosunun musteriAdi kolonunda sadece soyadlarıını çekelim
select substring(musteriAdi, charIndex(' ', musteriAdi), len(musteriAdi) - (charIndex(' ', musteriAdi) - 1)) from musteriler
