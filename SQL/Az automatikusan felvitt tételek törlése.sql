select RendelesAz
into #t
from 
	rendelesfej
where
	autoupdate = 1

delete 
from 
	rendelestetel 
where
	RendelesAz in (select RendelesAz from #t)

delete 
from 
	rendelesfej
where
	RendelesAz in (select RendelesAz from #t)

drop table #t