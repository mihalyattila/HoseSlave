-- A hib�s inspektor megjegyz�sek list�z�sa

select
	rf.RendSz, rt.*
from 
	rendelesfej rf,
	rendelestetel rt
where
	rf.RendelesAz = rt.RendelesAz
	and DataLength(InspectorMegj) > 500