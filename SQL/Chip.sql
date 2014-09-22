declare @Date1 datetime, @Date2 datetime
select @Date1 = '2008.01.01'
select @Date2 = '9999.12.31'

select
	m.Meo_Az, m.RendSz, m.TetelSrsz,
	[Owned by] = 'ContiTech Rubber Industrial Kft.',
	[Description] = RTrim(cast(m.Id as char(4))) + ' ' + m.Tipus + ' ' 
	+ RTrim(Cast(rs.DesignPressure as char(10))) + ' ',
	[Asset Number] = 'AN-CRI-' + m.GY_SZ,
	Category = '',
	Location = 'ContiTech Rubber Industrial Kft.',
	[Chip ID] = ChipId,
	[In Service Date] = dbo.strtodate(convert(char(10), getdate(), 102)),
	[Bore Size] = dbo.UnitConv(m.IdU, 6, m.ID),
	[Nominal Length] = NevlegesHossz,
	[Design Pressure] = rs.DesignPressure,
	[Test Pressure] = rs.TestPressure,
	[Internal Stripwound Tube] = rs.InternalStripwoundTube,
	[End Coupling 1] = rs.TypeOfCoupling1,
	[End Coupling 2] = rs.TypeOfCoupling2,
	[Max Design Temp] = rs.MaxDesignTemperature,
	[Min Design Temp] = rs.MinDesignTemperature,
	[Hose Weight] = '???', -- Honnan???
	[Manufacturer] = 'ContiTech Rubber Industrial Kft.',
	[Hose Type] = '???', -- Honnan???
	[Hose Standard] = Standard,
	[Hose Cover] = Cover,
	[Outside Protection] = OutsideProtection,
	[Dynamic MBR] = MBRdynamic,
	[Storage MBR] = MBRstorage ,
	[Static MBR] = MBRstatic,
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