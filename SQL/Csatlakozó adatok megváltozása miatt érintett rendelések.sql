declare @CsatlRsz varchar(50), @Srsz int

set @Srsz = 2324

select @CsatlRsz = CsatlRsz from CsatlakozoRajzok where Srsz = @Srsz

select
	RendSz
from
	RendelesFej rf,
	RendelesTetel rt
where
	rf.TermekKod = 1
	and rf.rendelesAz = rt.RendelesAz
	and IsNull(rf.Torolt, 0) = 0
	and IsNull(rt.Torolt, 0) = 0
	and IsNull(AccListExist, 0) = 1
	and IsNull(BeszolgDb, 0) <> darabszam
	and 
		(Csatl1Rsz = @CsatlRsz or Csatl2Rsz = @CsatlRsz)
