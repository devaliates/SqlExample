USE Northwind

-- tablo oluşturur.
select 3

select 'Ali Ateş'

-- Message bölümünde çıktı verir.
print 'Ali Ateş'

select 3,5,7

select 'Ali', 'Ateş', 8

select * from personeller

select Adi, SoyAdi from personeller

-- alias atama


	-- as eskiden kullanıyordu.
select 3 as Değer

select 3 Değer

select 'Ali' [Adı], 'Ateş' Soyadı

select Adi isimler, Soyadi soyisimler from personeller

-- boşluk karakteri olan alias atama

select 1453 [İstanbulun Fethi]

-- boşluk karakteri olan tabloyu sorgulama

select * from [Satis Detaylari]

-- kolonları birleştirme

select Adi + ' ' + Soyadi [Ad Soyad Bilgisi] from personeller

-- farklı tipte kolonları birleştirme

select Adi + ' ' + IseBaslamaTarihi from personeller -- hatalı kullanım

select Adi + ' ' + CONVERT(nvarchar, IseBaslamaTarihi) from personeller -- doğru kullanım

select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) from personeller -- doğru kullanım CAST

select Adi + ' ' + CAST(IseBaslamaTarihi as nvarchar) [İsim ve İşe Başlama bilgisi] from personeller -- doğru kullanım CAST