USE [TMO-Test]
GO
/****** Object:  StoredProcedure [dbo].[AddElorendItem]    Script Date: 05/10/2012 14:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2012.05.10.
-- Description:	Új előrendelési sor hozzáadása
-- =============================================
CREATE PROCEDURE [dbo].[AddElorendItem] 
	@RendelesAz int, 
	@RendSz varchar(20),
	@TetelSrsz int,
	@Id int output
AS
BEGIN
	SET NOCOUNT ON;

	Insert Into Elorendeles
		(RendSz, RendelesAz, TetelSrsz, Sorszam, Megnevezes, Specifikacio, Rajzszam, Anyag, Meret, Megjegyzes, 
		Kiszallitando, db, DiszponensMegjegyzes, HozzaadottElem, Aktiv, Feldolgozva, Rogzitette, RogzIdopont)
	Values
		(@RendSz, @RendelesAz, @TetelSrsz, Null, Null, Null, Null, Null, Null, Null,
		0, Null, Null, 1, 1, 0, User_Name(), GetDate())

	set @Id = @@Identity

END
