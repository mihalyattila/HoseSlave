drop table #AccList

declare @date datetime
set @date = '2008.04.16'

-- Változások listázása
select
	RendSz, TetelSrsz, AcclistDate, AccCreator, AtveteliIdopont, AtvetelitKeszitette
into #AccList
from
	RendelesFej rf,
	RendelesTetel rt
where
	rf.RendelesAz = rt.RendelesAz
	and IsNull(AcclistDate, '1900.01.01') > @date
	and AccListDate > AtveteliIdopont
order by
	AtvetelitKeszitette, rt.RendelesAz, TetelSrsz

select * from #AccList

-- email-ek készítése
declare 
	@RendSz varchar(50), 
	@TetelSrsz int, 
	@AcclistDate datetime, 
	@AccCreator varchar(50), 
	@AtveteliIdopont datetime, 
	@AtvetelitKeszitette varchar(50),
	@TempName varchar(50),
	@mail varchar(50),
	@Msg varchar(4000),
	@MsgHead varchar(4000)

declare crsr cursor for 
select 
	RendSz, TetelSrsz, AcclistDate, AccCreator, AtveteliIdopont, AtvetelitKeszitette
from
	#AccList

OPEN crsr
FETCH NEXT FROM crsr INTO @RendSz, @TetelSrsz, @AcclistDate, @AccCreator, @AtveteliIdopont, @AtvetelitKeszitette
set @TempName = ''
set @mail = ''
set @Msg = ''
set @MsgHead = 'Rend.' + Char(9) + 'Srsz.' + Char(9) + 'Mód.'

WHILE @@FETCH_STATUS = 0
BEGIN

	--Print @MsgHead

	if @TempName <> @AtvetelitKeszitette 
	begin
		select @mail = IsNull(dbo.GetUserMail(@AtvetelitKeszitette), '')
		if @TempName <> '' 
		begin
			Print @mail
			Print @MsgHead + Char(13) + @Msg
		end
	end	
	
	set @msg = @msg + @RendSz + Char(9) + Cast(@TetelSrsz as varchar(10)) + Char(9) + @AccCreator + Char(13)
	set @TempName = @AtvetelitKeszitette 
	FETCH NEXT FROM crsr INTO @RendSz, @TetelSrsz, @AcclistDate, @AccCreator, @AtveteliIdopont, @AtvetelitKeszitette	
END

Print @mail
Print @MsgHead + Char(13) + @Msg

close crsr
deallocate crsr

drop table #AccList
