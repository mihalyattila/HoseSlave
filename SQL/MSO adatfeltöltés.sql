declare @FocsoportKod smallint, @i integer 
set @FocsoportKod = 2
set @i = 100000

while @i < 100161
begin

	set @i = @i + 1

	insert into MsoRajzLista
		(FocsoportKod, Tipusjel, Sorozatszam, Sorszam, Verzio, Filenev, Megnevezes, Megjegyzes, Rogzitette, RogzIdopont)
	values
		(@FocsoportKod, 'MSO', cast(@i as char(10)), '000', Null, 'MSO ' + RTrim(Cast(@i as char(10))) + '-000.dft', 'Márkázásnak lefoglalva!', '', user_name(), GetDate())

end
