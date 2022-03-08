-- bir tablo daki tüm veriler ve tüm satırlarla işlem yapar

-- avg ortalama
select avg(PersonelId) from personeller

-- max en büyük değeri bul
select max(PersonelId) from personeller
 
-- min en küçük değer
select min(personelId) from personeller

-- count toplam sayısını bul (satır sayısı)
select count(*) from personeller
select count(Adi) from personeller

-- sum toplamı
select sum(nakliyeucreti) from satislar