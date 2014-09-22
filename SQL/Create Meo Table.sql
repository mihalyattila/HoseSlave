if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Vmo2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Meo]
GO

CREATE TABLE [dbo].[Meo] (
	[Meo_Az] [int] IDENTITY (1, 1) NOT NULL ,
	[GY_SZ] [int] NULL ,
	[K_SZ] [int] NULL ,
	[Rendsz] [varchar] (20) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[MERET] [varchar] (20) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[Id] [real] NULL ,
	[IdU] [smallint] NULL ,
	[EgyebAdat] [real] NULL ,
	[EgyebAdatU] [smallint] NULL ,
	[UzemiNyomas] [real] NULL ,
	[UzemiNyomasU] [smallint] NULL ,
	[NevlegesHossz] [real] NULL ,
	[NevlegesHosszU] [smallint] NULL ,
	[TIPUS] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[CSATL_TIP] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[CSATL_SZ] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[ANYAGC] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[SZUK_TIP] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[SZUK_SZ] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[ANYAGS] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[FEMSZ_TIP] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[FEMSZ_SZ] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[ANYAGF] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[SZEMREVET] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[MERTH] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[MertHossz] [real] NULL ,
	[MertHosszU] [smallint] NULL ,
	[PROBANYOM] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[VIZSGALO] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[INSPEKT] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[MINOS] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[M_DAT] [varchar] (30) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[Datum] [datetime] NULL ,
	[MEGJEGYZES] [varchar] (50) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[DOSZIE_SZ] [int] NULL ,
	[Rogzitette] [varchar] (50) COLLATE SQL_Hungarian_CP1250_CI_AS NULL ,
	[RogzitesIdopontja] [datetime] NULL ,
	[Torolt] [bit] NOT NULL ,
	[OrderModified] [bit] NOT NULL ,
	[OrderDeleted] [bit] NOT NULL ,
	[psi] [float] NULL ,
	[Stamp] [varbinary] (8) NULL ,
	[RendelesAz] [int] NULL ,
	[TetelSrsz] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Meo] WITH NOCHECK ADD 
	CONSTRAINT [PK_Meo] PRIMARY KEY  CLUSTERED 
	(
		[Meo_Az]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Meo] ADD 
	CONSTRAINT [DF_Meo_Torolt] DEFAULT (0) FOR [Torolt],
	CONSTRAINT [DF_Meo_OrderModified] DEFAULT (0) FOR [OrderModified],
	CONSTRAINT [DF_Meo_OrderDeleted] DEFAULT (0) FOR [OrderDeleted]
GO

GRANT  SELECT  ON [dbo].[Meo]  TO [public]
GO

