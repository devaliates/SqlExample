select * from personeller
select * from satislar

select * from personeller, satislar

-- benzer isimdeki kolonlar için
select personelId from personeller, satislar

-- hangi tablodan personelId çekileceğini belirttik.
select personeller.personelId from personeller, satislar

-- alias eklenerek daha kolay gösterim.
select p.personelId, s.musteriId from personeller p, satislar s

-- where
select p.personelId, s.musteriId
from personeller p, satislar s
where p.personelId = s.personelId
