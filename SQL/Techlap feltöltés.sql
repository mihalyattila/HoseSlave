delete from Techlap
	
insert into Techlap
	(Srsz, L, L1, L2, L3, MaxOD, VegzodesId, L1Caption, Rogzitette, RogzIdopont)
select
	Srsz, csh.L, csh.L1, csh.L2, csh.L3, csh.Dmax, Null, Null, User_Name(), GetDate()
from
	CsatlakozoRajzok csr
	Left Outer Join CsatiHossz csh On (csr.CsatlRsz = csh.CsatlakozoRsz)
