select
	Id = MarkId,
	FocsoportNev = 'Márkázások', CsoportNev = 'Régi márkázások', AlcsoportNev = MarkazasTipusa,
	Megnevezes, m.Megjegyzes, Rajzszam, Utvonal
from 
	MarkazasTipus mt,
	Markazas m
where
	mt.MarkTypeId = m.MarkTypeId

union all

select
	Id = MsoId, FocsoportNev, CsoportNev, AlcsoportNev, Megnevezes, Megjegyzes,
	RajzSzam = RTrim(TipusJel) + ' ' + RTrim(SorozatSzam) + '-' + RTRim(SorSzam) 
		+ case when IsNull(Verzio, '') <> '' then '/' + RTrim(Verzio) else '' end,
	Utvonal + FileNev
from
	MsoRajzlista ml
	Left Outer Join MsoFocsoport fcs On (ml.FocsoportKod = fcs.FocsoportKod)
	Left Outer Join MsoCsoport cs On (ml.CsoportKod = cs.CsoportKod)
	Left Outer Join MsoAlcsoport acs On (ml.AlcsoportKod = acs.AlcsoportKod)
where 
	ml.Focsoportkod = 2
order by
	FocsoportNev, CsoportNev, AlcsoportNev, Id