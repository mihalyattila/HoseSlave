/* Microsoft SQL Server - Scripting			*/
/* Server: HOMEBUILT					*/
/* Database: Anorma					*/
/* Creation Date 2003.03.19. 0:27:38 			*/

if exists (select * from sysobjects where id = object_id(N'[dbo].[sp_CreatePackHead]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_CreatePackHead]
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE sp_CreatePackHead
	@CreatorName varchar(50)
As

declare @MaxNum int
set @MaxNum = (select IsNull(Max(PackNum),-1) from PackHead)+1

insert into PackHead
	(PackNum, PackRevision, PackVersion, Status, CreatorName, CreateDate)
values
	(@MaxNum, 0, 0, 0, @CreatorName, GetDate())
SELECT @@IDENTITY

GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

