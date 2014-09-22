drop table #t1
/*
CREATE PROCEDURE sp_RendelesModositasok 
	@Rendelesszam varchar (50) = Null,
	@TetelSorszam int = Null
AS
*/
Create Table #t1 
	([Id] [int] IDENTITY (1, 1) NOT NULL, Rendelesszam varchar(50), 
	TetelSorszam int, Sorszam int, FieldName varchar(50), OldValue varchar(100), 
	NewValue varchar(100), ModifierName varchar(50), ModifyDate datetime)

insert into #t1 
	(Rendelesszam, TetelSorszam, Sorszam, FieldName, 
	OldValue, NewValue, ModifierName, ModifyDate)

select 
	rf.RendSz, TetelSrsz = 0, Sorszam = 0, rfm.FieldName, 
	rfm.OldValue, rfm.NewValue, rfm.ModifierName, rfm.ModifyDate
from 
	RendelesFejMod rfm, RendelesFej rf
where
	rf.RendelesAz = rfm.RendelesAz

insert into #t1 
	(Rendelesszam, TetelSorszam, Sorszam, FieldName, 
	OldValue, NewValue, ModifierName, ModifyDate)
select 
	rf.RendSz, rtm.TetelSrsz, rtm.Sorszam, rtm.FieldName, 
	rtm.OldValue, rtm.NewValue, rtm.ModifierName, rtm.ModifyDate
from 
	RendelesTetelMod rtm, RendelesFej rf
where
	rf.RendelesAz = rtm.RendelesAz

if (@Rendelesszam is Null) and (@TetelSorszam is Null)
begin
	select top 50000 * 
	from #t1
	Order by ModifyDate desc, Rendelesszam, TetelSorszam, Sorszam
end

if (not @Rendelesszam is Null) and (@TetelSorszam is Null)
begin
	select * 
	from #t1
	where RendelesSzam = @Rendeleszszam
	Order by ModifyDate desc, Rendelesszam, TetelSorszam, Sorszam
end

if (not @Rendelesszam is Null) and (not @TetelSorszam is Null)
begin
	select * 
	from #t1
	where 
		RendelesSzam = @Rendeleszszam
		and Tetelsorszam = @Tetelsorszam
	Order by ModifyDate desc, Rendelesszam, TetelSorszam, Sorszam
end
