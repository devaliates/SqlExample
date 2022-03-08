-- getdate bu günün tarihi
select getDate()

-- dateAdd verilen tarihe verildiği kadar gün, ay, yıl ekler.
select dateAdd(day, 999, getDate())
select dateAdd(month, 999, getDate())
select dateAdd(year, 999, getDate())

-- dateDiff iki tarih arasında günü, ayı ve ya yılı hesaplar.
select dateDiff(day, '05.15.1992', getDate())
select dateDiff(month, '05.15.1992', getDate())
select dateDiff(year, '05.15.1992', getDate())

-- datePart verilen tarihin haftanın, ayın yahut yılın kaçıncı günü olduğunu hesaplar.
select datePart(dw, getDate())
select datePart(month, getDate())
select datePart(day, getDate())