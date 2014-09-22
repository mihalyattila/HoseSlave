select
	ph.PackId, ph.Packnum, ph.PackRevision, ph.PackVersion, 
	ph.Ident1, ph.Ident2, ph.[Name], ph.OfferPerson, ph.Note, ph.Status, 
	ph.CreatorName, ph.CreateDate,
	pk.PackDevTypeName, pk.PackDevName, pk.dim1, pk.dim2, pk.dim3, 
	pk.PackDevnum, pk.SumWeight, pk.SumPrice,
	p.*
from 
	PackHead ph
	Left Outer Join Packages pk On (ph.PackId=pk.PackId)
	Left Outer Join PackItem p On (ph.PackId=p.PackId)
where 
	ph.PackId = 65
