USE [TMO-Test]
GO
/****** Object:  StoredProcedure [dbo].[EbBbOhElorendeles2]    Script Date: 05/24/2012 14:47:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2012.05.24
-- Description:	Eb, Bb, Oh előrendelés módosított
-- =============================================
CREATE PROCEDURE [dbo].[EbBbOhElorendeles2] 
AS
BEGIN

	SET NOCOUNT ON;

	select
		Id, Rendelesszam = RendSz + '/' + Cast(TetelSrsz as char(10)), 
		db,
		Megnevezes = case 
			when Sorszam = 6 then 'EB'
			when Sorszam = 7 then 'BB'
			when Sorszam = 8 then 'OH'
		end,
		Rajzszam,
		Meret,
		Festes,
		EgyediAzonosito = Azonosito,
		Tipus = case
			when Sorszam = 6 then 1
			when Sorszam = 7 then 2
			when Sorszam = 8 then 3
		end
	into #t
	from
		Elorendeles
	where
		Kivalasztva = 1
		and Sorszam in (6,7,8)
	order by
		RendSz

	select
		t.*, Ar, CikkszamVeg
	from 
		#t t
		Left Outer Join ElorendelesAdatok ea On (t.Rajzszam = ea.Rajzszam 
			and IsNull(t.Meret, 0) between Isnull(ea.IdMin, 0) and Isnull(ea.IdMax, 0)
			and t.Festes = ea.Festes)

END
