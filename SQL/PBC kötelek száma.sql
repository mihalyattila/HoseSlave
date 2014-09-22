select distinct Azonosito
from
	RendelesFej rf,
	RendelesTetel rt
	Left Outer Join BiztonsagiSzerelvenyek b
	On (b.RendelesAz = rt.RendelesAz and b.TetelSrsz = rt.TetelSrsz)
where
	rf.RendelesAz = rt.RendelesAz
	and rf.Torolt = 0
	and rt.Torolt = 0
	and rt.TModHatarido between '2008.01.01' and '2008.12.31'
	and EszkozFajta = 'Kötél'
	and Beszerzes = 'PBC'