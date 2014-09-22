select
	RendSz, Vevo, TetelSrsz, Specifikacio, Darabszam, Konstrukcio, 
	Lelek = dbo.GetLiningType(Konstrukcio), Attributes = dbo.GetOrderItemAttribute(rf.RendelesAz, rt.TetelSrsz),
	WireType = dbo.GetWireType2(Konstrukcio), TModHatarIdo
from
	rendelesfej rf,
	Rendelestetel rt
where
	rf.rendelesaz = rt.rendelesaz
	and termekkod = 1
	and IsNull(TModHatarIdo, '1900.01.01') > '2011.01.01'