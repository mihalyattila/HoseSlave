-- A hibás inspektor megjegyzések listázása

select
	rf.RendSz, rt.*
from 
	rendelesfej rf,
	rendelestetel rt
where
	rf.RendelesAz = rt.RendelesAz
	and DataLength(InspectorMegj) > 500