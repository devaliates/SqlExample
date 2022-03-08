-- yaşadığı şehrin london, tacoma ve krikland olan personellerin adını listeleyelim.
select Adi
from personeller
where sehir = 'london' or sehir = 'tacoma' or sehir = 'kirkland'

	-- In komutu ile
	select Adi
	from personeller
	where sehir in('london', 'tacoma', 'kirkland')
