select distinct Left(Cikkszam, 4)--, Left(Cikkszam, 5)
from RendelesSap order by Left(Cikkszam, 4)
/*
select distinct RendSz
from 
	RendelesFej 
where 
	TermekKod = 1
*/