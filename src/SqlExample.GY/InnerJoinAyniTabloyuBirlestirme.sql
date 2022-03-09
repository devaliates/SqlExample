
-- aynı tabloyu ilişkisel olarak birleştirme 

-- personellerimin bağlı olarak çalıştığı kişileri listele?
-- (personeller, personeller)

select p1.adi, p2.adi
from personeller p1
inner join personeller p2 on p1.bagliCalistigiKisi = p2.personelId