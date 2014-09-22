USE [TMO-Test]

declare	@RendSz varchar(50)
select @Rendsz = '530709'

declare @TermekKod int, @RendelesAz int

select @TermekKod = 1
select @RendelesAz = Max(RendelesAz) from RendelesFej where Rendsz = @Rendsz

-- A rendelés tételeinek lekérdezése
select
	rf.RendelesAz, RendSz, TetelSrsz, Cikkszam, Specifikacio, Darabszam, TModHatarIdo
into #t0
from 
	RendelesFej rf, 
	RendelesTetel rt
where
	rf.RendelesAz = @RendelesAz
	and rf.RendelesAz = rt.RendelesAz
	and (rf.Torolt = 0 and rt.Torolt = 0)

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Csatlakozó "A"', 
	--Megnevezes = Csatl1 , 
	Megnevezes = Csatl1 + case when Patindex('%api%6a%', egyebek) = 0 then '' else '>>>' + RTrim(SubString(egyebek, Patindex('%api%6a%', egyebek), 100)) + '<<<' end,
	Rajzszam = Csatl1Rsz, 
	Db = Case when IsNull(Csatl2, '') <> '' then 1 else 2 end,
	DbFuggo = Cast(1 as bit), 
	Kiszallitando = Cast(1 as bit)
into #t1
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Csatl1, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Csatlakozó "B"', 
	Megnevezes = Csatl2, Rajzszam = Csatl2Rsz,
	Db = Case when IsNull(Csatl1, '') <> '' then 1 else 2 end,
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Csatl2, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Belsõhüvely', 
	Megnevezes = BhAnyag, Rajzszam = BelsoHuvely,
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(BelsoHuvely, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Hüvely', 
	Megnevezes = '', Rajzszam = Huvely,
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Huvely, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Spirálkúp', 
	Megnevezes = '', Rajzszam = Spiralkup,
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Spiralkup, '') <> ''

union all

-- Emelõbilincs
select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Emelõbilincs', 
	Megnevezes = Case when IsNull(EbMeret, 0) <> 0 then  'ID = ' + Cast(EbMeret as char)
	else Null end, 
	Rajzszam = Emelobilincs, 
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Emelobilincs, '') <> ''

-- Emelõbilincs festés
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Emelõbilincs festés', Megnevezes = Festes,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = Cast(1 as bit)
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 1


-- Emelõbilincs azonosítók
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Emelõbilincs azonosító', Megnevezes = Azonosito,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = Cast(1 as bit)
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 1

-- Biztonsági bilincs
union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Bizt.bilincs', 
	Megnevezes = Case when IsNull(BbMeret, 0) <> 0 then  'ID = ' + Cast(BbMeret as char)
	else Null end, 
	Rajzszam = BiztBilincs, 
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(BiztBilincs, '') <> ''

-- Biztonsági bilincs festés
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Bizt.bilincs festés', Megnevezes = Festes,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 2

-- Biztonsági bilincs azonosítók
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Bizt.bilincs azonosító', Megnevezes = Azonosito,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 2

-- Osztott hüvely festés
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Osztott hüvely festés', Megnevezes = Festes,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 3

-- Osztott hüvely azonosítók
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Osztott hüvely azonosító', Megnevezes = Azonosito,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 3

--
union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Töm.gyûrû "A"', 
	Megnevezes = '', Rajzszam = TomitoGyuru1,
	Db = 1, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(TomitoGyuru1, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Töm.gyûrû "B"', 
	Megnevezes = '', Rajzszam = TomitoGyuru2,
	Db = 1, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(TomitoGyuru2, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Fenéklap "A"', 
	Megnevezes = '', Rajzszam = Feneklap1,
	Db = 1, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Feneklap1, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Fenéklap "B"', 
	Megnevezes = '', Rajzszam = Feneklap2,
	Db = 1, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Feneklap2, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Nyom.pr.bil."A"', 
	Megnevezes = '', Rajzszam = NyomPrBilincs1,
	Db = 1, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(NyomPrBilincs1, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Nyom.pr.bil."B"', 
	Megnevezes = '', Rajzszam = NyomPrBilincs2,
	Db = 1, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(NyomPrBilincs2, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Védõhüvely', 
	Megnevezes = '', Rajzszam = VedoHuvely,
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(VedoHuvely, '') <> ''

union all

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Osztotthüvely', 
	Megnevezes = '', Rajzszam = OsztottHuvely,
	Db = 2, 
	DbFuggo = Cast(1 as bit),
	Kiszallitando = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(OsztottHuvely, '') <> ''

union all

select 
	RendelesAz, TetelSrsz, Teteltipus = Megnevezes, Megnevezes = Megjegyzes,
	Rajzszam, 
	Db = Darabszam, 
	DbFuggo,
	Kiszallitando
from
	RendelesTetelEgyebek
where
	RendelesAz = @RendelesAz

-- Láncok, kötelek
union all

select 
	RendelesAz, TetelSrsz, TetelTipus = EszkozFajta, Megnevezes = EszkozFajta,
	Rajzszam = Null, 
	Db = count(*), 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = Cast(1 as bit)
from
	BiztonsagiSzerelvenyek bsz
where
	RendelesAz = @RendelesAz
group by
	RendelesAz, TetelSrsz, EszkozFajta

-- Összegzõ lekérdezés
select 
	#t0.RendelesAz, Rendsz, #t0.TetelSrsz, Cikkszam, Specifikacio, 
	Darabszam, TetelTipus, Megnevezes, Rajzszam, Db,
	OsszDb = Case when IsNull(DbFuggo, 0) = 1 then Darabszam * db else db end,
	SapCikkszam = dbo.GetSapNum(Rajzszam), TModHatarIdo, TomloJellemzok = dbo.GetOrderItemAttribute2(#t0.RendelesAz, #t0.TetelSrsz),
	Kiszallitando
from 
	#t0, #t1
where
	#t0.RendelesAz = #t1.RendelesAz
	and #t0.TetelSrsz = #t1.TetelSrsz
	-- and (IsNull(Megnevezes, '') <> '' or IsNull(Rajzszam, '') <> '')
	and (IsNull(Megnevezes, '') <> '' or IsNull(Rajzszam, '') <> '' or IsNull(db, 0) <> 0)
order by
	#t0.TetelSrsz, TetelTipus

drop table #t0
drop table #t1
