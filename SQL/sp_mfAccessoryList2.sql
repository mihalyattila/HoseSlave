USE [TMO]
GO
/****** Object:  StoredProcedure [dbo].[sp_mfAccessoryList2]    Script Date: 08/25/2009 20:38:27 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER PROCEDURE [dbo].[sp_mfAccessoryList2]
	@RendSz varchar(50)
AS
--drop table #t0
--drop table #t1

--declare	@RendSz varchar(50)
--select @Rendsz = '399645'

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


select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Csatlakozó "A"', 
	Megnevezes = Csatl1, Rajzszam = Csatl1Rsz, 
	Db = Case when IsNull(Csatl2, '') <> '' then 1 else 2 end,
	DbFuggo = Cast(1 as bit)
into #t1
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Csatl1, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Csatlakozó "B"', 
	Megnevezes = Csatl2, Rajzszam = Csatl2Rsz,
	Db = Case when IsNull(Csatl1, '') <> '' then 1 else 2 end,
	DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Csatl2, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Belsőhüvely', 
	Megnevezes = BhAnyag, Rajzszam = BelsoHuvely,
	Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(BelsoHuvely, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Hüvely', 
	Megnevezes = '', Rajzszam = Huvely,
	Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Huvely, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Spirálkúp', 
	Megnevezes = '', Rajzszam = Spiralkup,
	Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Spiralkup, '') <> ''

union

-- Emelőbilincs
select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Emelőbilincs', 
	Megnevezes = Case when IsNull(EbMeret, 0) <> 0 then  'ID = ' + Cast(EbMeret as char)
	else Null end, 
	Rajzszam = Emelobilincs, Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Emelobilincs, '') <> ''

-- Emelőbilincs azonosítók
union

select
	RendelesAz, TetelSrsz, TetelTipus = 'Emelőbilincs azonosító', Megnevezes = Azonosito,
	Rajzszam = Null, Db = Null, DbFuggo = Cast(1 as bit)
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 1

-- Biztonsági bilincs
union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Bizt.bilincs', 
	Megnevezes = Case when IsNull(BbMeret, 0) <> 0 then  'ID = ' + Cast(BbMeret as char)
	else Null end, 
	Rajzszam = BiztBilincs, Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(BiztBilincs, '') <> ''

-- Biztonsági bilincs azonosítók
union

select
	RendelesAz, TetelSrsz, TetelTipus = 'Bizt.bilincs azonosító', Megnevezes = Azonosito,
	Rajzszam = Null, Db = Null, DbFuggo = Cast(1 as bit)
from
	RendelesTetelBilincs
where
	RendelesAz = @RendelesAz
	and Tipus = 2

--
union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Töm.gyűrű "A"', 
	Megnevezes = '', Rajzszam = TomitoGyuru1,
	Db = 1, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(TomitoGyuru1, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Töm.gyűrű "B"', 
	Megnevezes = '', Rajzszam = TomitoGyuru2,
	Db = 1, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(TomitoGyuru2, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Fenéklap "A"', 
	Megnevezes = '', Rajzszam = Feneklap1,
	Db = 1, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Feneklap1, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Fenéklap "B"', 
	Megnevezes = '', Rajzszam = Feneklap2,
	Db = 1, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(Feneklap2, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Nyom.pr.bil."A"', 
	Megnevezes = '', Rajzszam = NyomPrBilincs1,
	Db = 1, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(NyomPrBilincs1, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Nyom.pr.bil."B"', 
	Megnevezes = '', Rajzszam = NyomPrBilincs2,
	Db = 1, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(NyomPrBilincs2, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Védőhüvely', 
	Megnevezes = '', Rajzszam = VedoHuvely,
	Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(VedoHuvely, '') <> ''

union

select 
	RendelesAz, TetelSrsz,  TetelTipus = 'Osztotthüvely', 
	Megnevezes = '', Rajzszam = OsztottHuvely,
	Db = 2, DbFuggo = Cast(1 as bit)
from 
	RendelesTetel 
where 
	rendelesaz = @RendelesAz
	and IsNull(OsztottHuvely, '') <> ''

union

select 
	RendelesAz, TetelSrsz, Teteltipus = Megnevezes, Megnevezes = '',
	Rajzszam, Db = Darabszam, DbFuggo
from
	RendelesTetelEgyebek
where
	RendelesAz = @RendelesAz

-- Láncok, kötelek
union

select 
	RendelesAz, TetelSrsz, TetelTipus = EszkozFajta + '-' + Beszerzes, Megnevezes = Azonosito,
	Rajzszam = Null, Db = Null, DbFuggo = Cast(1 as bit)
from
	BiztonsagiSzerelvenyek bsz
where
	RendelesAz = @RendelesAz

-- Összegző lekérdezés
select 
	#t0.RendelesAz, Rendsz, #t0.TetelSrsz, Cikkszam, Specifikacio, 
	Darabszam, TetelTipus, Megnevezes, Rajzszam, Db,
	OsszDb = Case when IsNull(DbFuggo, 0) = 1 then Darabszam * db else db end,
	SapCikkszam = dbo.GetSapNum(Rajzszam), TModHatarIdo
from 
	#t0, #t1
where
	#t0.RendelesAz = #t1.RendelesAz
	and #t0.TetelSrsz = #t1.TetelSrsz
	-- and (IsNull(Megnevezes, '') <> '' or IsNull(Rajzszam, '') <> '')
	and (IsNull(Megnevezes, '') <> '' or IsNull(Rajzszam, '') <> '' or IsNull(db, 0) <> 0)
order by
	#t0.TetelSrsz, TetelTipus