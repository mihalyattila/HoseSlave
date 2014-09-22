declare @Date1 datetime, @Date2 datetime
select @Date1 = '2008.08.01' --:Date1
select @Date2 = '2008.12.31' --:Date2
select
	m.Meo_Az, m.RendSz, m.TetelSrsz,
	[ASSETNUMBER] = 'AN-CRI-' + m.GY_SZ,
	[CATEGORYID] = '1149',
	[ITEMDESCRIPTION] = RTrim(cast(m.ID as char)) + '" ' + m.Tipus + ' ' +
		RTrim(Cast(m.UzemiNyomas as char)) + ' ' +
		(Select UnitSign from Units where UnitCode = m.UzemiNyomasU),
	[DISTRIBUTORID] = '???',
	[CLIENTID] = '???',
	[LOCATIONID] = '1310',
	[CHIPID] = ChipId,
	[CERTIFICATIONSTATUS] = 'Not Required',
	[CERTIFICATION INTERVAL] = '0 Years',
	[Bore Size] = RTrim(cast(m.ID as char)) + ' in',
	[Nominal Legth] = RTrim(Cast(NevlegesHossz as Char)) + ' ' +
		(select UnitSign from Units where Unitcode = NevlegesHosszU),
	[Design Pressure] = RTrim(Cast(rs.DesignPressure as Char)) + ' ' + DesignPressureUnit,
	[Test Pressure] = RTrim(Cast(rs.TestPressure as Char)) + ' ' + TestPressureUnit,
	[Internal stripwound tube] = rs.InternalStripwoundTube,
	[End coupling 1] = rs.TypeOfCoupling1,
	[End coupling 2] = rs.TypeOfCoupling2,
	[Max design temp] = RTrim(Cast(rs.MaxDesignTemperature as Char)),
	[Min design temp] = RTrim(Cast(Case when not rs.MinDesignTemperature is null 
		then -1 * rs.MinDesignTemperature else Null end as Char)),
	[Manufacturer] = 'ContiTech Rubber Ind.',
	[Hose Type] = '???', -- Honnan???
	[Hose Standard] = Standard,
	[Hose Cover] = Cover,
	[Outside Protection] = OutsideProtection,
	[Op./Dynamic MBR] = '???',
	[Storage MBR] = MBRstorage,
	[Op.Static MBR] = MBRstatic,
	[Notes] = ''
from
	Meo m
	Left Outer Join
	(select rs.*
	from
		(select RendelesSzam, MaxRev = Max(Revizio)
		from RendelesSap Group by RendelesSzam)	rm,
		RendelesSap rs
		where
		rs.RendelesSzam = rm.RendelesSzam
		and rs.Revizio = rm.MaxRev)
	rs On (rs.RendelesSzam = m.RendSz and rs.Pozicio = m.TetelSrsz)
	Left Outer Join
	(select RendSz, TetelSrsz, Konstrukcio
	from
		rendelesfej rf,
		rendelestetel rt
	where
		rf.RendelesAz = rt.rendelesAz) x
	On (x.RendSz = m.RendSz and x.TetelSrsz = m.TetelSrsz)
	Left Outer Join hose.dbo.bodyHeader bh
	On (bh.bodyDNb = x.Konstrukcio)
where
	not m.RendelesAz is null
	and not GY_SZ is null
	and Datum between @Date1 and @Date2
order by
        m.RendSz, m.TetelSrsz

 
