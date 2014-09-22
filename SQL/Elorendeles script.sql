USE [TMO-Test]

/****** Object:  Table [dbo].[Beszallitok]    Script Date: 06/14/2012 12:23:09 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Beszallitok]') AND type in (N'U'))
BEGIN
	drop table Beszallitok
end 
GO

CREATE TABLE [dbo].[Beszallitok](
	[BeszallitoKod] [int] NOT NULL,
	[BeszallitoNev] [varchar](50) NOT NULL,
	[BeszallitoCim] [varchar](50) NULL,
	[Rogzitette] [varchar](50) NOT NULL CONSTRAINT [DF_Beszallitok_Rogzitette]  DEFAULT (user_name()),
	[RogzIdopont] [datetime] NOT NULL CONSTRAINT [DF_Beszallitok_RogzIdopont]  DEFAULT (getdate()),
 CONSTRAINT [PK_Beszallitok] PRIMARY KEY CLUSTERED 
(
	[BeszallitoKod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

GO
Grant Select, Insert, Update, Delete ON OBJECT::Beszallitok TO Public
GO

/****** Object:  Table [dbo].[Elorendeles]    Script Date: 06/14/2012 12:54:34 ******/
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Beszallitok]') AND type in (N'U'))
BEGIN
	drop table Elorendeles
end 
GO

CREATE TABLE [dbo].[Elorendeles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RendSz] [varchar](50) NULL,
	[RendelesAz] [int] NULL,
	[TetelSrsz] [int] NULL,
	[Sorszam] [int] NULL,
	[Megnevezes] [varchar](200) NULL,
	[Specifikacio] [varchar](200) NULL,
	[Rajzszam] [varchar](50) NULL,
	[Anyag] [varchar](50) NULL,
	[Meret] [float] NULL,
	[Festes] [varchar](200) NULL,
	[Azonosito] [varchar](200) NULL,
	[Megjegyzes] [varchar](200) NULL,
	[Kiszallitando] [bit] NULL,
	[db] [float] NULL,
	[DiszponensMegjegyzes] [varchar](200) NULL,
	[BeszallitoKod] [int] NULL,
	[BeszallitoiHatarido] [datetime] NULL,
	[HozzaadottElem] [bit] NOT NULL CONSTRAINT [DF_Elorendeles_HozzaadottElem]  DEFAULT ((0)),
	[Aktiv] [bit] NOT NULL CONSTRAINT [DF_Elorendeles_Aktiv]  DEFAULT ((1)),
	[Kivalasztva] [bit] NOT NULL CONSTRAINT [DF_Elorendeles_Kivalasztva]  DEFAULT ((0)),
	[Feldolgozva] [bit] NOT NULL CONSTRAINT [DF_Elorendeles_Kivalsztott]  DEFAULT ((0)),
	[Raktarra] [bit] NOT NULL CONSTRAINT [DF_Elorendeles_Raktarra]  DEFAULT ((0)),
	[BeerkezesDatuma] [datetime] NULL,
	[Rogzitette] [varchar](50) NOT NULL CONSTRAINT [DF_Elorendeles_Rogzitette]  DEFAULT (user_name()),
	[RogzIdopont] [datetime] NOT NULL CONSTRAINT [DF_Elorendeles_RogzIdopont]  DEFAULT (getdate()),
 CONSTRAINT [PK_Elorendeles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
Grant Select, Insert, Update, Delete ON OBJECT::Elorendeles TO Public
GO

/****** Object:  Table [dbo].[ElorendelesKiegeszites]    Script Date: 06/14/2012 13:02:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ElorendelesKiegeszites]') AND type in (N'U'))
BEGIN
	drop table ElorendelesKiegeszites
END
GO

CREATE TABLE [dbo].[ElorendelesKiegeszites](
	[ElorendelesId] [int] NOT NULL,
	[ElorendelesMegjegyzes] [text] NULL,
	[Rogzitette] [varchar](50) NOT NULL CONSTRAINT [DF_ElorendelesKiegeszites_Rogzitette]  DEFAULT (user_name()),
	[RogzIdopont] [datetime] NOT NULL CONSTRAINT [DF_ElorendelesKiegeszites_RogzIdopont]  DEFAULT (getdate()),
 CONSTRAINT [PK_ElorendelesKiegeszites] PRIMARY KEY CLUSTERED 
(
	[ElorendelesId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF

GO
Grant Select, Insert, Update, Delete ON OBJECT::ElorendelesKiegeszites TO Public
GO

