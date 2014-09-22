select
	rf.RendSz, rt.TetelSrsz, Hossz, Csatl1, Csatl1Rsz, Csatl2, Csatl2Rsz, Egyebek
from
	RendelesFej rf,
	RendelesTetel rt
where
	rf.RendelesAz = rt.RendelesAz
	and rf.TermekKod = 1
	and Hossz <= 6
	and (((IsNull(Csatl2, '') = ''
		and Csatl1 like '%flange%' and (not Csatl1 like '%17SV%' and not Csatl1 like '%lapped%' and not Csatl1 like '%ISO%')))
	or
		(Csatl1 like '%flange%' and (not Csatl1 like '%17SV%' and not Csatl1 like '%lapped%' and not Csatl1 like '%ISO%')
		and Csatl2 like '%flange%' and (not Csatl2 like '%17SV%' and not Csatl2 like '%lapped%' and not Csatl2 like '%ISO%')))
order by
	rf.Rendsz

/*
Attila,
szerintünk igy lesz jo
ha igaz:
6 m-nél rövidebb a tömlõ
és
csati megnevezésben szerepel a "flange"
és
nem szerepelnek benne a "17SV" "lapped" "ISO" kifejezések

köszi,
UL
*/