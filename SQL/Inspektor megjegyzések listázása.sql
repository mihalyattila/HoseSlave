select
	distinct '"' + InspectorMegj + '"'
from
	RendelesFej rf,
	RendelesTetel rt
where
	rf.RendelesAz = rt.RendelesAz
	and TermekKod = 1
order by
	'"' + InspectorMegj + '"'