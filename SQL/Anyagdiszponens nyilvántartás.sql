drop table #t
drop table #r

use TMO

declare @date1 datetime, @date2 datetime
set @date1 = '2012.01.01'
set @date2 = '2012.03.31'

select
	rf.RendelesAz, rf.RendSz, rt.TetelSrsz, rt.TModHatarido
into #r
from
	RendelesFej rf,
	RendelesTetel rt
where
	rf.RendelesAz = rt.RendelesAz
	and rf.TermekKod = 1
	--and IsNull(rt.TModHatarIdo, '1990.01.01') between @date1 and @date2
	and (case when IsNull(IgertHatarIdo, '1900.01.01') > IsNull(HatarIdo, '1900.01.01') then IgertHatarido else Hatarido end) 
		between '2012.01.01' and '9999.12.31'

-- "A" csatlakozó
select
	rt.RendelesAz, rt.TetelSrsz, Sorszam = 1, Megnevezes = 'Csatlakozó "A"', Specifikacio = Csatl1, Rajzszam = Csatl1Rsz, Anyag = '', Meret = Null, Megjegyzes = Null,
	Kiszallitando = Cast(1 as bit),
	db = case when IsNull(Csatl2Rsz, '') <> '' then DarabSzam else Darabszam * 2 end
into #t
from
	RendelesTetel rt,
	#r
where
	rt.RendelesAz = #r.RendelesAz
	and rt.TetelSrsz = #r.TetelSrsz

-- "B" csatlakozó
union all

select
	rt.RendelesAz, rt.TetelSrsz, Sorszam = 2, Megnevezes = 'Csatlakozó "B"', Specifikacio = Csatl2, Rajzszam = Csatl2Rsz, Anyag = '', Meret = Null, Megjegyzes = null,
	Kiszallitando = Cast(1 as bit),
	db = Darabszam
from
	RendelesTetel rt,
	#r
where
	rt.RendelesAz = #r.RendelesAz
	and rt.TetelSrsz = #r.TetelSrsz
	and IsNull(Csatl2Rsz, '') <> ''

-- Belsõ hüvely
union all

select
	rt.RendelesAz, rt.TetelSrsz, Sorszam = 3, Megnevezes = 'Belsõ hüvely', Specifikacio = '', Rajzszam = BelsoHuvely, Anyag = BhAnyag, Meret = Null, Megjegyzes = '',
	Kiszallitando = Cast(1 as bit),
	db = 2
from
	RendelesTetel rt,
	#r
where
	rt.RendelesAz = #r.RendelesAz
	and rt.TetelSrsz = #r.TetelSrsz

-- Hüvely
union all

select
	rt.RendelesAz, rt.TetelSrsz, Sorszam = 4, Megnevezes = 'Hüvely', Specifikacio = '', Rajzszam = Huvely, Anyag = '', Meret = Null, Megjegyzes = '',
	Kiszallitando = Cast(1 as bit),
	db = 2
from
	RendelesTetel rt,
	#r
where
	rt.RendelesAz = #r.RendelesAz
	and rt.TetelSrsz = #r.TetelSrsz

-- spirálkúp
union all

select
	rt.RendelesAz, rt.TetelSrsz, Sorszam = 5, Megnevezes = 'Spirálkúp', Specifikacio = '', Rajzszam = Spiralkup, Anyag = '', Meret = Null, Megjegyzes = '',
	Kiszallitando = Cast(1 as bit),
	db = 2
from
	RendelesTetel rt,
	#r
where
	rt.RendelesAz = #r.RendelesAz
	and rt.TetelSrsz = #r.TetelSrsz

union all

select
	e.RendelesAz, e.TetelSrsz, Sorszam, Megnevezes, Specifikacio = '', Rajzszam, Anyag = '', Meret = null, Megjegyzes,
	Kiszallitando,
	db = case when DbFuggo = 1 then rt.darabszam * e.darabszam else e.darabszam end
from
	#r,
	RendelesTetel rt,
	RendelesTetelEgyebek e
where
	rt.RendelesAz = #r.RendelesAz
	and rt.TetelSrsz = #r.TetelSrsz
	and e.RendelesAz = rt.RendelesAz
	and e.TetelSrsz = rt.TetelSrsz
	and Active = 1

-- Összegzõ lekérdezés
select
	rf.RendSz, #t.* 
from 
	RendelesFej rf,
	#t
where
	#t.RendelesAz = rf.RendelesAz
order by 
	rf.RendSz, #t.TetelSrsz, #t.Sorszam
