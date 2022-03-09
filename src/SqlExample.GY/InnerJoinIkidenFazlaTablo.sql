-- 1997 yılından sonra Nancy nin satış yaptığı firmaların isimleri (1997 dahil)
-- musteriler, satislar, personeller)
select *
from personeller p
inner join satislar s on p.personelId = s.personelId
inner join musteriler m on s.musteriID = m.musteriId
where p.adi = 'Nancy' and year(s.satisTarihi) > 1997

-- limited olan tedarikçilerden alınmış seafood kategorisindeki ürünlerin
-- toplam satış tutarı. (urunler, kategoriler, tedarikciler)
select sum(u.hedefStokDuzeyi * u.birimFiyati)
from urunler u
inner join tedarikciler t on u.tedarikciId = t.tedarikciId
inner join kategoriler k on u.kategoriId = k.kategoriId
where t.sirketAdi
like '%ltd.%' and k.kategoriAdi = 'seafood'
