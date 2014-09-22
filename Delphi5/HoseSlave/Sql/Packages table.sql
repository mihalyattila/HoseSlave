/* Microsoft SQL Server - Scripting			*/
/* Server: HOMEBUILT					*/
/* Database: Anorma					*/
/* Creation Date 2003.03.13. 21:31:07 			*/

ALTER TABLE [dbo].[PackDeviceAssign] DROP CONSTRAINT FK_PackDeviceAssign_Packages
GO

if exists (select * from sysobjects where id = object_id(N'[dbo].[Packages]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Packages]
GO

CREATE TABLE [dbo].[Packages] (
	[PackageId] [int] IDENTITY (1, 1) NOT NULL ,
	[PackId] [int] NOT NULL ,
	[PackDevTypeCode] [int] NULL ,
	[PackDevTypeName] [varchar] (50) NULL ,
	[PackDevCode] [int] NULL ,
	[PackDevName] [varchar] (50) NULL ,
	[PackDevNum] [smallint] NULL ,
	[Dim1] [float] NULL ,
	[Dim2] [float] NULL ,
	[Dim3] [float] NULL ,
	[Weight] [float] NULL ,
	[SumWeight] [float] NULL ,
	[Note] [varchar] (250) NULL ,
	[CreatorName] [varchar] (50) NULL ,
	[CreateDate] [datetime] NULL 
) ON [PRIMARY]
GO

