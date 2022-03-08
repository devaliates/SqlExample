-- Değişkenlere değer atamak

DECLARE @sayi1 INT;
DECLARE @sayi2 INT;
DECLARE @toplam INT = @sayi1 + @sayi2;

SELECT @toplam;

DECLARE @sayi1 INT = 12;
DECLARE @sayi2 INT = 12;
DECLARE @toplam INT = @sayi1 + @sayi2;

SELECT @toplam;

-- SET ile değişkene değer atamak

DECLARE @Fiyat MONEY;
DECLARE @KdvOran MONEY;
DECLARE @KdvMiktar MONEY;
DECLARE @Toplam MONEY;

SET @Fiyat = 10;
SET @KdvOran = 0.18;
SET @KdvMiktar = @Fiyat * @KdvOran;
SET @Toplam = @Fiyat + @KdvMiktar;

SELECT @Toplam;

-- SELECT ile değişkene değer atamak

DECLARE @EnYuksekFiyat MONEY;
SET @EnYuksekFiyat = (SELECT MAX(ListPrice) FROM Production.Product);
SELECT @EnYuksekFiyat AS EnYuksekFiyat;

DECLARE @EnYuksekFiyat MONEY;
SELECT @EnYuksekFiyat = (SELECT MAX(ListPrice) FROM Production.Product);
SELECT @EnYuksekFiyat AS EnYuksekFiyat;