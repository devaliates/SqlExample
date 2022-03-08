select *
from personeller p inner join satislar s
on p.personelId = s.personelId

-- hangi ürün hangi kategoride
select u.urunAdi, k.kategoriAdi
from urunler u inner join kategoriler k on u.kategoriId = k.kategoriId


-- beverages kategorisindeki ürünlerim.
select u.urunAdi
from kategoriler k inner join urunler u
on k.kategoriId = u.kategoriId
where k.kategoriAdi = 'beverages'

-- beverages kategorisindeki ürünlerimin sayısı kaçtır.
select count(u.urunAdi)
from kategoriler k inner join urunler u
on k.kategoriId = u.kategoriId
where k.kategoriAdi = 'beverages'

-- seafood kategorisindeki ürünlerin listesi
select u.urunAdi
from kategoriler k inner join urunler u
on k.kategoriId = u.kategoriId
where k.kategoriAdi = 'seafood'

-- hangi satışı hangi çalışanım yapmış?
select s.satisId, p.adi + ' ' + p.soyadi
from satislar s inner join personeller p
on s.personelId = p.personelId

-- faks numarası null olmayan tedarikcilerden alınmış ürünler nelerdir?
select u.urunAdi
from urunler u inner join tedarikciler t
on u.tedarikciId = t.tedarikciId
where t.faks <> 'null'

	-- farklı gösterimi 
	select u.urunAdi
	from urunler u inner join tedarikciler t
	on u.tedarikciId = t.tedarikciId
	where t.faks is not null