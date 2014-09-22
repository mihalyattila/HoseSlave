select 
	Kod = RTrim(TipusJel) + '-' + Rtrim(SorozatSzam) + '-' + RTrim(Sorszam) , --+ '-' + RTrim(Verzio), 
	FileNev, Utvonal
from
	msorajzlista
where
	((not Filenev like RTrim(TipusJel) + '-' + Rtrim(SorozatSzam) + '%')
	and
	(not Filenev like RTrim(TipusJel) + ' ' + Rtrim(SorozatSzam) + '%'))
	and RogzIdopont > '2012.01.01'
	