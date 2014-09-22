declare @AnyagszId int
set @AnyagszId = 20

select
	a.Rendelesszam, a.TetelSrsz, KeszCikkszam = a.Cikkszam,
	Konstrukcio, AnormaTetelSzam, TetelNev, t.Cikkszam, Anyagnev, 
	BruttoUzme = (Hossz * db * Brutto1_Uzme) + Brutto2_Uzme, Uzme = lower(Uzme),
	BruttoTomeg = (Hossz * db * Brutto1_Tomeg) + Brutto2_Tomeg, Me = 'kg'
from
	AnyagszuksegletTetel a,
	AnyagnormaTetel t 
where 
	Id = @AnyagszId
	and a.AnormaId = t.AnormaId