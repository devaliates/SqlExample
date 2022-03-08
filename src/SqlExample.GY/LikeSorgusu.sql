-- % genel önemli değil operatörü

-- isminin baş harfi j olan gerisi önemli olmayan personellerin adını soyadını getir.
select adi, soyadi from personeller where adi like 'j%'

-- isminin son harfi y olan gerisi önemli olmayan personellerin adını soyadını getir.
select adi, soyadi from personeller where adi like '%y'

-- isminin son üç harfi ert olan personeli getirelim.
select * from personeller where adi like '%ert'

-- isminin ilk harfi r, son harfi t olan personeli getir.
select * from personeller where adi like 'r%t'

	-- gereksiz kullanımı
	select * from personeller where adi like 'r%' and adi like '%t'

-- isminde an eçen personelin adını yazdıralım.
select adi from personeller where adi like '%an%'

-- isminin baş harfi n olan ve içerisinde an geçen personeli getirelim.
select * from personeller where adi like 'n%an%'

-- _ özel önemli değil operatörü

-- isminin baş harfi a, ikinci harfi fark etmez ve üçünci harfi d olan ve gerisi önemli olmayan personeli getir.
select * from personeller where adi like 'a_d%'

-- isminin ilk harfi m, ikinci - üçüncü - dördüncü fark etmez ve beşinci harfi a olan personeli getirelim.
select * from personeller where adi like 'm___a%'

-- [] ya da operatörü

-- isminin ilk harfi n ya da m ya da r olan personelleri getirelim.
select * from personeller where adi like '[nmr]%'

-- isminin içerisinde a ya da i geçen personelleri getirelim.
select * from personeller where adi like '%[ai]%'

-- [*-*] alfabetik arasında operatör
-- isminin baş harfi a ile k arasında alfabetik sıraya göre herhangi bir harf olan personellerin adını yazdır.
select adi from personeller where adi like '[a-k]%'

-- [^*] değil operatörü
-- isminin baş harfi a olmayan personelleri getirelim.
select * from personeller where adi like '[^a]%'

-- isminin baş harfi an olmayan personelleri getirelim.
select * from personeller where adi like '[^an]%'