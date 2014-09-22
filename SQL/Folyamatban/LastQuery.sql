declare @date datetime
set @date = '2011.11.10'
set @date = Cast(Convert(char(7), @date, 120) + '-01' as datetime)

--select @date

select
	y.TermekKod, t.TermekNev, ErtTerulet, I = sum(I), II = sum(II), III = sum(III), IV = sum(IV)
from
(
select
	TermekKod, ErtTerulet,
	I = case when MonthDiff = 0 then sum(Ertek) end,
	II = case when MonthDiff = 1 then sum(Ertek) end,
	III = case when MonthDiff = 2 then sum(Ertek) end,
	IV = case when MonthDiff > 2 then sum(Ertek) end
from
(
select
	TermekKod, ErtTerulet, Ertek = ExtrKtsg * AktualisArfolyam, Hatarido, 
	HatarHonap = Cast(Convert(char(7), HatarIdo, 120) + '-01' as datetime),
	MonthDiff = DateDiff(mm, @Date, HatarIdo)
from
	RendelesFej rf
	Left Outer Join RendLekArfolyam arf On (rf.ExtrPenznem = arf.Penznem)
where
	Hatarido >= @date
	and isnull(ExtrKtsg, 0) <> 0
	and Torolt = 0

union all
select
	TermekKod, ErtTerulet, Ertek = TErtek * AktualisArfolyam, Hatarido = TModHatarido,
	HatarHonap = Cast(Convert(char(7), HatarIdo, 120) + '-01' as datetime),
	MonthDiff = DateDiff(mm, @Date, HatarIdo)
from
	RendelesFej rf,
	RendelesTetel rt 
	Left Outer Join RendLekArfolyam arf On (rt.TPenznem = arf.Penznem)
where
	rf.RendelesAz = rt.RendelesAz 
	and TModHatarido >= @date
	and rf.Torolt = 0
	and rt.Torolt = 0

) x
group by
	x.TermekKod, ErtTerulet, MonthDiff) y
	Left Outer Join Termekek t On (t.TermekKod = y.TermekKod)
group by y.TermekKod, t.TermekNev, ErtTerulet
order by
	y.TermekKod, t.TermekNev, ErtTerulet