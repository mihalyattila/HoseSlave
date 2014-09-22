Use TMO

drop table #t

	select
		t.Cikkszam, Megnevezes, t.HatarIdo, RendSz, t.RendelesAz, t.TetelSrsz, rt.Konstrukcio, tipus, specifikacio, hossz, atmero, j.*
	into #t
	from
		(
		select
			Cikkszam, HatarIdo = Max(TModHatarido), RendSz = Max(Rendsz), 
			RendelesAz = Max(rf.RendelesAz), TetelSrsz = Max(TetelSrsz)
		from
			RendelesFej rf,
			RendelesTetel rt
		where
			rf.RendelesAz = rt.RendelesAz
			and rf.TermekKod = 1
		Group by 
			cikkszam
		having
			Max(TModHatarido) <= GetDate()
			and Len(IsNull(Cikkszam, '')) = 10
			and IsNull(Cikkszam, '') like '425%'
		) t
		Left Outer Join HelyiCikktorzs h On (t.Cikkszam = h.SapCikkszam)
		Left Outer Join RendelesTetel rt On (t.RendelesAz = rt.RendelesAz and t.TetelSrsz = rt.TetelSrsz)
		Left Outer Join 
		(
		select
			bodyCounter,
			bodyDNb,
			Nh = Cast(SUBSTRING(RTRim(CharStr), 2, 1) as bit),
			DC = Cast(SUBSTRING(RTRim(CharStr), 3, 1) as bit),
			Uszo = Cast(SUBSTRING(RTRim(CharStr), 4, 1) as bit),
			Gaz = Cast(SUBSTRING(RTRim(CharStr), 5, 1) as bit),
			Fut = Cast(SUBSTRING(RTRim(CharStr), 6, 1) as bit),
			Pa = Cast(SUBSTRING(RTRim(CharStr), 7, 1) as bit),
			He = Cast(SUBSTRING(RTRim(CharStr), 8, 1) as bit),
			BG = Cast(SUBSTRING(RTRim(CharStr), 9, 1) as bit),
			KV = Cast(SUBSTRING(RTRim(CharStr), 10, 1) as bit),
			La = Cast(SUBSTRING(RTRim(CharStr), 11, 1) as bit)
		--into #jellemzok
		from
			(
			-- Konstrukciós jellemzõk
			select
				bodyCounter, characteristics, bodyDNb,
				CharStr = dbo.IntToBin(characteristics, 11),
				StatStr = dbo.IntToBin(status, 10), 
				LineStr = dbo.IntToBin(linerResistance, 10)
			--into #t2
			from
				BodyHeader
			where
				bodyCounter in (
				select bodyCounter = max(bodyCounter) from bodyHeader where bodyDNb like 'MT%' group by bodyDNb)) x)
		j On (rt.Konstrukcio = j.bodyDNb)
	where
		t.Cikkszam in (
			select
				distinct SapCksz
			from 
				MfCikkszamok
			where
				RTrim(IsNull(Felkesz5, '')) = ''
				and RTrim(IsNull(Felkesz6, '')) = ''
				and RTrim(IsNull(Felkesz7, '')) = ''
				and RTrim(IsNull(Felkesz9, '')) = '')
	order by
		HatarIdo

select * from #t
/*
select
	distinct SapCksz
from 
	MfCikkszamok
where
	RTrim(IsNull(Felkesz5, '')) = ''
	and RTrim(IsNull(Felkesz6, '')) = ''
	and RTrim(IsNull(Felkesz7, '')) = ''
	and RTrim(IsNull(Felkesz9, '')) = ''
*/