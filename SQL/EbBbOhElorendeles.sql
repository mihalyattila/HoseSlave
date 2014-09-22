USE [TMO]
GO
/****** Object:  StoredProcedure [dbo].[EbBbOhElorendeles]    Script Date: 04/20/2012 10:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2012.01.25.
-- Description:	Bilincs és hüvely előrendelések (anyagdiszponensnek)
-- =============================================
ALTER PROCEDURE [dbo].[EbBbOhElorendeles] 
AS
BEGIN

	SET NOCOUNT ON;

	select
		rf.RendSz, rf.RendelesAz, rt.TetelSrsz, Rendeles = ' ' + RTrim(rf.RendSz) + '/' + RTrim(Cast(rt.TetelSrsz as char(10))),
		TomloDb = DarabSzam, Emelobilincs, EbMeret, BiztBilincs, BbMeret, OsztottHuvely,
		EbFestes = dbo.OrderPaintToStr(rf.RendelesAz, rt.TetelSrsz, 1),
		BbFestes = dbo.OrderPaintToStr(rf.RendelesAz, rt.TetelSrsz, 2),
		EbAzonosito = dbo.OrderLcScIdToStr(rf.RendelesAz, rt.TetelSrsz, 1),
		BbAzonosito = dbo.OrderLcScIdToStr(rf.RendelesAz, rt.TetelSrsz, 2)
	into #t1
	from
		RendelesFej	rf,
		RendelesTetel rt
	where
		RendSz in (select RendelesSzam from ElorendelesTetelek)
		and rf.RendelesAz = rt.RendelesAz
		and TermekKod = 1
		and rf.Torolt = 0
		and rt.Torolt = 0

	Select 
		Rendelesszam, db = sum(db), Megnevezes, Rajzszam, Meret, Festes, EgyediAzonosito, Tipus
	into #t2
	from
	(
	-- Emelő bilincs
	select
		Rendelesszam = Rendeles, 
		Megnevezes = 'EB', 
		Rajzszam = Emelobilincs, 
		Meret = RTrim(Cast(EbMeret as Char(10))) , 
		Db = TomloDb * 2, 
		Festes = EbFestes,
		EgyediAzonosito = EbAzonosito,
		Tipus = 1
	from 
		#t1
	where
		IsNull(Emelobilincs, '') <> ''

	union all
	-- Biztonsági bilincs
	select
		Rendelesszam = Rendeles, 
		Megnevezes = 'BB', 
		Rajzszam = BiztBilincs, 
		Meret = RTrim(Cast(BbMeret as Char(10))) , 
		Db = TomloDb * 2,
		Festes = BbFestes,
		EgyediAzonosito = BbAzonosito,
		Tipus = 2
	from 
		#t1
	where
		IsNull(BiztBilincs, '') <> ''

	union all
	-- Osztott hüvely
	select
		Rendelesszam = Rendeles, 
		Megnevezes = 'OH', 
		Rajzszam = OsztottHuvely, 
		Meret = null, 
		Db = TomloDb * 2,
		Festes = Null,
		EgyediAzonosito = Null,
		Tipus = 3
	from 
		#t1
	where
		IsNull(OsztottHuvely, '') <> ''
	) x
	Group by
		Rendelesszam, Tipus, Megnevezes, Rajzszam, Meret, Festes, EgyediAzonosito
	Order by 
		Rendelesszam, Tipus

	select
		t2.*, Ar, CikkszamVeg
	from 
		#t2 t2
		Left Outer Join ElorendelesAdatok ea On (t2.Rajzszam = ea.Rajzszam 
			and IsNull(t2.Meret, 0) between Isnull(ea.IdMin, 0) and Isnull(ea.IdMax, 0)
			and t2.Festes = ea.Festes)
			--case when Megnevezes in (

END
