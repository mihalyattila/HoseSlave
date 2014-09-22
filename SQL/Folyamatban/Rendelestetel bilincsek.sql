-- 493999(RendelesAz:17636)/10 - 28db
select
	rf.RendelesAz, rf.RendSz, rt.TetelSrsz, count(*)
from
	RendelesFej rf,
	RendelesTetel rt
	Left Outer Join RendelesTetelBilincs b On (rt.RendelesAz = b.RendelesAz and rt.TetelSrsz = b.TetelSrsz)
where
	rf.TermekKod = 1
	and rf.RendelesAz = rt.RendelesAz
group by
	rf.RendelesAz, rf.RendSz, rt.TetelSrsz
having
	count(*) > 2