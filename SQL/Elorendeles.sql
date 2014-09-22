use [TMO]

--drop table #t1
--drop table #e

create table #t1
	(
	RendSz varchar(50),
	RendelesAz int,
	TetelSrsz int,
	Sorszam int,
	Megnevezes varchar(200),
	Specifikacio varchar(200),
	Rajzszam varchar(50),
	Anyag varchar(50),
	Meret float,
	Festes varchar(200),
	Azonosito varchar(200),
	Megjegyzes varchar(200),
	Kiszallitando bit,
	db float
	)

-- Az aktuális rendelés sorok lekérdezése, az aktuális idõpont elõtt legfeljebb egy hónappal kiadott alaktrészlistájú rendelések esetén
declare @Date1 datetime
set @Date1 = (select DateAdd(mm, -1, GetDate()))

insert INTO #t1 exec ElorendelesAlaplista @Date1,'9999.12.31'

-- Elõrendelés sorok lekérdezése
select * into #e from Elorendeles

declare @RendSz varchar(50), @RendelesAz int, @TetelSrsz int, @Sorszam int, @Megnevezes varchar(200), @Specifikacio varchar(200), 
	@Rajzszam varchar(50), @Anyag varchar(50), @Meret float, @Festes varchar(200), @Azonosito varchar(200), @Megjegyzes varchar(200), 
	@Kiszallitando bit, @db float, @DiszponensMegjegyzes varchar(200), @HozzaadottElem bit, @Aktiv bit, @Modositva bit
declare 
	@eId int, @eRendSz varchar(50), @eRendelesAz int, @eTetelSrsz int, @eSorszam int, @eMegnevezes varchar(200), @eSpecifikacio varchar(200), 
	@eRajzszam varchar(50), @eAnyag varchar(50), @eMeret float, @eFestes varchar(200), @eAzonosito varchar(200), @eMegjegyzes varchar(200), 
	@eKiszallitando bit, @edb float, @eDiszponensMegjegyzes varchar(200), @eHozzaadottElem bit, @eAktiv bit, @eModositva bit


-- Kurzor definiálása a rendelés sorokhoz
declare crs cursor for 
select 
	RendSz, RendelesAz, TetelSrsz, Sorszam, Megnevezes, Specifikacio, 
	Rajzszam, Anyag, Meret, Festes, Azonosito, Megjegyzes, Kiszallitando, db
from 
	#t1 
order by 
	RendelesAz, TetelSrsz, Sorszam

open crs

fetch next from crs
into
	@RendSz, @RendelesAz, @TetelSrsz, @Sorszam, @Megnevezes, @Specifikacio, 
	@Rajzszam, @Anyag, @Meret, @Festes, @Azonosito, @Megjegyzes, @Kiszallitando, @db

while  @@FETCH_STATUS = 0
begin
	--Print @RendSz

	select
		@eId = Id, @eRendSz = RendSz, @eRendelesAz = RendelesAz, @eTetelSrsz = TetelSrsz, @eSorszam = Sorszam, 
		@eMegnevezes = Megnevezes, @eSpecifikacio = Specifikacio, @eRajzszam = Rajzszam, @eAnyag = Anyag, @eMeret = Meret, 
		@eFestes = Festes, @eAzonosito = Azonosito, @eMegjegyzes = Megjegyzes, @eKiszallitando = Kiszallitando, @eDb = db, 
		@eDiszponensMegjegyzes = DiszponensMegjegyzes, @eHozzaadottElem = HozzaadottElem, @eAktiv = Aktiv, @eModositva = Modositva
	from
		#e
	where
		Id = (select Max(Id) from #e where RendelesAz = @RendelesAz and TetelSrsz = @TetelSrsz and Sorszam = @Sorszam)

	-- Ha nincs az Eloredeles táblában akkor az aktuális rekord felvétele
	if @eId is null
	begin
		Insert into Elorendeles
			(RendSz, RendelesAz, TetelSrsz, Sorszam, Megnevezes, Specifikacio, Rajzszam, 
			Anyag, Meret, Festes, Azonosito, Megjegyzes, Kiszallitando, db, DiszponensMegjegyzes, 
			HozzaadottElem, Aktiv, Rogzitette, RogzIdopont)
		Values
			(@RendSz, @RendelesAz, @TetelSrsz, @Sorszam, @Megnevezes, @Specifikacio, @Rajzszam, 
			@Anyag, @Meret, @Festes, @Azonosito, @Megjegyzes, @Kiszallitando, @db, Null, 
			0, 1, User_Name(), GetDate())
	end
	else
	begin
		--Print @Megnevezes + Char(9) + @eMegnevezes + Char(9) + Cast(@eId as char(10))
		if (@Megnevezes <> @eMegnevezes) or (@Specifikacio <> @eSpecifikacio) or (@Rajzszam <> @eRajzszam) 
		or (@Anyag <> @eAnyag) or (@Meret <> @eMeret) or (@Festes <> @eFestes) or (@Azonosito <> @eAzonosito)
		or (@Megjegyzes <> @eMegjegyzes) or (@Kiszallitando <> @eKiszallitando) or (@db <> @edb) 
		begin
			if @eModositva = 0
			begin
				delete from Elorendeles where Id = @eId
			end
			else
			begin
				-- A régebbi tételek inaktív státuszának beállítása
				update Elorendeles
				set
					Aktiv = 0,
					Rogzitette = User_Name(),
					RogzIdopont = GetDate()
				where
					RendSz = @RendSz and RendelesAz = @RendelesAz and TetelSrsz = @TetelSrsz and Sorszam = @Sorszam
					and HozzaadottElem = 0
			end

			-- Az új rekordok felvitele
			Insert into Elorendeles
				(RendSz, RendelesAz, TetelSrsz, Sorszam, Megnevezes, Specifikacio, Rajzszam, 
				Anyag, Meret, Festes, Azonosito, Megjegyzes, Kiszallitando, db, DiszponensMegjegyzes, 
				HozzaadottElem, Aktiv, Rogzitette, RogzIdopont)
			Values
				(@RendSz, @RendelesAz, @TetelSrsz, @Sorszam, @Megnevezes, @Specifikacio, @Rajzszam, 
				@Anyag, @Meret, @Festes, @Azonosito, @Megjegyzes, @Kiszallitando, @db, Null, 
				0, 1, User_Name(), GetDate())

		end
	end

	fetch next from crs
	into
		@RendSz, @RendelesAz, @TetelSrsz, @Sorszam, @Megnevezes, @Specifikacio, 
		@Rajzszam, @Anyag, @Meret, @Festes, @Azonosito, @Megjegyzes, @Kiszallitando, @db

end

close crs
deallocate crs

drop table #t1
drop table #e

