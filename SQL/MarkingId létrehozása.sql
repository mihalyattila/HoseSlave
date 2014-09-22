ALTER TABLE RendelesTetel DISABLE TRIGGER InsertTetelData
ALTER TABLE RendelesTetel DISABLE TRIGGER UpdateTetelData
ALTER TABLE RendelesTetel DISABLE TRIGGER DeleteTetelData
ALTER TABLE RendelesTetel DISABLE TRIGGER MeoDelete
ALTER TABLE RendelesTetel DISABLE TRIGGER MeoInsert
ALTER TABLE RendelesTetel DISABLE TRIGGER MeoUpdate

go

ALTER TABLE RendelesTetel ADD MarkingId int NULL 

go

ALTER TABLE RendelesTetel ENABLE TRIGGER InsertTetelData
ALTER TABLE RendelesTetel ENABLE TRIGGER UpdateTetelData
ALTER TABLE RendelesTetel ENABLE TRIGGER DeleteTetelData
ALTER TABLE RendelesTetel ENABLE TRIGGER MeoDelete
ALTER TABLE RendelesTetel ENABLE TRIGGER MeoInsert
ALTER TABLE RendelesTetel ENABLE TRIGGER MeoUpdate
