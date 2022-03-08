-- selecte normal kolon ve aggregate varsa group by kullanılmalıdır!

select * from urunler

select kategoriId, count(*) from urunler group by kategoriId

select personelId, count(*) from satislar group by personelId

select personelId, sum(nakliyeUcreti) from satislar group by personelId