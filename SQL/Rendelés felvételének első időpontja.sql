select
	RendSz, Idopont = Cast(Convert(varchar(10), case when not date is null then Date else RRogzIdo end, 120) as datetime)
from
	RendelesFej f
	Left Outer Join 
(
select
	RendelesAz, Date = min(Cast(NewValue as datetime))
from
	RendelesFejMod
where
	FieldName = 'RRogzIdo'
	and isdate(NewValue) = 1
group by
	RendelesAz) m
On f.RendelesAz = m.RendelesAz
where
	TermekKod = 1
	and RendSz >= '429831'
order by
	RendSz