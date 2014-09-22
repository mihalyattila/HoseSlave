select
	csr.Srsz, csr.CsatlRsz, tl.L, tl.L1, tl.L2, tl.L3, tl.MaxOD, Megnevezes, tl.Rogzitette, tl.RogzIdopont
from
	TechLap tl
	Left Outer Join VegzodesTipusok vt On (vt.VegzodesId = tl.VegzodesId),
	CsatlakozoRajzok csr
where
	tl.Srsz = csr.Srsz
	and IsNull(csr.CsatlRsz, '') <> ''
	and csr.CsatlRsz like 'MT%'
order by
	csr.CsatlRsz
