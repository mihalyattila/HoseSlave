drop table #RendMod

declare @date1 datetime, @date2 datetime, @TermekKod smallint
select @date1 = '2006.05.01'
select @date2 = '9999.12.31'
select @termekKod = 1

select * 
into #RendMod
from
(
-- Rendel�s fej adatok lek�rdez�se
select
	RendelesAz, TetelSorszam = 0, OldValue, NewValue, ModifierName, ModifyDate
--into #ModFej
from
	RendelesFejMod
where 
	FieldName = 'Hat�rid�') as rfmod

union all
select * from
(
-- Rendel�s t�tel adatok lek�rdez�se
select
	RendelesAz, TetelSorszam = TetelSrsz, OldValue, NewValue, ModifierName, ModifyDate 
from RendelesTetelmod
where
	FieldName = 'M�dos�tott hat�rid�') as rtmod

select rf.*, rm.*
from 
	#RendMod rm
	Left Outer Join RendelesFej rf On (rf.RendelesAz = rm.RendelesAz)
where 
	ModifyDate between @date1 and @date2 
	and TermekKod = @TermekKod
order by
	rm.RendelesAz, rm.ModifyDate