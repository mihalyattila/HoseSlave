-- Rendeléshez tartozó gégecsövek adott idõszakra
declare @date1 datetime, @date2 datetime
set @date1 = '2010.01.01'
set @date2 = '9999.12.31'

select
	TModHatarido, RendSz, TetelSrsz, darabszam, hossz, osszhossz = darabszam * hossz, descriptionH, descriptionE, producer
from
	RendelesFej rf,
	RendelesTetel rt
	Left Outer Join 
		(select bodyDNb, m.description, m.descriptionH, m.descriptionE, producer
		from 
			BodyHeader bh
			Left Outer Join BodyPositions bp On (bh.bodyCounter = bp.bodyCounter)
			Left Outer Join Material m On (bp.material = m.materialCounter)
		where
			--bodyDNb = Konstrukcio
			bh.status = 0
			and LayerType = 1
		) x On (x.bodyDNb = rt.Konstrukcio)
where
	TermekKod = 1
	and rf.RendelesAz = rt.RendelesAz
	and TModHatarido between @date1 and @date2
	and bg = 1
order by
	TModHatarIdo