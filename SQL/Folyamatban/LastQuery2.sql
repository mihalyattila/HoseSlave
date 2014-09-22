--drop table #t1

select
	rf.RendSz, rf.RendelesAz, rt.TetelSrsz, Rendeles = RTrim(rf.RendSz) + '/' + RTrim(Cast(rt.TetelSrsz as char(10))),
	TomloDb = DarabSzam, Emelobilincs, EbMeret, BiztBilincs, BbMeret, OsztottHuvely,
	EbFestes = dbo.OrderPaintToStr(rf.RendelesAz, rt.TetelSrsz, 1),
	BbFestes = dbo.OrderPaintToStr(rf.RendelesAz, rt.TetelSrsz, 2),
	EbAzonosito = dbo.OrderLcScIdToStr(rf.RendelesAz, rt.TetelSrsz, 1),
	BbAzonosito = dbo.OrderLcScIdToStr(rf.RendelesAz, rt.TetelSrsz, 2)
into #t1
from
	RendelesFej	rf,
	RendelesTetel rt
where
	RendSz in (select RendelesSzam from ElorendelesTetelek)
	and rf.RendelesAz = rt.RendelesAz
	and TermekKod = 1
	and rf.Torolt = 0
	and rt.Torolt = 0

Select 
	Rendelesszam, db = sum(db), Megnevezes, Rajzszam, Meret, Festes, EgyediAzonosito, Tipus
from
(
-- Emelõ bilincs
select
	Rendelesszam = Rendeles, Megnevezes = 'Emelõ bilincs', Rajzszam = Emelobilincs, Meret = EbMeret, Db = TomloDb * 2, 
	Festes = EbFestes,
	EgyediAzonosito = EbAzonosito,
	Tipus = 1
from 
	#t1
where
	IsNull(Emelobilincs, '') <> ''

union all
-- Biztonsági bilincs
select
	Rendelesszam = Rendeles, Megnevezes = 'Biztonsági bilincs', Rajzszam = BiztBilincs, Meret = BbMeret, Db = TomloDb * 2,
	Festes = BbFestes,
	EgyediAzonosito = BbAzonosito,
	Tipus = 1
from 
	#t1
where
	IsNull(BiztBilincs, '') <> ''

union all
-- Osztott hüvely
select
	Rendelesszam = Rendeles, Megnevezes = 'Osztott hüvely', Rajzszam = OsztottHuvely, Meret = null, Db = TomloDb * 2,
	Festes = Null,
	EgyediAzonosito = Null,
	Tipus = 3
from 
	#t1
where
	IsNull(OsztottHuvely, '') <> ''
) x
Group by
	Rendelesszam, Tipus, Megnevezes, Rajzszam, Meret, Festes, EgyediAzonosito
Order by
	Rendelesszam, Tipus

drop table #t1
