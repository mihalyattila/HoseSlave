disable trigger UpdateData on RendelesFej
go

update RendelesFej
set
	ErtTerulet = 'CTFOMME'
where
	ErtTerulet like '%COFOMME%'

go	
enable trigger UpdateData on RendelesFej

