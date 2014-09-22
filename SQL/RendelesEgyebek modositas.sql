use AnormaTest

ALTER TABLE RendelesTetelEgyebek DISABLE TRIGGER TetelEgyebekChanges
ALTER TABLE RendelesTetelEgyebek DISABLE TRIGGER TetelEgyebekDeleted

go
/*
update RendelesTetelEgyebek
set
	darabszam = x.Darabszam,
	DbFuggo = x.DbFuggo,
	OsszDb = x.OsszDb
*/
select x.* 
from
	RendelesTetelEgyebek e,
(
	select
		rt.RendelesAz, db = rt.Darabszam, re.sorszam, re.Darabszam,
		DbFuggo = Cast(1 as bit),
		OsszDb = rt.Darabszam * re.Darabszam
	from
		RendelesFej rf,
		RendelesTetel rt,
		RendelesTetelEgyebek re
	where
		rf.TermekKod = 1
		and rf.RendelesAz = rt.RendelesAz
		and rt.RendelesAz = re.RendelesAz) x
where
	e.sorszam = x.sorszam

go

ALTER TABLE RendelesTetelEgyebek ENABLE TRIGGER TetelEgyebekChanges
ALTER TABLE RendelesTetelEgyebek EnABLE TRIGGER TetelEgyebekDeleted
