/* Microsoft SQL Server - Scripting			*/
/* Server: HOMEBUILT					*/
/* Database: Anorma					*/
/* Creation Date 2003.03.19. 0:26:54 			*/

if exists (select * from sysobjects where id = object_id(N'[dbo].[sp_CreatePackVersion]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_CreatePackVersion]
GO

SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

CREATE PROCEDURE sp_CreatePackVersion
	@PackId int,
	@CreatorName varchar(50)
As
declare @NewId int
declare @NewPackVer smallint
declare @PackNum integer

set @PackNum = (select PackNum from PackHead where PackId=@PackId)
set @NewPackVer = (select Max(PackVersion) from PackHead where PackNum=@PackNum)+1

insert into PackHead
	(PackNum, PackRevision, PackVersion, 
	Ident1, Ident2, [Name], OfferPerson, Note, Status, 
	CreatorName, CreateDate)
select
	PackNum, PackRevision, @NewPackVer, 
	Ident1, Ident2, [Name], OfferPerson, Note, Status,
	@CreatorName, GetDate()	
from
	PackHead
where
	PackId = @PackId

set @NewId=@@IDENTITY

insert into PackItem
	(PackId, PackItemId, Description, Pieces, 
	BodyLength, BodyCode, BodyName, BodyOd, MBRstorage, BodyWeight, 
	InnerSteel, FireResistant, OuterSteel, Pa, Helix, HeatRaced, DragChain, LongHose, 
	CouplingCode1, CouplingName1, CouplingWeight1, CouplingOd1, OdMax1,
	CouplingCode2, CouplingName2, CouplingWeight2, CouplingOd2, OdMax2,
	LiftingCollarExists, LiftingCollarName, LiftingCollarCode, LiftingCollarId, LiftingCollarOd,
	LiftingCollarWeight, LiftingCollarReinforced, LiftingCollarPieces,
	SafetyClampExists, SafetyClampName, SafetyClampCode, SafetyClampId, 
	SafetyClampOd, SafetyClampWeight, SafetyClampPieces,
	SafetyChainExists, SafetyChainWeight, OtherAccExists, OtherAccessories,
	OtherAccWeight, SumWeight, CreatorName, CreateDate)
select
	@NewId, PackItemId, Description, Pieces, 
	BodyLength, BodyCode, BodyName, BodyOd, MBRstorage, BodyWeight, 
	InnerSteel, FireResistant, OuterSteel, Pa, Helix, HeatRaced, DragChain, LongHose, 
	CouplingCode1, CouplingName1, CouplingWeight1, CouplingOd1, OdMax1,
	CouplingCode2, CouplingName2, CouplingWeight2, CouplingOd2, OdMax2,
	LiftingCollarExists, LiftingCollarName, LiftingCollarCode, LiftingCollarId, LiftingCollarOd,
	LiftingCollarWeight, LiftingCollarReinforced, LiftingCollarPieces,
	SafetyClampExists, SafetyClampName, SafetyClampCode, SafetyClampId, 
	SafetyClampOd, SafetyClampWeight, SafetyClampPieces,
	SafetyChainExists, SafetyChainWeight, OtherAccExists, OtherAccessories,
	OtherAccWeight, SumWeight, @CreatorName, GetDate()
from
	PackItem
where
	PackId = @PackId

select @NewId

GO
SET QUOTED_IDENTIFIER  OFF    SET ANSI_NULLS  ON 
GO

