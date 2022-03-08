-- doğum yılı 1950 ile 1965 yılları arasında olan personelleri getir.
select *
from personeller
where Year(DogumTarihi) > 1950 and year(dogumtarihi) < 1965

	-- between komutu ile 
	select *
	from personeller
	where year(DogumTarihi) between 1950 and 1965