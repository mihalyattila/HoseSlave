USE [TMO-Test]

declare	@RendSz varchar(50)
select @Rendsz = '530709'

declare @TermekKod int, @RendelesAz int

select @TermekKod = 1
select @RendelesAz = Max(RendelesAz) from RendelesFej where Rendsz = @Rendsz

-- A rendel�s t�teleinek lek�rdez�se
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Csatlakoz� "A"', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Csatlakoz� "B"', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Bels�h�vely', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'H�vely', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Spir�lk�p', 
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

-- Emel�bilincs
select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Emel�bilincs', 
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

-- Emel�bilincs fest�s
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Emel�bilincs fest�s', Megnevezes = Festes,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = Cast(1 as bit)
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 1


-- Emel�bilincs azonos�t�k
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Emel�bilincs azonos�t�', Megnevezes = Azonosito,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = Cast(1 as bit)
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 1

-- Biztons�gi bilincs
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

-- Biztons�gi bilincs fest�s
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Bizt.bilincs fest�s', Megnevezes = Festes,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 2

-- Biztons�gi bilincs azonos�t�k
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Bizt.bilincs azonos�t�', Megnevezes = Azonosito,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 2

-- Osztott h�vely fest�s
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Osztott h�vely fest�s', Megnevezes = Festes,
	Rajzszam = Null, 
	Db = Null, 
	DbFuggo = Cast(0 as bit),
	Kiszallitando = null
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 3

-- Osztott h�vely azonos�t�k
union all

select
	RendelesAz, TetelSrsz, TetelTipus = 'Osztott h�vely azonos�t�', Megnevezes = Azonosito,
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
	RendelesAz, TetelSrsz,  TetelTipus = 'T�m.gy�r� "A"', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'T�m.gy�r� "B"', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Fen�klap "A"', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Fen�klap "B"', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'V�d�h�vely', 
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
	RendelesAz, TetelSrsz,  TetelTipus = 'Osztotth�vely', 
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

-- L�ncok, k�telek
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

-- �sszegz� lek�rdez�s
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
