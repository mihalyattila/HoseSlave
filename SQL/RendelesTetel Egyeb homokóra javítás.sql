Use [TMO-test]

GO
DISABLE TRIGGER UpdateTetelData ON RendelesTetel;
GO

GO
DISABLE TRIGGER MeoUpdate ON RendelesTetel;
GO

--ALTER TABLE RendelesTetel ALTER COLUMN InspectorMegj varchar(200) ;
GO

update RendelesTetel
set
	Egyebek = ' '
where
	Egyebek = ''

GO
ENABLE TRIGGER UpdateTetelData ON RendelesTetel;
GO

GO
ENABLE TRIGGER MeoUpdate ON RendelesTetel;
GO