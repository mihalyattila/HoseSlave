declare @RendSz varchar(50)
select @RendSz = '434255'

select 
	[Rendelésszám] = rf.RendSz,
	[Tétel] = rt.TetelSrsz,
	[Specifikáció] = RTrim(Specifikacio) + ' WP:' + Cast(Cast(Round(psi,0) as int) as char(10)),
	[Konstrukció] = Konstrukcio,
	[Anyagnorma száma] = dbo.GetMatNormCode(Konstrukcio),
	[Összeállitási rajz] = OsszeallRsz,
	[Csatlakozó rsz."A"] = Csatl1Rsz,
	[Végzõdés "A"] = Csatl1,
	[Csatlakozó rsz."B"] = 
		Case when IsNull(Csatl2Rsz,'') = '' then Csatl1Rsz else Csatl2Rsz end,
	[Végzõdés "B"] =
		Case when IsNull(Csatl2,'') = '' then Csatl1 else Csatl2 end,
	[Belsõ hüvely] = Rtrim(BelsoHuvely) + ' ' + RTrim(BhAnyag),
	[Hüvely] = RTrim(Huvely),
	[Spirálkúp] = Rtrim(Spiralkup),
	[Emelõ bilincs] = RTrim(Emelobilincs) + ', ' + 
		RTrim(Cast(Cast(Round(EbMeret,0) as int) as char(8))) + ' mm',
	[Biztonsági bilincs] = RTrim(BiztBilincs) + ', ' +
		RTrim(Cast(Cast(Round(BbMeret,0) as int) as char(8))) + ' mm',
	[Osztott hüvely] = OsztottHuvely,
	[Nyomáspróbaeszköz] = NyomPrBilincs1,
	rt.*
from
	RendelesFej rf,
	RendelesTetel rt
where
	rf.TermekKod = 1
	and rf.RendelesAz = rt.RendelesAz
	and RendSz = @RendSz
order by
	rt.TetelSrsz