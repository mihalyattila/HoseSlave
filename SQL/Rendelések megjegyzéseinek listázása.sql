select *
from
	RendelesSap rs,
	(
	select
		RendelesSzam, pozicio = min(pozicio)
	from
		dbo.RendelesSap
	where
		LastUpdate > '2014.02.13'
	group by
		RendelesSzam) x
where
	rs.Rendelesszam = x.Rendelesszam
	and rs.pozicio = x.pozicio
order by
	rs.Rendelesszam desc