Use [TMO-Test]

go
DISABLE TRIGGER UpdateTetelData ON RendelesTetel;
GO

update RendelesTetel
set
	Egyebek = ' '
where
	IsNull(Egyebek, '') = ''

update RendelesTetel
set
	InspectorMegj = ' '
where
	IsNull(InspectorMegj, '') = ''

go
ENABLE TRIGGER UpdateTetelData ON RendelesTetel;
GO
