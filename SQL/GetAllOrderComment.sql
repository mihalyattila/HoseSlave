USE [TMO]
GO
/****** Object:  StoredProcedure [dbo].[GetAllOrderComment]    Script Date: 08/03/2014 00:07:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2014.08.02
-- Description:	Egy rendelés összes revizójához tartozó kommentek
-- =============================================
CREATE PROCEDURE [dbo].[GetAllOrderComment] 
	@Rendsz varchar(20)
AS
BEGIN

	SET NOCOUNT ON;

	select
		Rendelesszam, Revizio, Pozicio, MellekletEng, MellekletHu
	from
		RendelesSap
	where
		Rendelesszam = @Rendsz
		and ((not MellekletEng is null) or (not MellekletHu is null))
	order by
		Revizio

END
