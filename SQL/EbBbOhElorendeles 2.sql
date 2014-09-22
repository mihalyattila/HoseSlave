drop table #t

select
	Id, Kotesszam = RendSz + '/' + Cast(TetelSrsz as char(10)), 
	db,
	Tipus = case 
		when Sorszam = 6 then 'EB'
		when Sorszam = 7 then 'BB'
		when Sorszam = 8 then 'OH'
	end,
	Rajzszam,
	Meret,
	Festes,
	Azonosito
into #t
from
	Elorendeles
where
	Kivalasztva = 1
	and Sorszam in (6,7,8)
order by
	RendSz

select
	t.*, Ar, CikkszamVeg
from 
	#t t
	Left Outer Join ElorendelesAdatok ea On (t.Rajzszam = ea.Rajzszam 
		and IsNull(t.Meret, 0) between Isnull(ea.IdMin, 0) and Isnull(ea.IdMax, 0)
		and t.Festes = ea.Festes)
		--case when Megnevezes in (
