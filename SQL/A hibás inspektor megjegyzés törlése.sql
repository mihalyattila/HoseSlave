-- A hib�s inspektor megjegyz�s t�rl�se

declare @RendelesAz int, @TetelSrsz int
set @RendelesAz = 16838
set @TetelSrsz = 10

update RendelesTetel
set
	InspectorMegj = ''
where
	RendelesAz = @RendelesAz
	and TetelSrsz = @TetelSrsz
	