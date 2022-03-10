-- hangi personelim (adı ve soyadı ile birlikte),
-- toplam kaç adetlik satış yapmıştır.
-- satış adedi 100 den fazla olanlar ve personelin adının
-- baş harfi M olan kayıtlar gelsin. (personeller, satislar)
select p.adi + ' ' + p.soyadi, count(s.satisId)
from personeller p
inner join satislar s on p.personelId = s.personelId
where p.adi like'm%' group by p.adi + ' ' + p.soyadi
having count(s.satisId) > 100


-- https://www.youtube.com/watch?v=e3E2sg1Qkdk&list=PLQVXoXFVVtp2RjHt5teaBOLUcKbq2Ilbo&index=23