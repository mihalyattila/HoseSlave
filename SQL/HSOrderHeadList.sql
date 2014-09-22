USE [TMO]
GO
/****** Object:  StoredProcedure [dbo].[HSOrderHeadList]    Script Date: 08/02/2014 13:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2014.08.02
-- Description:	HosSlave rendelések lekérdezése státuszokkal kiegészítve
-- =============================================
CREATE PROCEDURE [dbo].[HSOrderHeadList] 
	@TermekKod int = 1
AS
BEGIN

	SET NOCOUNT ON;

	select
		distinct Rendelesszam, Revizio
	into #Rev
	from
		RendelesSap
	order by
		Rendelesszam, Revizio

	select
		RendelesAz, RendSz, SapRevizio, Ajanlatszam, PhxRendSz, VevoRendSz, Vevo, Felhasznalo,
      		ErtTerulet, RMegj, Torolt,
		FAutoUpdate = Case when RendelesAz in (
			select distinct rf.RendelesAz
			from RendelesFej rf, RendelesTetel rt
			where rf.RendelesAz = rt.RendelesAz
			and termekkod = @TermekKod
			and (rf.FAutoUpdate = 1 or rt.TAutoUpdate = 1) and rt.Torolt = 0)
			then Cast(1 as bit) else Cast(0 as bit) end,
		RevExist = Cast(case when not r.Revizio is null then 1 else 0 end as bit)
	from
		RendelesFej rf
		Left Outer Join #Rev r On (rf.RendSz = r.Rendelesszam and rf.SapRevizio = r.Revizio)
	where
		termekkod = 1
	order by
		  RendSz desc

	drop table #Rev

END
