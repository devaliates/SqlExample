-- personeller tablosunda şehri london olan verileri listele

select *
from personeller
where Sehir = 'london'

select *
from personeller
where BagliCalistigiKisi < 5

-- and operatörü
-- personeller tablosuynda şehri london ve ülkesi UK olanları listele
select *
from personeller
where Sehir = 'london' and Ulke = 'uk'

-- or operatörü
-- personeller tablosundaki ünvaneki mr. olan veya şehri seattle olan tüm personelleri listele
select *
from personeller
where unvanEki = 'mr.' or sehir = 'seattle'

-- karışık örnekler

-- adı robert soyadı king olan personelin tüm bilgileri
select *
from personeller
where adi = 'robert' and soyadi = 'king'

-- personel ID 5 olan personeli getir.
select *
from personeller
where personelId = 5

-- personel ID 5 e eşit ve büyük olan personelleri getir.
select *
from personeller
where personelId >= 5

	-- farklı çözümü

	select *
	from personeller
	where personelId > 5 or personelId = 5

-- <> eşit değilse
-- = eşitse
-- <= küçük eşit
-- >= büyük eşit

-- fonksiyon sonuçlarını şart olarak kullanmak
-- 1993 yılında işe başlayanları listele
select *
from personeller
where YEAR(iseBaslamaTarihi) = 1993

-- 1992 yılından sonra işe başlayanları listele
select *
from personeller
where YEAR(iseBaslamaTarihi) > 1992

-- doğum günü, ayın 29 olmayan personelleri listele.
select *
from personeller
where DAY(dogumTarihi) <> 29

-- doğum yılı 1950 ile 1965 yılları arasında olan personelleri getir.
select *
from personeller
where Year(DogumTarihi) > 1950 and year(dogumtarihi) < 1965

-- yaşadığı şehrin london, tacoma ve krikland olan personellerin adını listeleyelim.
select Adi
from personeller
where sehir = 'london' or sehir = 'tacoma' or sehir = 'kirkland'