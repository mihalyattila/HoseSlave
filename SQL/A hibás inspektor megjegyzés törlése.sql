-- A hibás inspektor megjegyzés törlése

declare @RendelesAz int, @TetelSrsz int
set @RendelesAz = 16838
set @TetelSrsz = 10

update RendelesTetel
set
	InspectorMegj = ''
where
	RendelesAz = @RendelesAz
	and TetelSrsz = @TetelSrsz
	