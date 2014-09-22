declare @RendSz varchar(50)
select @RendSz = '434255'

select 
	[Rendel�ssz�m] = rf.RendSz,
	[T�tel] = rt.TetelSrsz,
	[Specifik�ci�] = RTrim(Specifikacio) + ' WP:' + Cast(Cast(Round(psi,0) as int) as char(10)),
	[Konstrukci�] = Konstrukcio,
	[Anyagnorma sz�ma] = dbo.GetMatNormCode(Konstrukcio),
	[�ssze�llit�si rajz] = OsszeallRsz,
	[Csatlakoz� rsz."A"] = Csatl1Rsz,
	[V�gz�d�s "A"] = Csatl1,
	[Csatlakoz� rsz."B"] = 
		Case when IsNull(Csatl2Rsz,'') = '' then Csatl1Rsz else Csatl2Rsz end,
	[V�gz�d�s "B"] =
		Case when IsNull(Csatl2,'') = '' then Csatl1 else Csatl2 end,
	[Bels� h�vely] = Rtrim(BelsoHuvely) + ' ' + RTrim(BhAnyag),
	[H�vely] = RTrim(Huvely),
	[Spir�lk�p] = Rtrim(Spiralkup),
	[Emel� bilincs] = RTrim(Emelobilincs) + ', ' + 
		RTrim(Cast(Cast(Round(EbMeret,0) as int) as char(8))) + ' mm',
	[Biztons�gi bilincs] = RTrim(BiztBilincs) + ', ' +
		RTrim(Cast(Cast(Round(BbMeret,0) as int) as char(8))) + ' mm',
	[Osztott h�vely] = OsztottHuvely,
	[Nyom�spr�baeszk�z] = NyomPrBilincs1,
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