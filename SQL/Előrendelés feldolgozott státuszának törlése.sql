Use [TMO]
-- Elõrendelés feldolgozott státuszának törlése
update Elorendeles
set
	Feldolgozva = 0
where
	IsNull(Feldolgozva, 0) = 1

--
update Elorendeles
set
	Raktarra = 0
where
	IsNull(Raktarra, 0) = 1

update Elorendeles
set
	Kivalasztva = 0
where
	IsNull(Kivalasztva, 0) = 1

update Elorendeles
set
	Felosztva = 0
where
	IsNull(Felosztva, 0) = 1

delete from Elorendeles
where
	HozzaadottElem = 1