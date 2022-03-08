select * from urunler

select kategoriId, count(*)
from urunler
where kategoriId > 5
group by kategoriId

select personelId, count(*)
from satislar
where personelId < 4
group by personelId

select personelId, sum(nakliyeUcreti)
from satislar
group by personelId