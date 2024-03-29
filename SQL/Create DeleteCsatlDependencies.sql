USE [TMO-Test]
GO
/****** Object:  StoredProcedure [dbo].[DeleteCsatlDependencies]    Script Date: 07/08/2013 09:14:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2013.07.08
-- Description:	Csatlakozó rajzoktól függő elemek törlése
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCsatlDependencies] 
	@Srsz int
AS
BEGIN

	SET NOCOUNT ON;

	delete 
	from
		CsatlakozoRajzTartozekok
	where
		Srsz = @Srsz

	delete
	from
		TechLap
	where
		Srsz = @Srsz
	
END

GO
Grant Execute ON OBJECT::DeleteCsatlDependencies TO Public
GO