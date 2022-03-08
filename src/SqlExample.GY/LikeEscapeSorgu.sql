-- like sorgularında kullandığımız %, _, [] gibi özel ifadeler verilerimizin
-- içerisinde geçiyorsa hata alırız bunun önüne geçmek için bu ifadelerin özel ifade
-- olmadığını escape karakteri ile belirleriz.

-- [] operatörü ile
-- escape komutu ile

select * from personeller where adi like '[_]%'

select * from personeller where adi like 'ü_%' escape 'ü'